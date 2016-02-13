//////////////////////////////////////////////////////////////////////
// Created by Microsemi SmartDesign Mon Feb 08 23:41:53 2016
// Testbench Template
// This is a basic testbench that instantiates your design with basic 
// clock and reset pins connected.  If your design has special
// clock/reset or testbench driver requirements then you should 
// copy this file and modify it. 
//////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: tb_memory_controller.v
// File history:
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//
// Description: 
//
// <Description here>
//
// Targeted device: <Family::ProASIC3L> <Die::A3PE3000L> <Package::484 FBGA>
// Author: <Name>
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 

`timescale 1ns/100ps

module tb_memory_controller;

parameter SYSCLK_PERIOD = 20.8333;// 48.0001MHZ

reg SYSCLK;
reg NSYSRESET;
reg read_cmd;
reg sdram_status;
reg [79:0] mag_data;
reg [47:0] geig_data;
reg [1:0] ba_read;
reg [8:0] col_read;
reg [12:0] row_read;
reg [1:0] ba_write;
reg [8:0] col_write;
reg [12:0] row_write;
reg mag_toggle;
reg geig_toggle;
reg [5:0] mag_count;

initial
begin
    SYSCLK = 1'b0;
    NSYSRESET = 1'b0;
    sdram_status = 1'b0;
   // mag_data = 80'bZ;
    geig_data = 48'bZ;
    ba_read = 2'b00;
    col_read=9'b000000000;
    row_read = 13'b0000000000000;
    ba_write = 2'b00;
    col_write = 9'b000000000;
    row_write = 13'b0000000000000;
    mag_toggle=1'b0;
    geig_toggle=1'b0;
    mag_count=0;
    read_cmd=1'b0;
end

//////////////////////////////////////////////////////////////////////
// Reset Pulse
//////////////////////////////////////////////////////////////////////
initial
begin
    #(SYSCLK_PERIOD * 1 )
        NSYSRESET = 1'b1;
    #(SYSCLK_PERIOD * 2 )
        NSYSRESET = 1'b0;
    #(SYSCLK_PERIOD * 3 )
        NSYSRESET = 1'b1;
        
end


wire next_read,next_write;
wire [15:0] data_out;
wire [1:0] ba_out;
wire [8:0] col_out;
wire [12:0] row_out;
wire [1:0] cmd_out;

//////////////////////////////////////////////////////////////////////
// Clock Driver
//////////////////////////////////////////////////////////////////////
always @(SYSCLK) begin
    #(SYSCLK_PERIOD / 2.0) SYSCLK <= !SYSCLK;
end

always @(SYSCLK)
    #(SYSCLK_PERIOD*1000) mag_toggle<=!mag_toggle;
always @(SYSCLK)
    #(SYSCLK_PERIOD*1000) geig_toggle<=!geig_toggle;
always @(SYSCLK)
    #(SYSCLK_PERIOD*1000) read_cmd<=!read_cmd;

always @(SYSCLK) begin
    if (mag_toggle==1'b1) begin
        mag_data=80'h55554444333322221111;
    end else begin
        mag_data=80'bZ;
    end

    if (geig_toggle==1'b1) begin
        geig_data=48'h333322221111;
    end else begin
        geig_data=48'bZ;
    end

    if ((cmd_out==1) || (cmd_out==2)) begin
        sdram_status = 1'b1;
    end else if ((sdram_status==1'b1) && (mag_count<10)) begin
        mag_count=mag_count+1;
    end else if (mag_count==10) begin
        mag_count=0;
        sdram_status=1'b0;
    end
    
end
//////////////////////////////////////////////////////////////////////
// Instantiate Unit Under Test:  memory_controller
//////////////////////////////////////////////////////////////////////
memory_controller memory_controller_0 (
    // Inputs
    .CLK_48MHZ(SYSCLK),
    .RESET(NSYSRESET),
    .SDRAM_STATUS(sdram_status),
    .READ_CMD(read_cmd),
    .GEIG_DATA(geig_data),
    .MAG_DATA(mag_data),
    .BA_READ(ba_read),
    .COL_READ(col_read),
    .ROW_READ(row_read),
    .BA_WRITE(ba_write),
    .COL_WRITE(col_write),
    .ROW_WRITE(row_write),

    // Outputs
    .NEXT_READ(next_read ),
    .NEXT_WRITE( next_write),
    .DATA_OUT(data_out ),
    .BA_OUT( ba_out),
    .COL_OUT(col_out ),
    .ROW_OUT(row_out ),
    .CMD_OUT(cmd_out )

    // Inouts

);

endmodule

