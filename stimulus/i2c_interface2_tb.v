//////////////////////////////////////////////////////////////////////
// Created by Microsemi SmartDesign Sun Mar 13 20:26:08 2016
// Testbench Template
// This is a basic testbench that instantiates your design with basic 
// clock and reset pins connected.  If your design has special
// clock/reset or testbench driver requirements then you should 
// copy this file and modify it. 
//////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: i2c_interface2_tb.v
// File history:
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//
// Description: 
//
// <Description here>
//
// Targeted device: <Family::ProASIC3L> <Die::M1A3P1000L> <Package::484 FBGA>
// Author: <Name>
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 

`timescale 1ns/100ps

module i2c_interface2_tb(
input [7:0] STATE,
inout SDA);

localparam IDLE = 4'h0,
           START = 4'h1,
           ADDR = 4'h2,
           RW = 4'h3,
           ACK_IN = 4'h4,
           ACK_OUT = 4'h5,
           INIT = 4'h6,
           DATA = 4'h7,
           STOP = 4'h8;

parameter SYSCLK_PERIOD = 10000;// 100kHZ

reg SYSCLK;
reg NSYSRESET;
reg [23:0] TIMESTAMP;

assign SDA = ((STATE == ACK_IN)||(STATE == DATA)) ? 1'b0 : 1'bz;

initial
begin
    SYSCLK = 1'b0;
    NSYSRESET = 1'b1;
    TIMESTAMP = 24'd0;
end

//////////////////////////////////////////////////////////////////////
// Reset Pulse
//////////////////////////////////////////////////////////////////////
initial
begin
    #(SYSCLK_PERIOD * 10 )
        NSYSRESET = 1'b0;
    #(SYSCLK_PERIOD * 4 )
        NSYSRESET = 1'b1;
end


//////////////////////////////////////////////////////////////////////
// Clock Driver
//////////////////////////////////////////////////////////////////////
always @(SYSCLK)
    #(SYSCLK_PERIOD / 2.0) SYSCLK <= !SYSCLK;
always @(SYSCLK)
    TIMESTAMP = TIMESTAMP + 1;


//////////////////////////////////////////////////////////////////////
// Instantiate Unit Under Test:  i2c_interface2
//////////////////////////////////////////////////////////////////////
i2c_interface2 i2c_interface2_0 (
    // Inputs
    .clk(SYSCLK),
    .rst(NSYSRESET),
    .timestamp(TIMESTAMP),

    // Outputs
    .scl( ),
    .data( ),
    .state(STATE),

    // Inouts
    .sda(SDA)

);

endmodule

