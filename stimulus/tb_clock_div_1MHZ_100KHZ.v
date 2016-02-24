//////////////////////////////////////////////////////////////////////
// Created by Microsemi SmartDesign Tue Feb 23 23:31:17 2016
// Testbench Template
// This is a basic testbench that instantiates your design with basic 
// clock and reset pins connected.  If your design has special
// clock/reset or testbench driver requirements then you should 
// copy this file and modify it. 
//////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: tb_clock_div_1MHZ_100KHZ.v
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

module tb_clock_div_1MHZ_100KHZ;

parameter SYSCLK_PERIOD = 1000;// 1MHZ

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


wire clk_out;
//////////////////////////////////////////////////////////////////////
// Instantiate Unit Under Test:  clock_div_1MHZ_100KHZ
//////////////////////////////////////////////////////////////////////
clock_div_1MHZ_100KHZ clock_div_1MHZ_100KHZ_0 (
    // Inputs
    .CLK_1MHZ_IN(SYSCLK),
    .RESET(NSYSRESET),

    // Outputs
    .CLK_100KHZ_OUT(clk_out )

    // Inouts

);

endmodule

