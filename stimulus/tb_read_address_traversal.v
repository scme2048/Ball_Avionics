//////////////////////////////////////////////////////////////////////
// Created by Microsemi SmartDesign Tue Feb 02 00:01:07 2016
// Testbench Template
// This is a basic testbench that instantiates your design with basic 
// clock and reset pins connected.  If your design has special
// clock/reset or testbench driver requirements then you should 
// copy this file and modify it. 
//////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: tb_read_address_traversal.v
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

module tb_read_address_traversal;

parameter SYSCLK_PERIOD = 20.8333;// 48.0001MHZ

reg SYSCLK;
reg NSYSRESET;
reg next;

initial
begin
    SYSCLK = 1'b0;
    NSYSRESET = 1'b0;
    next = 1'b0;
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
    #(SYSCLK_PERIOD*10) next <= !next;


wire [1:0] BA;
wire [8:0] COL;
wire [12:0] ROW;
//////////////////////////////////////////////////////////////////////
// Instantiate Unit Under Test:  read_address_traversal
//////////////////////////////////////////////////////////////////////
read_address_traversal read_address_traversal_0 (
    // Inputs
    .NEXT(next),

    // Outputs
    .BA_READ_OUT( BA),
    .ROW_READ_OUT( ROW),
    .COL_READ_OUT(COL )

    // Inouts

);

endmodule

