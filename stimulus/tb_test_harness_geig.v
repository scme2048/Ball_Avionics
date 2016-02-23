//////////////////////////////////////////////////////////////////////
// Created by Microsemi SmartDesign Thu Jan 14 20:28:06 2016
// Testbench Template
// This is a basic testbench that instantiates your design with basic 
// clock and reset pins connected.  If your design has special
// clock/reset or testbench driver requirements then you should 
// copy this file and modify it. 
//////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: tb_test_harness_geig.v
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

module tb_test_harness_geig;

parameter SYSCLK_PERIOD = 1000;// 1MHZ

reg SYSCLK;
reg NSYSRESET;
reg [47:0] test_data_in=10000;
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
    #(SYSCLK_PERIOD * 11 )
        NSYSRESET = 1'b0;
    #(SYSCLK_PERIOD * 12 )
        NSYSRESET = 1'b1;
end


//////////////////////////////////////////////////////////////////////
// Clock Driver
//////////////////////////////////////////////////////////////////////
always @(SYSCLK)
    #(SYSCLK_PERIOD / 2.0) SYSCLK <= !SYSCLK;

always @(SYSCLK)
    #(SYSCLK_PERIOD*20) test_data_in <= test_data_in+10200000;

wire d0o,d1o,d2o,d3o,d4o,d5o,d6o,d7o;

//////////////////////////////////////////////////////////////////////
// Instantiate Unit Under Test:  test_harness_geiger_stack
//////////////////////////////////////////////////////////////////////
test_harness_geiger_stack test_harness_geiger_stack_0 (
    // Inputs
    .CLK_1MHZ(SYSCLK),
    .TEST_DATA(test_data_in),
    .RESET(NSYSRESET),
    // Outputs
    .D0( d0o),
    .D1( d1o),
    .D2( d2o),
    .D3( d3o),
    .D4( d4o),
    .D5( d5o),
    .D6( d6o),
    .D7( d7o)



);

endmodule

