//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Fri Mar 04 00:47:10 2016
// Version: v11.6 11.6.0.34
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// memory_test
module memory_test(
    // Inputs
    CLK_48MHZ,
    RESET_IN_L8,
    // Outputs
    DB0,
    DB1,
    DB2,
    DB3,
    DB4,
    DB5,
    DB6,
    DB7,
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
input  RESET_IN_L8;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output DB0;
output DB1;
output DB2;
output DB3;
output DB4;
output DB5;
output DB6;
output DB7;
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
wire          CLK_48MHZ;
wire          clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT;
wire   [79:0] constant_sensor_data_0_G_DATA_STACK;
wire   [79:0] constant_sensor_data_0_M_DATA_STACK;
wire          constant_sensor_data_0_NEXT_BYTE;
wire          DB0_net_0;
wire          DB1_net_0;
wire          DB2_net_0;
wire          DB3_net_0;
wire          DB4_net_0;
wire          DB5_net_0;
wire          DB6_net_0;
wire          DB7_net_0;
wire   [1:0]  memory_controller_0_BA_OUT;
wire   [1:0]  memory_controller_0_CMD_OUT;
wire   [8:0]  memory_controller_0_COL_OUT;
wire   [15:0] memory_controller_0_DATA_OUT;
wire          memory_controller_0_NEXT_READ;
wire          memory_controller_0_NEXT_WRITE;
wire   [12:0] memory_controller_0_ROW_OUT;
wire   [1:0]  read_address_traversal_0_BA_READ_OUT;
wire   [8:0]  read_address_traversal_0_COL_READ_OUT;
wire   [12:0] read_address_traversal_0_ROW_READ_OUT;
wire   [7:0]  read_buffer_0_BYTE_OUT;
wire          read_buffer_0_READ_CMD;
wire          RESET_IN_L8;
wire          reset_pulse_0_CLK_OUT_48MHZ;
wire          reset_pulse_0_RESET;
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
wire   [23:0] timestamp_0_TIMESTAMP;
wire   [1:0]  write_address_traversal_0_BA_WRITE_OUT;
wire   [8:0]  write_address_traversal_0_COL_WRITE_OUT;
wire   [12:0] write_address_traversal_0_ROW_WRITE_OUT;
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
wire          DB0_net_1;
wire          DB1_net_1;
wire          DB2_net_1;
wire          DB3_net_1;
wire          DB4_net_1;
wire          DB5_net_1;
wire          DB6_net_1;
wire          DB7_net_1;
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
assign DB0_net_1        = DB0_net_0;
assign DB0              = DB0_net_1;
assign DB1_net_1        = DB1_net_0;
assign DB1              = DB1_net_1;
assign DB2_net_1        = DB2_net_0;
assign DB2              = DB2_net_1;
assign DB3_net_1        = DB3_net_0;
assign DB3              = DB3_net_1;
assign DB4_net_1        = DB4_net_0;
assign DB4              = DB4_net_1;
assign DB5_net_1        = DB5_net_0;
assign DB5              = DB5_net_1;
assign DB6_net_1        = DB6_net_0;
assign DB6              = DB6_net_1;
assign DB7_net_1        = DB7_net_0;
assign DB7              = DB7_net_1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------buffer_data_out
buffer_data_out buffer_data_out_0(
        // Inputs
        .DATA_IN ( read_buffer_0_BYTE_OUT ),
        // Outputs
        .DB0     ( DB0_net_0 ),
        .DB1     ( DB1_net_0 ),
        .DB2     ( DB2_net_0 ),
        .DB3     ( DB3_net_0 ),
        .DB4     ( DB4_net_0 ),
        .DB5     ( DB5_net_0 ),
        .DB6     ( DB6_net_0 ),
        .DB7     ( DB7_net_0 ) 
        );

//--------CLK_1MHZ
CLK_1MHZ CLK_1MHZ_0(
        // Inputs
        .POWERDOWN ( VCC_net ),
        .CLKA      ( reset_pulse_0_CLK_OUT_48MHZ ),
        // Outputs
        .LOCK      (  ),
        .GLA       ( CLK_1MHZ_0_GLA ) 
        );

//--------clock_div_1MHZ_10HZ
clock_div_1MHZ_10HZ clock_div_1MHZ_10HZ_0(
        // Inputs
        .CLK_1MHZ_IN  ( CLK_1MHZ_0_GLA ),
        .RESET        ( reset_pulse_0_RESET ),
        // Outputs
        .CLK_10HZ_OUT ( clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT ) 
        );

//--------constant_sensor_data
constant_sensor_data constant_sensor_data_0(
        // Inputs
        .CLK_10HZ     ( clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT ),
        .RESET        ( reset_pulse_0_RESET ),
        .TIMESTAMP    ( timestamp_0_TIMESTAMP ),
        // Outputs
        .NEXT_BYTE    ( constant_sensor_data_0_NEXT_BYTE ),
        .G_DATA_STACK ( constant_sensor_data_0_G_DATA_STACK ),
        .M_DATA_STACK ( constant_sensor_data_0_M_DATA_STACK ) 
        );

//--------memory_controller
memory_controller memory_controller_0(
        // Inputs
        .CLK_48MHZ    ( reset_pulse_0_CLK_OUT_48MHZ ),
        .RESET        ( reset_pulse_0_RESET ),
        .SDRAM_STATUS ( sdram_interface_0_STATUS ),
        .READ_CMD     ( read_buffer_0_READ_CMD ),
        .GEIG_DATA    ( constant_sensor_data_0_G_DATA_STACK ),
        .MAG_DATA     ( constant_sensor_data_0_M_DATA_STACK ),
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
        .NEXT_BYTE ( constant_sensor_data_0_NEXT_BYTE ),
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
