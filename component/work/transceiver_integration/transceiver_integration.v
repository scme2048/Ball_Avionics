//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Wed Feb 24 18:21:54 2016
// Version: v11.6 11.6.0.34
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// transceiver_integration
module transceiver_integration(
    // Inputs
    BUF2_PBRST_T9,
    CLK_48MHZ,
    MISO,
    // Outputs
    MOSI,
    SCLK,
    SS
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input  BUF2_PBRST_T9;
input  CLK_48MHZ;
input  MISO;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output MOSI;
output SCLK;
output SS;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire          BUF2_PBRST_T9;
wire          CLK_26MHZ_0_GLA;
wire          CLK_48MHZ;
wire          clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT;
wire          clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT;
wire          MISO;
wire          MOSI_net_0;
wire          orbit_control_0_tx_enable;
wire   [7:0]  read_buffer_0_BYTE_OUT;
wire          reset_pulse_0_CLK_OUT_48MHZ;
wire          reset_pulse_0_RESET;
wire          SCLK_net_0;
wire          spi_master_0_busy;
wire   [7:0]  spi_master_0_data_out;
wire          spi_mode_config_0_begin_pass;
wire   [7:0]  spi_mode_config_0_byte_out;
wire          spi_mode_config_0_next_cmd;
wire          spi_mode_config_0_start;
wire          SS_net_0;
wire   [15:0] test_constants_spi_0_DATA;
wire   [12:0] test_constants_spi_0_ROW_WRITE;
wire          SS_net_1;
wire          MOSI_net_1;
wire          SCLK_net_1;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire          VCC_net;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign VCC_net = 1'b1;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign SS_net_1   = SS_net_0;
assign SS         = SS_net_1;
assign MOSI_net_1 = MOSI_net_0;
assign MOSI       = MOSI_net_1;
assign SCLK_net_1 = SCLK_net_0;
assign SCLK       = SCLK_net_1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------CLK_26MHZ
CLK_26MHZ CLK_26MHZ_0(
        // Inputs
        .POWERDOWN ( VCC_net ),
        .CLKA      ( reset_pulse_0_CLK_OUT_48MHZ ),
        // Outputs
        .LOCK      (  ),
        .GLA       ( CLK_26MHZ_0_GLA ) 
        );

//--------clock_div_1MHZ_10HZ
clock_div_1MHZ_10HZ clock_div_1MHZ_10HZ_0(
        // Inputs
        .CLK_1MHZ_IN  ( clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT ),
        .RESET        ( reset_pulse_0_RESET ),
        // Outputs
        .CLK_10HZ_OUT ( clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT ) 
        );

//--------clock_div_26MHZ_1MHZ
clock_div_26MHZ_1MHZ clock_div_26MHZ_1MHZ_0(
        // Inputs
        .CLK_26MHZ_IN ( CLK_26MHZ_0_GLA ),
        .RESET        ( reset_pulse_0_RESET ),
        // Outputs
        .CLK_1MHZ_OUT ( clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT ) 
        );

//--------orbit_control
orbit_control orbit_control_0(
        // Inputs
        .cntr_enable ( spi_mode_config_0_begin_pass ),
        .clk         ( clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT ),
        .reset       ( reset_pulse_0_RESET ),
        // Outputs
        .tx_enable   ( orbit_control_0_tx_enable ) 
        );

//--------read_buffer
read_buffer read_buffer_0(
        // Inputs
        .CLK_48MHZ ( reset_pulse_0_CLK_OUT_48MHZ ),
        .RESET     ( reset_pulse_0_RESET ),
        .NEXT_BYTE ( spi_mode_config_0_next_cmd ),
        .DATA_READ ( test_constants_spi_0_DATA ),
        .ROW_WRITE ( test_constants_spi_0_ROW_WRITE ),
        // Outputs
        .READ_CMD  (  ),
        .BYTE_OUT  ( read_buffer_0_BYTE_OUT ) 
        );

//--------reset_pulse
reset_pulse reset_pulse_0(
        // Inputs
        .CLK_48MHZ     ( CLK_48MHZ ),
        .EXT_RESET     ( BUF2_PBRST_T9 ),
        // Outputs
        .RESET         ( reset_pulse_0_RESET ),
        .CLK_OUT_48MHZ ( reset_pulse_0_CLK_OUT_48MHZ ) 
        );

//--------spi_master
spi_master spi_master_0(
        // Inputs
        .clk      ( CLK_26MHZ_0_GLA ),
        .rst      ( reset_pulse_0_RESET ),
        .miso     ( MISO ),
        .start    ( spi_mode_config_0_start ),
        .data_in  ( spi_mode_config_0_byte_out ),
        // Outputs
        .mosi     ( MOSI_net_0 ),
        .sck      ( SCLK_net_0 ),
        .busy     ( spi_master_0_busy ),
        .new_data (  ),
        .data_out ( spi_master_0_data_out ) 
        );

//--------spi_mode_config
spi_mode_config spi_mode_config_0(
        // Inputs
        .TX_ENABLE     ( orbit_control_0_tx_enable ),
        .rst           ( reset_pulse_0_RESET ),
        .clk           ( CLK_26MHZ_0_GLA ),
        .busy          ( spi_master_0_busy ),
        .SLAVE_OUTPUT  ( spi_master_0_data_out ),
        .DATA_FROM_MEM ( read_buffer_0_BYTE_OUT ),
        // Outputs
        .mem_enable    (  ),
        .begin_pass    ( spi_mode_config_0_begin_pass ),
        .ss            ( SS_net_0 ),
        .next_cmd      ( spi_mode_config_0_next_cmd ),
        .start         ( spi_mode_config_0_start ),
        .byte_out      ( spi_mode_config_0_byte_out ) 
        );

//--------test_constants_spi
test_constants_spi test_constants_spi_0(
        // Outputs
        .DATA      ( test_constants_spi_0_DATA ),
        .ROW_WRITE ( test_constants_spi_0_ROW_WRITE ) 
        );


endmodule