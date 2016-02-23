//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Sat Feb 13 19:51:52 2016
// Version: v11.6 11.6.0.34
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// spi_test
module spi_test(
    // Inputs
    CLK_48MHZ,
    RESET,
    // Outputs
    CLK_SCK,
    MEM_ENABLE,
    MOSI,
    NEXT_CMD_MEM_CONTROL,
    SS_CC1101
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input  CLK_48MHZ;
input  RESET;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output CLK_SCK;
output MEM_ENABLE;
output MOSI;
output NEXT_CMD_MEM_CONTROL;
output SS_CC1101;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire         CLK_26MHZ_0_GLA;
wire         CLK_48MHZ;
wire         CLK_SCK_net_0;
wire         clock_div_1MHZ_1KHZ_0_CLK_1KHZ_OUT;
wire         clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT;
wire         clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT;
wire         MEM_ENABLE_net_0;
wire         MOSI_net_0;
wire         NEXT_CMD_MEM_CONTROL_net_0;
wire         orbit_control_0_tx_enable;
wire         RESET;
wire         spi_master_0_busy;
wire   [7:0] spi_master_0_data_out;
wire         spi_mode_config_0_begin_pass;
wire   [7:0] spi_mode_config_0_byte_out;
wire         spi_mode_config_0_start;
wire         SS_CC1101_net_0;
wire   [7:0] test_constants_spi_0_DATA;
wire         MOSI_net_1;
wire         CLK_SCK_net_1;
wire         SS_CC1101_net_1;
wire         NEXT_CMD_MEM_CONTROL_net_1;
wire         MEM_ENABLE_net_1;
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
assign MOSI_net_1                 = MOSI_net_0;
assign MOSI                       = MOSI_net_1;
assign CLK_SCK_net_1              = CLK_SCK_net_0;
assign CLK_SCK                    = CLK_SCK_net_1;
assign SS_CC1101_net_1            = SS_CC1101_net_0;
assign SS_CC1101                  = SS_CC1101_net_1;
assign NEXT_CMD_MEM_CONTROL_net_1 = NEXT_CMD_MEM_CONTROL_net_0;
assign NEXT_CMD_MEM_CONTROL       = NEXT_CMD_MEM_CONTROL_net_1;
assign MEM_ENABLE_net_1           = MEM_ENABLE_net_0;
assign MEM_ENABLE                 = MEM_ENABLE_net_1;
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
        .RESET        ( RESET ),
        // Outputs
        .CLK_1KHZ_OUT ( clock_div_1MHZ_1KHZ_0_CLK_1KHZ_OUT ) 
        );

//--------clock_div_1MHZ_10HZ
clock_div_1MHZ_10HZ clock_div_1MHZ_10HZ_0(
        // Inputs
        .CLK_1MHZ_IN  ( clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT ),
        .RESET        ( RESET ),
        // Outputs
        .CLK_10HZ_OUT ( clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT ) 
        );

//--------clock_div_26MHZ_1MHZ
clock_div_26MHZ_1MHZ clock_div_26MHZ_1MHZ_0(
        // Inputs
        .CLK_26MHZ_IN ( CLK_26MHZ_0_GLA ),
        .RESET        ( RESET ),
        // Outputs
        .CLK_1MHZ_OUT ( clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT ) 
        );

//--------orbit_control
orbit_control orbit_control_0(
        // Inputs
        .cntr_enable ( spi_mode_config_0_begin_pass ),
        .clk         ( clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT ),
        .reset       ( RESET ),
        // Outputs
        .tx_enable   ( orbit_control_0_tx_enable ) 
        );

//--------spi_master
spi_master spi_master_0(
        // Inputs
        .clk      ( CLK_26MHZ_0_GLA ),
        .rst      ( RESET ),
        .miso     ( GND_net ),
        .start    ( spi_mode_config_0_start ),
        .data_in  ( spi_mode_config_0_byte_out ),
        // Outputs
        .mosi     ( MOSI_net_0 ),
        .sck      ( CLK_SCK_net_0 ),
        .busy     ( spi_master_0_busy ),
        .new_data (  ),
        .data_out ( spi_master_0_data_out ) 
        );

//--------spi_mode_config
spi_mode_config spi_mode_config_0(
        // Inputs
        .SLAVE_OUTPUT  ( spi_master_0_data_out ),
        .DATA_FROM_MEM ( test_constants_spi_0_DATA ),
        .TX_ENABLE     ( orbit_control_0_tx_enable ),
        .rst           ( RESET ),
        .clk           ( CLK_26MHZ_0_GLA ),
        .busy          ( spi_master_0_busy ),
        // Outputs
        .byte_out      ( spi_mode_config_0_byte_out ),
        .mem_enable    ( MEM_ENABLE_net_0 ),
        .begin_pass    ( spi_mode_config_0_begin_pass ),
        .ss            ( SS_CC1101_net_0 ),
        .next_cmd      ( NEXT_CMD_MEM_CONTROL_net_0 ),
        .start         ( spi_mode_config_0_start ) 
        );

//--------test_constants_spi
test_constants_spi test_constants_spi_0(
        // Inputs
        .CLK_1KHZ ( clock_div_1MHZ_1KHZ_0_CLK_1KHZ_OUT ),
        .RESET    ( RESET ),
        // Outputs
        .START    (  ),
        .DATA     ( test_constants_spi_0_DATA ) 
        );


endmodule
