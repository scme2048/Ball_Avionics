//////////////////////////////////////////////////////////////////////
// Created by Microsemi SmartDesign Wed Feb 10 18:10:33 2016
// Testbench Template
// This is a basic testbench that instantiates your design with basic 
// clock and reset pins connected.  If your design has special
// clock/reset or testbench driver requirements then you should 
// copy this file and modify it. 
//////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: tb_reset_pulse.v
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

module tb_reset_pulse;

parameter SYSCLK_PERIOD = 20.8333;// 48.0001MHZ

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


wire reset;
wire clk;
//////////////////////////////////////////////////////////////////////
// Instantiate Unit Under Test:  reset_pulse
//////////////////////////////////////////////////////////////////////
reset_pulse reset_pulse_0 (
    // Inputs
    .CLK_48MHZ(SYSCLK),
    .EXT_RESET(NSYSRESET),

    // Outputs
    .RESET(reset ),
    .CLK_OUT_48MHZ(clk)
    // Inouts

);

endmodule

