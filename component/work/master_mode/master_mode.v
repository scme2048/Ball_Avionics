//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Mon Mar 07 16:48:42 2016
// Version: v11.6 11.6.0.34
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// master_mode
module master_mode(
    // Inputs
    CLK_10,
    CLK_26,
    MISO,
    RST,
    // Outputs
    BUSY,
    MOSI,
    SCK,
    SS,
    START
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input  CLK_10;
input  CLK_26;
input  MISO;
input  RST;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output BUSY;
output MOSI;
output SCK;
output SS;
output START;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire         busy_net_0;
wire         CLK_10;
wire         CLK_26;
wire   [7:0] dummy_mem_0_data;
wire         MISO;
wire         MOSI_net_0;
wire         orbit_control_0_tx_enable;
wire         RST;
wire         SCK_net_0;
wire         spi_master_0_chip_rdy;
wire   [7:0] spi_master_0_data_out;
wire         spi_mode_config_0_begin_pass;
wire   [7:0] spi_mode_config_0_byte_out;
wire         spi_mode_config_0_next_cmd;
wire         SS_net_0;
wire         start_net_0;
wire         SCK_net_1;
wire         MOSI_net_1;
wire         SS_net_1;
wire         busy_net_1;
wire         start_net_1;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign SCK_net_1   = SCK_net_0;
assign SCK         = SCK_net_1;
assign MOSI_net_1  = MOSI_net_0;
assign MOSI        = MOSI_net_1;
assign SS_net_1    = SS_net_0;
assign SS          = SS_net_1;
assign busy_net_1  = busy_net_0;
assign BUSY        = busy_net_1;
assign start_net_1 = start_net_0;
assign START       = start_net_1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------dummy_mem
dummy_mem dummy_mem_0(
        // Inputs
        .NEXT_CMD ( spi_mode_config_0_next_cmd ),
        .CLK      ( CLK_26 ),
        .RST      ( RST ),
        // Outputs
        .data     ( dummy_mem_0_data ) 
        );

//--------orbit_control
orbit_control orbit_control_0(
        // Inputs
        .cntr_enable ( spi_mode_config_0_begin_pass ),
        .clk         ( CLK_10 ),
        .reset       ( RST ),
        // Outputs
        .tx_enable   ( orbit_control_0_tx_enable ) 
        );

//--------spi_master
spi_master spi_master_0(
        // Inputs
        .clk      ( CLK_26 ),
        .rst      ( RST ),
        .miso     ( MISO ),
        .start    ( start_net_0 ),
        .data_in  ( spi_mode_config_0_byte_out ),
        // Outputs
        .mosi     ( MOSI_net_0 ),
        .sck      ( SCK_net_0 ),
        .busy     ( busy_net_0 ),
        .chip_rdy ( spi_master_0_chip_rdy ),
        .new_data (  ),
        .data_out ( spi_master_0_data_out ) 
        );

//--------spi_mode_config2
spi_mode_config2 spi_mode_config_0(
        // Inputs
        .TX_ENABLE     ( orbit_control_0_tx_enable ),
        .rst           ( RST ),
        .clk           ( CLK_26 ),
        .busy          ( busy_net_0 ),
        .chip_rdy      ( spi_master_0_chip_rdy ),
        .SLAVE_OUTPUT  ( spi_master_0_data_out ),
        .DATA_FROM_MEM ( dummy_mem_0_data ),
        // Outputs
        .mem_enable    (  ),
        .begin_pass    ( spi_mode_config_0_begin_pass ),
        .ss            ( SS_net_0 ),
        .next_cmd      ( spi_mode_config_0_next_cmd ),
        .start         ( start_net_0 ),
        .byte_out      ( spi_mode_config_0_byte_out ) 
        );


endmodule
