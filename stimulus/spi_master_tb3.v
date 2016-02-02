//////////////////////////////////////////////////////////////////////
// Created by Microsemi SmartDesign Tue Jan 19 19:45:43 2016
// Testbench Template
// This is a basic testbench that instantiates your design with basic 
// clock and reset pins connected.  If your design has special
// clock/reset or testbench driver requirements then you should 
// copy this file and modify it. 
//////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: spi_master_tb3.v
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

module spi_master_tb3;

parameter SYSCLK_PERIOD = 38.46154;// 26MHZ
parameter ORBIT_TIME = 500; // 

reg SYSCLK;
reg NSYSRESET;
reg [7:0] DATAIN;

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
    #(SYSCLK_PERIOD * 4 )
        NSYSRESET = 1'b1;
    #(SYSCLK_PERIOD * 4 )
        NSYSRESET = 1'b0;
        DATAIN = 8'b01010100;
    
end


//////////////////////////////////////////////////////////////////////
// Clock Driver
//////////////////////////////////////////////////////////////////////
always @(SYSCLK)
    #(SYSCLK_PERIOD / 2.0) SYSCLK <= !SYSCLK;
//always @(SYSCLK) begin
//    #(ORBIT_TIME) DATAIN = 8'b01010100;
//    #(SYSCLK_PERIOD*20) DATAIN = 8'bz;
//    #(SYSCLK_PERIOD*20) DATAIN = 8'b01010010;
//    #(SYSCLK_PERIOD*20) DATAIN = 8'bz;
//end

//////////////////////////////////////////////////////////////////////
// Instantiate Unit Under Test:  spi_master
//////////////////////////////////////////////////////////////////////
spi_master spi_master_0 (
    // Inputs
    .clk(SYSCLK),
    .rst(NSYSRESET),
    .miso({1{1'b0}}),
    .start({1{1'b1}}),
    .data_in({DATAIN}),
    //.data_in({8{1'b0}}),

    // Outputs
    .mosi( ),
    .sck( ),
    .data_out( ),
    .busy( ),
    .new_data( )

    // Inouts

);

endmodule

