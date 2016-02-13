//////////////////////////////////////////////////////////////////////
// Created by Microsemi SmartDesign Tue Feb 09 16:14:39 2016
// Testbench Template
// This is a basic testbench that instantiates your design with basic 
// clock and reset pins connected.  If your design has special
// clock/reset or testbench driver requirements then you should 
// copy this file and modify it. 
//////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: orbit_control_tb.v
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

module orbit_control_tb;

parameter SYSCLK_PERIOD = 100000000;// 10HZ

reg SYSCLK;
reg NSYSRESET;
reg START;

initial
begin
    SYSCLK = 1'b0;
    NSYSRESET = 1'b0;
    START = 1'b0;
end

//////////////////////////////////////////////////////////////////////
// Reset Pulse
//////////////////////////////////////////////////////////////////////
initial
begin
    #(SYSCLK_PERIOD * 4 )
        NSYSRESET = 1'b1;
    #(SYSCLK_PERIOD * 4 )
        NSYSRESET = 1'b0;
end


//////////////////////////////////////////////////////////////////////
// Clock Driver
//////////////////////////////////////////////////////////////////////
always @(SYSCLK)
    #(SYSCLK_PERIOD / 2.0) SYSCLK <= !SYSCLK;

always @(SYSCLK) begin
    #(SYSCLK_PERIOD *1000) START = 1'b1;
    #(SYSCLK_PERIOD *1000) START = 1'b0;

end
//////////////////////////////////////////////////////////////////////
// Instantiate Unit Under Test:  orbit_control
//////////////////////////////////////////////////////////////////////
orbit_control orbit_control_0 (
    // Inputs
    .cntr_enable(START),
    .clk(SYSCLK),
    .reset(NSYSRESET),

    // Outputs
    .tx_enable( )

    // Inouts

);

endmodule

