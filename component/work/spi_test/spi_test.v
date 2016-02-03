//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Tue Feb 02 21:32:34 2016
// Version: v11.6 11.6.0.34
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// spi_test
module spi_test(
    // Inputs
    CLK_48MHZ,
    // Outputs
    BUSY,
    MOSI,
    SCK
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input  CLK_48MHZ;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output BUSY;
output MOSI;
output SCK;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire         BUSY_net_0;
wire         CLK_26MHZ_0_GLA;
wire         CLK_48MHZ;
wire         clock_div_1MHZ_1KHZ_0_CLK_1KHZ_OUT;
wire         clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT;
wire         MOSI_net_0;
wire         SCK_net_0;
wire   [7:0] test_constants_spi_0_DATA;
wire         test_constants_spi_0_RESET;
wire         test_constants_spi_0_START;
wire         MOSI_net_1;
wire         SCK_net_1;
wire         BUSY_net_1;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire         VCC_net;
wire         GND_net;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign VCC_net = 1'b1;
assign GND_net = 1'b0;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign MOSI_net_1 = MOSI_net_0;
assign MOSI       = MOSI_net_1;
assign SCK_net_1  = SCK_net_0;
assign SCK        = SCK_net_1;
assign BUSY_net_1 = BUSY_net_0;
assign BUSY       = BUSY_net_1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------CLK_26MHZ
CLK_26MHZ CLK_26MHZ_0(
        // Inputs
        .POWERDOWN ( VCC_net ),
        .CLKA      ( CLK_48MHZ ),
        // Outputs
        .LOCK      (  ),
        .GLA       ( CLK_26MHZ_0_GLA ) 
        );

//--------clock_div_1MHZ_1KHZ
clock_div_1MHZ_1KHZ clock_div_1MHZ_1KHZ_0(
        // Inputs
        .CLK_1MHZ_IN  ( clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT ),
        // Outputs
        .CLK_1KHZ_OUT ( clock_div_1MHZ_1KHZ_0_CLK_1KHZ_OUT ) 
        );

//--------clock_div_26MHZ_1MHZ
clock_div_26MHZ_1MHZ clock_div_26MHZ_1MHZ_0(
        // Inputs
        .CLK_26MHZ_IN ( CLK_26MHZ_0_GLA ),
        // Outputs
        .CLK_1MHZ_OUT ( clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT ) 
        );

//--------spi_master
spi_master spi_master_0(
        // Inputs
        .clk      ( CLK_26MHZ_0_GLA ),
        .rst      ( test_constants_spi_0_RESET ),
        .miso     ( GND_net ),
        .start    ( test_constants_spi_0_START ),
        .data_in  ( test_constants_spi_0_DATA ),
        // Outputs
        .mosi     ( MOSI_net_0 ),
        .sck      ( SCK_net_0 ),
        .data_out (  ),
        .busy     ( BUSY_net_0 ),
        .new_data (  ) 
        );

//--------test_constants_spi
test_constants_spi test_constants_spi_0(
        // Inputs
        .CLK_1KHZ ( clock_div_1MHZ_1KHZ_0_CLK_1KHZ_OUT ),
        // Outputs
        .RESET    ( test_constants_spi_0_RESET ),
        .DATA     ( test_constants_spi_0_DATA ),
        .START    ( test_constants_spi_0_START ) 
        );


endmodule
