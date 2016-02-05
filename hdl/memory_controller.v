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

module memory_controller( CLK_48MHZ,SDRAM_STATUS, GEIG_DATA, MAG_DATA, BA_READ,COL_READ, ROW_READ, BA_WRITE, COL_WRITE, ROW_WRITE
,NEXT_READ,NEXT_WRITE,DATA_OUT,BA_OUT,COL_OUT,ROW_OUT);

// Inputs
input CLK_48MHZ,SDRAM_STATUS;
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


/////Statements
// Local Vars
reg [47:0] geig_prev;
reg [47:0] geig_buffer;
reg new_geig;

reg [79:0] mag_prev;
reg [79:0] mag_buffer;
reg new_mag;

always @(posedge CLK_48MHZ)
begin

// Check for unique or new data for both sources
if ((GEIG_DATA!==48'bZ) && (geig_prev===48'bZ)) begin
    new_geig=1'b1;
    geig_buffer = GEIG_DATA;
    geig_prev = GEIG_DATA;
end else begin
    geig_prev= GEIG_DATA;
end

if ((MAG_DATA!==80'bZ) && (mag_prev===80'bZ)) begin
    new_mag=1'b1;
    mag_buffer = MAG_DATA;
    mag_prev = MAG_DATA;
end else begin
    mag_prev=MAG_DATA;
end

// Then break data into 16 bit chunks.


// Then send each chunk and wait for interface to complete cycle.


end

endmodule

