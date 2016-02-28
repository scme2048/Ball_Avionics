///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: master_mode_tb.v
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

module master_mode_tb;

parameter SYSCLK26_PERIOD = 38.46154;// 26MHZ
parameter SYSCLK10_PERIOD = 100000000;// 10HZ

reg SYSCLK_26, SYSCLK_10;
reg NSYSRESET;

initial
begin
    SYSCLK_26 = 1'b0;
    SYSCLK_10 = 1'b0;
    NSYSRESET = 1'b1;
end

//////////////////////////////////////////////////////////////////////
// Reset Pulse
//////////////////////////////////////////////////////////////////////
initial
begin
    #(SYSCLK26_PERIOD * 10 )
        NSYSRESET = 1'b0;
    #(SYSCLK26_PERIOD)
        NSYSRESET = 1'b1;
end


//////////////////////////////////////////////////////////////////////
// Clock Driver
//////////////////////////////////////////////////////////////////////
always @(SYSCLK_26)
    #(SYSCLK26_PERIOD / 2.0) SYSCLK_26 <= !SYSCLK_26;
//////////////////////////////////////////////////////////////////////
always @(SYSCLK_10)
    #(SYSCLK10_PERIOD / 2.0) SYSCLK_10 <= !SYSCLK_10;


//////////////////////////////////////////////////////////////////////
// Instantiate Unit Under Test:  master_mode
//////////////////////////////////////////////////////////////////////
master_mode master_mode_0 (
    // Inputs
    .CLK_26(SYSCLK_26),
    .CLK_10(SYSCLK_10),
    .RST(NSYSRESET),
    .MISO({1{1'b0}}),

    // Outputs
    .SCK( ),
    .MOSI( ),
    .SS( )

    // Inouts

);

endmodule

