///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: tb_spi_test.v
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

module tb_spi_test;

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
    #(SYSCLK_PERIOD * 10 )
        NSYSRESET = 1'b0;
end

//initial
//begin
     //#(SYSCLK_PERIOD * 20 )
        //NSYSRESET = 1'b0;
//end



//////////////////////////////////////////////////////////////////////
// Clock Driver
//////////////////////////////////////////////////////////////////////
always @(SYSCLK)
    #(SYSCLK_PERIOD / 2.0) SYSCLK <= !SYSCLK;


wire mosi;
wire sck;
wire busy;
//////////////////////////////////////////////////////////////////////
// Instantiate Unit Under Test:  spi_test
//////////////////////////////////////////////////////////////////////
// remove the ba?
spi_test spi_test_0 (
    // Inputs
    .CLK_48MHZ(SYSCLK),
    .RESET(NSYSRESET),
    // Outputs
    .MOSI( mosi),
    .CLK_SCK( sck),
    .BUSY( busy)

    // Inouts

);

endmodule

