//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Mon Feb 29 21:01:56 2016
// Version: v11.6 11.6.0.34
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// geiger_integration
module geiger_integration(
    // Inputs
    BUF2_PBRST_N_T9,
    CLK_48MHZ,
    G_STREAM,
    // Outputs
    D0_OUT,
    D1_OUT,
    D2_OUT,
    D3_OUT,
    D4_OUT,
    D5_OUT,
    D6_OUT,
    D7_OUT
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input  BUF2_PBRST_N_T9;
input  CLK_48MHZ;
input  G_STREAM;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output D0_OUT;
output D1_OUT;
output D2_OUT;
output D3_OUT;
output D4_OUT;
output D5_OUT;
output D6_OUT;
output D7_OUT;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire          BUF2_PBRST_N_T9;
wire          CLK_1MHZ_0_GLA;
wire          CLK_48MHZ;
wire          clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT;
wire          clock_div_1MHZ_100KHZ_0_CLK_100KHZ_OUT;
wire          D0_OUT_net_0;
wire          D1_OUT_net_0;
wire          D2_OUT_net_0;
wire          D3_OUT_net_0;
wire          D4_OUT_net_0;
wire          D5_OUT_net_0;
wire          D6_OUT_net_0;
wire          D7_OUT_net_0;
wire          G_STREAM;
wire   [79:0] geig_data_handling_0_G_DATA_STACK_0;
wire          reset_pulse_0_CLK_OUT_48MHZ;
wire          reset_pulse_0_RESET;
wire   [23:0] timestamp_0_TIMESTAMP;
wire          D0_OUT_net_1;
wire          D1_OUT_net_1;
wire          D2_OUT_net_1;
wire          D3_OUT_net_1;
wire          D4_OUT_net_1;
wire          D5_OUT_net_1;
wire          D6_OUT_net_1;
wire          D7_OUT_net_1;
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
assign D0_OUT_net_1 = D0_OUT_net_0;
assign D0_OUT       = D0_OUT_net_1;
assign D1_OUT_net_1 = D1_OUT_net_0;
assign D1_OUT       = D1_OUT_net_1;
assign D2_OUT_net_1 = D2_OUT_net_0;
assign D2_OUT       = D2_OUT_net_1;
assign D3_OUT_net_1 = D3_OUT_net_0;
assign D3_OUT       = D3_OUT_net_1;
assign D4_OUT_net_1 = D4_OUT_net_0;
assign D4_OUT       = D4_OUT_net_1;
assign D5_OUT_net_1 = D5_OUT_net_0;
assign D5_OUT       = D5_OUT_net_1;
assign D6_OUT_net_1 = D6_OUT_net_0;
assign D6_OUT       = D6_OUT_net_1;
assign D7_OUT_net_1 = D7_OUT_net_0;
assign D7_OUT       = D7_OUT_net_1;
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
        .TIMESTAMP    ( timestamp_0_TIMESTAMP ),
        .GSTREAM      ( G_STREAM ),
        // Outputs
        .G_DATA_STACK ( geig_data_handling_0_G_DATA_STACK_0 ) 
        );

//--------reset_pulse
reset_pulse reset_pulse_0(
        // Inputs
        .CLK_48MHZ     ( CLK_48MHZ ),
        .EXT_RESET     ( BUF2_PBRST_N_T9 ),
        // Outputs
        .RESET         ( reset_pulse_0_RESET ),
        .CLK_OUT_48MHZ ( reset_pulse_0_CLK_OUT_48MHZ ) 
        );

//--------test_harness_geiger_stack
test_harness_geiger_stack test_harness_geiger_stack_0(
        // Inputs
        .CLK_1MHZ  ( CLK_1MHZ_0_GLA ),
        .RESET     ( reset_pulse_0_RESET ),
        .TEST_DATA ( geig_data_handling_0_G_DATA_STACK_0 ),
        // Outputs
        .D0        ( D0_OUT_net_0 ),
        .D1        ( D1_OUT_net_0 ),
        .D2        ( D2_OUT_net_0 ),
        .D3        ( D3_OUT_net_0 ),
        .D4        ( D4_OUT_net_0 ),
        .D5        ( D5_OUT_net_0 ),
        .D6        ( D6_OUT_net_0 ),
        .D7        ( D7_OUT_net_0 ) 
        );

//--------timestamp
timestamp timestamp_0(
        // Inputs
        .CLK_10HZ  ( clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT ),
        .RESET     ( reset_pulse_0_RESET ),
        // Outputs
        .TIMESTAMP ( timestamp_0_TIMESTAMP ) 
        );


endmodule
