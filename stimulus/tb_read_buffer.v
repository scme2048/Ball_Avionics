//////////////////////////////////////////////////////////////////////
// Created by Microsemi SmartDesign Fri Feb 19 12:52:08 2016
// Testbench Template
// This is a basic testbench that instantiates your design with basic 
// clock and reset pins connected.  If your design has special
// clock/reset or testbench driver requirements then you should 
// copy this file and modify it. 
//////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: tb_read_buffer.v
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

module tb_read_buffer;

parameter SYSCLK_PERIOD = 20.8333;// 48.0001MHZ

reg SYSCLK;
reg NSYSRESET;
reg next_byte;

initial
begin
    SYSCLK = 1'b0;
    NSYSRESET = 1'b0;
    next_byte=1'b0;
end

//////////////////////////////////////////////////////////////////////
// Reset Pulse
//////////////////////////////////////////////////////////////////////
initial
begin
    #(SYSCLK_PERIOD * 10 )
        NSYSRESET = 1'b1;
    #(SYSCLK_PERIOD*11)
        NSYSRESET=1'b0;
    #(SYSCLK_PERIOD*12)
        NSYSRESET=1'b1;
end


//////////////////////////////////////////////////////////////////////
// Clock Driver
//////////////////////////////////////////////////////////////////////
always @(SYSCLK)
    #(SYSCLK_PERIOD / 2.0) SYSCLK <= !SYSCLK;

always @(SYSCLK)
    #(SYSCLK_PERIOD*100) next_byte<=!next_byte;

//////////////////////////////////
// Output Vars
//////////////////////////////////
wire read_cmd;
wire [7:0] byte_out;

//////////////////////////////////////////////////////////////////////
// Instantiate Unit Under Test:  read_buffer
//////////////////////////////////////////////////////////////////////
read_buffer read_buffer_0 (
    // Inputs
    .CLK_48MHZ(SYSCLK),
    .RESET(NSYSRESET),
    .NEXT_BYTE(next_byte),
    .DATA_READ(16'b1111111100000000),
    .ROW_WRITE(13'b000000001111),

    // Outputs
    .READ_CMD(read_cmd ),
    .BYTE_OUT( byte_out)

    // Inouts

);

endmodule

