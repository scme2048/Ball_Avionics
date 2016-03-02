///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: tb_memory_test.v
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

module tb_memory_test;

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


wire a0,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,clk,ba0,ba1,cke,cs,cas,ras,we,dqml,dqmu;
wire db1,db2,db3,db4,db5,db6,db7;
wire d0,d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,d11,d12,d13,d14,d15;
//////////////////////////////////////////////////////////////////////
// Instantiate Unit Under Test:  memory_test
//////////////////////////////////////////////////////////////////////
memory_test memory_test_0 (
    // Inputs
    .CLK_48MHZ(SYSCLK),
    .RESET_IN_L8(NSYSRESET),

    // Outputs
    .SDRAM_A0( a0),
    .SDRAM_A1( a1),
    .SDRAM_A2( a2),
    .SDRAM_A3( a3),
    .SDRAM_A4(a4 ),
    .SDRAM_A5( a5),
    .SDRAM_A6( a6),
    .SDRAM_A7( a7),
    .SDRAM_A8( a8),
    .SDRAM_A9( a9),
    .SDRAM_A10( a10),
    .SDRAM_A11( a11),
    .SDRAM_A12( a12), 
    .SDRAM_CLK( clk),
    .SDRAM_BA0( ba0),
    .SDRAM_BA1( ba1),
    .SDRAM_CKE( cke),
    .SDRAM_CS( cs),
    .SDRAM_RAS( ras),
    .SDRAM_CAS( cas),
    .SDRAM_WE( we),
    .SDRAM_DQML( dqml),
    .SDRAM_DQMU( dqmu),
    .DB0( db0),
    .DB1( db1),
    .DB2( db2),
    .DB3( db3),
    .DB4( db4),
    .DB5( db5),
    .DB6( db6),
    .DB7( db7),

    // Inouts
    .SDRAM_D0( d0),
    .SDRAM_D1( d1),
    .SDRAM_D2( d2),
    .SDRAM_D3( d3),
    .SDRAM_D4( d4),
    .SDRAM_D5( d5),
    .SDRAM_D6( d6),
    .SDRAM_D7( d7),
    .SDRAM_D8( d8),
    .SDRAM_D9( d9),
    .SDRAM_D10( d10),
    .SDRAM_D11( d11),
    .SDRAM_D12( d12),
    .SDRAM_D13( d13),
    .SDRAM_D14( d14),
    .SDRAM_D15( d15)
    

);

endmodule

