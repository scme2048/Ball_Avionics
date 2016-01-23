//////////////////////////////////////////////////////////////////////
// Created by Microsemi SmartDesign Fri Jan 22 11:04:35 2016
// Testbench Template
// This is a basic testbench that instantiates your design with basic 
// clock and reset pins connected.  If your design has special
// clock/reset or testbench driver requirements then you should 
// copy this file and modify it. 
//////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: tb_sdram_interface.v
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

module tb_sdram_interface;

parameter SYSCLK_PERIOD = 20.8333;// 48.0001MHZ

reg SYSCLK;
reg NSYSRESET;
reg [23:0] timestamp;

initial
begin
    SYSCLK = 1'b0;
    NSYSRESET = 1'b0;
    timestamp=24'b0;
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

always @(SYSCLK)
    #(100000000) timestamp=timestamp+1;


//Output Wires

wire A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,
A12,CLK,BA0,BA1,CKE,CS,RAS,CAS,WE,DQML,DQMU;
//////////////////////////////////////////////////////////////////////
// Instantiate Unit Under Test:  sdram_interface
//////////////////////////////////////////////////////////////////////
sdram_interface sdram_interface_0 (
    // Inputs
    .CLK_48MHZ(SYSCLK),
    .TIMESTAMP(timestamp),
    .A_IN_BANK({2{1'b0}}),
    .A_IN_COL({9{1'b0}}),
    .A_IN_ROW({13{1'b0}}),
    .D_IN({16{1'b0}}),
    .CMD_IN({2{1'b0}}),

    // Outputs
    .SDRAM_A0(A0 ),
    .SDRAM_A1(A1 ),
    .SDRAM_A2(A2 ),
    .SDRAM_A3(A3 ),
    .SDRAM_A4(A4 ),
    .SDRAM_A5(A5 ),
    .SDRAM_A6(A6 ),
    .SDRAM_A7(A7 ),
    .SDRAM_A8(A8 ),
    .SDRAM_A9(A9 ),
    .SDRAM_A10(A10 ),
    .SDRAM_A11(A11 ),
    .SDRAM_A12(A12 ),
    .SDRAM_CLK(CLK ),
    .SDRAM_BA0(BA0 ),
    .SDRAM_BA1(BA1 ),
    .SDRAM_CKE(CKE ),
    .SDRAM_CS(CS ),
    .SDRAM_RAS(RAS ),
    .SDRAM_CAS(CAS ),
    .SDRAM_WE(WE ),
    .SDRAM_DQML(DQML ),
    .SDRAM_DQMU(DQMU ),
    .STATUS( ),
    .DATA_READ( ),

    // Inouts
    .SDRAM_D0( ),
    .SDRAM_D1( ),
    .SDRAM_D2( ),
    .SDRAM_D3( ),
    .SDRAM_D4( ),
    .SDRAM_D5( ),
    .SDRAM_D6( ),
    .SDRAM_D7( ),
    .SDRAM_D8( ),
    .SDRAM_D9( ),
    .SDRAM_D10( ),
    .SDRAM_D11( ),
    .SDRAM_D12( ),
    .SDRAM_D13( ),
    .SDRAM_D14( ),
    .SDRAM_D15( )

);

endmodule

