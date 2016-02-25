//////////////////////////////////////////////////////////////////////
// Created by Microsemi SmartDesign Wed Feb 24 18:53:34 2016
// Testbench Template
// This is a basic testbench that instantiates your design with basic 
// clock and reset pins connected.  If your design has special
// clock/reset or testbench driver requirements then you should 
// copy this file and modify it. 
//////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: spi_mode_config_tb.v
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

module spi_mode_config_tb;

parameter SYSCLK_PERIOD = 100;// 10MHZ

reg SYSCLK;
reg NSYSRESET;

initial
begin
    SYSCLK = 1'b0;
    NSYSRESET = 1'b1;
end

//////////////////////////////////////////////////////////////////////
// Reset Pulse
//////////////////////////////////////////////////////////////////////
initial
begin
    #(SYSCLK_PERIOD * 10 )
        NSYSRESET = 1'b0;
end


//////////////////////////////////////////////////////////////////////
// Clock Driver
//////////////////////////////////////////////////////////////////////
always @(SYSCLK)
    #(SYSCLK_PERIOD / 2.0) SYSCLK <= !SYSCLK;


//////////////////////////////////////////////////////////////////////
// Instantiate Unit Under Test:  spi_mode_config
//////////////////////////////////////////////////////////////////////
spi_mode_config spi_mode_config_0 (
    // Inputs
    .SLAVE_OUTPUT({8{1'b0}}),
    .DATA_FROM_MEM({8{1'b0}}),
    .TX_ENABLE({1{1'b0}}),
    .rst(NSYSRESET),
    .clk(SYSCLK),
    .busy({1{1'b0}}),

    // Outputs
    .byte_out( ),
    .mem_enable( ),
    .begin_pass( ),
    .ss( ),
    .next_cmd( ),
    .start( )

    // Inouts

);

endmodule

