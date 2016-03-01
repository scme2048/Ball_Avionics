//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Mon Feb 29 23:56:28 2016
// Version: v11.6 11.6.0.34
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// full_sys
module full_sys(
    // Inputs
    CLK_48MHZ,
    GEIG_DATA,
    MISO,
    RESET_IN_L8,
    // Outputs
    MOSI,
    SCK,
    SDRAM_A0,
    SDRAM_A1,
    SDRAM_A10,
    SDRAM_A11,
    SDRAM_A12,
    SDRAM_A2,
    SDRAM_A3,
    SDRAM_A4,
    SDRAM_A5,
    SDRAM_A6,
    SDRAM_A7,
    SDRAM_A8,
    SDRAM_A9,
    SDRAM_BA0,
    SDRAM_BA1,
    SDRAM_CAS,
    SDRAM_CKE,
    SDRAM_CLK,
    SDRAM_CS,
    SDRAM_DQML,
    SDRAM_DQMU,
    SDRAM_RAS,
    SDRAM_WE,
    SS,
    // Inouts
    SDRAM_D0,
    SDRAM_D1,
    SDRAM_D10,
    SDRAM_D11,
    SDRAM_D12,
    SDRAM_D13,
    SDRAM_D14,
    SDRAM_D15,
    SDRAM_D2,
    SDRAM_D3,
    SDRAM_D4,
    SDRAM_D5,
    SDRAM_D6,
    SDRAM_D7,
    SDRAM_D8,
    SDRAM_D9
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input  CLK_48MHZ;
input  GEIG_DATA;
input  MISO;
input  RESET_IN_L8;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output MOSI;
output SCK;
output SDRAM_A0;
output SDRAM_A1;
output SDRAM_A10;
output SDRAM_A11;
output SDRAM_A12;
output SDRAM_A2;
output SDRAM_A3;
output SDRAM_A4;
output SDRAM_A5;
output SDRAM_A6;
output SDRAM_A7;
output SDRAM_A8;
output SDRAM_A9;
output SDRAM_BA0;
output SDRAM_BA1;
output SDRAM_CAS;
output SDRAM_CKE;
output SDRAM_CLK;
output SDRAM_CS;
output SDRAM_DQML;
output SDRAM_DQMU;
output SDRAM_RAS;
output SDRAM_WE;
output SS;
//--------------------------------------------------------------------
// Inout
//--------------------------------------------------------------------
inout  SDRAM_D0;
inout  SDRAM_D1;
inout  SDRAM_D10;
inout  SDRAM_D11;
inout  SDRAM_D12;
inout  SDRAM_D13;
inout  SDRAM_D14;
inout  SDRAM_D15;
inout  SDRAM_D2;
inout  SDRAM_D3;
inout  SDRAM_D4;
inout  SDRAM_D5;
inout  SDRAM_D6;
inout  SDRAM_D7;
inout  SDRAM_D8;
inout  SDRAM_D9;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire          CLK_1MHZ_0_GLA;
wire          CLK_26MHZ_0_GLA;
wire          CLK_48MHZ;
wire          clock_div_1MHZ_1KHZ_0_CLK_1KHZ_OUT;
wire          clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT;
wire          clock_div_1MHZ_100KHZ_0_CLK_100KHZ_OUT;
wire          GEIG_DATA;
wire   [79:0] geig_data_handling_0_G_DATA_STACK_1;
wire   [1:0]  memory_controller_0_BA_OUT;
wire   [1:0]  memory_controller_0_CMD_OUT;
wire   [8:0]  memory_controller_0_COL_OUT;
wire   [15:0] memory_controller_0_DATA_OUT;
wire          memory_controller_0_NEXT_READ;
wire          memory_controller_0_NEXT_WRITE;
wire   [12:0] memory_controller_0_ROW_OUT;
wire          MISO;
wire          MOSI_net_0;
wire          orbit_control_0_tx_enable;
wire   [1:0]  read_address_traversal_0_BA_READ_OUT;
wire   [8:0]  read_address_traversal_0_COL_READ_OUT;
wire   [12:0] read_address_traversal_0_ROW_READ_OUT;
wire   [7:0]  read_buffer_0_BYTE_OUT;
wire          read_buffer_0_READ_CMD;
wire          RESET_IN_L8;
wire          reset_pulse_0_CLK_OUT_48MHZ;
wire          reset_pulse_0_RESET;
wire          SCK_net_0;
wire          SDRAM_A0_net_0;
wire          SDRAM_A1_net_0;
wire          SDRAM_A2_net_0;
wire          SDRAM_A3_net_0;
wire          SDRAM_A4_net_0;
wire          SDRAM_A5_net_0;
wire          SDRAM_A6_net_0;
wire          SDRAM_A7_net_0;
wire          SDRAM_A8_net_0;
wire          SDRAM_A9_net_0;
wire          SDRAM_A10_net_0;
wire          SDRAM_A11_net_0;
wire          SDRAM_A12_net_0;
wire          SDRAM_BA0_net_0;
wire          SDRAM_BA1_net_0;
wire          SDRAM_CAS_net_0;
wire          SDRAM_CKE_net_0;
wire          SDRAM_CLK_net_0;
wire          SDRAM_CS_net_0;
wire          SDRAM_D0;
wire          SDRAM_D1;
wire          SDRAM_D2;
wire          SDRAM_D3;
wire          SDRAM_D4;
wire          SDRAM_D5;
wire          SDRAM_D6;
wire          SDRAM_D7;
wire          SDRAM_D8;
wire          SDRAM_D9;
wire          SDRAM_D10;
wire          SDRAM_D11;
wire          SDRAM_D12;
wire          SDRAM_D13;
wire          SDRAM_D14;
wire          SDRAM_D15;
wire          SDRAM_DQML_net_0;
wire          SDRAM_DQMU_net_0;
wire   [15:0] sdram_interface_0_DATA_READ;
wire          sdram_interface_0_STATUS;
wire          SDRAM_RAS_net_0;
wire          SDRAM_WE_net_0;
wire          spi_master_0_busy;
wire   [7:0]  spi_master_0_data_out;
wire          spi_mode_config_0_begin_pass;
wire   [7:0]  spi_mode_config_0_byte_out;
wire          spi_mode_config_0_next_cmd;
wire          spi_mode_config_0_start;
wire          SS_net_0;
wire   [23:0] timestamp_0_TIMESTAMP;
wire   [1:0]  write_address_traversal_0_BA_WRITE_OUT;
wire   [8:0]  write_address_traversal_0_COL_WRITE_OUT;
wire   [12:0] write_address_traversal_0_ROW_WRITE_OUT;
wire          MOSI_net_1;
wire          SS_net_1;
wire          SCK_net_1;
wire          SDRAM_A0_net_1;
wire          SDRAM_A1_net_1;
wire          SDRAM_A2_net_1;
wire          SDRAM_A3_net_1;
wire          SDRAM_A4_net_1;
wire          SDRAM_A5_net_1;
wire          SDRAM_A6_net_1;
wire          SDRAM_A7_net_1;
wire          SDRAM_A8_net_1;
wire          SDRAM_A9_net_1;
wire          SDRAM_A10_net_1;
wire          SDRAM_A12_net_1;
wire          SDRAM_A11_net_1;
wire          SDRAM_CLK_net_1;
wire          SDRAM_BA0_net_1;
wire          SDRAM_BA1_net_1;
wire          SDRAM_CKE_net_1;
wire          SDRAM_CS_net_1;
wire          SDRAM_RAS_net_1;
wire          SDRAM_CAS_net_1;
wire          SDRAM_WE_net_1;
wire          SDRAM_DQML_net_1;
wire          SDRAM_DQMU_net_1;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire          VCC_net;
wire   [79:0] MAG_DATA_const_net_0;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign VCC_net              = 1'b1;
assign MAG_DATA_const_net_0 = 80'h00000000000000000000;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign MOSI_net_1       = MOSI_net_0;
assign MOSI             = MOSI_net_1;
assign SS_net_1         = SS_net_0;
assign SS               = SS_net_1;
assign SCK_net_1        = SCK_net_0;
assign SCK              = SCK_net_1;
assign SDRAM_A0_net_1   = SDRAM_A0_net_0;
assign SDRAM_A0         = SDRAM_A0_net_1;
assign SDRAM_A1_net_1   = SDRAM_A1_net_0;
assign SDRAM_A1         = SDRAM_A1_net_1;
assign SDRAM_A2_net_1   = SDRAM_A2_net_0;
assign SDRAM_A2         = SDRAM_A2_net_1;
assign SDRAM_A3_net_1   = SDRAM_A3_net_0;
assign SDRAM_A3         = SDRAM_A3_net_1;
assign SDRAM_A4_net_1   = SDRAM_A4_net_0;
assign SDRAM_A4         = SDRAM_A4_net_1;
assign SDRAM_A5_net_1   = SDRAM_A5_net_0;
assign SDRAM_A5         = SDRAM_A5_net_1;
assign SDRAM_A6_net_1   = SDRAM_A6_net_0;
assign SDRAM_A6         = SDRAM_A6_net_1;
assign SDRAM_A7_net_1   = SDRAM_A7_net_0;
assign SDRAM_A7         = SDRAM_A7_net_1;
assign SDRAM_A8_net_1   = SDRAM_A8_net_0;
assign SDRAM_A8         = SDRAM_A8_net_1;
assign SDRAM_A9_net_1   = SDRAM_A9_net_0;
assign SDRAM_A9         = SDRAM_A9_net_1;
assign SDRAM_A10_net_1  = SDRAM_A10_net_0;
assign SDRAM_A10        = SDRAM_A10_net_1;
assign SDRAM_A12_net_1  = SDRAM_A12_net_0;
assign SDRAM_A12        = SDRAM_A12_net_1;
assign SDRAM_A11_net_1  = SDRAM_A11_net_0;
assign SDRAM_A11        = SDRAM_A11_net_1;
assign SDRAM_CLK_net_1  = SDRAM_CLK_net_0;
assign SDRAM_CLK        = SDRAM_CLK_net_1;
assign SDRAM_BA0_net_1  = SDRAM_BA0_net_0;
assign SDRAM_BA0        = SDRAM_BA0_net_1;
assign SDRAM_BA1_net_1  = SDRAM_BA1_net_0;
assign SDRAM_BA1        = SDRAM_BA1_net_1;
assign SDRAM_CKE_net_1  = SDRAM_CKE_net_0;
assign SDRAM_CKE        = SDRAM_CKE_net_1;
assign SDRAM_CS_net_1   = SDRAM_CS_net_0;
assign SDRAM_CS         = SDRAM_CS_net_1;
assign SDRAM_RAS_net_1  = SDRAM_RAS_net_0;
assign SDRAM_RAS        = SDRAM_RAS_net_1;
assign SDRAM_CAS_net_1  = SDRAM_CAS_net_0;
assign SDRAM_CAS        = SDRAM_CAS_net_1;
assign SDRAM_WE_net_1   = SDRAM_WE_net_0;
assign SDRAM_WE         = SDRAM_WE_net_1;
assign SDRAM_DQML_net_1 = SDRAM_DQML_net_0;
assign SDRAM_DQML       = SDRAM_DQML_net_1;
assign SDRAM_DQMU_net_1 = SDRAM_DQMU_net_0;
assign SDRAM_DQMU       = SDRAM_DQMU_net_1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------CLK_1MHZ
CLK_1MHZ CLK_1MHZ_0(
        // Inputs
        .POWERDOWN ( VCC_net ),
        .CLKA      ( reset_pulse_0_CLK_OUT_48MHZ ),
        // Outputs
        .LOCK      (  ),
        .GLA       ( CLK_1MHZ_0_GLA ) 
        );

//--------CLK_26MHZ
CLK_26MHZ CLK_26MHZ_0(
        // Inputs
        .POWERDOWN ( VCC_net ),
        .CLKA      ( reset_pulse_0_CLK_OUT_48MHZ ),
        // Outputs
        .LOCK      (  ),
        .GLA       ( CLK_26MHZ_0_GLA ) 
        );

//--------clock_div_1MHZ_1KHZ
clock_div_1MHZ_1KHZ clock_div_1MHZ_1KHZ_0(
        // Inputs
        .CLK_1MHZ_IN  ( CLK_1MHZ_0_GLA ),
        .RESET        ( reset_pulse_0_RESET ),
        // Outputs
        .CLK_1KHZ_OUT ( clock_div_1MHZ_1KHZ_0_CLK_1KHZ_OUT ) 
        );

//--------clock_div_1MHZ_10HZ
clock_div_1MHZ_10HZ clock_div_1MHZ_10HZ_0(
        // Inputs
        .CLK_1MHZ_IN  ( CLK_1MHZ_0_GLA ),
        .RESET        ( reset_pulse_0_RESET ),
        // Outputs
        .CLK_10HZ_OUT ( clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT ) 
        );

//--------clock_div_1MHZ_100KHZ
clock_div_1MHZ_100KHZ clock_div_1MHZ_100KHZ_0(
        // Inputs
        .CLK_1MHZ_IN    ( CLK_1MHZ_0_GLA ),
        .RESET          ( reset_pulse_0_RESET ),
        // Outputs
        .CLK_100KHZ_OUT ( clock_div_1MHZ_100KHZ_0_CLK_100KHZ_OUT ) 
        );

//--------geig_data_handling
geig_data_handling geig_data_handling_0(
        // Inputs
        .CLK_100KHZ   ( clock_div_1MHZ_100KHZ_0_CLK_100KHZ_OUT ),
        .CLK_10HZ     ( clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT ),
        .RESET        ( reset_pulse_0_RESET ),
        .GSTREAM      ( GEIG_DATA ),
        .TIMESTAMP    ( timestamp_0_TIMESTAMP ),
        // Outputs
        .G_DATA_STACK ( geig_data_handling_0_G_DATA_STACK_1 ) 
        );

//--------memory_controller
memory_controller memory_controller_0(
        // Inputs
        .CLK_48MHZ    ( reset_pulse_0_CLK_OUT_48MHZ ),
        .RESET        ( reset_pulse_0_RESET ),
        .SDRAM_STATUS ( sdram_interface_0_STATUS ),
        .READ_CMD     ( read_buffer_0_READ_CMD ),
        .GEIG_DATA    ( geig_data_handling_0_G_DATA_STACK_1 ),
        .MAG_DATA     ( MAG_DATA_const_net_0 ),
        .BA_READ      ( read_address_traversal_0_BA_READ_OUT ),
        .COL_READ     ( read_address_traversal_0_COL_READ_OUT ),
        .ROW_READ     ( read_address_traversal_0_ROW_READ_OUT ),
        .BA_WRITE     ( write_address_traversal_0_BA_WRITE_OUT ),
        .COL_WRITE    ( write_address_traversal_0_COL_WRITE_OUT ),
        .ROW_WRITE    ( write_address_traversal_0_ROW_WRITE_OUT ),
        // Outputs
        .NEXT_READ    ( memory_controller_0_NEXT_READ ),
        .NEXT_WRITE   ( memory_controller_0_NEXT_WRITE ),
        .DATA_OUT     ( memory_controller_0_DATA_OUT ),
        .BA_OUT       ( memory_controller_0_BA_OUT ),
        .COL_OUT      ( memory_controller_0_COL_OUT ),
        .ROW_OUT      ( memory_controller_0_ROW_OUT ),
        .CMD_OUT      ( memory_controller_0_CMD_OUT ) 
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

//--------read_address_traversal
read_address_traversal read_address_traversal_0(
        // Inputs
        .NEXT         ( memory_controller_0_NEXT_READ ),
        .RESET        ( reset_pulse_0_RESET ),
        // Outputs
        .BA_READ_OUT  ( read_address_traversal_0_BA_READ_OUT ),
        .ROW_READ_OUT ( read_address_traversal_0_ROW_READ_OUT ),
        .COL_READ_OUT ( read_address_traversal_0_COL_READ_OUT ) 
        );

//--------read_buffer
read_buffer read_buffer_0(
        // Inputs
        .CLK_48MHZ ( reset_pulse_0_CLK_OUT_48MHZ ),
        .RESET     ( reset_pulse_0_RESET ),
        .NEXT_BYTE ( spi_mode_config_0_next_cmd ),
        .DATA_READ ( sdram_interface_0_DATA_READ ),
        .ROW_WRITE ( write_address_traversal_0_ROW_WRITE_OUT ),
        // Outputs
        .READ_CMD  ( read_buffer_0_READ_CMD ),
        .BYTE_OUT  ( read_buffer_0_BYTE_OUT ) 
        );

//--------reset_pulse
reset_pulse reset_pulse_0(
        // Inputs
        .CLK_48MHZ     ( CLK_48MHZ ),
        .EXT_RESET     ( RESET_IN_L8 ),
        // Outputs
        .RESET         ( reset_pulse_0_RESET ),
        .CLK_OUT_48MHZ ( reset_pulse_0_CLK_OUT_48MHZ ) 
        );

//--------sdram_interface
sdram_interface sdram_interface_0(
        // Inputs
        .CLK_48MHZ  ( reset_pulse_0_CLK_OUT_48MHZ ),
        .RESET      ( reset_pulse_0_RESET ),
        .TIMESTAMP  ( timestamp_0_TIMESTAMP ),
        .A_IN_BANK  ( memory_controller_0_BA_OUT ),
        .A_IN_COL   ( memory_controller_0_COL_OUT ),
        .A_IN_ROW   ( memory_controller_0_ROW_OUT ),
        .D_IN       ( memory_controller_0_DATA_OUT ),
        .CMD_IN     ( memory_controller_0_CMD_OUT ),
        // Outputs
        .SDRAM_A0   ( SDRAM_A0_net_0 ),
        .SDRAM_A1   ( SDRAM_A1_net_0 ),
        .SDRAM_A2   ( SDRAM_A2_net_0 ),
        .SDRAM_A3   ( SDRAM_A3_net_0 ),
        .SDRAM_A4   ( SDRAM_A4_net_0 ),
        .SDRAM_A5   ( SDRAM_A5_net_0 ),
        .SDRAM_A6   ( SDRAM_A6_net_0 ),
        .SDRAM_A7   ( SDRAM_A7_net_0 ),
        .SDRAM_A8   ( SDRAM_A8_net_0 ),
        .SDRAM_A9   ( SDRAM_A9_net_0 ),
        .SDRAM_A10  ( SDRAM_A10_net_0 ),
        .SDRAM_A11  ( SDRAM_A11_net_0 ),
        .SDRAM_A12  ( SDRAM_A12_net_0 ),
        .SDRAM_CLK  ( SDRAM_CLK_net_0 ),
        .SDRAM_BA0  ( SDRAM_BA0_net_0 ),
        .SDRAM_BA1  ( SDRAM_BA1_net_0 ),
        .SDRAM_CKE  ( SDRAM_CKE_net_0 ),
        .SDRAM_CS   ( SDRAM_CS_net_0 ),
        .SDRAM_RAS  ( SDRAM_RAS_net_0 ),
        .SDRAM_CAS  ( SDRAM_CAS_net_0 ),
        .SDRAM_WE   ( SDRAM_WE_net_0 ),
        .SDRAM_DQML ( SDRAM_DQML_net_0 ),
        .SDRAM_DQMU ( SDRAM_DQMU_net_0 ),
        .STATUS     ( sdram_interface_0_STATUS ),
        .DATA_READ  ( sdram_interface_0_DATA_READ ),
        // Inouts
        .SDRAM_D0   ( SDRAM_D0 ),
        .SDRAM_D1   ( SDRAM_D1 ),
        .SDRAM_D2   ( SDRAM_D2 ),
        .SDRAM_D3   ( SDRAM_D3 ),
        .SDRAM_D4   ( SDRAM_D4 ),
        .SDRAM_D5   ( SDRAM_D5 ),
        .SDRAM_D6   ( SDRAM_D6 ),
        .SDRAM_D7   ( SDRAM_D7 ),
        .SDRAM_D8   ( SDRAM_D8 ),
        .SDRAM_D9   ( SDRAM_D9 ),
        .SDRAM_D10  ( SDRAM_D10 ),
        .SDRAM_D11  ( SDRAM_D11 ),
        .SDRAM_D12  ( SDRAM_D12 ),
        .SDRAM_D13  ( SDRAM_D13 ),
        .SDRAM_D14  ( SDRAM_D14 ),
        .SDRAM_D15  ( SDRAM_D15 ) 
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
        .sck      ( SCK_net_0 ),
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

//--------test_harness_geiger_stack
test_harness_geiger_stack test_harness_geiger_stack_0(
        // Inputs
        .CLK_1MHZ  ( clock_div_1MHZ_1KHZ_0_CLK_1KHZ_OUT ),
        .RESET     ( reset_pulse_0_RESET ),
        .TEST_DATA ( geig_data_handling_0_G_DATA_STACK_1 ),
        // Outputs
        .D0        (  ),
        .D1        (  ),
        .D2        (  ),
        .D3        (  ),
        .D4        (  ),
        .D5        (  ),
        .D6        (  ),
        .D7        (  ) 
        );

//--------timestamp
timestamp timestamp_0(
        // Inputs
        .CLK_10HZ  ( clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT ),
        .RESET     ( reset_pulse_0_RESET ),
        // Outputs
        .TIMESTAMP ( timestamp_0_TIMESTAMP ) 
        );

//--------write_address_traversal
write_address_traversal write_address_traversal_0(
        // Inputs
        .RESET         ( reset_pulse_0_RESET ),
        .NEXT          ( memory_controller_0_NEXT_WRITE ),
        // Outputs
        .BA_WRITE_OUT  ( write_address_traversal_0_BA_WRITE_OUT ),
        .ROW_WRITE_OUT ( write_address_traversal_0_ROW_WRITE_OUT ),
        .COL_WRITE_OUT ( write_address_traversal_0_COL_WRITE_OUT ) 
        );


endmodule
