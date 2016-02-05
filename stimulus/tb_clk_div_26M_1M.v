//////////////////////////////////////////////////////////////////////
// Created by Microsemi SmartDesign Thu Feb 04 11:06:46 2016
// Testbench Template
// This is a basic testbench that instantiates your design with basic 
// clock and reset pins connected.  If your design has special
// clock/reset or testbench driver requirements then you should 
// copy this file and modify it. 
//////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: tb_clk_div_26M_1M.v
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

module tb_clk_div_26M_1M;

parameter SYSCLK_PERIOD = 38.46;// 26.001MHZ

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

initial
begin
    #(SYSCLK_PERIOD*20)
        NSYSRESET=1'b0;
end


//////////////////////////////////////////////////////////////////////
// Clock Driver
//////////////////////////////////////////////////////////////////////
always @(SYSCLK)
    #(SYSCLK_PERIOD / 2.0) SYSCLK <= !SYSCLK;


wire clk_out;
//////////////////////////////////////////////////////////////////////
// Instantiate Unit Under Test:  clock_div_26MHZ_1MHZ
//////////////////////////////////////////////////////////////////////
clock_div_26MHZ_1MHZ clock_div_26MHZ_1MHZ_0 (
    // Inputs
    .CLK_26MHZ_IN(SYSCLK),
    .RESET(NSYSRESET),
    // Outputs
    .CLK_1MHZ_OUT(clk_out )

    // Inouts

);

endmodule

