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

module spi_mode_config_tb(

input [7:0] bo,
input me,bp,ss,nc,s
);

parameter SYSCLK_PERIOD = 38.4615;// 10MHZ

reg SYSCLK;
reg NSYSRESET;

reg [7:0] so, dfm, cntr;
reg te;
reg [1:0] pwr_cntr;


initial
begin
    SYSCLK = 1'b0;
    NSYSRESET = 1'b1;
    so = 8'b1;
    dfm = 8'b0;
    te = 1'b0;
    pwr_cntr = 2'd0;
    cntr = 8'd0;
end

//////////////////////////////////////////////////////////////////////
// Reset Pulse
//////////////////////////////////////////////////////////////////////
initial
begin
    #(SYSCLK_PERIOD * 10 )
        NSYSRESET = 1'b0;
    #(SYSCLK_PERIOD * 1 )
        NSYSRESET = 1'b1;
end


//////////////////////////////////////////////////////////////////////
// Clock Driver
//////////////////////////////////////////////////////////////////////
always @(SYSCLK)
    #(SYSCLK_PERIOD / 2.0) SYSCLK <= !SYSCLK;

always @ (negedge ss) begin

    if (ss == 1'b0) begin
        if (pwr_cntr < 2)
            pwr_cntr <= pwr_cntr + 1;
        else 
            pwr_cntr <= 0;
            //so <= 8'b0;
    end    
end

always @ (posedge SYSCLK) begin

    if (pwr_cntr == 2)
        so <= 8'b0;
        pwr_cntr = 0;
    if (bo == 8'h34) begin
        so <= 8'b00011111;  
        if (cntr < 100)
            cntr <= cntr +1;
        else
            cntr <= 0;
            te <= 1'b1;
    end
end
        


//////////////////////////////////////////////////////////////////////
// Instantiate Unit Under Test:  spi_mode_config
//////////////////////////////////////////////////////////////////////
spi_mode_config spi_mode_config_0 (
    // Inputs
    .SLAVE_OUTPUT(so),
    .DATA_FROM_MEM(dfm),
    .TX_ENABLE(te),
    .rst(NSYSRESET),
    .clk(SYSCLK),
    .busy({1{1'b1}}),

    // Outputs
    .byte_out( bo ),
    .mem_enable( me ),
    .begin_pass( bp ),
    .ss( ss ),
    .next_cmd( nc ),
    .start( s )

    // Inouts

);



endmodule

