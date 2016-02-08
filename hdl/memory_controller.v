///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <ELSA>
//
// File: memory_controller.v
// File history:
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//
// Description: 
//
// < This module controls the read/write schedule as well as counting up of addresses.
// Also commands the sdram interface.
//
// Targeted device: <Family::ProASIC3L> <Die::A3PE3000L> <Package::484 FBGA>
// Author: <Scott>
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 

//`timescale <time_units> / <precision>

module memory_controller( CLK_48MHZ,SDRAM_STATUS,READ_CMD, GEIG_DATA, MAG_DATA, BA_READ,COL_READ, ROW_READ, 
BA_WRITE, COL_WRITE, ROW_WRITE
,NEXT_READ,NEXT_WRITE,DATA_OUT,BA_OUT,COL_OUT,ROW_OUT,CMD_OUT);

// Inputs
input CLK_48MHZ,SDRAM_STATUS, READ_CMD;
input [47:0] GEIG_DATA;
input [79:0] MAG_DATA;
input [1:0] BA_READ;
input [8:0] COL_READ;
input [12:0] ROW_READ;
input [1:0] BA_WRITE;
input [8:0] COL_WRITE;
input [12:0] ROW_WRITE;

// Outputs
output NEXT_READ, NEXT_WRITE;
output [15:0] DATA_OUT;
output [1:0] BA_OUT;
output [8:0] COL_OUT;
output [12:0] ROW_OUT;
output [1:0] CMD_OUT;

/////Statements
// Local Vars
reg [47:0] geig_prev;
reg [1:0] new_geig;
parameter new_geig_cmd =2'b01;
parameter num_geig_cycles = 3;

reg [79:0] mag_prev;
reg [1:0] new_mag;
parameter new_mag_cmd =2'b10;
parameter num_mag_cycles = 5;

reg [79:0] data_buffer;
reg read_prev;
parameter new_read_cmd = 2'b11;
// Set a 2 bit command of operation to be next performed.
// NOTHING: 2'b00
// Write Geig: 2'b01
// Write Mag: 2'b10
// READ: 2'b11
reg [7:0] schedule;
reg [2:0] num_cycles;
reg [2:0] write_count;
reg busy_hold;
always @(posedge CLK_48MHZ)
begin

// Shift schedule if needed
if (schedule[1:0] ==2'b00) begin
    schedule=schedule>>2;
end
// Check for unique or new data for both sources and order in schedule by open slots
if ((GEIG_DATA!==48'bZ) && (geig_prev===48'bZ)) begin
    new_geig=1'b1;
    data_buffer[47:0] = GEIG_DATA;
    geig_prev = GEIG_DATA;
    if (schedule[1:0] == 2'b00) begin
        schedule[1:0] = new_geig_cmd;
    end else if (schedule[3:2] ==2'b00) begin
        schedule[3:2] = new_geig_cmd;
    end else if (schedule[5:4] == 2'b00) begin
        schedule[5:4] = new_geig_cmd;
    end else begin
        schedule[7:6] = new_geig_cmd;
    end
end else begin
    geig_prev= GEIG_DATA;
end

if ((MAG_DATA!==80'bZ) && (mag_prev===80'bZ)) begin
    new_mag=1'b1;
    data_buffer[79:0] = MAG_DATA;
    mag_prev = MAG_DATA;
    if (schedule[1:0] == 2'b00) begin
        schedule[1:0] = new_mag_cmd;
    end else if (schedule[3:2] ==2'b00) begin
        schedule[3:2] = new_mag_cmd;
    end else if (schedule[5:4] == 2'b00) begin
        schedule[5:4] = new_mag_cmd;
    end else begin
        schedule[7:6] = new_mag_cmd;
    end
end else begin
    mag_prev=MAG_DATA;
end

if ((READ_CMD ==1'b1) && (read_prev ==1'b0))begin
    if (schedule[1:0] == 2'b00) begin
        schedule[1:0] = new_read_cmd;
    end else if (schedule[3:2] ==2'b00) begin
        schedule[3:2] = new_read_cmd;
    end else if (schedule[5:4] == 2'b00) begin
        schedule[5:4] = new_read_cmd;
    end else begin
        schedule[7:6] = new_read_cmd;
    end
end else begin
    read_prev = READ_CMD;
end

// Write packet cycle for geig and mag data
// Break data into 16 bit chunks and write for whole packet.
if ((schedule[1:0] == new_geig_cmd) || (schedule[1:0] == new_mag_cmd)) begin
    if (schedule[1:0] == new_geig_cmd) begin
        num_cycles=num_geig_cycles;
    end else begin
        num_cycles = num_mag_cycles;
    end
    // Write data for num_cycles cycles.

    if (write_count<num_cycles) begin
        // Write to data to address
        if ((busy_hold==1'b1)&&(SDRAM_STATUS==1'b0)) begin
            NEXT_WRITE<=1'b1;
            data_buffer = data_buffer >>16;
            busy_hold=1'b0;
            write_count=write_count+1;
        end

        if ((SDRAM_STATUS==1'b1) && (busy_hold==1)) begin
            CMD_OUT=2'b00;
        end
        if ((SDRAM_STATUS==1'b0) && (busy_hold==0)) begin
            NEXT_WRITE=1'b0;
            CMD_OUT=2'b10;
            BA_OUT=BA_WRITE;
            ROW_OUT=ROW_WRITE;
            COL_OUT=COL_WRITE;
            DATA_OUT=data_buffer[15:0];
            busy_hold=1'b1;
        end
    end else if (write_count==num_cycles) begin
        write_count=0;
        schedule=schedule>>2;
    end
end else if (schedule[1:0]==new_read_cmd) begin
    if ((SDRAM_STATUS==1'b0) && (busy_hold==1)) begin
        NEXT_READ=1'b1;
        buys_hold=0;
    end
    if ((SDRAM_STATUS==1'b1) && (busy_hold==1)) begin
        CMD_OUT=2'b00;
    end
    if ((SDRAM_STATUS==1'b0) && (busy_hold==0)) begin
        NEXT_READ=1'b0;
        CMD_OUT=2'b01;
        BA_OUT=BA_READ;
        ROW_OUT=ROW_READ;
        COL_OUT=COL_READ;
        busy_hold=1'b1;
    end
end

// Then send each chunk and wait for interface to complete cycle.


end

endmodule

