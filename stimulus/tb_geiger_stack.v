//////////////////////////////////////////////////////////////////////
// Created by Microsemi SmartDesign Thu Jan 14 20:26:00 2016
// Testbench Template
// This is a basic testbench that instantiates your design with basic 
// clock and reset pins connected.  If your design has special
// clock/reset or testbench driver requirements then you should 
// copy this file and modify it. 
//////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: tb_geiger_stack.v
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

module tb_geiger_stack;

parameter SYSCLK_PERIOD = 1000;// 10MHZ

reg SYSCLK;
reg NSYSRESET;

initial
begin
    SYSCLK = 1'b0;
    NSYSRESET = 1'b0;
end

//////////////////////////////////////////////////////////////////////
// Reset Pulse
//////////////////////////////////////////////////////////////////////
initial
begin
    #(SYSCLK_PERIOD * 10 )
        NSYSRESET = 1'b1;
end


//////////////////////////////////////////////////////////////////////
// Clock Driver
//////////////////////////////////////////////////////////////////////
always @(SYSCLK)
    #(SYSCLK_PERIOD / 2.0) SYSCLK <= !SYSCLK;


//////////////////////////////////////////////////////////////////////
// Instantiate Unit Under Test:  test_harness_geiger_stack
//////////////////////////////////////////////////////////////////////
test_harness_geiger_stack test_harness_geiger_stack_0 (
    // Inputs
    .CLK_1MHZ(SYSCLK),
    .TEST_DATA({48{1'b0}}),

    // Outputs
    .D0( ),
    .D1( ),
    .D2( ),
    .D3( ),
    .D4( ),
    .D5( ),
    .D6( ),
    .D7( )

    // Inouts

);

endmodule

