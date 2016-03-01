//////////////////////////////////////////////////////////////////////
// Created by Microsemi SmartDesign Wed Jan 13 20:39:54 2016
// Testbench Template
// This is a basic testbench that instantiates your design with basic 
// clock and reset pins connected.  If your design has special
// clock/reset or testbench driver requirements then you should 
// copy this file and modify it. 
//////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: tb_geig_data_handling.v
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

module tb_geig_data_handling;

parameter SYSCLK_PERIOD = 10000;// 100kHZ
parameter CLK_10HZ_PERIOD = 100000000;
parameter GEIG_100HZ_PERIOD= 10000000;

reg SYSCLK;
reg NSYSRESET;
reg CLK_10HZ;
reg GEIG_100HZ;

initial
begin
    SYSCLK = 1'b0;
    NSYSRESET=1'b0;
    CLK_10HZ= 1'b0;
    GEIG_100HZ = 1'b0;
    NSYSRESET = 1'b0;
end

//////////////////////////////////////////////////////////////////////
// Reset Pulse
//////////////////////////////////////////////////////////////////////
initial
begin
    #(SYSCLK_PERIOD * 1 )
        NSYSRESET = 1'b1;

end

initial
begin
    #(SYSCLK_PERIOD * 2)
        NSYSRESET=1'b0;
end

initial
begin

    #(SYSCLK_PERIOD * 3)
        NSYSRESET=1'b1;
end

initial
begin
    #(40000)
        GEIG_100HZ=!GEIG_100HZ;
end


//////////////////////////////////////////////////////////////////////
// Clock Driver
//////////////////////////////////////////////////////////////////////
always @(SYSCLK)
    #(SYSCLK_PERIOD / 2.0) SYSCLK <= !SYSCLK;

always @(SYSCLK)
    #(CLK_10HZ_PERIOD / 2.0) CLK_10HZ <= !CLK_10HZ;

always @(SYSCLK)
    #(GEIG_100HZ_PERIOD) GEIG_100HZ <= !GEIG_100HZ;

wire [79:0] d_out;
//////////////////////////////////////////////////////////////////////
// Instantiate Unit Under Test:  geig_data_handling
//////////////////////////////////////////////////////////////////////
geig_data_handling geig_data_handling_0 (
    // Inputs
    .CLK_100KHZ(SYSCLK),
    .CLK_10HZ(CLK_10HZ),
    .RESET(NSYSRESET),
    .TIMESTAMP({23{23'b00101010100101011101000}}),
    .GSTREAM(GEIG_100HZ),

    // Outputs
    .G_DATA_STACK(d_out)

    // Inouts

);

endmodule

