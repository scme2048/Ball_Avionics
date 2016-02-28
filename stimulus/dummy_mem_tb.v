//////////////////////////////////////////////////////////////////////
// Created by Microsemi SmartDesign Fri Feb 26 10:51:06 2016
// Testbench Template
// This is a basic testbench that instantiates your design with basic 
// clock and reset pins connected.  If your design has special
// clock/reset or testbench driver requirements then you should 
// copy this file and modify it. 
//////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: dummy_mem_tb.v
// File history:
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//
// Description: 
//
// <Description here>
//
// Targeted device: <Family::ProASIC3L> <Die::A3P1000L> <Package::484 FBGA>
// Author: <Name>
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 

`timescale 1ns/100ps

module dummy_mem_tb;

parameter SYSCLK_PERIOD = 38.46154;// 26MHZ

reg SYSCLK;
reg NSYSRESET;
reg nxt;

initial
begin
    SYSCLK = 1'b0;
    NSYSRESET = 1'b1;
    nxt = 1'b0;
end

//////////////////////////////////////////////////////////////////////
// Reset Pulse
//////////////////////////////////////////////////////////////////////
initial
begin
    #(SYSCLK_PERIOD * 10 )
        NSYSRESET = 1'b0;
    #(SYSCLK_PERIOD)
        NSYSRESET = 1'b1;
end


//////////////////////////////////////////////////////////////////////
// Clock Driver
//////////////////////////////////////////////////////////////////////
always @(SYSCLK)
    #(SYSCLK_PERIOD / 2.0) SYSCLK <= !SYSCLK;
    
always @(SYSCLK)
    #(SYSCLK_PERIOD * 20) nxt <= ~nxt;


//////////////////////////////////////////////////////////////////////
// Instantiate Unit Under Test:  dummy_mem
//////////////////////////////////////////////////////////////////////
dummy_mem dummy_mem_0 (
    // Inputs
    .NEXT_CMD(nxt),
    .CLK(SYSCLK),
    .RST(NSYSRESET),

    // Outputs
    .data( )

    // Inouts

);

endmodule

