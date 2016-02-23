///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: tb_geiger_integration.v
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

module tb_geiger_integration;

parameter SYSCLK_PERIOD = 20.8333;// 48.0001MHZ

reg SYSCLK;
reg NSYSRESET;
reg gstream;

initial
begin
    SYSCLK = 1'b0;
    NSYSRESET = 1'b0;
    gstream=1'b0;
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
begin
    #(SYSCLK_PERIOD / 2.0) SYSCLK <= !SYSCLK;
end

always @(SYSCLK)
begin
    #(SYSCLK_PERIOD*1000000) gstream <= !gstream;
end

wire d0,d1,d2,d3,d4,d5,d6,d7;
//////////////////////////////////////////////////////////////////////
// Instantiate Unit Under Test:  geiger_integration
//////////////////////////////////////////////////////////////////////
geiger_integration geiger_integration_0 (
    // Inputs
    .CLK_48MHZ(SYSCLK),
    .G_STREAM(gstream),
    .BUF2_PBRST_N_T9(NSYSRESET),

    // Outputs
    .D0_OUT(d0 ),
    .D1_OUT( d1),
    .D2_OUT( d2),
    .D3_OUT( d3),
    .D4_OUT( d4),
    .D5_OUT( d5),
    .D6_OUT( d6),
    .D7_OUT( d7)

    // Inouts

);

endmodule

