`timescale 1 ns/100 ps
// Version: v11.6 11.6.0.34
// File used only for Simulation


module PLLBA(
       CLKA,
       EXTFB,
       POWERDOWN,
       GLA,
       LOCK,
       GLB,
       YB,
       GLC,
       YC,
       OADIV0,
       OADIV1,
       OADIV2,
       OADIV3,
       OADIV4,
       OAMUX0,
       OAMUX1,
       OAMUX2,
       DLYGLA0,
       DLYGLA1,
       DLYGLA2,
       DLYGLA3,
       DLYGLA4,
       OBDIV0,
       OBDIV1,
       OBDIV2,
       OBDIV3,
       OBDIV4,
       OBMUX0,
       OBMUX1,
       OBMUX2,
       DLYYB0,
       DLYYB1,
       DLYYB2,
       DLYYB3,
       DLYYB4,
       DLYGLB0,
       DLYGLB1,
       DLYGLB2,
       DLYGLB3,
       DLYGLB4,
       OCDIV0,
       OCDIV1,
       OCDIV2,
       OCDIV3,
       OCDIV4,
       OCMUX0,
       OCMUX1,
       OCMUX2,
       DLYYC0,
       DLYYC1,
       DLYYC2,
       DLYYC3,
       DLYYC4,
       DLYGLC0,
       DLYGLC1,
       DLYGLC2,
       DLYGLC3,
       DLYGLC4,
       FINDIV0,
       FINDIV1,
       FINDIV2,
       FINDIV3,
       FINDIV4,
       FINDIV5,
       FINDIV6,
       FBDIV0,
       FBDIV1,
       FBDIV2,
       FBDIV3,
       FBDIV4,
       FBDIV5,
       FBDIV6,
       FBDLY0,
       FBDLY1,
       FBDLY2,
       FBDLY3,
       FBDLY4,
       FBSEL0,
       FBSEL1,
       XDLYSEL,
       VCOSEL0,
       VCOSEL1,
       VCOSEL2
    );
input  CLKA;
input  EXTFB;
input  POWERDOWN;
output GLA;
output LOCK;
output GLB;
output YB;
output GLC;
output YC;
input  OADIV0;
input  OADIV1;
input  OADIV2;
input  OADIV3;
input  OADIV4;
input  OAMUX0;
input  OAMUX1;
input  OAMUX2;
input  DLYGLA0;
input  DLYGLA1;
input  DLYGLA2;
input  DLYGLA3;
input  DLYGLA4;
input  OBDIV0;
input  OBDIV1;
input  OBDIV2;
input  OBDIV3;
input  OBDIV4;
input  OBMUX0;
input  OBMUX1;
input  OBMUX2;
input  DLYYB0;
input  DLYYB1;
input  DLYYB2;
input  DLYYB3;
input  DLYYB4;
input  DLYGLB0;
input  DLYGLB1;
input  DLYGLB2;
input  DLYGLB3;
input  DLYGLB4;
input  OCDIV0;
input  OCDIV1;
input  OCDIV2;
input  OCDIV3;
input  OCDIV4;
input  OCMUX0;
input  OCMUX1;
input  OCMUX2;
input  DLYYC0;
input  DLYYC1;
input  DLYYC2;
input  DLYYC3;
input  DLYYC4;
input  DLYGLC0;
input  DLYGLC1;
input  DLYGLC2;
input  DLYGLC3;
input  DLYGLC4;
input  FINDIV0;
input  FINDIV1;
input  FINDIV2;
input  FINDIV3;
input  FINDIV4;
input  FINDIV5;
input  FINDIV6;
input  FBDIV0;
input  FBDIV1;
input  FBDIV2;
input  FBDIV3;
input  FBDIV4;
input  FBDIV5;
input  FBDIV6;
input  FBDLY0;
input  FBDLY1;
input  FBDLY2;
input  FBDLY3;
input  FBDLY4;
input  FBSEL0;
input  FBSEL1;
input  XDLYSEL;
input  VCOSEL0;
input  VCOSEL1;
input  VCOSEL2;

    wire GND, SDOUT, FB, EXTFBDLY, GLADLY, LOCKDLY, GLBDLY, YBDLY, 
        GLCDLY, YCDLY, VCODLY;
    wire GND_power_net1;
    assign GND = GND_power_net1;
    
    PLL_SDF #( .VCOFREQUENCY(32.000000) )  pll_sdf_0 (.CLKA(CLKA), 
        .EXTFB(EXTFBDLY), .POWERDOWN(POWERDOWN), .GLAOUT(GLADLY), 
        .LOCKOUT(LOCKDLY), .GLBOUT(GLBDLY), .YBOUT(YBDLY), .GLCOUT(
        GLCDLY), .YCOUT(YCDLY), .OADIV0(OADIV0), .OADIV1(OADIV1), 
        .OADIV2(OADIV2), .OADIV3(OADIV3), .OADIV4(OADIV4), .OAMUX0(
        OAMUX0), .OAMUX1(OAMUX1), .OAMUX2(OAMUX2), .DLYGLA0(DLYGLA0), 
        .DLYGLA1(DLYGLA1), .DLYGLA2(DLYGLA2), .DLYGLA3(DLYGLA3), 
        .DLYGLA4(DLYGLA4), .OBDIV0(OBDIV0), .OBDIV1(OBDIV1), .OBDIV2(
        OBDIV2), .OBDIV3(OBDIV3), .OBDIV4(OBDIV4), .OBMUX0(OBMUX0), 
        .OBMUX1(OBMUX1), .OBMUX2(OBMUX2), .DLYYB0(DLYYB0), .DLYYB1(
        DLYYB1), .DLYYB2(DLYYB2), .DLYYB3(DLYYB3), .DLYYB4(DLYYB4), 
        .DLYGLB0(DLYGLB0), .DLYGLB1(DLYGLB1), .DLYGLB2(DLYGLB2), 
        .DLYGLB3(DLYGLB3), .DLYGLB4(DLYGLB4), .OCDIV0(OCDIV0), .OCDIV1(
        OCDIV1), .OCDIV2(OCDIV2), .OCDIV3(OCDIV3), .OCDIV4(OCDIV4), 
        .OCMUX0(OCMUX0), .OCMUX1(OCMUX1), .OCMUX2(OCMUX2), .DLYYC0(
        DLYYC0), .DLYYC1(DLYYC1), .DLYYC2(DLYYC2), .DLYYC3(DLYYC3), 
        .DLYYC4(DLYYC4), .DLYGLC0(DLYGLC0), .DLYGLC1(DLYGLC1), 
        .DLYGLC2(DLYGLC2), .DLYGLC3(DLYGLC3), .DLYGLC4(DLYGLC4), 
        .FINDIV0(FINDIV0), .FINDIV1(FINDIV1), .FINDIV2(FINDIV2), 
        .FINDIV3(FINDIV3), .FINDIV4(FINDIV4), .FINDIV5(FINDIV5), 
        .FINDIV6(FINDIV6), .FBDIV0(FBDIV0), .FBDIV1(FBDIV1), .FBDIV2(
        FBDIV2), .FBDIV3(FBDIV3), .FBDIV4(FBDIV4), .FBDIV5(FBDIV5), 
        .FBDIV6(FBDIV6), .FBDLY0(FBDLY0), .FBDLY1(FBDLY1), .FBDLY2(
        FBDLY2), .FBDLY3(FBDLY3), .FBDLY4(FBDLY4), .FBSEL0(FBSEL0), 
        .FBSEL1(FBSEL1), .XDLYSEL(XDLYSEL), .VCOSEL0(VCOSEL0), 
        .VCOSEL1(VCOSEL1), .VCOSEL2(VCOSEL2), .INTFB(FB), .VCOOUT(
        VCODLY));
    PLL_DLY_SDF #( .VCOFREQUENCY(32.000000) )  pll_dly_sdf_0 (.GLA(GLA)
        , .LOCK(LOCK), .GLB(GLB), .YB(YB), .GLC(GLC), .YC(YC), .GLAIN(
        GLADLY), .LOCKIN(LOCKDLY), .GLBIN(GLBDLY), .YBIN(YBDLY), 
        .GLCIN(GLCDLY), .YCIN(YCDLY), .EXTFBOUT(EXTFBDLY), .EXTFBIN(
        EXTFB), .VCOIN(VCODLY), .PLLOUT(FB));
    GND GND_power_inst1 (.Y(GND_power_net1));
    
endmodule


module geiger_integration(
       BUF2_PBRST_N_T9,
       CLK_48MHZ,
       G_STREAM,
       D0_OUT,
       D1_OUT,
       D2_OUT,
       D3_OUT,
       D4_OUT,
       D5_OUT,
       D6_OUT,
       D7_OUT
    );
input  BUF2_PBRST_N_T9;
input  CLK_48MHZ;
input  G_STREAM;
output D0_OUT;
output D1_OUT;
output D2_OUT;
output D3_OUT;
output D4_OUT;
output D5_OUT;
output D6_OUT;
output D7_OUT;

    wire GLA, reset_pulse_0_RESET, clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT, 
        clock_div_1MHZ_100KHZ_0_CLK_100KHZ_OUT, 
        \timestamp_0_TIMESTAMP[0] , \timestamp_0_TIMESTAMP[1] , 
        \timestamp_0_TIMESTAMP[2] , \timestamp_0_TIMESTAMP[3] , 
        \timestamp_0_TIMESTAMP[4] , \timestamp_0_TIMESTAMP[5] , 
        \timestamp_0_TIMESTAMP[6] , \timestamp_0_TIMESTAMP[7] , 
        \timestamp_0_TIMESTAMP[8] , \timestamp_0_TIMESTAMP[9] , 
        \timestamp_0_TIMESTAMP[10] , \timestamp_0_TIMESTAMP[11] , 
        \timestamp_0_TIMESTAMP[12] , \timestamp_0_TIMESTAMP[13] , 
        \timestamp_0_TIMESTAMP[14] , \timestamp_0_TIMESTAMP[15] , 
        \timestamp_0_TIMESTAMP[16] , \timestamp_0_TIMESTAMP[17] , 
        \timestamp_0_TIMESTAMP[18] , \timestamp_0_TIMESTAMP[19] , 
        \timestamp_0_TIMESTAMP[20] , \timestamp_0_TIMESTAMP[21] , 
        \timestamp_0_TIMESTAMP[22] , \timestamp_0_TIMESTAMP[23] , 
        \geig_data_handling_0_G_DATA_STACK[1] , 
        \geig_data_handling_0_G_DATA_STACK[8] , 
        \geig_data_handling_0_G_DATA_STACK[9] , 
        \geig_data_handling_0_G_DATA_STACK[10] , 
        \geig_data_handling_0_G_DATA_STACK[11] , 
        \geig_data_handling_0_G_DATA_STACK[12] , 
        \geig_data_handling_0_G_DATA_STACK[13] , 
        \geig_data_handling_0_G_DATA_STACK[14] , 
        \geig_data_handling_0_G_DATA_STACK[15] , 
        \geig_data_handling_0_G_DATA_STACK[16] , 
        \geig_data_handling_0_G_DATA_STACK[17] , 
        \geig_data_handling_0_G_DATA_STACK[18] , 
        \geig_data_handling_0_G_DATA_STACK[19] , 
        \geig_data_handling_0_G_DATA_STACK[20] , 
        \geig_data_handling_0_G_DATA_STACK[21] , 
        \geig_data_handling_0_G_DATA_STACK[22] , 
        \geig_data_handling_0_G_DATA_STACK[23] , 
        \geig_data_handling_0_G_DATA_STACK[24] , 
        \geig_data_handling_0_G_DATA_STACK[25] , 
        \geig_data_handling_0_G_DATA_STACK[26] , 
        \geig_data_handling_0_G_DATA_STACK[27] , 
        \geig_data_handling_0_G_DATA_STACK[28] , 
        \geig_data_handling_0_G_DATA_STACK[29] , 
        \geig_data_handling_0_G_DATA_STACK[30] , 
        \geig_data_handling_0_G_DATA_STACK[31] , 
        \geig_data_handling_0_G_DATA_STACK[32] , 
        \geig_data_handling_0_G_DATA_STACK[33] , 
        \geig_data_handling_0_G_DATA_STACK[34] , 
        \geig_data_handling_0_G_DATA_STACK[35] , 
        \geig_data_handling_0_G_DATA_STACK[36] , 
        \geig_data_handling_0_G_DATA_STACK[37] , 
        \geig_data_handling_0_G_DATA_STACK[38] , 
        \geig_data_handling_0_G_DATA_STACK[39] , 
        \geig_data_handling_0_G_DATA_STACK[40] , 
        \geig_data_handling_0_G_DATA_STACK[41] , 
        \geig_data_handling_0_G_DATA_STACK[42] , 
        \geig_data_handling_0_G_DATA_STACK[43] , 
        \geig_data_handling_0_G_DATA_STACK[44] , 
        \geig_data_handling_0_G_DATA_STACK[45] , 
        \geig_data_handling_0_G_DATA_STACK[46] , 
        \geig_data_handling_0_G_DATA_STACK[47] , BUF2_PBRST_N_T9_c, 
        CLK_48MHZ_c, G_STREAM_c, D0_OUT_c, D1_OUT_c, D2_OUT_c, 
        D3_OUT_c, D4_OUT_c, D5_OUT_c, D6_OUT_c, D7_OUT_c, 
        reset_pulse_0_RESET_0, reset_pulse_0_RESET_1, 
        reset_pulse_0_RESET_2, reset_pulse_0_RESET_3, 
        reset_pulse_0_RESET_4, reset_pulse_0_RESET_5, 
        reset_pulse_0_RESET_6, reset_pulse_0_RESET_7, 
        \clock_div_1MHZ_100KHZ_0/clk_out_i , 
        \clock_div_1MHZ_100KHZ_0/counter[1]_net_1 , 
        \clock_div_1MHZ_100KHZ_0/counter[0]_net_1 , 
        \clock_div_1MHZ_100KHZ_0/counter[3]_net_1 , 
        \clock_div_1MHZ_100KHZ_0/DWACT_FINC_E[0] , 
        \clock_div_1MHZ_100KHZ_0/counter[8]_net_1 , 
        \clock_div_1MHZ_100KHZ_0/DWACT_FINC_E[4] , 
        \clock_div_1MHZ_100KHZ_0/DWACT_FINC_E[7] , 
        \clock_div_1MHZ_100KHZ_0/DWACT_FINC_E[6] , 
        \clock_div_1MHZ_100KHZ_0/clk_out5_14 , 
        \clock_div_1MHZ_100KHZ_0/clk_out5_6 , 
        \clock_div_1MHZ_100KHZ_0/clk_out5_5 , 
        \clock_div_1MHZ_100KHZ_0/clk_out5_12 , 
        \clock_div_1MHZ_100KHZ_0/clk_out5_13 , 
        \clock_div_1MHZ_100KHZ_0/clk_out5_2 , 
        \clock_div_1MHZ_100KHZ_0/clk_out5_1 , 
        \clock_div_1MHZ_100KHZ_0/clk_out5_10 , 
        \clock_div_1MHZ_100KHZ_0/clk_out5_8 , 
        \clock_div_1MHZ_100KHZ_0/counter[12]_net_1 , 
        \clock_div_1MHZ_100KHZ_0/clk_out5_4 , 
        \clock_div_1MHZ_100KHZ_0/counter[7]_net_1 , 
        \clock_div_1MHZ_100KHZ_0/counter[10]_net_1 , 
        \clock_div_1MHZ_100KHZ_0/counter[15]_net_1 , 
        \clock_div_1MHZ_100KHZ_0/counter[16]_net_1 , 
        \clock_div_1MHZ_100KHZ_0/counter[9]_net_1 , 
        \clock_div_1MHZ_100KHZ_0/counter[4]_net_1 , 
        \clock_div_1MHZ_100KHZ_0/counter[13]_net_1 , 
        \clock_div_1MHZ_100KHZ_0/counter[6]_net_1 , 
        \clock_div_1MHZ_100KHZ_0/counter[2]_net_1 , 
        \clock_div_1MHZ_100KHZ_0/counter[5]_net_1 , 
        \clock_div_1MHZ_100KHZ_0/counter[11]_net_1 , 
        \clock_div_1MHZ_100KHZ_0/counter[14]_net_1 , 
        \clock_div_1MHZ_100KHZ_0/clk_out_RNO_0 , 
        \clock_div_1MHZ_100KHZ_0/counter_3[0] , 
        \clock_div_1MHZ_100KHZ_0/counter_3[2] , 
        \clock_div_1MHZ_100KHZ_0/I_7_0 , 
        \clock_div_1MHZ_100KHZ_0/counter_3[1] , 
        \clock_div_1MHZ_100KHZ_0/I_5_0 , 
        \clock_div_1MHZ_100KHZ_0/I_9_0 , 
        \clock_div_1MHZ_100KHZ_0/I_12_0 , 
        \clock_div_1MHZ_100KHZ_0/I_14_0 , 
        \clock_div_1MHZ_100KHZ_0/I_17_0 , 
        \clock_div_1MHZ_100KHZ_0/I_20_0 , 
        \clock_div_1MHZ_100KHZ_0/I_23_0 , 
        \clock_div_1MHZ_100KHZ_0/I_26_0 , 
        \clock_div_1MHZ_100KHZ_0/I_28_0 , 
        \clock_div_1MHZ_100KHZ_0/I_32_0 , 
        \clock_div_1MHZ_100KHZ_0/I_35_0 , 
        \clock_div_1MHZ_100KHZ_0/I_37_0 , 
        \clock_div_1MHZ_100KHZ_0/I_40_0 , 
        \clock_div_1MHZ_100KHZ_0/I_43_0 , 
        \clock_div_1MHZ_100KHZ_0/I_46_0 , 
        \clock_div_1MHZ_100KHZ_0/N_2 , 
        \clock_div_1MHZ_100KHZ_0/DWACT_FINC_E[10] , 
        \clock_div_1MHZ_100KHZ_0/DWACT_FINC_E[9] , 
        \clock_div_1MHZ_100KHZ_0/N_3 , \clock_div_1MHZ_100KHZ_0/N_4 , 
        \clock_div_1MHZ_100KHZ_0/DWACT_FINC_E[8] , 
        \clock_div_1MHZ_100KHZ_0/N_5 , \clock_div_1MHZ_100KHZ_0/N_7 , 
        \clock_div_1MHZ_100KHZ_0/DWACT_FINC_E[2] , 
        \clock_div_1MHZ_100KHZ_0/DWACT_FINC_E[5] , 
        \clock_div_1MHZ_100KHZ_0/N_8 , 
        \clock_div_1MHZ_100KHZ_0/DWACT_FINC_E[3] , 
        \clock_div_1MHZ_100KHZ_0/N_10 , \clock_div_1MHZ_100KHZ_0/N_11 , 
        \clock_div_1MHZ_100KHZ_0/N_12 , 
        \clock_div_1MHZ_100KHZ_0/DWACT_FINC_E[1] , 
        \clock_div_1MHZ_100KHZ_0/N_13 , \clock_div_1MHZ_100KHZ_0/N_15 , 
        \test_harness_geiger_stack_0/un1_counter18_0 , 
        \test_harness_geiger_stack_0/un1_TEST_DATA_2[0] , 
        \test_harness_geiger_stack_0/set_1 , 
        \test_harness_geiger_stack_0/data_chunk8 , 
        \test_harness_geiger_stack_0/set_0_sqmuxa , 
        \test_harness_geiger_stack_0/set_0 , 
        \test_harness_geiger_stack_0/un1_TEST_DATA_NE_41 , 
        \test_harness_geiger_stack_0/un1_TEST_DATA_NE_35 , 
        \test_harness_geiger_stack_0/un1_TEST_DATA_NE_34 , 
        \test_harness_geiger_stack_0/un1_TEST_DATA_NE_38 , 
        \test_harness_geiger_stack_0/un1_TEST_DATA_NE_40 , 
        \test_harness_geiger_stack_0/un1_TEST_DATA_NE_29 , 
        \test_harness_geiger_stack_0/un1_TEST_DATA_NE_28 , 
        \test_harness_geiger_stack_0/un1_TEST_DATA_NE_37 , 
        \test_harness_geiger_stack_0/un1_TEST_DATA_NE_23 , 
        \test_harness_geiger_stack_0/un1_TEST_DATA_NE_22 , 
        \test_harness_geiger_stack_0/un1_TEST_DATA_NE_32 , 
        \test_harness_geiger_stack_0/un1_TEST_DATA_NE_19 , 
        \test_harness_geiger_stack_0/un1_TEST_DATA_NE_18 , 
        \test_harness_geiger_stack_0/un1_TEST_DATA_NE_30 , 
        \test_harness_geiger_stack_0/un1_TEST_DATA_NE_9 , 
        \test_harness_geiger_stack_0/un1_TEST_DATA_NE_8 , 
        \test_harness_geiger_stack_0/un1_TEST_DATA_NE_27 , 
        \test_harness_geiger_stack_0/un1_TEST_DATA_NE_7 , 
        \test_harness_geiger_stack_0/un1_TEST_DATA_NE_6 , 
        \test_harness_geiger_stack_0/un1_TEST_DATA_NE_24 , 
        \test_harness_geiger_stack_0/un1_TEST_DATA_42 , 
        \test_harness_geiger_stack_0/un1_TEST_DATA_43 , 
        \test_harness_geiger_stack_0/un1_TEST_DATA_NE_21 , 
        \test_harness_geiger_stack_0/un1_TEST_DATA_1_0 , 
        \test_harness_geiger_stack_0/un1_TEST_DATA_20 , 
        \test_harness_geiger_stack_0/un1_TEST_DATA_NE_17 , 
        \test_harness_geiger_stack_0/un1_TEST_DATA_32 , 
        \test_harness_geiger_stack_0/un1_TEST_DATA_28 , 
        \test_harness_geiger_stack_0/un1_TEST_DATA_NE_11 , 
        \test_harness_geiger_stack_0/un1_TEST_DATA_11 , 
        \test_harness_geiger_stack_0/un1_TEST_DATA_36 , 
        \test_harness_geiger_stack_0/un1_TEST_DATA_NE_5 , 
        \test_harness_geiger_stack_0/un1_TEST_DATA_9 , 
        \test_harness_geiger_stack_0/un1_TEST_DATA_38 , 
        \test_harness_geiger_stack_0/un1_TEST_DATA_NE_3 , 
        \test_harness_geiger_stack_0/un1_TEST_DATA_31 , 
        \test_harness_geiger_stack_0/un1_TEST_DATA_0 , 
        \test_harness_geiger_stack_0/un1_TEST_DATA_NE_1 , 
        \test_harness_geiger_stack_0/data_prev[41]_net_1 , 
        \test_harness_geiger_stack_0/un1_TEST_DATA_40 , 
        \test_harness_geiger_stack_0/data_prev[2]_net_1 , 
        \test_harness_geiger_stack_0/data_prev[6]_net_1 , 
        \test_harness_geiger_stack_0/data_prev[33]_net_1 , 
        \test_harness_geiger_stack_0/un1_TEST_DATA_34 , 
        \test_harness_geiger_stack_0/data_prev[47]_net_1 , 
        \test_harness_geiger_stack_0/un1_TEST_DATA_12 , 
        \test_harness_geiger_stack_0/data_prev[37]_net_1 , 
        \test_harness_geiger_stack_0/un1_TEST_DATA_10 , 
        \test_harness_geiger_stack_0/data_prev[39]_net_1 , 
        \test_harness_geiger_stack_0/un1_TEST_DATA_8 , 
        \test_harness_geiger_stack_0/un1_TEST_DATA_NE , 
        \test_harness_geiger_stack_0/set_0_RNI7I0G9_0_net_1 , 
        \test_harness_geiger_stack_0/data_prev[40]_net_1 , 
        \test_harness_geiger_stack_0/un1_counterlto2 , 
        \test_harness_geiger_stack_0/data_prev[34]_net_1 , 
        \test_harness_geiger_stack_0/data_prev[12]_net_1 , 
        \test_harness_geiger_stack_0/data_prev[10]_net_1 , 
        \test_harness_geiger_stack_0/data_prev[8]_net_1 , 
        \test_harness_geiger_stack_0/data_prev[0]_net_1 , 
        \test_harness_geiger_stack_0/DWACT_ADD_CI_0_TMP[0] , 
        \test_harness_geiger_stack_0/counter[1]_net_1 , 
        \test_harness_geiger_stack_0/counter14_0_net_1 , 
        \test_harness_geiger_stack_0/counter_3[1] , 
        \test_harness_geiger_stack_0/DWACT_ADD_CI_0_partial_sum[0] , 
        \test_harness_geiger_stack_0/un1_TEST_DATA_23 , 
        \test_harness_geiger_stack_0/un1_TEST_DATA_24 , 
        \test_harness_geiger_stack_0/un1_TEST_DATA_NE_15 , 
        \test_harness_geiger_stack_0/un1_TEST_DATA_27 , 
        \test_harness_geiger_stack_0/un1_TEST_DATA_35 , 
        \test_harness_geiger_stack_0/un1_TEST_DATA_NE_13 , 
        \test_harness_geiger_stack_0/data_prev[18]_net_1 , 
        \test_harness_geiger_stack_0/un1_TEST_DATA_19 , 
        \test_harness_geiger_stack_0/data_prev[16]_net_1 , 
        \test_harness_geiger_stack_0/un1_TEST_DATA_17 , 
        \test_harness_geiger_stack_0/data_prev[22]_net_1 , 
        \test_harness_geiger_stack_0/un1_TEST_DATA_21 , 
        \test_harness_geiger_stack_0/data_prev[26]_net_1 , 
        \test_harness_geiger_stack_0/un1_TEST_DATA_25 , 
        \test_harness_geiger_stack_0/data_prev[30]_net_1 , 
        \test_harness_geiger_stack_0/un1_TEST_DATA_29 , 
        \test_harness_geiger_stack_0/data_prev[44]_net_1 , 
        \test_harness_geiger_stack_0/un1_TEST_DATA_15 , 
        \test_harness_geiger_stack_0/data_prev[45]_net_1 , 
        \test_harness_geiger_stack_0/un1_TEST_DATA_14 , 
        \test_harness_geiger_stack_0/data_prev[46]_net_1 , 
        \test_harness_geiger_stack_0/un1_TEST_DATA_13 , 
        \test_harness_geiger_stack_0/counter_3[2] , 
        \test_harness_geiger_stack_0/counter[2]_net_1 , 
        \test_harness_geiger_stack_0/data_buffer_5[3] , 
        \test_harness_geiger_stack_0/data_buffer[11]_net_1 , 
        \test_harness_geiger_stack_0/set , 
        \test_harness_geiger_stack_0/data_buffer_5[4] , 
        \test_harness_geiger_stack_0/data_buffer[12]_net_1 , 
        \test_harness_geiger_stack_0/data_buffer_5[5] , 
        \test_harness_geiger_stack_0/data_buffer[13]_net_1 , 
        \test_harness_geiger_stack_0/data_buffer_5[7] , 
        \test_harness_geiger_stack_0/data_buffer[15]_net_1 , 
        \test_harness_geiger_stack_0/data_buffer_5[20] , 
        \test_harness_geiger_stack_0/data_buffer[28]_net_1 , 
        \test_harness_geiger_stack_0/data_buffer_5[32] , 
        \test_harness_geiger_stack_0/data_buffer[40]_net_1 , 
        \test_harness_geiger_stack_0/data_buffer_5[33] , 
        \test_harness_geiger_stack_0/data_buffer[41]_net_1 , 
        \test_harness_geiger_stack_0/data_buffer_5[35] , 
        \test_harness_geiger_stack_0/data_buffer[43]_net_1 , 
        \test_harness_geiger_stack_0/data_buffer_5[36] , 
        \test_harness_geiger_stack_0/data_buffer[44]_net_1 , 
        \test_harness_geiger_stack_0/data_buffer_5[44] , 
        \test_harness_geiger_stack_0/data_buffer_5[45] , 
        \test_harness_geiger_stack_0/data_prev[20]_net_1 , 
        \test_harness_geiger_stack_0/data_prev[21]_net_1 , 
        \test_harness_geiger_stack_0/data_prev[23]_net_1 , 
        \test_harness_geiger_stack_0/data_prev[24]_net_1 , 
        \test_harness_geiger_stack_0/data_prev[25]_net_1 , 
        \test_harness_geiger_stack_0/data_prev[27]_net_1 , 
        \test_harness_geiger_stack_0/data_prev[28]_net_1 , 
        \test_harness_geiger_stack_0/data_prev[29]_net_1 , 
        \test_harness_geiger_stack_0/data_prev[31]_net_1 , 
        \test_harness_geiger_stack_0/data_prev[36]_net_1 , 
        \test_harness_geiger_stack_0/data_prev[38]_net_1 , 
        \test_harness_geiger_stack_0/data_prev[42]_net_1 , 
        \test_harness_geiger_stack_0/data_prev[43]_net_1 , 
        \test_harness_geiger_stack_0/data_chunk7 , 
        \test_harness_geiger_stack_0/data_buffer_5[43] , 
        \test_harness_geiger_stack_0/counter_4[1] , 
        \test_harness_geiger_stack_0/counter_4[2] , 
        \test_harness_geiger_stack_0/data_prev[35]_net_1 , 
        \test_harness_geiger_stack_0/data_prev[32]_net_1 , 
        \test_harness_geiger_stack_0/data_prev[19]_net_1 , 
        \test_harness_geiger_stack_0/data_prev[17]_net_1 , 
        \test_harness_geiger_stack_0/data_prev[15]_net_1 , 
        \test_harness_geiger_stack_0/data_prev[14]_net_1 , 
        \test_harness_geiger_stack_0/data_prev[13]_net_1 , 
        \test_harness_geiger_stack_0/data_prev[11]_net_1 , 
        \test_harness_geiger_stack_0/data_prev[9]_net_1 , 
        \test_harness_geiger_stack_0/data_prev[1]_net_1 , 
        \test_harness_geiger_stack_0/data_buffer_5[47] , 
        \test_harness_geiger_stack_0/data_buffer_5[46] , 
        \test_harness_geiger_stack_0/data_buffer_5[42] , 
        \test_harness_geiger_stack_0/data_buffer_5[41] , 
        \test_harness_geiger_stack_0/data_buffer_5[40] , 
        \test_harness_geiger_stack_0/data_buffer_5[39] , 
        \test_harness_geiger_stack_0/data_buffer[47]_net_1 , 
        \test_harness_geiger_stack_0/data_buffer_5[38] , 
        \test_harness_geiger_stack_0/data_buffer[46]_net_1 , 
        \test_harness_geiger_stack_0/data_buffer_5[37] , 
        \test_harness_geiger_stack_0/data_buffer[45]_net_1 , 
        \test_harness_geiger_stack_0/data_buffer_5[34] , 
        \test_harness_geiger_stack_0/data_buffer[42]_net_1 , 
        \test_harness_geiger_stack_0/data_buffer_5[31] , 
        \test_harness_geiger_stack_0/data_buffer[39]_net_1 , 
        \test_harness_geiger_stack_0/data_buffer_5[30] , 
        \test_harness_geiger_stack_0/data_buffer[38]_net_1 , 
        \test_harness_geiger_stack_0/data_buffer_5[29] , 
        \test_harness_geiger_stack_0/data_buffer[37]_net_1 , 
        \test_harness_geiger_stack_0/data_buffer_5[28] , 
        \test_harness_geiger_stack_0/data_buffer[36]_net_1 , 
        \test_harness_geiger_stack_0/data_buffer_5[27] , 
        \test_harness_geiger_stack_0/data_buffer[35]_net_1 , 
        \test_harness_geiger_stack_0/data_buffer_5[26] , 
        \test_harness_geiger_stack_0/data_buffer[34]_net_1 , 
        \test_harness_geiger_stack_0/data_buffer_5[25] , 
        \test_harness_geiger_stack_0/data_buffer[33]_net_1 , 
        \test_harness_geiger_stack_0/data_buffer_5[24] , 
        \test_harness_geiger_stack_0/data_buffer[32]_net_1 , 
        \test_harness_geiger_stack_0/data_buffer_5[23] , 
        \test_harness_geiger_stack_0/data_buffer[31]_net_1 , 
        \test_harness_geiger_stack_0/data_buffer_5[22] , 
        \test_harness_geiger_stack_0/data_buffer[30]_net_1 , 
        \test_harness_geiger_stack_0/data_buffer_5[21] , 
        \test_harness_geiger_stack_0/data_buffer[29]_net_1 , 
        \test_harness_geiger_stack_0/data_buffer_5[19] , 
        \test_harness_geiger_stack_0/data_buffer[27]_net_1 , 
        \test_harness_geiger_stack_0/data_buffer_5[18] , 
        \test_harness_geiger_stack_0/data_buffer[26]_net_1 , 
        \test_harness_geiger_stack_0/data_buffer_5[17] , 
        \test_harness_geiger_stack_0/data_buffer[25]_net_1 , 
        \test_harness_geiger_stack_0/data_buffer_5[16] , 
        \test_harness_geiger_stack_0/data_buffer[24]_net_1 , 
        \test_harness_geiger_stack_0/data_buffer_5[15] , 
        \test_harness_geiger_stack_0/data_buffer[23]_net_1 , 
        \test_harness_geiger_stack_0/data_buffer_5[14] , 
        \test_harness_geiger_stack_0/data_buffer[22]_net_1 , 
        \test_harness_geiger_stack_0/data_buffer_5[13] , 
        \test_harness_geiger_stack_0/data_buffer[21]_net_1 , 
        \test_harness_geiger_stack_0/data_buffer_5[12] , 
        \test_harness_geiger_stack_0/data_buffer[20]_net_1 , 
        \test_harness_geiger_stack_0/data_buffer_5[11] , 
        \test_harness_geiger_stack_0/data_buffer[19]_net_1 , 
        \test_harness_geiger_stack_0/data_buffer_5[10] , 
        \test_harness_geiger_stack_0/data_buffer[18]_net_1 , 
        \test_harness_geiger_stack_0/data_buffer_5[9] , 
        \test_harness_geiger_stack_0/data_buffer[17]_net_1 , 
        \test_harness_geiger_stack_0/data_buffer_5[8] , 
        \test_harness_geiger_stack_0/data_buffer[16]_net_1 , 
        \test_harness_geiger_stack_0/data_buffer_5[6] , 
        \test_harness_geiger_stack_0/data_buffer[14]_net_1 , 
        \test_harness_geiger_stack_0/data_buffer_5[2] , 
        \test_harness_geiger_stack_0/data_buffer[10]_net_1 , 
        \test_harness_geiger_stack_0/data_buffer_5[1] , 
        \test_harness_geiger_stack_0/data_buffer[9]_net_1 , 
        \test_harness_geiger_stack_0/data_buffer_5[0] , 
        \test_harness_geiger_stack_0/data_buffer[8]_net_1 , 
        \test_harness_geiger_stack_0/data_buffer[0]_net_1 , 
        \test_harness_geiger_stack_0/data_buffer[1]_net_1 , 
        \test_harness_geiger_stack_0/data_buffer[2]_net_1 , 
        \test_harness_geiger_stack_0/data_buffer[3]_net_1 , 
        \test_harness_geiger_stack_0/data_buffer[4]_net_1 , 
        \test_harness_geiger_stack_0/data_buffer[5]_net_1 , 
        \test_harness_geiger_stack_0/data_buffer[6]_net_1 , 
        \test_harness_geiger_stack_0/data_buffer[7]_net_1 , 
        \test_harness_geiger_stack_0/counter[0]_net_1 , 
        \clock_div_1MHZ_10HZ_0/clk_out_i , 
        \clock_div_1MHZ_10HZ_0/counter[1]_net_1 , 
        \clock_div_1MHZ_10HZ_0/counter[0]_net_1 , 
        \clock_div_1MHZ_10HZ_0/counter[3]_net_1 , 
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[0] , 
        \clock_div_1MHZ_10HZ_0/counter[8]_net_1 , 
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[4] , 
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[7] , 
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[6] , 
        \clock_div_1MHZ_10HZ_0/clk_out4_14 , 
        \clock_div_1MHZ_10HZ_0/clk_out4_6 , 
        \clock_div_1MHZ_10HZ_0/clk_out4_5 , 
        \clock_div_1MHZ_10HZ_0/clk_out4_12 , 
        \clock_div_1MHZ_10HZ_0/clk_out4_13 , 
        \clock_div_1MHZ_10HZ_0/clk_out4_2 , 
        \clock_div_1MHZ_10HZ_0/clk_out4_1 , 
        \clock_div_1MHZ_10HZ_0/clk_out4_10 , 
        \clock_div_1MHZ_10HZ_0/clk_out4_8 , 
        \clock_div_1MHZ_10HZ_0/counter[12]_net_1 , 
        \clock_div_1MHZ_10HZ_0/clk_out4_4 , 
        \clock_div_1MHZ_10HZ_0/counter[7]_net_1 , 
        \clock_div_1MHZ_10HZ_0/counter[2]_net_1 , 
        \clock_div_1MHZ_10HZ_0/counter[14]_net_1 , 
        \clock_div_1MHZ_10HZ_0/counter[16]_net_1 , 
        \clock_div_1MHZ_10HZ_0/counter[9]_net_1 , 
        \clock_div_1MHZ_10HZ_0/counter[6]_net_1 , 
        \clock_div_1MHZ_10HZ_0/counter[4]_net_1 , 
        \clock_div_1MHZ_10HZ_0/counter[10]_net_1 , 
        \clock_div_1MHZ_10HZ_0/counter[5]_net_1 , 
        \clock_div_1MHZ_10HZ_0/counter[13]_net_1 , 
        \clock_div_1MHZ_10HZ_0/counter[15]_net_1 , 
        \clock_div_1MHZ_10HZ_0/counter[11]_net_1 , 
        \clock_div_1MHZ_10HZ_0/clk_out_RNO_net_1 , 
        \clock_div_1MHZ_10HZ_0/counter_3[15] , 
        \clock_div_1MHZ_10HZ_0/I_43 , 
        \clock_div_1MHZ_10HZ_0/counter_3[14] , 
        \clock_div_1MHZ_10HZ_0/I_40 , 
        \clock_div_1MHZ_10HZ_0/counter_3[9] , 
        \clock_div_1MHZ_10HZ_0/I_26 , 
        \clock_div_1MHZ_10HZ_0/counter_3[8] , 
        \clock_div_1MHZ_10HZ_0/I_23 , 
        \clock_div_1MHZ_10HZ_0/counter_3[6] , 
        \clock_div_1MHZ_10HZ_0/I_17 , 
        \clock_div_1MHZ_10HZ_0/counter_3[4] , 
        \clock_div_1MHZ_10HZ_0/I_12 , \clock_div_1MHZ_10HZ_0/I_4 , 
        \clock_div_1MHZ_10HZ_0/I_5 , \clock_div_1MHZ_10HZ_0/I_7 , 
        \clock_div_1MHZ_10HZ_0/I_9 , \clock_div_1MHZ_10HZ_0/I_14 , 
        \clock_div_1MHZ_10HZ_0/I_20 , \clock_div_1MHZ_10HZ_0/I_28 , 
        \clock_div_1MHZ_10HZ_0/I_32 , \clock_div_1MHZ_10HZ_0/I_35 , 
        \clock_div_1MHZ_10HZ_0/I_37 , \clock_div_1MHZ_10HZ_0/I_46 , 
        \clock_div_1MHZ_10HZ_0/N_2 , 
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[10] , 
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[9] , 
        \clock_div_1MHZ_10HZ_0/N_3 , \clock_div_1MHZ_10HZ_0/N_4 , 
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[8] , 
        \clock_div_1MHZ_10HZ_0/N_5 , \clock_div_1MHZ_10HZ_0/N_7 , 
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[2] , 
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[5] , 
        \clock_div_1MHZ_10HZ_0/N_8 , 
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[3] , 
        \clock_div_1MHZ_10HZ_0/N_10 , \clock_div_1MHZ_10HZ_0/N_11 , 
        \clock_div_1MHZ_10HZ_0/N_12 , 
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[1] , 
        \clock_div_1MHZ_10HZ_0/N_13 , \clock_div_1MHZ_10HZ_0/N_15 , 
        \CLK_1MHZ_0/CLKAP , GND, VCC, 
        \timestamp_0/TIMESTAMP_m6_0_a2_6_net_1 , 
        \timestamp_0/TIMESTAMP_m6_0_a2_4_net_1 , 
        \timestamp_0/TIMESTAMP_m6_0_a2_5_net_1 , 
        \timestamp_0/TIMESTAMP_m6_0_a2_2_net_1 , 
        \timestamp_0/TIMESTAMP_c13 , \timestamp_0/TIMESTAMP_c4_net_1 , 
        \timestamp_0/TIMESTAMP_c2_net_1 , 
        \timestamp_0/TIMESTAMP_c6_net_1 , 
        \timestamp_0/TIMESTAMP_c8_net_1 , 
        \timestamp_0/TIMESTAMP_c10_net_1 , 
        \timestamp_0/TIMESTAMP_c11_net_1 , 
        \timestamp_0/TIMESTAMP_c15_net_1 , 
        \timestamp_0/TIMESTAMP_c17_net_1 , 
        \timestamp_0/TIMESTAMP_c19_net_1 , 
        \timestamp_0/TIMESTAMP_n12_net_1 , 
        \timestamp_0/TIMESTAMP_n13_net_1 , 
        \timestamp_0/TIMESTAMP_n19_net_1 , 
        \timestamp_0/TIMESTAMP_n20_net_1 , 
        \timestamp_0/TIMESTAMP_n21_net_1 , 
        \timestamp_0/TIMESTAMP_n22_net_1 , 
        \timestamp_0/TIMESTAMP_c21_0_net_1 , 
        \timestamp_0/timestamp_0_TIMESTAMP_i[0] , 
        \timestamp_0/TIMESTAMP_m5_0_a2_6_net_1 , 
        \timestamp_0/TIMESTAMP_m5_0_a2_1_net_1 , 
        \timestamp_0/TIMESTAMP_m5_0_a2_0_net_1 , 
        \timestamp_0/TIMESTAMP_m5_0_a2_5_net_1 , 
        \timestamp_0/TIMESTAMP_m5_0_a2_3_net_1 , 
        \timestamp_0/TIMESTAMP_N_12_mux_0 , 
        \timestamp_0/TIMESTAMP_n23 , \timestamp_0/TIMESTAMP_n1_net_1 , 
        \timestamp_0/TIMESTAMP_n2_net_1 , 
        \timestamp_0/TIMESTAMP_n3_net_1 , 
        \timestamp_0/TIMESTAMP_n4_net_1 , 
        \timestamp_0/TIMESTAMP_n5_net_1 , 
        \timestamp_0/TIMESTAMP_n6_net_1 , 
        \timestamp_0/TIMESTAMP_n7_net_1 , 
        \timestamp_0/TIMESTAMP_n8_net_1 , 
        \timestamp_0/TIMESTAMP_n9_net_1 , 
        \timestamp_0/TIMESTAMP_n10_net_1 , 
        \timestamp_0/TIMESTAMP_n11_net_1 , 
        \timestamp_0/TIMESTAMP_n14_net_1 , 
        \timestamp_0/TIMESTAMP_n15_net_1 , 
        \timestamp_0/TIMESTAMP_n16_net_1 , 
        \timestamp_0/TIMESTAMP_n17_net_1 , 
        \timestamp_0/TIMESTAMP_n18_net_1 , 
        \geig_data_handling_0/N_46_1 , 
        \geig_data_handling_0/G_DATA_STACK6_6 , 
        \geig_data_handling_0/G_DATA_STACK6_5 , 
        \geig_data_handling_0/N_46_0 , \geig_data_handling_0/N_78 , 
        \geig_data_handling_0/geig_counts_c8 , 
        \geig_data_handling_0/geig_counts_c11_1 , 
        \geig_data_handling_0/geig_counts_31_1 , 
        \geig_data_handling_0/geig_counts_n14 , 
        \geig_data_handling_0/geig_counts_c13 , 
        \geig_data_handling_0/geig_counts[14] , 
        \geig_data_handling_0/N_46 , 
        \geig_data_handling_0/geig_counts_n13 , 
        \geig_data_handling_0/geig_counts_c12 , 
        \geig_data_handling_0/geig_counts[13] , 
        \geig_data_handling_0/geig_counts_n11 , 
        \geig_data_handling_0/geig_counts_c10 , 
        \geig_data_handling_0/geig_counts[11] , 
        \geig_data_handling_0/geig_counts_n12 , 
        \geig_data_handling_0/geig_counts_n12_tz , 
        \geig_data_handling_0/geig_counts[12] , 
        \geig_data_handling_0/geig_counts_n10 , 
        \geig_data_handling_0/geig_counts_c9 , 
        \geig_data_handling_0/geig_counts[10] , 
        \geig_data_handling_0/geig_counts_n15 , 
        \geig_data_handling_0/geig_counts[15] , 
        \geig_data_handling_0/geig_counts_c13_out , 
        \geig_data_handling_0/geig_counts_c4 , 
        \geig_data_handling_0/geig_counts[3] , 
        \geig_data_handling_0/geig_counts_c2 , 
        \geig_data_handling_0/geig_counts[4] , 
        \geig_data_handling_0/geig_counts[0] , 
        \geig_data_handling_0/geig_counts[1] , 
        \geig_data_handling_0/geig_counts[2] , 
        \geig_data_handling_0/geig_counts[9] , 
        \geig_data_handling_0/geig_counts_c7 , 
        \geig_data_handling_0/geig_counts[8] , 
        \geig_data_handling_0/geig_counts_c6 , 
        \geig_data_handling_0/geig_counts[7] , 
        \geig_data_handling_0/geig_counts_c5 , 
        \geig_data_handling_0/geig_counts[6] , 
        \geig_data_handling_0/geig_counts[5] , 
        \geig_data_handling_0/min_counter[1]_net_1 , 
        \geig_data_handling_0/min_counter[0]_net_1 , 
        \geig_data_handling_0/min_counter[3]_net_1 , 
        \geig_data_handling_0/DWACT_FINC_E[0] , 
        \geig_data_handling_0/N_2 , 
        \geig_data_handling_0/min_counter[8]_net_1 , 
        \geig_data_handling_0/DWACT_FINC_E[4] , 
        \geig_data_handling_0/shift_reg_i[7] , 
        \geig_data_handling_0/shift_reg[7]_net_1 , 
        \geig_data_handling_0/min_counter[4]_net_1 , 
        \geig_data_handling_0/G_DATA_STACK6_4 , 
        \geig_data_handling_0/min_counter[6]_net_1 , 
        \geig_data_handling_0/G_DATA_STACK6_2 , 
        \geig_data_handling_0/min_counter[9]_net_1 , 
        \geig_data_handling_0/min_counter[7]_net_1 , 
        \geig_data_handling_0/min_counter[2]_net_1 , 
        \geig_data_handling_0/min_counter[5]_net_1 , 
        \geig_data_handling_0/geig_counts10_7 , 
        \geig_data_handling_0/geig_counts10_1 , 
        \geig_data_handling_0/geig_counts10_0 , 
        \geig_data_handling_0/geig_counts10_4 , 
        \geig_data_handling_0/geig_counts10_6 , 
        \geig_data_handling_0/shift_reg[3]_net_1 , 
        \geig_data_handling_0/shift_reg[2]_net_1 , 
        \geig_data_handling_0/geig_counts10_3 , 
        \geig_data_handling_0/shift_reg[6]_net_1 , 
        \geig_data_handling_0/shift_reg[4]_net_1 , 
        \geig_data_handling_0/shift_reg[5]_net_1 , 
        \geig_data_handling_0/shift_reg[0]_net_1 , 
        \geig_data_handling_0/shift_reg[1]_net_1 , 
        \geig_data_handling_0/shift_reg_i_0[8] , 
        \geig_data_handling_0/geig_counts_n3 , 
        \geig_data_handling_0/geig_counts_n2 , 
        \geig_data_handling_0/geig_counts_n2_tz , 
        \geig_data_handling_0/geig_counts_n4 , 
        \geig_data_handling_0/geig_counts_n4_tz , 
        \geig_data_handling_0/geig_counts_n9 , 
        \geig_data_handling_0/geig_counts_n8 , 
        \geig_data_handling_0/geig_counts_n7 , 
        \geig_data_handling_0/geig_counts_n6 , 
        \geig_data_handling_0/geig_counts_n5 , 
        \geig_data_handling_0/geig_counts_n1 , 
        \geig_data_handling_0/N_187 , 
        \geig_data_handling_0/min_counter_3[6] , 
        \geig_data_handling_0/min_counter_3[9] , 
        \geig_data_handling_0/min_counter_3[3] , 
        \geig_data_handling_0/min_counter_3[4] , 
        \geig_data_handling_0/I_12_1 , 
        \geig_data_handling_0/G_DATA_STACK_1_RNO[0]_net_1 , 
        \geig_data_handling_0/geig_countse , 
        \geig_data_handling_0/I_4_0 , \geig_data_handling_0/I_5_1 , 
        \geig_data_handling_0/I_7_1 , \geig_data_handling_0/I_14_1 , 
        \geig_data_handling_0/I_20_1 , \geig_data_handling_0/I_23_1 , 
        \geig_data_handling_0/DWACT_FINC_E[2] , 
        \geig_data_handling_0/DWACT_FINC_E[3] , 
        \geig_data_handling_0/N_3 , \geig_data_handling_0/N_4 , 
        \geig_data_handling_0/N_5 , 
        \geig_data_handling_0/DWACT_FINC_E[1] , 
        \geig_data_handling_0/N_6 , \geig_data_handling_0/N_8 , 
        \D4_OUT_pad/U0/NET1 , \D4_OUT_pad/U0/NET2 , 
        \BUF2_PBRST_N_T9_pad/U0/NET1 , \D6_OUT_pad/U0/NET1 , 
        \D6_OUT_pad/U0/NET2 , \D1_OUT_pad/U0/NET1 , 
        \D1_OUT_pad/U0/NET2 , \D0_OUT_pad/U0/NET1 , 
        \D0_OUT_pad/U0/NET2 , \G_STREAM_pad/U0/NET1 , 
        \D5_OUT_pad/U0/NET1 , \D5_OUT_pad/U0/NET2 , 
        \D2_OUT_pad/U0/NET1 , \D2_OUT_pad/U0/NET2 , 
        \CLK_48MHZ_pad/U0/NET1 , \D7_OUT_pad/U0/NET1 , 
        \D7_OUT_pad/U0/NET2 , \D3_OUT_pad/U0/NET1 , 
        \D3_OUT_pad/U0/NET2 , 
        \test_harness_geiger_stack_0/data_chunk[5]/Y , 
        \test_harness_geiger_stack_0/data_chunk[0]/Y , 
        \test_harness_geiger_stack_0/data_chunk[7]/Y , 
        \geig_data_handling_0/G_DATA_STACK_1[33]/Y , 
        \geig_data_handling_0/geig_counts[1]/Y , 
        \geig_data_handling_0/geig_counts[8]/Y , 
        \geig_data_handling_0/geig_counts[10]/Y , 
        \geig_data_handling_0/G_DATA_STACK_1[34]/Y , 
        \test_harness_geiger_stack_0/data_chunk[4]/Y , 
        \geig_data_handling_0/G_DATA_STACK_1[13]/Y , 
        \geig_data_handling_0/G_DATA_STACK_1[23]/Y , 
        \geig_data_handling_0/geig_counts[4]/Y , 
        \test_harness_geiger_stack_0/set_0/Y , 
        \geig_data_handling_0/G_DATA_STACK_1[37]/Y , 
        \geig_data_handling_0/G_DATA_STACK_1[14]/Y , 
        \geig_data_handling_0/G_DATA_STACK_1[24]/Y , 
        \geig_data_handling_0/geig_counts[15]/Y , 
        \geig_data_handling_0/G_DATA_STACK_1[31]/Y , 
        \geig_data_handling_0/G_DATA_STACK_1[17]/Y , 
        \geig_data_handling_0/G_DATA_STACK_1[27]/Y , 
        \geig_data_handling_0/geig_counts[9]/Y , 
        \geig_data_handling_0/geig_counts[3]/Y , 
        \geig_data_handling_0/G_DATA_STACK_1[35]/Y , 
        \geig_data_handling_0/G_DATA_STACK_1[43]/Y , 
        \geig_data_handling_0/G_DATA_STACK_1[11]/Y , 
        \geig_data_handling_0/G_DATA_STACK_1[21]/Y , 
        \test_harness_geiger_stack_0/data_chunk[6]/Y , 
        \test_harness_geiger_stack_0/data_chunk[1]/Y , 
        \geig_data_handling_0/G_DATA_STACK_1[15]/Y , 
        \geig_data_handling_0/G_DATA_STACK_1[30]/Y , 
        \geig_data_handling_0/G_DATA_STACK_1[25]/Y , 
        \geig_data_handling_0/G_DATA_STACK_1[36]/Y , 
        \geig_data_handling_0/geig_counts[7]/Y , 
        \geig_data_handling_0/G_DATA_STACK_1[44]/Y , 
        \geig_data_handling_0/G_DATA_STACK_1[32]/Y , 
        \geig_data_handling_0/G_DATA_STACK_1[47]/Y , 
        \geig_data_handling_0/G_DATA_STACK_1[10]/Y , 
        \geig_data_handling_0/G_DATA_STACK_1[20]/Y , 
        \geig_data_handling_0/G_DATA_STACK_1[16]/Y , 
        \geig_data_handling_0/G_DATA_STACK_1[38]/Y , 
        \geig_data_handling_0/G_DATA_STACK_1[12]/Y , 
        \geig_data_handling_0/G_DATA_STACK_1[26]/Y , 
        \geig_data_handling_0/G_DATA_STACK_1[22]/Y , 
        \geig_data_handling_0/geig_counts[6]/Y , 
        \geig_data_handling_0/G_DATA_STACK_1[41]/Y , 
        \test_harness_geiger_stack_0/data_chunk[2]/Y , 
        \geig_data_handling_0/geig_counts[11]/Y , 
        \geig_data_handling_0/geig_counts[14]/Y , 
        \geig_data_handling_0/geig_counts[0]/Y , 
        \geig_data_handling_0/G_DATA_STACK_1[18]/Y , 
        \geig_data_handling_0/G_DATA_STACK_1[28]/Y , 
        \geig_data_handling_0/G_DATA_STACK_1[45]/Y , 
        \geig_data_handling_0/G_DATA_STACK_1[39]/Y , 
        \test_harness_geiger_stack_0/set/Y , 
        \geig_data_handling_0/G_DATA_STACK_1[8]/Y , 
        \geig_data_handling_0/geig_counts[5]/Y , 
        \geig_data_handling_0/G_DATA_STACK_1[40]/Y , 
        \geig_data_handling_0/G_DATA_STACK_1[19]/Y , 
        \geig_data_handling_0/G_DATA_STACK_1[46]/Y , 
        \geig_data_handling_0/G_DATA_STACK_1[29]/Y , 
        \geig_data_handling_0/G_DATA_STACK_1[42]/Y , 
        \geig_data_handling_0/geig_counts[12]/Y , 
        \geig_data_handling_0/G_DATA_STACK_1[9]/Y , 
        \test_harness_geiger_stack_0/data_chunk[3]/Y , 
        \geig_data_handling_0/geig_counts[13]/Y , 
        \test_harness_geiger_stack_0/set_1/Y , 
        \geig_data_handling_0/geig_counts[2]/Y , AFLSDF_VCC, 
        AFLSDF_GND;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign GND = GND_power_net1;
    assign AFLSDF_GND = GND_power_net1;
    assign VCC = VCC_power_net1;
    assign AFLSDF_VCC = VCC_power_net1;
    
    MX2 \test_harness_geiger_stack_0/data_chunk[1]/U0  (.A(D1_OUT_c), 
        .B(\test_harness_geiger_stack_0/data_buffer[1]_net_1 ), .S(
        \test_harness_geiger_stack_0/data_chunk7 ), .Y(
        \test_harness_geiger_stack_0/data_chunk[1]/Y ));
    DFN1C0 \geig_data_handling_0/min_counter[1]  (.D(
        \geig_data_handling_0/I_5_1 ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_6), .Q(
        \geig_data_handling_0/min_counter[1]_net_1 ));
    DFN1E1 \test_harness_geiger_stack_0/data_prev[47]  (.D(
        \geig_data_handling_0_G_DATA_STACK[47] ), .CLK(GLA), .E(
        reset_pulse_0_RESET_6), .Q(
        \test_harness_geiger_stack_0/data_prev[47]_net_1 ));
    DFN1C0 \clock_div_1MHZ_100KHZ_0/counter[10]  (.D(
        \clock_div_1MHZ_100KHZ_0/I_28_0 ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_7), .Q(
        \clock_div_1MHZ_100KHZ_0/counter[10]_net_1 ));
    OR3 \test_harness_geiger_stack_0/data_prev_RNI07UP[26]  (.A(
        \test_harness_geiger_stack_0/un1_TEST_DATA_27 ), .B(
        \test_harness_geiger_stack_0/un1_TEST_DATA_35 ), .C(
        \test_harness_geiger_stack_0/un1_TEST_DATA_NE_13 ), .Y(
        \test_harness_geiger_stack_0/un1_TEST_DATA_NE_28 ));
    ZOR3I \test_harness_geiger_stack_0/data_prev_RNIL2I9[2]  (.A(
        \test_harness_geiger_stack_0/data_prev[2]_net_1 ), .B(
        \test_harness_geiger_stack_0/data_prev[6]_net_1 ), .C(
        \geig_data_handling_0_G_DATA_STACK[1] ), .Y(
        \test_harness_geiger_stack_0/un1_TEST_DATA_NE_17 ));
    NOR2 \geig_data_handling_0/min_counter_RNI9T6K[2]  (.A(
        \geig_data_handling_0/min_counter[2]_net_1 ), .B(
        \geig_data_handling_0/min_counter[5]_net_1 ), .Y(
        \geig_data_handling_0/G_DATA_STACK6_2 ));
    NOR3C \timestamp_0/TIMESTAMP_m6_0_a2_5  (.A(
        \timestamp_0_TIMESTAMP[6] ), .B(\timestamp_0_TIMESTAMP[5] ), 
        .C(\timestamp_0/TIMESTAMP_m6_0_a2_2_net_1 ), .Y(
        \timestamp_0/TIMESTAMP_m6_0_a2_5_net_1 ));
    DFN1C0 \timestamp_0/TIMESTAMP[22]  (.D(
        \timestamp_0/TIMESTAMP_n22_net_1 ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(reset_pulse_0_RESET), 
        .Q(\timestamp_0_TIMESTAMP[22] ));
    DFN1C0 \test_harness_geiger_stack_0/data_chunk[7]/U1  (.D(
        \test_harness_geiger_stack_0/data_chunk[7]/Y ), .CLK(GLA), 
        .CLR(reset_pulse_0_RESET_3), .Q(D7_OUT_c));
    IOTRI_OB_EB \D7_OUT_pad/U0/U1  (.D(D7_OUT_c), .E(VCC), .DOUT(
        \D7_OUT_pad/U0/NET1 ), .EOUT(\D7_OUT_pad/U0/NET2 ));
    AND3 \clock_div_1MHZ_100KHZ_0/un5_counter_I_19  (.A(
        \clock_div_1MHZ_100KHZ_0/DWACT_FINC_E[0] ), .B(
        \clock_div_1MHZ_100KHZ_0/DWACT_FINC_E[2] ), .C(
        \clock_div_1MHZ_100KHZ_0/counter[6]_net_1 ), .Y(
        \clock_div_1MHZ_100KHZ_0/N_11 ));
    AND3 \clock_div_1MHZ_100KHZ_0/un5_counter_I_10  (.A(
        \clock_div_1MHZ_100KHZ_0/counter[0]_net_1 ), .B(
        \clock_div_1MHZ_100KHZ_0/counter[1]_net_1 ), .C(
        \clock_div_1MHZ_100KHZ_0/counter[2]_net_1 ), .Y(
        \clock_div_1MHZ_100KHZ_0/DWACT_FINC_E[0] ));
    NOR2B \geig_data_handling_0/geig_counts_RNI4IH81[7]  (.A(
        \geig_data_handling_0/geig_counts_c6 ), .B(
        \geig_data_handling_0/geig_counts[7] ), .Y(
        \geig_data_handling_0/geig_counts_c7 ));
    DFN1C0 \clock_div_1MHZ_10HZ_0/counter[15]  (.D(
        \clock_div_1MHZ_10HZ_0/counter_3[15] ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET), .Q(
        \clock_div_1MHZ_10HZ_0/counter[15]_net_1 ));
    DFN1E0 \test_harness_geiger_stack_0/data_buffer[6]  (.D(
        \test_harness_geiger_stack_0/data_buffer_5[6] ), .CLK(GLA), .E(
        \test_harness_geiger_stack_0/set_0_RNI7I0G9_0_net_1 ), .Q(
        \test_harness_geiger_stack_0/data_buffer[6]_net_1 ));
    NOR2A \test_harness_geiger_stack_0/set_RNI9F8R8  (.A(
        \test_harness_geiger_stack_0/un1_TEST_DATA_NE ), .B(
        \test_harness_geiger_stack_0/set ), .Y(
        \test_harness_geiger_stack_0/data_chunk8 ));
    MX2 \geig_data_handling_0/geig_counts[13]/U0  (.A(
        \geig_data_handling_0/geig_counts[13] ), .B(
        \geig_data_handling_0/geig_counts_n13 ), .S(
        \geig_data_handling_0/geig_countse ), .Y(
        \geig_data_handling_0/geig_counts[13]/Y ));
    NOR3C \timestamp_0/TIMESTAMP_m6_0_a2_4  (.A(
        \timestamp_0_TIMESTAMP[9] ), .B(\timestamp_0_TIMESTAMP[13] ), 
        .C(\timestamp_0_TIMESTAMP[12] ), .Y(
        \timestamp_0/TIMESTAMP_m6_0_a2_4_net_1 ));
    NOR2B \geig_data_handling_0/geig_counts_RNIV8MI1[9]  (.A(
        \geig_data_handling_0/geig_counts_c8 ), .B(
        \geig_data_handling_0/geig_counts[9] ), .Y(
        \geig_data_handling_0/geig_counts_c9 ));
    MX2 \geig_data_handling_0/G_DATA_STACK_1[42]/U0  (.A(
        \geig_data_handling_0_G_DATA_STACK[42] ), .B(
        \geig_data_handling_0/geig_counts[10] ), .S(
        \geig_data_handling_0/N_46_1 ), .Y(
        \geig_data_handling_0/G_DATA_STACK_1[42]/Y ));
    NOR3C \timestamp_0/TIMESTAMP_c6  (.A(\timestamp_0_TIMESTAMP[5] ), 
        .B(\timestamp_0/TIMESTAMP_c4_net_1 ), .C(
        \timestamp_0_TIMESTAMP[6] ), .Y(
        \timestamp_0/TIMESTAMP_c6_net_1 ));
    DFN1C0 \timestamp_0/TIMESTAMP[12]  (.D(
        \timestamp_0/TIMESTAMP_n12_net_1 ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(reset_pulse_0_RESET), 
        .Q(\timestamp_0_TIMESTAMP[12] ));
    DFN1C0 \timestamp_0/TIMESTAMP[18]  (.D(
        \timestamp_0/TIMESTAMP_n18_net_1 ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(reset_pulse_0_RESET), 
        .Q(\timestamp_0_TIMESTAMP[18] ));
    MX2 \test_harness_geiger_stack_0/data_buffer_RNO[33]  (.A(
        \geig_data_handling_0_G_DATA_STACK[33] ), .B(
        \test_harness_geiger_stack_0/data_buffer[41]_net_1 ), .S(
        \test_harness_geiger_stack_0/set_1 ), .Y(
        \test_harness_geiger_stack_0/data_buffer_5[33] ));
    DFN1C0 \clock_div_1MHZ_100KHZ_0/counter[16]  (.D(
        \clock_div_1MHZ_100KHZ_0/I_46_0 ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_7), .Q(
        \clock_div_1MHZ_100KHZ_0/counter[16]_net_1 ));
    MX2 \test_harness_geiger_stack_0/data_buffer_RNO[30]  (.A(
        \geig_data_handling_0_G_DATA_STACK[30] ), .B(
        \test_harness_geiger_stack_0/data_buffer[38]_net_1 ), .S(
        \test_harness_geiger_stack_0/set_1 ), .Y(
        \test_harness_geiger_stack_0/data_buffer_5[30] ));
    DFN1C0 \geig_data_handling_0/G_DATA_STACK_1[9]/U1  (.D(
        \geig_data_handling_0/G_DATA_STACK_1[9]/Y ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_0), .Q(
        \geig_data_handling_0_G_DATA_STACK[9] ));
    OR2 \reset_pulse_0/RESET_7  (.A(BUF2_PBRST_N_T9_c), .B(CLK_48MHZ_c)
        , .Y(reset_pulse_0_RESET_7));
    AX1C \clock_div_1MHZ_100KHZ_0/un5_counter_I_12  (.A(
        \clock_div_1MHZ_100KHZ_0/counter[3]_net_1 ), .B(
        \clock_div_1MHZ_100KHZ_0/DWACT_FINC_E[0] ), .C(
        \clock_div_1MHZ_100KHZ_0/counter[4]_net_1 ), .Y(
        \clock_div_1MHZ_100KHZ_0/I_12_0 ));
    XO1 \test_harness_geiger_stack_0/data_prev_RNIA02D[33]  (.A(
        \test_harness_geiger_stack_0/data_prev[33]_net_1 ), .B(
        \geig_data_handling_0_G_DATA_STACK[33] ), .C(
        \test_harness_geiger_stack_0/un1_TEST_DATA_34 ), .Y(
        \test_harness_geiger_stack_0/un1_TEST_DATA_NE_11 ));
    DFN1C0 \geig_data_handling_0/G_DATA_STACK_1[29]/U1  (.D(
        \geig_data_handling_0/G_DATA_STACK_1[29]/Y ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_1), .Q(
        \geig_data_handling_0_G_DATA_STACK[29] ));
    NOR2A \clock_div_1MHZ_10HZ_0/counter_RNITV7N[10]  (.A(
        \clock_div_1MHZ_10HZ_0/counter[4]_net_1 ), .B(
        \clock_div_1MHZ_10HZ_0/counter[10]_net_1 ), .Y(
        \clock_div_1MHZ_10HZ_0/clk_out4_4 ));
    DFN1C0 \geig_data_handling_0/geig_counts[5]/U1  (.D(
        \geig_data_handling_0/geig_counts[5]/Y ), .CLK(
        clock_div_1MHZ_100KHZ_0_CLK_100KHZ_OUT), .CLR(
        reset_pulse_0_RESET_2), .Q(
        \geig_data_handling_0/geig_counts[5] ));
    MX2 \geig_data_handling_0/geig_counts[12]/U0  (.A(
        \geig_data_handling_0/geig_counts[12] ), .B(
        \geig_data_handling_0/geig_counts_n12 ), .S(
        \geig_data_handling_0/geig_countse ), .Y(
        \geig_data_handling_0/geig_counts[12]/Y ));
    DFN1C0 \clock_div_1MHZ_10HZ_0/counter[14]  (.D(
        \clock_div_1MHZ_10HZ_0/counter_3[14] ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET), .Q(
        \clock_div_1MHZ_10HZ_0/counter[14]_net_1 ));
    MX2 \geig_data_handling_0/G_DATA_STACK_1[22]/U0  (.A(
        \geig_data_handling_0_G_DATA_STACK[22] ), .B(
        \timestamp_0_TIMESTAMP[14] ), .S(\geig_data_handling_0/N_46_0 )
        , .Y(\geig_data_handling_0/G_DATA_STACK_1[22]/Y ));
    DFN1C0 \geig_data_handling_0/geig_counts[10]/U1  (.D(
        \geig_data_handling_0/geig_counts[10]/Y ), .CLK(
        clock_div_1MHZ_100KHZ_0_CLK_100KHZ_OUT), .CLR(
        reset_pulse_0_RESET_2), .Q(
        \geig_data_handling_0/geig_counts[10] ));
    DFN1C0 \geig_data_handling_0/G_DATA_STACK_1[8]/U1  (.D(
        \geig_data_handling_0/G_DATA_STACK_1[8]/Y ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_0), .Q(
        \geig_data_handling_0_G_DATA_STACK[8] ));
    NOR2B \geig_data_handling_0/geig_counts_RNIH19E[13]  (.A(
        \geig_data_handling_0/geig_counts[12] ), .B(
        \geig_data_handling_0/geig_counts[13] ), .Y(
        \geig_data_handling_0/geig_counts_c13_out ));
    MX2 \geig_data_handling_0/geig_counts[2]/U0  (.A(
        \geig_data_handling_0/geig_counts[2] ), .B(
        \geig_data_handling_0/geig_counts_n2 ), .S(
        \geig_data_handling_0/geig_countse ), .Y(
        \geig_data_handling_0/geig_counts[2]/Y ));
    IOPAD_IN \G_STREAM_pad/U0/U0  (.PAD(G_STREAM), .Y(
        \G_STREAM_pad/U0/NET1 ));
    MX2 \test_harness_geiger_stack_0/data_buffer_RNO[21]  (.A(
        \geig_data_handling_0_G_DATA_STACK[21] ), .B(
        \test_harness_geiger_stack_0/data_buffer[29]_net_1 ), .S(
        \test_harness_geiger_stack_0/set_0 ), .Y(
        \test_harness_geiger_stack_0/data_buffer_5[21] ));
    NOR3C \timestamp_0/TIMESTAMP_m6_0_a2  (.A(
        \timestamp_0/TIMESTAMP_m6_0_a2_6_net_1 ), .B(
        \timestamp_0/TIMESTAMP_m6_0_a2_5_net_1 ), .C(
        \timestamp_0/TIMESTAMP_c4_net_1 ), .Y(
        \timestamp_0/TIMESTAMP_c13 ));
    CLKINT \clock_div_1MHZ_100KHZ_0/clk_out_RNIOQD8  (.A(
        \clock_div_1MHZ_100KHZ_0/clk_out_i ), .Y(
        clock_div_1MHZ_100KHZ_0_CLK_100KHZ_OUT));
    OR3 \test_harness_geiger_stack_0/data_prev_RNIKB2I5[30]  (.A(
        \test_harness_geiger_stack_0/un1_TEST_DATA_NE_35 ), .B(
        \test_harness_geiger_stack_0/un1_TEST_DATA_NE_34 ), .C(
        \test_harness_geiger_stack_0/un1_TEST_DATA_NE_38 ), .Y(
        \test_harness_geiger_stack_0/un1_TEST_DATA_NE_41 ));
    NOR2B \geig_data_handling_0/min_counter_RNIMHVQ2[1]  (.A(
        \geig_data_handling_0/G_DATA_STACK6_6 ), .B(
        \geig_data_handling_0/G_DATA_STACK6_5 ), .Y(
        \geig_data_handling_0/N_46 ));
    XOR2 \clock_div_1MHZ_10HZ_0/un4_counter_1_I_28  (.A(
        \clock_div_1MHZ_10HZ_0/N_8 ), .B(
        \clock_div_1MHZ_10HZ_0/counter[10]_net_1 ), .Y(
        \clock_div_1MHZ_10HZ_0/I_28 ));
    DFN1C0 \geig_data_handling_0/G_DATA_STACK_1[0]  (.D(
        \geig_data_handling_0/G_DATA_STACK_1_RNO[0]_net_1 ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_3), .Q(
        \geig_data_handling_0_G_DATA_STACK[1] ));
    AND2 \clock_div_1MHZ_10HZ_0/un4_counter_1_I_15  (.A(
        \clock_div_1MHZ_10HZ_0/counter[3]_net_1 ), .B(
        \clock_div_1MHZ_10HZ_0/counter[4]_net_1 ), .Y(
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[1] ));
    MX2 \geig_data_handling_0/G_DATA_STACK_1[14]/U0  (.A(
        \geig_data_handling_0_G_DATA_STACK[14] ), .B(
        \timestamp_0_TIMESTAMP[6] ), .S(\geig_data_handling_0/N_46_0 ), 
        .Y(\geig_data_handling_0/G_DATA_STACK_1[14]/Y ));
    DFN1C0 \geig_data_handling_0/min_counter[8]  (.D(
        \geig_data_handling_0/I_23_1 ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_7), .Q(
        \geig_data_handling_0/min_counter[8]_net_1 ));
    AND2 \test_harness_geiger_stack_0/counter_3_I_1  (.A(
        \test_harness_geiger_stack_0/counter[0]_net_1 ), .B(
        \test_harness_geiger_stack_0/data_chunk7 ), .Y(
        \test_harness_geiger_stack_0/DWACT_ADD_CI_0_TMP[0] ));
    MX2 \test_harness_geiger_stack_0/set/U0  (.A(
        \test_harness_geiger_stack_0/data_chunk8 ), .B(
        \test_harness_geiger_stack_0/set ), .S(
        \test_harness_geiger_stack_0/set_0_sqmuxa ), .Y(
        \test_harness_geiger_stack_0/set/Y ));
    OR3 \test_harness_geiger_stack_0/data_prev_RNIIKF23[16]  (.A(
        \test_harness_geiger_stack_0/un1_TEST_DATA_NE_29 ), .B(
        \test_harness_geiger_stack_0/un1_TEST_DATA_NE_28 ), .C(
        \test_harness_geiger_stack_0/un1_TEST_DATA_NE_37 ), .Y(
        \test_harness_geiger_stack_0/un1_TEST_DATA_NE_40 ));
    DFN1E1 \test_harness_geiger_stack_0/data_prev[13]  (.D(
        \geig_data_handling_0_G_DATA_STACK[13] ), .CLK(GLA), .E(
        reset_pulse_0_RESET_4), .Q(
        \test_harness_geiger_stack_0/data_prev[13]_net_1 ));
    MX2 \test_harness_geiger_stack_0/data_buffer_RNO[13]  (.A(
        \geig_data_handling_0_G_DATA_STACK[13] ), .B(
        \test_harness_geiger_stack_0/data_buffer[21]_net_1 ), .S(
        \test_harness_geiger_stack_0/set_0 ), .Y(
        \test_harness_geiger_stack_0/data_buffer_5[13] ));
    MX2 \geig_data_handling_0/geig_counts[3]/U0  (.A(
        \geig_data_handling_0/geig_counts[3] ), .B(
        \geig_data_handling_0/geig_counts_n3 ), .S(
        \geig_data_handling_0/geig_countse ), .Y(
        \geig_data_handling_0/geig_counts[3]/Y ));
    AX1C \timestamp_0/TIMESTAMP_n22  (.A(
        \timestamp_0/TIMESTAMP_c19_net_1 ), .B(
        \timestamp_0/TIMESTAMP_c21_0_net_1 ), .C(
        \timestamp_0_TIMESTAMP[22] ), .Y(
        \timestamp_0/TIMESTAMP_n22_net_1 ));
    DFN1E0 \test_harness_geiger_stack_0/data_buffer[42]  (.D(
        \test_harness_geiger_stack_0/data_buffer_5[42] ), .CLK(GLA), 
        .E(\test_harness_geiger_stack_0/set_0_RNI7I0G9_0_net_1 ), .Q(
        \test_harness_geiger_stack_0/data_buffer[42]_net_1 ));
    MX2 \test_harness_geiger_stack_0/data_buffer_RNO[10]  (.A(
        \geig_data_handling_0_G_DATA_STACK[10] ), .B(
        \test_harness_geiger_stack_0/data_buffer[18]_net_1 ), .S(
        \test_harness_geiger_stack_0/set_0 ), .Y(
        \test_harness_geiger_stack_0/data_buffer_5[10] ));
    DFN1C0 \geig_data_handling_0/min_counter[9]  (.D(
        \geig_data_handling_0/min_counter_3[9] ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_7), .Q(
        \geig_data_handling_0/min_counter[9]_net_1 ));
    OA1A \test_harness_geiger_stack_0/counter_RNO[1]  (.A(
        \test_harness_geiger_stack_0/counter_3[2] ), .B(
        \test_harness_geiger_stack_0/DWACT_ADD_CI_0_partial_sum[0] ), 
        .C(\test_harness_geiger_stack_0/counter_3[1] ), .Y(
        \test_harness_geiger_stack_0/counter_4[1] ));
    DFN1C0 \timestamp_0/TIMESTAMP[15]  (.D(
        \timestamp_0/TIMESTAMP_n15_net_1 ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(reset_pulse_0_RESET), 
        .Q(\timestamp_0_TIMESTAMP[15] ));
    DFN1C0 \geig_data_handling_0/geig_counts[1]/U1  (.D(
        \geig_data_handling_0/geig_counts[1]/Y ), .CLK(
        clock_div_1MHZ_100KHZ_0_CLK_100KHZ_OUT), .CLR(
        reset_pulse_0_RESET_2), .Q(
        \geig_data_handling_0/geig_counts[1] ));
    DFN1E1 \test_harness_geiger_stack_0/data_prev[25]  (.D(
        \geig_data_handling_0_G_DATA_STACK[25] ), .CLK(GLA), .E(
        reset_pulse_0_RESET_5), .Q(
        \test_harness_geiger_stack_0/data_prev[25]_net_1 ));
    NOR2A \test_harness_geiger_stack_0/data_buffer_RNO[44]  (.A(
        \geig_data_handling_0_G_DATA_STACK[44] ), .B(
        \test_harness_geiger_stack_0/set ), .Y(
        \test_harness_geiger_stack_0/data_buffer_5[44] ));
    DFN1C0 \geig_data_handling_0/geig_counts[13]/U1  (.D(
        \geig_data_handling_0/geig_counts[13]/Y ), .CLK(
        clock_div_1MHZ_100KHZ_0_CLK_100KHZ_OUT), .CLR(
        reset_pulse_0_RESET_2), .Q(
        \geig_data_handling_0/geig_counts[13] ));
    NOR2B \geig_data_handling_0/geig_counts_RNIDVCU[5]  (.A(
        \geig_data_handling_0/geig_counts_c4 ), .B(
        \geig_data_handling_0/geig_counts[5] ), .Y(
        \geig_data_handling_0/geig_counts_c5 ));
    IOPAD_TRI \D0_OUT_pad/U0/U0  (.D(\D0_OUT_pad/U0/NET1 ), .E(
        \D0_OUT_pad/U0/NET2 ), .PAD(D0_OUT));
    AX1C \geig_data_handling_0/un5_min_counter_I_12  (.A(
        \geig_data_handling_0/min_counter[3]_net_1 ), .B(
        \geig_data_handling_0/DWACT_FINC_E[0] ), .C(
        \geig_data_handling_0/min_counter[4]_net_1 ), .Y(
        \geig_data_handling_0/I_12_1 ));
    NOR2B \clock_div_1MHZ_10HZ_0/counter_RNIMVFF[6]  (.A(
        \clock_div_1MHZ_10HZ_0/counter[6]_net_1 ), .B(
        \clock_div_1MHZ_10HZ_0/counter[8]_net_1 ), .Y(
        \clock_div_1MHZ_10HZ_0/clk_out4_5 ));
    AND2 \geig_data_handling_0/un5_min_counter_I_15  (.A(
        \geig_data_handling_0/min_counter[3]_net_1 ), .B(
        \geig_data_handling_0/min_counter[4]_net_1 ), .Y(
        \geig_data_handling_0/DWACT_FINC_E[1] ));
    DFN1C0 \geig_data_handling_0/geig_counts[7]/U1  (.D(
        \geig_data_handling_0/geig_counts[7]/Y ), .CLK(
        clock_div_1MHZ_100KHZ_0_CLK_100KHZ_OUT), .CLR(
        reset_pulse_0_RESET_2), .Q(
        \geig_data_handling_0/geig_counts[7] ));
    MX2 \geig_data_handling_0/geig_counts[6]/U0  (.A(
        \geig_data_handling_0/geig_counts[6] ), .B(
        \geig_data_handling_0/geig_counts_n6 ), .S(
        \geig_data_handling_0/geig_countse ), .Y(
        \geig_data_handling_0/geig_counts[6]/Y ));
    DFN1E1 \test_harness_geiger_stack_0/data_prev[33]  (.D(
        \geig_data_handling_0_G_DATA_STACK[33] ), .CLK(GLA), .E(
        reset_pulse_0_RESET_5), .Q(
        \test_harness_geiger_stack_0/data_prev[33]_net_1 ));
    DFN1C0 \clock_div_1MHZ_10HZ_0/counter[16]  (.D(
        \clock_div_1MHZ_10HZ_0/I_46 ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET), .Q(
        \clock_div_1MHZ_10HZ_0/counter[16]_net_1 ));
    XOR2 \clock_div_1MHZ_10HZ_0/un4_counter_1_I_32  (.A(
        \clock_div_1MHZ_10HZ_0/N_7 ), .B(
        \clock_div_1MHZ_10HZ_0/counter[11]_net_1 ), .Y(
        \clock_div_1MHZ_10HZ_0/I_32 ));
    MX2 \geig_data_handling_0/G_DATA_STACK_1[9]/U0  (.A(
        \geig_data_handling_0_G_DATA_STACK[9] ), .B(
        \timestamp_0_TIMESTAMP[1] ), .S(\geig_data_handling_0/N_46_0 ), 
        .Y(\geig_data_handling_0/G_DATA_STACK_1[9]/Y ));
    DFN1C0 \geig_data_handling_0/G_DATA_STACK_1[43]/U1  (.D(
        \geig_data_handling_0/G_DATA_STACK_1[43]/Y ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_1), .Q(
        \geig_data_handling_0_G_DATA_STACK[43] ));
    AX1C \clock_div_1MHZ_10HZ_0/un4_counter_1_I_26  (.A(
        \clock_div_1MHZ_10HZ_0/counter[8]_net_1 ), .B(
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[4] ), .C(
        \clock_div_1MHZ_10HZ_0/counter[9]_net_1 ), .Y(
        \clock_div_1MHZ_10HZ_0/I_26 ));
    XOR2 \test_harness_geiger_stack_0/data_prev_RNI6VE6[25]  (.A(
        \test_harness_geiger_stack_0/data_prev[25]_net_1 ), .B(
        \geig_data_handling_0_G_DATA_STACK[25] ), .Y(
        \test_harness_geiger_stack_0/un1_TEST_DATA_25 ));
    AND2 \clock_div_1MHZ_100KHZ_0/un5_counter_I_44  (.A(
        \clock_div_1MHZ_100KHZ_0/DWACT_FINC_E[7] ), .B(
        \clock_div_1MHZ_100KHZ_0/DWACT_FINC_E[9] ), .Y(
        \clock_div_1MHZ_100KHZ_0/DWACT_FINC_E[10] ));
    MX2 \geig_data_handling_0/G_DATA_STACK_1[35]/U0  (.A(
        \geig_data_handling_0_G_DATA_STACK[35] ), .B(
        \geig_data_handling_0/geig_counts[3] ), .S(
        \geig_data_handling_0/N_46_1 ), .Y(
        \geig_data_handling_0/G_DATA_STACK_1[35]/Y ));
    NOR2B \CLK_1MHZ_0/pllint1  (.A(BUF2_PBRST_N_T9_c), .B(CLK_48MHZ_c), 
        .Y(\CLK_1MHZ_0/CLKAP ));
    NOR2B \geig_data_handling_0/geig_counts_RNO_0[11]  (.A(
        \geig_data_handling_0/geig_counts_c9 ), .B(
        \geig_data_handling_0/geig_counts[10] ), .Y(
        \geig_data_handling_0/geig_counts_c10 ));
    XOR2 \clock_div_1MHZ_10HZ_0/un4_counter_1_I_46  (.A(
        \clock_div_1MHZ_10HZ_0/N_2 ), .B(
        \clock_div_1MHZ_10HZ_0/counter[16]_net_1 ), .Y(
        \clock_div_1MHZ_10HZ_0/I_46 ));
    XOR2 \timestamp_0/TIMESTAMP_n9  (.A(
        \timestamp_0/TIMESTAMP_c8_net_1 ), .B(
        \timestamp_0_TIMESTAMP[9] ), .Y(
        \timestamp_0/TIMESTAMP_n9_net_1 ));
    DFN1E0 \test_harness_geiger_stack_0/data_buffer[47]  (.D(
        \test_harness_geiger_stack_0/data_buffer_5[47] ), .CLK(GLA), 
        .E(\test_harness_geiger_stack_0/set_0_RNI7I0G9_0_net_1 ), .Q(
        \test_harness_geiger_stack_0/data_buffer[47]_net_1 ));
    NOR3A \clock_div_1MHZ_100KHZ_0/counter_RNIE9MN1[10]  (.A(
        \clock_div_1MHZ_100KHZ_0/clk_out5_4 ), .B(
        \clock_div_1MHZ_100KHZ_0/counter[7]_net_1 ), .C(
        \clock_div_1MHZ_100KHZ_0/counter[10]_net_1 ), .Y(
        \clock_div_1MHZ_100KHZ_0/clk_out5_10 ));
    XOR2 \test_harness_geiger_stack_0/data_prev_RNI2PC6[14]  (.A(
        \geig_data_handling_0_G_DATA_STACK[14] ), .B(
        \test_harness_geiger_stack_0/data_prev[14]_net_1 ), .Y(
        \test_harness_geiger_stack_0/un1_TEST_DATA_14 ));
    DFN1E1 \test_harness_geiger_stack_0/data_prev[14]  (.D(
        \geig_data_handling_0_G_DATA_STACK[14] ), .CLK(GLA), .E(
        reset_pulse_0_RESET_4), .Q(
        \test_harness_geiger_stack_0/data_prev[14]_net_1 ));
    DFN1C0 \test_harness_geiger_stack_0/counter[0]  (.D(
        \test_harness_geiger_stack_0/DWACT_ADD_CI_0_partial_sum[0] ), 
        .CLK(GLA), .CLR(reset_pulse_0_RESET_4), .Q(
        \test_harness_geiger_stack_0/counter[0]_net_1 ));
    XOR2 \timestamp_0/TIMESTAMP_n5  (.A(
        \timestamp_0/TIMESTAMP_c4_net_1 ), .B(
        \timestamp_0_TIMESTAMP[5] ), .Y(
        \timestamp_0/TIMESTAMP_n5_net_1 ));
    XOR2 \test_harness_geiger_stack_0/data_prev_RNIQGC6[10]  (.A(
        \geig_data_handling_0_G_DATA_STACK[10] ), .B(
        \test_harness_geiger_stack_0/data_prev[10]_net_1 ), .Y(
        \test_harness_geiger_stack_0/un1_TEST_DATA_10 ));
    AND3 \geig_data_handling_0/un5_min_counter_I_16  (.A(
        \geig_data_handling_0/DWACT_FINC_E[0] ), .B(
        \geig_data_handling_0/DWACT_FINC_E[1] ), .C(
        \geig_data_handling_0/min_counter[5]_net_1 ), .Y(
        \geig_data_handling_0/N_5 ));
    XOR2 \geig_data_handling_0/un5_min_counter_I_20  (.A(
        \geig_data_handling_0/N_4 ), .B(
        \geig_data_handling_0/min_counter[7]_net_1 ), .Y(
        \geig_data_handling_0/I_20_1 ));
    DFN1C0 \geig_data_handling_0/G_DATA_STACK_1[23]/U1  (.D(
        \geig_data_handling_0/G_DATA_STACK_1[23]/Y ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_0), .Q(
        \geig_data_handling_0_G_DATA_STACK[23] ));
    NOR2B \test_harness_geiger_stack_0/data_buffer_RNO[7]  (.A(
        \test_harness_geiger_stack_0/data_buffer[15]_net_1 ), .B(
        \test_harness_geiger_stack_0/set ), .Y(
        \test_harness_geiger_stack_0/data_buffer_5[7] ));
    AOI1B \clock_div_1MHZ_100KHZ_0/counter_RNO[2]  (.A(
        \clock_div_1MHZ_100KHZ_0/clk_out5_14 ), .B(
        \clock_div_1MHZ_100KHZ_0/clk_out5_13 ), .C(
        \clock_div_1MHZ_100KHZ_0/I_7_0 ), .Y(
        \clock_div_1MHZ_100KHZ_0/counter_3[2] ));
    MX2 \test_harness_geiger_stack_0/data_buffer_RNO[2]  (.A(
        \geig_data_handling_0_G_DATA_STACK[1] ), .B(
        \test_harness_geiger_stack_0/data_buffer[10]_net_1 ), .S(
        \test_harness_geiger_stack_0/set_1 ), .Y(
        \test_harness_geiger_stack_0/data_buffer_5[2] ));
    XOR2 \clock_div_1MHZ_100KHZ_0/un5_counter_I_40  (.A(
        \clock_div_1MHZ_100KHZ_0/N_4 ), .B(
        \clock_div_1MHZ_100KHZ_0/counter[14]_net_1 ), .Y(
        \clock_div_1MHZ_100KHZ_0/I_40_0 ));
    MX2 \geig_data_handling_0/G_DATA_STACK_1[18]/U0  (.A(
        \geig_data_handling_0_G_DATA_STACK[18] ), .B(
        \timestamp_0_TIMESTAMP[10] ), .S(\geig_data_handling_0/N_46_0 )
        , .Y(\geig_data_handling_0/G_DATA_STACK_1[18]/Y ));
    DFN1C0 \geig_data_handling_0/G_DATA_STACK_1[14]/U1  (.D(
        \geig_data_handling_0/G_DATA_STACK_1[14]/Y ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_0), .Q(
        \geig_data_handling_0_G_DATA_STACK[14] ));
    DFN1E1 \test_harness_geiger_stack_0/data_prev[20]  (.D(
        \geig_data_handling_0_G_DATA_STACK[20] ), .CLK(GLA), .E(
        reset_pulse_0_RESET_4), .Q(
        \test_harness_geiger_stack_0/data_prev[20]_net_1 ));
    CLKINT \clock_div_1MHZ_10HZ_0/clk_out_RNIT8C7  (.A(
        \clock_div_1MHZ_10HZ_0/clk_out_i ), .Y(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT));
    DFN1C0 \geig_data_handling_0/geig_counts[2]/U1  (.D(
        \geig_data_handling_0/geig_counts[2]/Y ), .CLK(
        clock_div_1MHZ_100KHZ_0_CLK_100KHZ_OUT), .CLR(
        reset_pulse_0_RESET_2), .Q(
        \geig_data_handling_0/geig_counts[2] ));
    OR2 \reset_pulse_0/RESET_2  (.A(BUF2_PBRST_N_T9_c), .B(CLK_48MHZ_c)
        , .Y(reset_pulse_0_RESET_2));
    DFN1C0 \geig_data_handling_0/G_DATA_STACK_1[42]/U1  (.D(
        \geig_data_handling_0/G_DATA_STACK_1[42]/Y ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_1), .Q(
        \geig_data_handling_0_G_DATA_STACK[42] ));
    DFN1C0 \clock_div_1MHZ_100KHZ_0/counter[11]  (.D(
        \clock_div_1MHZ_100KHZ_0/I_32_0 ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_7), .Q(
        \clock_div_1MHZ_100KHZ_0/counter[11]_net_1 ));
    MX2 \test_harness_geiger_stack_0/data_chunk[7]/U0  (.A(D7_OUT_c), 
        .B(\test_harness_geiger_stack_0/data_buffer[7]_net_1 ), .S(
        \test_harness_geiger_stack_0/data_chunk7 ), .Y(
        \test_harness_geiger_stack_0/data_chunk[7]/Y ));
    DFN1C0 \test_harness_geiger_stack_0/data_chunk[6]/U1  (.D(
        \test_harness_geiger_stack_0/data_chunk[6]/Y ), .CLK(GLA), 
        .CLR(reset_pulse_0_RESET_3), .Q(D6_OUT_c));
    DFN1E1 \test_harness_geiger_stack_0/data_prev[34]  (.D(
        \geig_data_handling_0_G_DATA_STACK[34] ), .CLK(GLA), .E(
        reset_pulse_0_RESET_5), .Q(
        \test_harness_geiger_stack_0/data_prev[34]_net_1 ));
    XOR2 \geig_data_handling_0/un5_min_counter_I_5  (.A(
        \geig_data_handling_0/min_counter[0]_net_1 ), .B(
        \geig_data_handling_0/min_counter[1]_net_1 ), .Y(
        \geig_data_handling_0/I_5_1 ));
    DFN1C0 \geig_data_handling_0/shift_reg[1]  (.D(
        \geig_data_handling_0/shift_reg[0]_net_1 ), .CLK(
        clock_div_1MHZ_100KHZ_0_CLK_100KHZ_OUT), .CLR(
        reset_pulse_0_RESET_3), .Q(
        \geig_data_handling_0/shift_reg[1]_net_1 ));
    NOR3C \timestamp_0/TIMESTAMP_c4  (.A(\timestamp_0_TIMESTAMP[3] ), 
        .B(\timestamp_0/TIMESTAMP_c2_net_1 ), .C(
        \timestamp_0_TIMESTAMP[4] ), .Y(
        \timestamp_0/TIMESTAMP_c4_net_1 ));
    DFN1C0 \clock_div_1MHZ_10HZ_0/counter[10]  (.D(
        \clock_div_1MHZ_10HZ_0/I_28 ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET), .Q(
        \clock_div_1MHZ_10HZ_0/counter[10]_net_1 ));
    AND3 \clock_div_1MHZ_100KHZ_0/un5_counter_I_42  (.A(
        \clock_div_1MHZ_100KHZ_0/DWACT_FINC_E[6] ), .B(
        \clock_div_1MHZ_100KHZ_0/DWACT_FINC_E[7] ), .C(
        \clock_div_1MHZ_100KHZ_0/DWACT_FINC_E[9] ), .Y(
        \clock_div_1MHZ_100KHZ_0/N_3 ));
    MX2 \geig_data_handling_0/G_DATA_STACK_1[47]/U0  (.A(
        \geig_data_handling_0_G_DATA_STACK[47] ), .B(
        \geig_data_handling_0/geig_counts[15] ), .S(
        \geig_data_handling_0/N_46_1 ), .Y(
        \geig_data_handling_0/G_DATA_STACK_1[47]/Y ));
    NOR2 \clock_div_1MHZ_100KHZ_0/counter_RNI3SVR[1]  (.A(
        \clock_div_1MHZ_100KHZ_0/counter[1]_net_1 ), .B(
        \clock_div_1MHZ_100KHZ_0/counter[4]_net_1 ), .Y(
        \clock_div_1MHZ_100KHZ_0/clk_out5_5 ));
    DFN1C0 \geig_data_handling_0/shift_reg[0]  (.D(G_STREAM_c), .CLK(
        clock_div_1MHZ_100KHZ_0_CLK_100KHZ_OUT), .CLR(
        reset_pulse_0_RESET_3), .Q(
        \geig_data_handling_0/shift_reg[0]_net_1 ));
    DFN1C0 \geig_data_handling_0/G_DATA_STACK_1[47]/U1  (.D(
        \geig_data_handling_0/G_DATA_STACK_1[47]/Y ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_1), .Q(
        \geig_data_handling_0_G_DATA_STACK[47] ));
    DFN1C0 \geig_data_handling_0/G_DATA_STACK_1[39]/U1  (.D(
        \geig_data_handling_0/G_DATA_STACK_1[39]/Y ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_1), .Q(
        \geig_data_handling_0_G_DATA_STACK[39] ));
    XOR2 \timestamp_0/TIMESTAMP_m6  (.A(\timestamp_0_TIMESTAMP[23] ), 
        .B(\timestamp_0/TIMESTAMP_N_12_mux_0 ), .Y(
        \timestamp_0/TIMESTAMP_n23 ));
    AND3 \clock_div_1MHZ_100KHZ_0/un5_counter_I_13  (.A(
        \clock_div_1MHZ_100KHZ_0/DWACT_FINC_E[0] ), .B(
        \clock_div_1MHZ_100KHZ_0/counter[3]_net_1 ), .C(
        \clock_div_1MHZ_100KHZ_0/counter[4]_net_1 ), .Y(
        \clock_div_1MHZ_100KHZ_0/N_13 ));
    XOR2 \test_harness_geiger_stack_0/data_prev_RNI0RG6[31]  (.A(
        \test_harness_geiger_stack_0/data_prev[31]_net_1 ), .B(
        \geig_data_handling_0_G_DATA_STACK[31] ), .Y(
        \test_harness_geiger_stack_0/un1_TEST_DATA_31 ));
    IOIN_IB \G_STREAM_pad/U0/U1  (.YIN(\G_STREAM_pad/U0/NET1 ), .Y(
        G_STREAM_c));
    NOR2 \geig_data_handling_0/geig_counts_RNO[0]  (.A(
        \geig_data_handling_0/geig_counts[0] ), .B(
        \geig_data_handling_0/N_46 ), .Y(\geig_data_handling_0/N_187 ));
    NOR2 \clock_div_1MHZ_10HZ_0/counter_RNI148N[5]  (.A(
        \clock_div_1MHZ_10HZ_0/counter[5]_net_1 ), .B(
        \clock_div_1MHZ_10HZ_0/counter[13]_net_1 ), .Y(
        \clock_div_1MHZ_10HZ_0/clk_out4_2 ));
    AX1C \timestamp_0/TIMESTAMP_n2  (.A(\timestamp_0_TIMESTAMP[1] ), 
        .B(\timestamp_0_TIMESTAMP[0] ), .C(\timestamp_0_TIMESTAMP[2] ), 
        .Y(\timestamp_0/TIMESTAMP_n2_net_1 ));
    AX1C \timestamp_0/TIMESTAMP_n15  (.A(\timestamp_0_TIMESTAMP[14] ), 
        .B(\timestamp_0/TIMESTAMP_c13 ), .C(
        \timestamp_0_TIMESTAMP[15] ), .Y(
        \timestamp_0/TIMESTAMP_n15_net_1 ));
    MX2 \geig_data_handling_0/G_DATA_STACK_1[32]/U0  (.A(
        \geig_data_handling_0_G_DATA_STACK[32] ), .B(
        \geig_data_handling_0/geig_counts[0] ), .S(
        \geig_data_handling_0/N_46_1 ), .Y(
        \geig_data_handling_0/G_DATA_STACK_1[32]/Y ));
    DFN1C0 \geig_data_handling_0/G_DATA_STACK_1[22]/U1  (.D(
        \geig_data_handling_0/G_DATA_STACK_1[22]/Y ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_0), .Q(
        \geig_data_handling_0_G_DATA_STACK[22] ));
    DFN1E1 \test_harness_geiger_stack_0/data_prev[26]  (.D(
        \geig_data_handling_0_G_DATA_STACK[26] ), .CLK(GLA), .E(
        reset_pulse_0_RESET_5), .Q(
        \test_harness_geiger_stack_0/data_prev[26]_net_1 ));
    NOR2A \geig_data_handling_0/geig_counts_RNO[4]  (.A(
        \geig_data_handling_0/geig_counts_n4_tz ), .B(
        \geig_data_handling_0/N_46 ), .Y(
        \geig_data_handling_0/geig_counts_n4 ));
    DFN1C0 \timestamp_0/TIMESTAMP[16]  (.D(
        \timestamp_0/TIMESTAMP_n16_net_1 ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(reset_pulse_0_RESET), 
        .Q(\timestamp_0_TIMESTAMP[16] ));
    AX1C \clock_div_1MHZ_100KHZ_0/un5_counter_I_7  (.A(
        \clock_div_1MHZ_100KHZ_0/counter[1]_net_1 ), .B(
        \clock_div_1MHZ_100KHZ_0/counter[0]_net_1 ), .C(
        \clock_div_1MHZ_100KHZ_0/counter[2]_net_1 ), .Y(
        \clock_div_1MHZ_100KHZ_0/I_7_0 ));
    AND3 \geig_data_handling_0/un5_min_counter_I_18  (.A(
        \geig_data_handling_0/min_counter[3]_net_1 ), .B(
        \geig_data_handling_0/min_counter[4]_net_1 ), .C(
        \geig_data_handling_0/min_counter[5]_net_1 ), .Y(
        \geig_data_handling_0/DWACT_FINC_E[2] ));
    MX2 \geig_data_handling_0/G_DATA_STACK_1[13]/U0  (.A(
        \geig_data_handling_0_G_DATA_STACK[13] ), .B(
        \timestamp_0_TIMESTAMP[5] ), .S(\geig_data_handling_0/N_46_0 ), 
        .Y(\geig_data_handling_0/G_DATA_STACK_1[13]/Y ));
    AOI1B \clock_div_1MHZ_10HZ_0/counter_RNO[14]  (.A(
        \clock_div_1MHZ_10HZ_0/clk_out4_14 ), .B(
        \clock_div_1MHZ_10HZ_0/clk_out4_13 ), .C(
        \clock_div_1MHZ_10HZ_0/I_40 ), .Y(
        \clock_div_1MHZ_10HZ_0/counter_3[14] ));
    DFN1E1 \test_harness_geiger_stack_0/data_prev[42]  (.D(
        \geig_data_handling_0_G_DATA_STACK[42] ), .CLK(GLA), .E(
        reset_pulse_0_RESET_5), .Q(
        \test_harness_geiger_stack_0/data_prev[42]_net_1 ));
    MX2 \geig_data_handling_0/G_DATA_STACK_1[27]/U0  (.A(
        \geig_data_handling_0_G_DATA_STACK[27] ), .B(
        \timestamp_0_TIMESTAMP[19] ), .S(\geig_data_handling_0/N_46_0 )
        , .Y(\geig_data_handling_0/G_DATA_STACK_1[27]/Y ));
    MX2 \geig_data_handling_0/G_DATA_STACK_1[19]/U0  (.A(
        \geig_data_handling_0_G_DATA_STACK[19] ), .B(
        \timestamp_0_TIMESTAMP[11] ), .S(\geig_data_handling_0/N_46_0 )
        , .Y(\geig_data_handling_0/G_DATA_STACK_1[19]/Y ));
    DFN1C0 \geig_data_handling_0/G_DATA_STACK_1[27]/U1  (.D(
        \geig_data_handling_0/G_DATA_STACK_1[27]/Y ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_1), .Q(
        \geig_data_handling_0_G_DATA_STACK[27] ));
    XO1 \test_harness_geiger_stack_0/data_prev_RNIESPC[16]  (.A(
        \test_harness_geiger_stack_0/data_prev[16]_net_1 ), .B(
        \geig_data_handling_0_G_DATA_STACK[16] ), .C(
        \test_harness_geiger_stack_0/un1_TEST_DATA_17 ), .Y(
        \test_harness_geiger_stack_0/un1_TEST_DATA_NE_18 ));
    XO1 \test_harness_geiger_stack_0/data_prev_RNIM4QC[18]  (.A(
        \test_harness_geiger_stack_0/data_prev[18]_net_1 ), .B(
        \geig_data_handling_0_G_DATA_STACK[18] ), .C(
        \test_harness_geiger_stack_0/un1_TEST_DATA_19 ), .Y(
        \test_harness_geiger_stack_0/un1_TEST_DATA_NE_19 ));
    XOR2 \test_harness_geiger_stack_0/data_prev_RNIAU15[9]  (.A(
        \geig_data_handling_0_G_DATA_STACK[9] ), .B(
        \test_harness_geiger_stack_0/data_prev[9]_net_1 ), .Y(
        \test_harness_geiger_stack_0/un1_TEST_DATA_9 ));
    DFN1E0 \test_harness_geiger_stack_0/data_buffer[21]  (.D(
        \test_harness_geiger_stack_0/data_buffer_5[21] ), .CLK(GLA), 
        .E(\test_harness_geiger_stack_0/un1_counter18_0 ), .Q(
        \test_harness_geiger_stack_0/data_buffer[21]_net_1 ));
    DFN1C0 \test_harness_geiger_stack_0/data_chunk[0]/U1  (.D(
        \test_harness_geiger_stack_0/data_chunk[0]/Y ), .CLK(GLA), 
        .CLR(reset_pulse_0_RESET_2), .Q(D0_OUT_c));
    DFN1P0 \clock_div_1MHZ_100KHZ_0/clk_out  (.D(
        \clock_div_1MHZ_100KHZ_0/clk_out_RNO_0 ), .CLK(GLA), .PRE(
        reset_pulse_0_RESET_6), .Q(\clock_div_1MHZ_100KHZ_0/clk_out_i )
        );
    XOR2 \clock_div_1MHZ_10HZ_0/un4_counter_1_I_23  (.A(
        \clock_div_1MHZ_10HZ_0/N_10 ), .B(
        \clock_div_1MHZ_10HZ_0/counter[8]_net_1 ), .Y(
        \clock_div_1MHZ_10HZ_0/I_23 ));
    AND3 \clock_div_1MHZ_100KHZ_0/un5_counter_I_41  (.A(
        \clock_div_1MHZ_100KHZ_0/counter[12]_net_1 ), .B(
        \clock_div_1MHZ_100KHZ_0/counter[13]_net_1 ), .C(
        \clock_div_1MHZ_100KHZ_0/counter[14]_net_1 ), .Y(
        \clock_div_1MHZ_100KHZ_0/DWACT_FINC_E[9] ));
    DFN1E1 \test_harness_geiger_stack_0/data_prev[9]  (.D(
        \geig_data_handling_0_G_DATA_STACK[9] ), .CLK(GLA), .E(
        reset_pulse_0_RESET_4), .Q(
        \test_harness_geiger_stack_0/data_prev[9]_net_1 ));
    DFN1C0 \test_harness_geiger_stack_0/data_chunk[5]/U1  (.D(
        \test_harness_geiger_stack_0/data_chunk[5]/Y ), .CLK(GLA), 
        .CLR(reset_pulse_0_RESET_2), .Q(D5_OUT_c));
    DFN1C0 \geig_data_handling_0/geig_counts[8]/U1  (.D(
        \geig_data_handling_0/geig_counts[8]/Y ), .CLK(
        clock_div_1MHZ_100KHZ_0_CLK_100KHZ_OUT), .CLR(
        reset_pulse_0_RESET_2), .Q(
        \geig_data_handling_0/geig_counts[8] ));
    NOR3B \geig_data_handling_0/min_counter_RNIMKAU[9]  (.A(
        \geig_data_handling_0/min_counter[9]_net_1 ), .B(
        \geig_data_handling_0/min_counter[3]_net_1 ), .C(
        \geig_data_handling_0/min_counter[7]_net_1 ), .Y(
        \geig_data_handling_0/G_DATA_STACK6_4 ));
    MX2 \test_harness_geiger_stack_0/data_buffer_RNO[9]  (.A(
        \geig_data_handling_0_G_DATA_STACK[9] ), .B(
        \test_harness_geiger_stack_0/data_buffer[17]_net_1 ), .S(
        \test_harness_geiger_stack_0/set ), .Y(
        \test_harness_geiger_stack_0/data_buffer_5[9] ));
    MX2 \test_harness_geiger_stack_0/data_buffer_RNO[6]  (.A(
        \geig_data_handling_0_G_DATA_STACK[1] ), .B(
        \test_harness_geiger_stack_0/data_buffer[14]_net_1 ), .S(
        \test_harness_geiger_stack_0/set ), .Y(
        \test_harness_geiger_stack_0/data_buffer_5[6] ));
    XOR2 \clock_div_1MHZ_10HZ_0/un4_counter_1_I_43  (.A(
        \clock_div_1MHZ_10HZ_0/N_3 ), .B(
        \clock_div_1MHZ_10HZ_0/counter[15]_net_1 ), .Y(
        \clock_div_1MHZ_10HZ_0/I_43 ));
    AO1 \geig_data_handling_0/shift_reg_RNI1S3M3[2]  (.A(
        \geig_data_handling_0/geig_counts10_7 ), .B(
        \geig_data_handling_0/geig_counts10_6 ), .C(
        \geig_data_handling_0/N_46 ), .Y(
        \geig_data_handling_0/geig_countse ));
    NOR2A \geig_data_handling_0/geig_counts_RNO[2]  (.A(
        \geig_data_handling_0/geig_counts_n2_tz ), .B(
        \geig_data_handling_0/N_46 ), .Y(
        \geig_data_handling_0/geig_counts_n2 ));
    MX2 \test_harness_geiger_stack_0/data_chunk[3]/U0  (.A(D3_OUT_c), 
        .B(\test_harness_geiger_stack_0/data_buffer[3]_net_1 ), .S(
        \test_harness_geiger_stack_0/data_chunk7 ), .Y(
        \test_harness_geiger_stack_0/data_chunk[3]/Y ));
    DFN1E0 \test_harness_geiger_stack_0/data_buffer[40]  (.D(
        \test_harness_geiger_stack_0/data_buffer_5[40] ), .CLK(GLA), 
        .E(\test_harness_geiger_stack_0/set_0_RNI7I0G9_0_net_1 ), .Q(
        \test_harness_geiger_stack_0/data_buffer[40]_net_1 ));
    NOR2A \test_harness_geiger_stack_0/data_buffer_RNO[42]  (.A(
        \geig_data_handling_0_G_DATA_STACK[42] ), .B(
        \test_harness_geiger_stack_0/set ), .Y(
        \test_harness_geiger_stack_0/data_buffer_5[42] ));
    XOR2 \test_harness_geiger_stack_0/data_prev_RNIC3D6[19]  (.A(
        \geig_data_handling_0_G_DATA_STACK[19] ), .B(
        \test_harness_geiger_stack_0/data_prev[19]_net_1 ), .Y(
        \test_harness_geiger_stack_0/un1_TEST_DATA_19 ));
    XO1 \test_harness_geiger_stack_0/data_prev_RNIUFTC[22]  (.A(
        \geig_data_handling_0_G_DATA_STACK[22] ), .B(
        \test_harness_geiger_stack_0/data_prev[22]_net_1 ), .C(
        \test_harness_geiger_stack_0/un1_TEST_DATA_21 ), .Y(
        \test_harness_geiger_stack_0/un1_TEST_DATA_NE_15 ));
    AND2 \clock_div_1MHZ_10HZ_0/un4_counter_1_I_38  (.A(
        \clock_div_1MHZ_10HZ_0/counter[12]_net_1 ), .B(
        \clock_div_1MHZ_10HZ_0/counter[13]_net_1 ), .Y(
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[8] ));
    OR3 \test_harness_geiger_stack_0/data_prev_RNIQE2A2[0]  (.A(
        \test_harness_geiger_stack_0/un1_TEST_DATA_NE_23 ), .B(
        \test_harness_geiger_stack_0/un1_TEST_DATA_NE_22 ), .C(
        \test_harness_geiger_stack_0/un1_TEST_DATA_NE_32 ), .Y(
        \test_harness_geiger_stack_0/un1_TEST_DATA_NE_38 ));
    AX1C \timestamp_0/TIMESTAMP_n10  (.A(\timestamp_0_TIMESTAMP[9] ), 
        .B(\timestamp_0/TIMESTAMP_c8_net_1 ), .C(
        \timestamp_0_TIMESTAMP[10] ), .Y(
        \timestamp_0/TIMESTAMP_n10_net_1 ));
    XA1B \geig_data_handling_0/geig_counts_RNO[6]  (.A(
        \geig_data_handling_0/geig_counts[6] ), .B(
        \geig_data_handling_0/geig_counts_c5 ), .C(
        \geig_data_handling_0/N_46 ), .Y(
        \geig_data_handling_0/geig_counts_n6 ));
    DFN1E1 \test_harness_geiger_stack_0/data_prev[15]  (.D(
        \geig_data_handling_0_G_DATA_STACK[15] ), .CLK(GLA), .E(
        reset_pulse_0_RESET_4), .Q(
        \test_harness_geiger_stack_0/data_prev[15]_net_1 ));
    NOR2A \test_harness_geiger_stack_0/data_buffer_RNO[45]  (.A(
        \geig_data_handling_0_G_DATA_STACK[45] ), .B(
        \test_harness_geiger_stack_0/set ), .Y(
        \test_harness_geiger_stack_0/data_buffer_5[45] ));
    DFN1C0 \clock_div_1MHZ_10HZ_0/counter[9]  (.D(
        \clock_div_1MHZ_10HZ_0/counter_3[9] ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_6), .Q(
        \clock_div_1MHZ_10HZ_0/counter[9]_net_1 ));
    DFN1E0 \test_harness_geiger_stack_0/data_buffer[31]  (.D(
        \test_harness_geiger_stack_0/data_buffer_5[31] ), .CLK(GLA), 
        .E(\test_harness_geiger_stack_0/un1_counter18_0 ), .Q(
        \test_harness_geiger_stack_0/data_buffer[31]_net_1 ));
    MX2 \test_harness_geiger_stack_0/data_buffer_RNO[26]  (.A(
        \geig_data_handling_0_G_DATA_STACK[26] ), .B(
        \test_harness_geiger_stack_0/data_buffer[34]_net_1 ), .S(
        \test_harness_geiger_stack_0/set_1 ), .Y(
        \test_harness_geiger_stack_0/data_buffer_5[26] ));
    DFN1E0 \test_harness_geiger_stack_0/data_buffer[23]  (.D(
        \test_harness_geiger_stack_0/data_buffer_5[23] ), .CLK(GLA), 
        .E(\test_harness_geiger_stack_0/un1_counter18_0 ), .Q(
        \test_harness_geiger_stack_0/data_buffer[23]_net_1 ));
    XOR2 \timestamp_0/TIMESTAMP_n7  (.A(
        \timestamp_0/TIMESTAMP_c6_net_1 ), .B(
        \timestamp_0_TIMESTAMP[7] ), .Y(
        \timestamp_0/TIMESTAMP_n7_net_1 ));
    XA1B \geig_data_handling_0/geig_counts_RNO[3]  (.A(
        \geig_data_handling_0/geig_counts_c2 ), .B(
        \geig_data_handling_0/geig_counts[3] ), .C(
        \geig_data_handling_0/N_46 ), .Y(
        \geig_data_handling_0/geig_counts_n3 ));
    DFN1C0 \geig_data_handling_0/G_DATA_STACK_1[45]/U1  (.D(
        \geig_data_handling_0/G_DATA_STACK_1[45]/Y ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_1), .Q(
        \geig_data_handling_0_G_DATA_STACK[45] ));
    DFN1E0 \test_harness_geiger_stack_0/data_buffer[11]  (.D(
        \test_harness_geiger_stack_0/data_buffer_5[11] ), .CLK(GLA), 
        .E(\test_harness_geiger_stack_0/un1_counter18_0 ), .Q(
        \test_harness_geiger_stack_0/data_buffer[11]_net_1 ));
    NOR3C \geig_data_handling_0/geig_counts_RNIB9BJ[11]  (.A(
        \geig_data_handling_0/geig_counts[10] ), .B(
        \geig_data_handling_0/geig_counts[11] ), .C(
        \geig_data_handling_0/geig_counts[9] ), .Y(
        \geig_data_handling_0/geig_counts_c11_1 ));
    AOI1B \clock_div_1MHZ_10HZ_0/counter_RNO[4]  (.A(
        \clock_div_1MHZ_10HZ_0/clk_out4_14 ), .B(
        \clock_div_1MHZ_10HZ_0/clk_out4_13 ), .C(
        \clock_div_1MHZ_10HZ_0/I_12 ), .Y(
        \clock_div_1MHZ_10HZ_0/counter_3[4] ));
    MX2 \geig_data_handling_0/G_DATA_STACK_1[41]/U0  (.A(
        \geig_data_handling_0_G_DATA_STACK[41] ), .B(
        \geig_data_handling_0/geig_counts[9] ), .S(
        \geig_data_handling_0/N_46_1 ), .Y(
        \geig_data_handling_0/G_DATA_STACK_1[41]/Y ));
    AND3 \geig_data_handling_0/un5_min_counter_I_24  (.A(
        \geig_data_handling_0/DWACT_FINC_E[0] ), .B(
        \geig_data_handling_0/DWACT_FINC_E[2] ), .C(
        \geig_data_handling_0/DWACT_FINC_E[3] ), .Y(
        \geig_data_handling_0/DWACT_FINC_E[4] ));
    AX1C \clock_div_1MHZ_10HZ_0/un4_counter_1_I_12  (.A(
        \clock_div_1MHZ_10HZ_0/counter[3]_net_1 ), .B(
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[0] ), .C(
        \clock_div_1MHZ_10HZ_0/counter[4]_net_1 ), .Y(
        \clock_div_1MHZ_10HZ_0/I_12 ));
    NOR3C \geig_data_handling_0/shift_reg_RNII5B5[2]  (.A(
        \geig_data_handling_0/shift_reg[3]_net_1 ), .B(
        \geig_data_handling_0/shift_reg[2]_net_1 ), .C(
        \geig_data_handling_0/geig_counts10_3 ), .Y(
        \geig_data_handling_0/geig_counts10_6 ));
    MX2 \test_harness_geiger_stack_0/data_chunk[6]/U0  (.A(D6_OUT_c), 
        .B(\test_harness_geiger_stack_0/data_buffer[6]_net_1 ), .S(
        \test_harness_geiger_stack_0/data_chunk7 ), .Y(
        \test_harness_geiger_stack_0/data_chunk[6]/Y ));
    NOR3C \timestamp_0/TIMESTAMP_c19  (.A(\timestamp_0_TIMESTAMP[18] ), 
        .B(\timestamp_0/TIMESTAMP_c17_net_1 ), .C(
        \timestamp_0_TIMESTAMP[19] ), .Y(
        \timestamp_0/TIMESTAMP_c19_net_1 ));
    DFN1E1 \test_harness_geiger_stack_0/data_prev[35]  (.D(
        \geig_data_handling_0_G_DATA_STACK[35] ), .CLK(GLA), .E(
        reset_pulse_0_RESET_5), .Q(
        \test_harness_geiger_stack_0/data_prev[35]_net_1 ));
    DFN1C0 \geig_data_handling_0/min_counter[2]  (.D(
        \geig_data_handling_0/I_7_1 ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_6), .Q(
        \geig_data_handling_0/min_counter[2]_net_1 ));
    IOPAD_TRI \D5_OUT_pad/U0/U0  (.D(\D5_OUT_pad/U0/NET1 ), .E(
        \D5_OUT_pad/U0/NET2 ), .PAD(D5_OUT));
    MX2 \geig_data_handling_0/geig_counts[9]/U0  (.A(
        \geig_data_handling_0/geig_counts[9] ), .B(
        \geig_data_handling_0/geig_counts_n9 ), .S(
        \geig_data_handling_0/geig_countse ), .Y(
        \geig_data_handling_0/geig_counts[9]/Y ));
    XOR2 \test_harness_geiger_stack_0/data_prev_RNI2RE6[23]  (.A(
        \test_harness_geiger_stack_0/data_prev[23]_net_1 ), .B(
        \geig_data_handling_0_G_DATA_STACK[23] ), .Y(
        \test_harness_geiger_stack_0/un1_TEST_DATA_23 ));
    NOR3C \clock_div_1MHZ_100KHZ_0/counter_RNI0FHT3[12]  (.A(
        \clock_div_1MHZ_100KHZ_0/clk_out5_6 ), .B(
        \clock_div_1MHZ_100KHZ_0/clk_out5_5 ), .C(
        \clock_div_1MHZ_100KHZ_0/clk_out5_12 ), .Y(
        \clock_div_1MHZ_100KHZ_0/clk_out5_14 ));
    DFN1E0 \test_harness_geiger_stack_0/data_buffer[33]  (.D(
        \test_harness_geiger_stack_0/data_buffer_5[33] ), .CLK(GLA), 
        .E(\test_harness_geiger_stack_0/un1_counter18_0 ), .Q(
        \test_harness_geiger_stack_0/data_buffer[33]_net_1 ));
    DFN1C0 \geig_data_handling_0/G_DATA_STACK_1[25]/U1  (.D(
        \geig_data_handling_0/G_DATA_STACK_1[25]/Y ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_0), .Q(
        \geig_data_handling_0_G_DATA_STACK[25] ));
    DFN1C0 \test_harness_geiger_stack_0/set/U1  (.D(
        \test_harness_geiger_stack_0/set/Y ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_2), .Q(\test_harness_geiger_stack_0/set ));
    MX2 \test_harness_geiger_stack_0/data_chunk[0]/U0  (.A(D0_OUT_c), 
        .B(\test_harness_geiger_stack_0/data_buffer[0]_net_1 ), .S(
        \test_harness_geiger_stack_0/data_chunk7 ), .Y(
        \test_harness_geiger_stack_0/data_chunk[0]/Y ));
    DFN1C0 \geig_data_handling_0/G_DATA_STACK_1[33]/U1  (.D(
        \geig_data_handling_0/G_DATA_STACK_1[33]/Y ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_1), .Q(
        \geig_data_handling_0_G_DATA_STACK[33] ));
    DFN1E0 \test_harness_geiger_stack_0/data_buffer[13]  (.D(
        \test_harness_geiger_stack_0/data_buffer_5[13] ), .CLK(GLA), 
        .E(\test_harness_geiger_stack_0/un1_counter18_0 ), .Q(
        \test_harness_geiger_stack_0/data_buffer[13]_net_1 ));
    MX2 \geig_data_handling_0/G_DATA_STACK_1[21]/U0  (.A(
        \geig_data_handling_0_G_DATA_STACK[21] ), .B(
        \timestamp_0_TIMESTAMP[13] ), .S(\geig_data_handling_0/N_46_0 )
        , .Y(\geig_data_handling_0/G_DATA_STACK_1[21]/Y ));
    DFN1E1 \test_harness_geiger_stack_0/data_prev[2]  (.D(
        \geig_data_handling_0_G_DATA_STACK[1] ), .CLK(GLA), .E(
        reset_pulse_0_RESET_4), .Q(
        \test_harness_geiger_stack_0/data_prev[2]_net_1 ));
    DFN1E0 \test_harness_geiger_stack_0/data_buffer[7]  (.D(
        \test_harness_geiger_stack_0/data_buffer_5[7] ), .CLK(GLA), .E(
        \test_harness_geiger_stack_0/set_0_RNI7I0G9_0_net_1 ), .Q(
        \test_harness_geiger_stack_0/data_buffer[7]_net_1 ));
    XOR2 \test_harness_geiger_stack_0/counter_3_I_12  (.A(
        \test_harness_geiger_stack_0/counter[1]_net_1 ), .B(
        \test_harness_geiger_stack_0/DWACT_ADD_CI_0_TMP[0] ), .Y(
        \test_harness_geiger_stack_0/counter_3[1] ));
    AO1B \clock_div_1MHZ_100KHZ_0/counter_RNO[0]  (.A(
        \clock_div_1MHZ_100KHZ_0/clk_out5_14 ), .B(
        \clock_div_1MHZ_100KHZ_0/clk_out5_13 ), .C(
        \clock_div_1MHZ_100KHZ_0/counter[0]_net_1 ), .Y(
        \clock_div_1MHZ_100KHZ_0/counter_3[0] ));
    MX2 \test_harness_geiger_stack_0/set_1/U0  (.A(
        \test_harness_geiger_stack_0/data_chunk8 ), .B(
        \test_harness_geiger_stack_0/set_1 ), .S(
        \test_harness_geiger_stack_0/set_0_sqmuxa ), .Y(
        \test_harness_geiger_stack_0/set_1/Y ));
    AND3 \clock_div_1MHZ_10HZ_0/un4_counter_1_I_36  (.A(
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[6] ), .B(
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[7] ), .C(
        \clock_div_1MHZ_10HZ_0/counter[12]_net_1 ), .Y(
        \clock_div_1MHZ_10HZ_0/N_5 ));
    DFN1C0 \timestamp_0/TIMESTAMP[19]  (.D(
        \timestamp_0/TIMESTAMP_n19_net_1 ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(reset_pulse_0_RESET), 
        .Q(\timestamp_0_TIMESTAMP[19] ));
    XOR2 \test_harness_geiger_stack_0/data_prev_RNI2TG6[32]  (.A(
        \geig_data_handling_0_G_DATA_STACK[32] ), .B(
        \test_harness_geiger_stack_0/data_prev[32]_net_1 ), .Y(
        \test_harness_geiger_stack_0/un1_TEST_DATA_32 ));
    DFN1C0 \geig_data_handling_0/G_DATA_STACK_1[41]/U1  (.D(
        \geig_data_handling_0/G_DATA_STACK_1[41]/Y ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_1), .Q(
        \geig_data_handling_0_G_DATA_STACK[41] ));
    XOR2 \timestamp_0/TIMESTAMP_n3  (.A(
        \timestamp_0/TIMESTAMP_c2_net_1 ), .B(
        \timestamp_0_TIMESTAMP[3] ), .Y(
        \timestamp_0/TIMESTAMP_n3_net_1 ));
    XOR2 \test_harness_geiger_stack_0/data_prev_RNI63J6[43]  (.A(
        \test_harness_geiger_stack_0/data_prev[43]_net_1 ), .B(
        \geig_data_handling_0_G_DATA_STACK[43] ), .Y(
        \test_harness_geiger_stack_0/un1_TEST_DATA_43 ));
    IOPAD_TRI \D4_OUT_pad/U0/U0  (.D(\D4_OUT_pad/U0/NET1 ), .E(
        \D4_OUT_pad/U0/NET2 ), .PAD(D4_OUT));
    IOIN_IB \CLK_48MHZ_pad/U0/U1  (.YIN(\CLK_48MHZ_pad/U0/NET1 ), .Y(
        CLK_48MHZ_c));
    XOR2 \test_harness_geiger_stack_0/data_prev_RNI41J6[42]  (.A(
        \test_harness_geiger_stack_0/data_prev[42]_net_1 ), .B(
        \geig_data_handling_0_G_DATA_STACK[42] ), .Y(
        \test_harness_geiger_stack_0/un1_TEST_DATA_42 ));
    DFN1E1 \test_harness_geiger_stack_0/data_prev[10]  (.D(
        \geig_data_handling_0_G_DATA_STACK[10] ), .CLK(GLA), .E(
        reset_pulse_0_RESET_4), .Q(
        \test_harness_geiger_stack_0/data_prev[10]_net_1 ));
    DFN1C0 \clock_div_1MHZ_100KHZ_0/counter[14]  (.D(
        \clock_div_1MHZ_100KHZ_0/I_40_0 ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_7), .Q(
        \clock_div_1MHZ_100KHZ_0/counter[14]_net_1 ));
    DFN1C0 \clock_div_1MHZ_100KHZ_0/counter[9]  (.D(
        \clock_div_1MHZ_100KHZ_0/I_26_0 ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_7), .Q(
        \clock_div_1MHZ_100KHZ_0/counter[9]_net_1 ));
    XOR2 \test_harness_geiger_stack_0/data_prev_RNI4TE6[24]  (.A(
        \test_harness_geiger_stack_0/data_prev[24]_net_1 ), .B(
        \geig_data_handling_0_G_DATA_STACK[24] ), .Y(
        \test_harness_geiger_stack_0/un1_TEST_DATA_24 ));
    DFN1C0 \timestamp_0/TIMESTAMP[8]  (.D(
        \timestamp_0/TIMESTAMP_n8_net_1 ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_3), .Q(\timestamp_0_TIMESTAMP[8] ));
    MX2 \test_harness_geiger_stack_0/data_buffer_RNO[34]  (.A(
        \geig_data_handling_0_G_DATA_STACK[34] ), .B(
        \test_harness_geiger_stack_0/data_buffer[42]_net_1 ), .S(
        \test_harness_geiger_stack_0/set_1 ), .Y(
        \test_harness_geiger_stack_0/data_buffer_5[34] ));
    NOR2A \test_harness_geiger_stack_0/data_buffer_RNO[47]  (.A(
        \geig_data_handling_0_G_DATA_STACK[47] ), .B(
        \test_harness_geiger_stack_0/set ), .Y(
        \test_harness_geiger_stack_0/data_buffer_5[47] ));
    MX2 \geig_data_handling_0/geig_counts[15]/U0  (.A(
        \geig_data_handling_0/geig_counts[15] ), .B(
        \geig_data_handling_0/geig_counts_n15 ), .S(
        \geig_data_handling_0/geig_countse ), .Y(
        \geig_data_handling_0/geig_counts[15]/Y ));
    NOR2B \geig_data_handling_0/geig_counts_RNI88F31[6]  (.A(
        \geig_data_handling_0/geig_counts_c5 ), .B(
        \geig_data_handling_0/geig_counts[6] ), .Y(
        \geig_data_handling_0/geig_counts_c6 ));
    NOR2B \geig_data_handling_0/shift_reg_RNIJCL2[0]  (.A(
        \geig_data_handling_0/shift_reg[0]_net_1 ), .B(
        \geig_data_handling_0/shift_reg[1]_net_1 ), .Y(
        \geig_data_handling_0/geig_counts10_1 ));
    XOR2 \clock_div_1MHZ_100KHZ_0/un5_counter_I_43  (.A(
        \clock_div_1MHZ_100KHZ_0/N_3 ), .B(
        \clock_div_1MHZ_100KHZ_0/counter[15]_net_1 ), .Y(
        \clock_div_1MHZ_100KHZ_0/I_43_0 ));
    DFN1C0 \geig_data_handling_0/G_DATA_STACK_1[21]/U1  (.D(
        \geig_data_handling_0/G_DATA_STACK_1[21]/Y ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_0), .Q(
        \geig_data_handling_0_G_DATA_STACK[21] ));
    XOR2 \clock_div_1MHZ_100KHZ_0/un5_counter_I_37  (.A(
        \clock_div_1MHZ_100KHZ_0/N_5 ), .B(
        \clock_div_1MHZ_100KHZ_0/counter[13]_net_1 ), .Y(
        \clock_div_1MHZ_100KHZ_0/I_37_0 ));
    DFN1E1 \test_harness_geiger_stack_0/data_prev[27]  (.D(
        \geig_data_handling_0_G_DATA_STACK[27] ), .CLK(GLA), .E(
        reset_pulse_0_RESET_5), .Q(
        \test_harness_geiger_stack_0/data_prev[27]_net_1 ));
    DFN1C0 \geig_data_handling_0/G_DATA_STACK_1[32]/U1  (.D(
        \geig_data_handling_0/G_DATA_STACK_1[32]/Y ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_1), .Q(
        \geig_data_handling_0_G_DATA_STACK[32] ));
    DFN1E1 \test_harness_geiger_stack_0/data_prev[30]  (.D(
        \geig_data_handling_0_G_DATA_STACK[30] ), .CLK(GLA), .E(
        reset_pulse_0_RESET_5), .Q(
        \test_harness_geiger_stack_0/data_prev[30]_net_1 ));
    NOR2A \clock_div_1MHZ_10HZ_0/counter_RNIIRFF[1]  (.A(
        \clock_div_1MHZ_10HZ_0/counter[9]_net_1 ), .B(
        \clock_div_1MHZ_10HZ_0/counter[1]_net_1 ), .Y(
        \clock_div_1MHZ_10HZ_0/clk_out4_6 ));
    MX2 \geig_data_handling_0/geig_counts[7]/U0  (.A(
        \geig_data_handling_0/geig_counts[7] ), .B(
        \geig_data_handling_0/geig_counts_n7 ), .S(
        \geig_data_handling_0/geig_countse ), .Y(
        \geig_data_handling_0/geig_counts[7]/Y ));
    AX1C \geig_data_handling_0/geig_counts_RNO_0[12]  (.A(
        \geig_data_handling_0/geig_counts_c8 ), .B(
        \geig_data_handling_0/geig_counts_c11_1 ), .C(
        \geig_data_handling_0/geig_counts[12] ), .Y(
        \geig_data_handling_0/geig_counts_n12_tz ));
    MX2 \geig_data_handling_0/G_DATA_STACK_1[46]/U0  (.A(
        \geig_data_handling_0_G_DATA_STACK[46] ), .B(
        \geig_data_handling_0/geig_counts[14] ), .S(
        \geig_data_handling_0/N_46_1 ), .Y(
        \geig_data_handling_0/G_DATA_STACK_1[46]/Y ));
    PLLBA \CLK_1MHZ_0/Core  (.CLKA(\CLK_1MHZ_0/CLKAP ), .EXTFB(GND), 
        .POWERDOWN(VCC), .GLA(GLA), .LOCK(), .GLB(), .YB(), .GLC(), 
        .YC(), .OADIV0(VCC), .OADIV1(VCC), .OADIV2(VCC), .OADIV3(VCC), 
        .OADIV4(VCC), .OAMUX0(GND), .OAMUX1(GND), .OAMUX2(VCC), 
        .DLYGLA0(GND), .DLYGLA1(GND), .DLYGLA2(GND), .DLYGLA3(GND), 
        .DLYGLA4(GND), .OBDIV0(AFLSDF_GND), .OBDIV1(AFLSDF_GND), 
        .OBDIV2(AFLSDF_GND), .OBDIV3(AFLSDF_GND), .OBDIV4(AFLSDF_GND), 
        .OBMUX0(AFLSDF_GND), .OBMUX1(AFLSDF_GND), .OBMUX2(AFLSDF_GND), 
        .DLYYB0(AFLSDF_GND), .DLYYB1(AFLSDF_GND), .DLYYB2(AFLSDF_GND), 
        .DLYYB3(AFLSDF_GND), .DLYYB4(AFLSDF_GND), .DLYGLB0(AFLSDF_GND), 
        .DLYGLB1(AFLSDF_GND), .DLYGLB2(AFLSDF_GND), .DLYGLB3(
        AFLSDF_GND), .DLYGLB4(AFLSDF_GND), .OCDIV0(AFLSDF_GND), 
        .OCDIV1(AFLSDF_GND), .OCDIV2(AFLSDF_GND), .OCDIV3(AFLSDF_GND), 
        .OCDIV4(AFLSDF_GND), .OCMUX0(AFLSDF_GND), .OCMUX1(AFLSDF_GND), 
        .OCMUX2(AFLSDF_GND), .DLYYC0(AFLSDF_GND), .DLYYC1(AFLSDF_GND), 
        .DLYYC2(AFLSDF_GND), .DLYYC3(AFLSDF_GND), .DLYYC4(AFLSDF_GND), 
        .DLYGLC0(AFLSDF_GND), .DLYGLC1(AFLSDF_GND), .DLYGLC2(
        AFLSDF_GND), .DLYGLC3(AFLSDF_GND), .DLYGLC4(AFLSDF_GND), 
        .FINDIV0(GND), .FINDIV1(GND), .FINDIV2(GND), .FINDIV3(VCC), 
        .FINDIV4(GND), .FINDIV5(GND), .FINDIV6(GND), .FBDIV0(VCC), 
        .FBDIV1(GND), .FBDIV2(VCC), .FBDIV3(GND), .FBDIV4(GND), 
        .FBDIV5(GND), .FBDIV6(GND), .FBDLY0(GND), .FBDLY1(GND), 
        .FBDLY2(GND), .FBDLY3(GND), .FBDLY4(GND), .FBSEL0(VCC), 
        .FBSEL1(GND), .XDLYSEL(GND), .VCOSEL0(GND), .VCOSEL1(GND), 
        .VCOSEL2(GND));
    XOR2 \clock_div_1MHZ_10HZ_0/un4_counter_1_I_5  (.A(
        \clock_div_1MHZ_10HZ_0/counter[0]_net_1 ), .B(
        \clock_div_1MHZ_10HZ_0/counter[1]_net_1 ), .Y(
        \clock_div_1MHZ_10HZ_0/I_5 ));
    DFN1E1 \test_harness_geiger_stack_0/data_prev[16]  (.D(
        \geig_data_handling_0_G_DATA_STACK[16] ), .CLK(GLA), .E(
        reset_pulse_0_RESET_4), .Q(
        \test_harness_geiger_stack_0/data_prev[16]_net_1 ));
    NOR2B \test_harness_geiger_stack_0/data_buffer_RNO[4]  (.A(
        \test_harness_geiger_stack_0/data_buffer[12]_net_1 ), .B(
        \test_harness_geiger_stack_0/set ), .Y(
        \test_harness_geiger_stack_0/data_buffer_5[4] ));
    DFN1E1 \test_harness_geiger_stack_0/data_prev[1]  (.D(
        \geig_data_handling_0_G_DATA_STACK[1] ), .CLK(GLA), .E(
        reset_pulse_0_RESET_4), .Q(
        \test_harness_geiger_stack_0/data_prev[1]_net_1 ));
    DFN1E1 \test_harness_geiger_stack_0/data_prev[41]  (.D(
        \geig_data_handling_0_G_DATA_STACK[41] ), .CLK(GLA), .E(
        reset_pulse_0_RESET_5), .Q(
        \test_harness_geiger_stack_0/data_prev[41]_net_1 ));
    DFN1P0 \clock_div_1MHZ_100KHZ_0/counter[0]  (.D(
        \clock_div_1MHZ_100KHZ_0/counter_3[0] ), .CLK(GLA), .PRE(
        reset_pulse_0_RESET_7), .Q(
        \clock_div_1MHZ_100KHZ_0/counter[0]_net_1 ));
    AX1C \geig_data_handling_0/un5_min_counter_I_7  (.A(
        \geig_data_handling_0/min_counter[1]_net_1 ), .B(
        \geig_data_handling_0/min_counter[0]_net_1 ), .C(
        \geig_data_handling_0/min_counter[2]_net_1 ), .Y(
        \geig_data_handling_0/I_7_1 ));
    DFN1E0 \test_harness_geiger_stack_0/data_buffer[3]  (.D(
        \test_harness_geiger_stack_0/data_buffer_5[3] ), .CLK(GLA), .E(
        \test_harness_geiger_stack_0/set_0_RNI7I0G9_0_net_1 ), .Q(
        \test_harness_geiger_stack_0/data_buffer[3]_net_1 ));
    MX2 \test_harness_geiger_stack_0/set_0_RNIPBV09  (.A(
        \test_harness_geiger_stack_0/un1_TEST_DATA_NE ), .B(
        \test_harness_geiger_stack_0/un1_counterlto2 ), .S(
        \test_harness_geiger_stack_0/set_0 ), .Y(
        \test_harness_geiger_stack_0/un1_TEST_DATA_2[0] ));
    DFN1C0 \timestamp_0/TIMESTAMP[7]  (.D(
        \timestamp_0/TIMESTAMP_n7_net_1 ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_3), .Q(\timestamp_0_TIMESTAMP[7] ));
    MX2 \geig_data_handling_0/G_DATA_STACK_1[37]/U0  (.A(
        \geig_data_handling_0_G_DATA_STACK[37] ), .B(
        \geig_data_handling_0/geig_counts[5] ), .S(
        \geig_data_handling_0/N_46_1 ), .Y(
        \geig_data_handling_0/G_DATA_STACK_1[37]/Y ));
    DFN1C0 \geig_data_handling_0/G_DATA_STACK_1[37]/U1  (.D(
        \geig_data_handling_0/G_DATA_STACK_1[37]/Y ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_1), .Q(
        \geig_data_handling_0_G_DATA_STACK[37] ));
    DFN1E1 \test_harness_geiger_stack_0/data_prev[8]  (.D(
        \geig_data_handling_0_G_DATA_STACK[8] ), .CLK(GLA), .E(
        reset_pulse_0_RESET_4), .Q(
        \test_harness_geiger_stack_0/data_prev[8]_net_1 ));
    AOI1 \test_harness_geiger_stack_0/set_RNIJ9R8B  (.A(
        \test_harness_geiger_stack_0/counter14_0_net_1 ), .B(
        \test_harness_geiger_stack_0/counter_3[2] ), .C(
        \test_harness_geiger_stack_0/data_chunk8 ), .Y(
        \test_harness_geiger_stack_0/set_0_sqmuxa ));
    DFN1C0 \geig_data_handling_0/min_counter[7]  (.D(
        \geig_data_handling_0/I_20_1 ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_7), .Q(
        \geig_data_handling_0/min_counter[7]_net_1 ));
    AND2 \geig_data_handling_0/un5_min_counter_I_21  (.A(
        \geig_data_handling_0/min_counter[6]_net_1 ), .B(
        \geig_data_handling_0/min_counter[7]_net_1 ), .Y(
        \geig_data_handling_0/DWACT_FINC_E[3] ));
    ULSICC_INT INT_ULSICC_INSTANCE_0 (.USTDBY(GND), .LPENA(GND));
    AOI1B \test_harness_geiger_stack_0/counter_RNI429G[2]  (.A(
        \test_harness_geiger_stack_0/counter[1]_net_1 ), .B(
        \test_harness_geiger_stack_0/counter[2]_net_1 ), .C(
        \test_harness_geiger_stack_0/set ), .Y(
        \test_harness_geiger_stack_0/data_chunk7 ));
    XOR2 \timestamp_0/TIMESTAMP_n11  (.A(
        \timestamp_0/TIMESTAMP_c10_net_1 ), .B(
        \timestamp_0_TIMESTAMP[11] ), .Y(
        \timestamp_0/TIMESTAMP_n11_net_1 ));
    IOPAD_TRI \D2_OUT_pad/U0/U0  (.D(\D2_OUT_pad/U0/NET1 ), .E(
        \D2_OUT_pad/U0/NET2 ), .PAD(D2_OUT));
    MX2 \test_harness_geiger_stack_0/data_buffer_RNO[14]  (.A(
        \geig_data_handling_0_G_DATA_STACK[14] ), .B(
        \test_harness_geiger_stack_0/data_buffer[22]_net_1 ), .S(
        \test_harness_geiger_stack_0/set_0 ), .Y(
        \test_harness_geiger_stack_0/data_buffer_5[14] ));
    NOR3A \clock_div_1MHZ_10HZ_0/counter_RNI6A0U1[12]  (.A(
        \clock_div_1MHZ_10HZ_0/clk_out4_8 ), .B(
        \clock_div_1MHZ_10HZ_0/counter[3]_net_1 ), .C(
        \clock_div_1MHZ_10HZ_0/counter[12]_net_1 ), .Y(
        \clock_div_1MHZ_10HZ_0/clk_out4_12 ));
    DFN1E1 \test_harness_geiger_stack_0/data_prev[36]  (.D(
        \geig_data_handling_0_G_DATA_STACK[36] ), .CLK(GLA), .E(
        reset_pulse_0_RESET_5), .Q(
        \test_harness_geiger_stack_0/data_prev[36]_net_1 ));
    MX2 \geig_data_handling_0/G_DATA_STACK_1[26]/U0  (.A(
        \geig_data_handling_0_G_DATA_STACK[26] ), .B(
        \timestamp_0_TIMESTAMP[18] ), .S(\geig_data_handling_0/N_46_0 )
        , .Y(\geig_data_handling_0/G_DATA_STACK_1[26]/Y ));
    XOR2 \test_harness_geiger_stack_0/data_prev_RNI4RC6[15]  (.A(
        \geig_data_handling_0_G_DATA_STACK[15] ), .B(
        \test_harness_geiger_stack_0/data_prev[15]_net_1 ), .Y(
        \test_harness_geiger_stack_0/un1_TEST_DATA_15 ));
    AND3 \geig_data_handling_0/un5_min_counter_I_19  (.A(
        \geig_data_handling_0/DWACT_FINC_E[0] ), .B(
        \geig_data_handling_0/DWACT_FINC_E[2] ), .C(
        \geig_data_handling_0/min_counter[6]_net_1 ), .Y(
        \geig_data_handling_0/N_4 ));
    MX2 \test_harness_geiger_stack_0/data_buffer_RNO[39]  (.A(
        \geig_data_handling_0_G_DATA_STACK[39] ), .B(
        \test_harness_geiger_stack_0/data_buffer[47]_net_1 ), .S(
        \test_harness_geiger_stack_0/set_1 ), .Y(
        \test_harness_geiger_stack_0/data_buffer_5[39] ));
    AND2 \clock_div_1MHZ_100KHZ_0/un5_counter_I_15  (.A(
        \clock_div_1MHZ_100KHZ_0/counter[3]_net_1 ), .B(
        \clock_div_1MHZ_100KHZ_0/counter[4]_net_1 ), .Y(
        \clock_div_1MHZ_100KHZ_0/DWACT_FINC_E[1] ));
    DFN1C0 \geig_data_handling_0/G_DATA_STACK_1[40]/U1  (.D(
        \geig_data_handling_0/G_DATA_STACK_1[40]/Y ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_1), .Q(
        \geig_data_handling_0_G_DATA_STACK[40] ));
    DFN1E1 \test_harness_geiger_stack_0/data_prev[6]  (.D(
        \geig_data_handling_0_G_DATA_STACK[1] ), .CLK(GLA), .E(
        reset_pulse_0_RESET_4), .Q(
        \test_harness_geiger_stack_0/data_prev[6]_net_1 ));
    NOR2 \clock_div_1MHZ_100KHZ_0/counter_RNI57MR[11]  (.A(
        \clock_div_1MHZ_100KHZ_0/counter[11]_net_1 ), .B(
        \clock_div_1MHZ_100KHZ_0/counter[14]_net_1 ), .Y(
        \clock_div_1MHZ_100KHZ_0/clk_out5_1 ));
    XO1 \test_harness_geiger_stack_0/data_prev_RNIE0UC[26]  (.A(
        \geig_data_handling_0_G_DATA_STACK[26] ), .B(
        \test_harness_geiger_stack_0/data_prev[26]_net_1 ), .C(
        \test_harness_geiger_stack_0/un1_TEST_DATA_25 ), .Y(
        \test_harness_geiger_stack_0/un1_TEST_DATA_NE_13 ));
    DFN1C0 \geig_data_handling_0/shift_reg[2]  (.D(
        \geig_data_handling_0/shift_reg[1]_net_1 ), .CLK(
        clock_div_1MHZ_100KHZ_0_CLK_100KHZ_OUT), .CLR(
        reset_pulse_0_RESET_3), .Q(
        \geig_data_handling_0/shift_reg[2]_net_1 ));
    OR3 \test_harness_geiger_stack_0/data_prev_RNIUVGO[9]  (.A(
        \test_harness_geiger_stack_0/un1_TEST_DATA_9 ), .B(
        \test_harness_geiger_stack_0/un1_TEST_DATA_38 ), .C(
        \test_harness_geiger_stack_0/un1_TEST_DATA_NE_3 ), .Y(
        \test_harness_geiger_stack_0/un1_TEST_DATA_NE_23 ));
    XA1B \geig_data_handling_0/geig_counts_RNO[1]  (.A(
        \geig_data_handling_0/geig_counts[1] ), .B(
        \geig_data_handling_0/geig_counts[0] ), .C(
        \geig_data_handling_0/N_46_1 ), .Y(
        \geig_data_handling_0/geig_counts_n1 ));
    DFN1C0 \clock_div_1MHZ_10HZ_0/counter[11]  (.D(
        \clock_div_1MHZ_10HZ_0/I_32 ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET), .Q(
        \clock_div_1MHZ_10HZ_0/counter[11]_net_1 ));
    AND3 \clock_div_1MHZ_10HZ_0/un4_counter_1_I_18  (.A(
        \clock_div_1MHZ_10HZ_0/counter[3]_net_1 ), .B(
        \clock_div_1MHZ_10HZ_0/counter[4]_net_1 ), .C(
        \clock_div_1MHZ_10HZ_0/counter[5]_net_1 ), .Y(
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[2] ));
    OR3 \test_harness_geiger_stack_0/data_prev_RNIIOTP[11]  (.A(
        \test_harness_geiger_stack_0/un1_TEST_DATA_11 ), .B(
        \test_harness_geiger_stack_0/un1_TEST_DATA_36 ), .C(
        \test_harness_geiger_stack_0/un1_TEST_DATA_NE_5 ), .Y(
        \test_harness_geiger_stack_0/un1_TEST_DATA_NE_24 ));
    DFN1E0 \test_harness_geiger_stack_0/data_buffer[8]  (.D(
        \test_harness_geiger_stack_0/data_buffer_5[8] ), .CLK(GLA), .E(
        \test_harness_geiger_stack_0/set_0_RNI7I0G9_0_net_1 ), .Q(
        \test_harness_geiger_stack_0/data_buffer[8]_net_1 ));
    DFN1C0 \geig_data_handling_0/geig_counts[14]/U1  (.D(
        \geig_data_handling_0/geig_counts[14]/Y ), .CLK(
        clock_div_1MHZ_100KHZ_0_CLK_100KHZ_OUT), .CLR(
        reset_pulse_0_RESET_2), .Q(
        \geig_data_handling_0/geig_counts[14] ));
    AND3 \clock_div_1MHZ_100KHZ_0/un5_counter_I_39  (.A(
        \clock_div_1MHZ_100KHZ_0/DWACT_FINC_E[6] ), .B(
        \clock_div_1MHZ_100KHZ_0/DWACT_FINC_E[7] ), .C(
        \clock_div_1MHZ_100KHZ_0/DWACT_FINC_E[8] ), .Y(
        \clock_div_1MHZ_100KHZ_0/N_4 ));
    AND3 \clock_div_1MHZ_100KHZ_0/un5_counter_I_30  (.A(
        \clock_div_1MHZ_100KHZ_0/DWACT_FINC_E[0] ), .B(
        \clock_div_1MHZ_100KHZ_0/DWACT_FINC_E[2] ), .C(
        \clock_div_1MHZ_100KHZ_0/DWACT_FINC_E[5] ), .Y(
        \clock_div_1MHZ_100KHZ_0/DWACT_FINC_E[6] ));
    XOR2 \geig_data_handling_0/un5_min_counter_I_23  (.A(
        \geig_data_handling_0/N_3 ), .B(
        \geig_data_handling_0/min_counter[8]_net_1 ), .Y(
        \geig_data_handling_0/I_23_1 ));
    NOR3C \geig_data_handling_0/geig_counts_RNIJNAP[4]  (.A(
        \geig_data_handling_0/geig_counts[3] ), .B(
        \geig_data_handling_0/geig_counts_c2 ), .C(
        \geig_data_handling_0/geig_counts[4] ), .Y(
        \geig_data_handling_0/geig_counts_c4 ));
    MX2 \geig_data_handling_0/G_DATA_STACK_1[40]/U0  (.A(
        \geig_data_handling_0_G_DATA_STACK[40] ), .B(
        \geig_data_handling_0/geig_counts[8] ), .S(
        \geig_data_handling_0/N_46_1 ), .Y(
        \geig_data_handling_0/G_DATA_STACK_1[40]/Y ));
    NOR3C \geig_data_handling_0/geig_counts_RNO_0[14]  (.A(
        \geig_data_handling_0/geig_counts_c8 ), .B(
        \geig_data_handling_0/geig_counts_c11_1 ), .C(
        \geig_data_handling_0/geig_counts_c13_out ), .Y(
        \geig_data_handling_0/geig_counts_c13 ));
    DFN1C0 \test_harness_geiger_stack_0/data_chunk[3]/U1  (.D(
        \test_harness_geiger_stack_0/data_chunk[3]/Y ), .CLK(GLA), 
        .CLR(reset_pulse_0_RESET_2), .Q(D3_OUT_c));
    NOR3C \timestamp_0/TIMESTAMP_m5_0_a2_6  (.A(
        \timestamp_0/TIMESTAMP_m5_0_a2_1_net_1 ), .B(
        \timestamp_0/TIMESTAMP_m5_0_a2_0_net_1 ), .C(
        \timestamp_0/TIMESTAMP_m5_0_a2_5_net_1 ), .Y(
        \timestamp_0/TIMESTAMP_m5_0_a2_6_net_1 ));
    AND3 \clock_div_1MHZ_10HZ_0/un4_counter_1_I_33  (.A(
        \clock_div_1MHZ_10HZ_0/counter[9]_net_1 ), .B(
        \clock_div_1MHZ_10HZ_0/counter[10]_net_1 ), .C(
        \clock_div_1MHZ_10HZ_0/counter[11]_net_1 ), .Y(
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[7] ));
    XOR2 \test_harness_geiger_stack_0/data_prev_RNI8S15[8]  (.A(
        \geig_data_handling_0_G_DATA_STACK[8] ), .B(
        \test_harness_geiger_stack_0/data_prev[8]_net_1 ), .Y(
        \test_harness_geiger_stack_0/un1_TEST_DATA_8 ));
    DFN1C0 \geig_data_handling_0/geig_counts[0]/U1  (.D(
        \geig_data_handling_0/geig_counts[0]/Y ), .CLK(
        clock_div_1MHZ_100KHZ_0_CLK_100KHZ_OUT), .CLR(
        reset_pulse_0_RESET_1), .Q(
        \geig_data_handling_0/geig_counts[0] ));
    MX2 \geig_data_handling_0/geig_counts[1]/U0  (.A(
        \geig_data_handling_0/geig_counts[1] ), .B(
        \geig_data_handling_0/geig_counts_n1 ), .S(
        \geig_data_handling_0/geig_countse ), .Y(
        \geig_data_handling_0/geig_counts[1]/Y ));
    DFN1C0 \clock_div_1MHZ_10HZ_0/counter[5]  (.D(
        \clock_div_1MHZ_10HZ_0/I_14 ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_6), .Q(
        \clock_div_1MHZ_10HZ_0/counter[5]_net_1 ));
    DFN1C0 \geig_data_handling_0/G_DATA_STACK_1[20]/U1  (.D(
        \geig_data_handling_0/G_DATA_STACK_1[20]/Y ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_0), .Q(
        \geig_data_handling_0_G_DATA_STACK[20] ));
    OR3 \test_harness_geiger_stack_0/data_prev_RNIA42L[1]  (.A(
        \test_harness_geiger_stack_0/un1_TEST_DATA_1_0 ), .B(
        \test_harness_geiger_stack_0/un1_TEST_DATA_20 ), .C(
        \test_harness_geiger_stack_0/un1_TEST_DATA_NE_17 ), .Y(
        \test_harness_geiger_stack_0/un1_TEST_DATA_NE_30 ));
    DFN1C0 \geig_data_handling_0/geig_counts[11]/U1  (.D(
        \geig_data_handling_0/geig_counts[11]/Y ), .CLK(
        clock_div_1MHZ_100KHZ_0_CLK_100KHZ_OUT), .CLR(
        reset_pulse_0_RESET_2), .Q(
        \geig_data_handling_0/geig_counts[11] ));
    MX2 \test_harness_geiger_stack_0/data_buffer_RNO[38]  (.A(
        \geig_data_handling_0_G_DATA_STACK[38] ), .B(
        \test_harness_geiger_stack_0/data_buffer[46]_net_1 ), .S(
        \test_harness_geiger_stack_0/set_1 ), .Y(
        \test_harness_geiger_stack_0/data_buffer_5[38] ));
    XOR2 \clock_div_1MHZ_100KHZ_0/un5_counter_I_32  (.A(
        \clock_div_1MHZ_100KHZ_0/N_7 ), .B(
        \clock_div_1MHZ_100KHZ_0/counter[11]_net_1 ), .Y(
        \clock_div_1MHZ_100KHZ_0/I_32_0 ));
    XOR2 \test_harness_geiger_stack_0/data_prev_RNI83H6[35]  (.A(
        \geig_data_handling_0_G_DATA_STACK[35] ), .B(
        \test_harness_geiger_stack_0/data_prev[35]_net_1 ), .Y(
        \test_harness_geiger_stack_0/un1_TEST_DATA_35 ));
    AND3 \clock_div_1MHZ_100KHZ_0/un5_counter_I_27  (.A(
        \clock_div_1MHZ_100KHZ_0/DWACT_FINC_E[4] ), .B(
        \clock_div_1MHZ_100KHZ_0/counter[8]_net_1 ), .C(
        \clock_div_1MHZ_100KHZ_0/counter[9]_net_1 ), .Y(
        \clock_div_1MHZ_100KHZ_0/N_8 ));
    AX1C \geig_data_handling_0/geig_counts_RNO_0[4]  (.A(
        \geig_data_handling_0/geig_counts[3] ), .B(
        \geig_data_handling_0/geig_counts_c2 ), .C(
        \geig_data_handling_0/geig_counts[4] ), .Y(
        \geig_data_handling_0/geig_counts_n4_tz ));
    NOR2 \clock_div_1MHZ_100KHZ_0/counter_RNIO5RR[13]  (.A(
        \clock_div_1MHZ_100KHZ_0/counter[13]_net_1 ), .B(
        \clock_div_1MHZ_100KHZ_0/counter[6]_net_1 ), .Y(
        \clock_div_1MHZ_100KHZ_0/clk_out5_4 ));
    DFN1C0 \geig_data_handling_0/G_DATA_STACK_1[46]/U1  (.D(
        \geig_data_handling_0/G_DATA_STACK_1[46]/Y ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_1), .Q(
        \geig_data_handling_0_G_DATA_STACK[46] ));
    DFN1C0 \geig_data_handling_0/G_DATA_STACK_1[35]/U1  (.D(
        \geig_data_handling_0/G_DATA_STACK_1[35]/Y ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_1), .Q(
        \geig_data_handling_0_G_DATA_STACK[35] ));
    MX2 \geig_data_handling_0/G_DATA_STACK_1[20]/U0  (.A(
        \geig_data_handling_0_G_DATA_STACK[20] ), .B(
        \timestamp_0_TIMESTAMP[12] ), .S(\geig_data_handling_0/N_46_0 )
        , .Y(\geig_data_handling_0/G_DATA_STACK_1[20]/Y ));
    IOTRI_OB_EB \D6_OUT_pad/U0/U1  (.D(D6_OUT_c), .E(VCC), .DOUT(
        \D6_OUT_pad/U0/NET1 ), .EOUT(\D6_OUT_pad/U0/NET2 ));
    MX2 \geig_data_handling_0/G_DATA_STACK_1[31]/U0  (.A(
        \geig_data_handling_0_G_DATA_STACK[31] ), .B(
        \timestamp_0_TIMESTAMP[23] ), .S(\geig_data_handling_0/N_46_1 )
        , .Y(\geig_data_handling_0/G_DATA_STACK_1[31]/Y ));
    MX2 \test_harness_geiger_stack_0/data_buffer_RNO[23]  (.A(
        \geig_data_handling_0_G_DATA_STACK[23] ), .B(
        \test_harness_geiger_stack_0/data_buffer[31]_net_1 ), .S(
        \test_harness_geiger_stack_0/set_0 ), .Y(
        \test_harness_geiger_stack_0/data_buffer_5[23] ));
    MX2 \test_harness_geiger_stack_0/data_buffer_RNO[19]  (.A(
        \geig_data_handling_0_G_DATA_STACK[19] ), .B(
        \test_harness_geiger_stack_0/data_buffer[27]_net_1 ), .S(
        \test_harness_geiger_stack_0/set_0 ), .Y(
        \test_harness_geiger_stack_0/data_buffer_5[19] ));
    NOR2B \geig_data_handling_0/min_counter_RNIMHVQ2_0[1]  (.A(
        \geig_data_handling_0/G_DATA_STACK6_6 ), .B(
        \geig_data_handling_0/G_DATA_STACK6_5 ), .Y(
        \geig_data_handling_0/N_46_1 ));
    IOPAD_IN \CLK_48MHZ_pad/U0/U0  (.PAD(CLK_48MHZ), .Y(
        \CLK_48MHZ_pad/U0/NET1 ));
    MX2 \test_harness_geiger_stack_0/data_buffer_RNO[20]  (.A(
        \geig_data_handling_0_G_DATA_STACK[20] ), .B(
        \test_harness_geiger_stack_0/data_buffer[28]_net_1 ), .S(
        \test_harness_geiger_stack_0/set_0 ), .Y(
        \test_harness_geiger_stack_0/data_buffer_5[20] ));
    NOR3C \geig_data_handling_0/geig_counts_RNO_0[13]  (.A(
        \geig_data_handling_0/geig_counts_c8 ), .B(
        \geig_data_handling_0/geig_counts_c11_1 ), .C(
        \geig_data_handling_0/geig_counts[12] ), .Y(
        \geig_data_handling_0/geig_counts_c12 ));
    MX2 \test_harness_geiger_stack_0/set_0/U0  (.A(
        \test_harness_geiger_stack_0/data_chunk8 ), .B(
        \test_harness_geiger_stack_0/set_0 ), .S(
        \test_harness_geiger_stack_0/set_0_sqmuxa ), .Y(
        \test_harness_geiger_stack_0/set_0/Y ));
    DFN1P0 \geig_data_handling_0/shift_reg[8]  (.D(
        \geig_data_handling_0/shift_reg_i[7] ), .CLK(
        clock_div_1MHZ_100KHZ_0_CLK_100KHZ_OUT), .PRE(
        reset_pulse_0_RESET_3), .Q(
        \geig_data_handling_0/shift_reg_i_0[8] ));
    XOR2 \test_harness_geiger_stack_0/data_prev_RNI0TI6[40]  (.A(
        \test_harness_geiger_stack_0/data_prev[40]_net_1 ), .B(
        \geig_data_handling_0_G_DATA_STACK[40] ), .Y(
        \test_harness_geiger_stack_0/un1_TEST_DATA_40 ));
    AX1C \clock_div_1MHZ_10HZ_0/un4_counter_1_I_7  (.A(
        \clock_div_1MHZ_10HZ_0/counter[1]_net_1 ), .B(
        \clock_div_1MHZ_10HZ_0/counter[0]_net_1 ), .C(
        \clock_div_1MHZ_10HZ_0/counter[2]_net_1 ), .Y(
        \clock_div_1MHZ_10HZ_0/I_7 ));
    AND3 \clock_div_1MHZ_100KHZ_0/un5_counter_I_16  (.A(
        \clock_div_1MHZ_100KHZ_0/DWACT_FINC_E[0] ), .B(
        \clock_div_1MHZ_100KHZ_0/DWACT_FINC_E[1] ), .C(
        \clock_div_1MHZ_100KHZ_0/counter[5]_net_1 ), .Y(
        \clock_div_1MHZ_100KHZ_0/N_12 ));
    DFN1E1 \test_harness_geiger_stack_0/data_prev[29]  (.D(
        \geig_data_handling_0_G_DATA_STACK[29] ), .CLK(GLA), .E(
        reset_pulse_0_RESET_5), .Q(
        \test_harness_geiger_stack_0/data_prev[29]_net_1 ));
    AND3 \clock_div_1MHZ_10HZ_0/un4_counter_1_I_27  (.A(
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[4] ), .B(
        \clock_div_1MHZ_10HZ_0/counter[8]_net_1 ), .C(
        \clock_div_1MHZ_10HZ_0/counter[9]_net_1 ), .Y(
        \clock_div_1MHZ_10HZ_0/N_8 ));
    MX2 \test_harness_geiger_stack_0/data_chunk[5]/U0  (.A(D5_OUT_c), 
        .B(\test_harness_geiger_stack_0/data_buffer[5]_net_1 ), .S(
        \test_harness_geiger_stack_0/data_chunk7 ), .Y(
        \test_harness_geiger_stack_0/data_chunk[5]/Y ));
    MX2 \test_harness_geiger_stack_0/data_buffer_RNO[0]  (.A(
        \geig_data_handling_0_G_DATA_STACK[1] ), .B(
        \test_harness_geiger_stack_0/data_buffer[8]_net_1 ), .S(
        \test_harness_geiger_stack_0/set_1 ), .Y(
        \test_harness_geiger_stack_0/data_buffer_5[0] ));
    NOR2A \test_harness_geiger_stack_0/data_buffer_RNO[41]  (.A(
        \geig_data_handling_0_G_DATA_STACK[41] ), .B(
        \test_harness_geiger_stack_0/set ), .Y(
        \test_harness_geiger_stack_0/data_buffer_5[41] ));
    DFN1E0 \test_harness_geiger_stack_0/data_buffer[24]  (.D(
        \test_harness_geiger_stack_0/data_buffer_5[24] ), .CLK(GLA), 
        .E(\test_harness_geiger_stack_0/un1_counter18_0 ), .Q(
        \test_harness_geiger_stack_0/data_buffer[24]_net_1 ));
    AND3 \clock_div_1MHZ_10HZ_0/un4_counter_1_I_16  (.A(
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[0] ), .B(
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[1] ), .C(
        \clock_div_1MHZ_10HZ_0/counter[5]_net_1 ), .Y(
        \clock_div_1MHZ_10HZ_0/N_12 ));
    AND3 \clock_div_1MHZ_100KHZ_0/un5_counter_I_24  (.A(
        \clock_div_1MHZ_100KHZ_0/DWACT_FINC_E[0] ), .B(
        \clock_div_1MHZ_100KHZ_0/DWACT_FINC_E[2] ), .C(
        \clock_div_1MHZ_100KHZ_0/DWACT_FINC_E[3] ), .Y(
        \clock_div_1MHZ_100KHZ_0/DWACT_FINC_E[4] ));
    MX2 \geig_data_handling_0/geig_counts[11]/U0  (.A(
        \geig_data_handling_0/geig_counts[11] ), .B(
        \geig_data_handling_0/geig_counts_n11 ), .S(
        \geig_data_handling_0/geig_countse ), .Y(
        \geig_data_handling_0/geig_counts[11]/Y ));
    XOR2 \test_harness_geiger_stack_0/counter_3_I_9  (.A(
        \test_harness_geiger_stack_0/counter[0]_net_1 ), .B(
        \test_harness_geiger_stack_0/data_chunk7 ), .Y(
        \test_harness_geiger_stack_0/DWACT_ADD_CI_0_partial_sum[0] ));
    XA1B \geig_data_handling_0/geig_counts_RNO[10]  (.A(
        \geig_data_handling_0/geig_counts_c9 ), .B(
        \geig_data_handling_0/geig_counts[10] ), .C(
        \geig_data_handling_0/N_46 ), .Y(
        \geig_data_handling_0/geig_counts_n10 ));
    IOTRI_OB_EB \D3_OUT_pad/U0/U1  (.D(D3_OUT_c), .E(VCC), .DOUT(
        \D3_OUT_pad/U0/NET1 ), .EOUT(\D3_OUT_pad/U0/NET2 ));
    MX2 \geig_data_handling_0/G_DATA_STACK_1[15]/U0  (.A(
        \geig_data_handling_0_G_DATA_STACK[15] ), .B(
        \timestamp_0_TIMESTAMP[7] ), .S(\geig_data_handling_0/N_46_0 ), 
        .Y(\geig_data_handling_0/G_DATA_STACK_1[15]/Y ));
    DFN1E0 \test_harness_geiger_stack_0/data_buffer[26]  (.D(
        \test_harness_geiger_stack_0/data_buffer_5[26] ), .CLK(GLA), 
        .E(\test_harness_geiger_stack_0/un1_counter18_0 ), .Q(
        \test_harness_geiger_stack_0/data_buffer[26]_net_1 ));
    MX2 \geig_data_handling_0/geig_counts[0]/U0  (.A(
        \geig_data_handling_0/geig_counts[0] ), .B(
        \geig_data_handling_0/N_187 ), .S(
        \geig_data_handling_0/geig_countse ), .Y(
        \geig_data_handling_0/geig_counts[0]/Y ));
    AOI1B \clock_div_1MHZ_10HZ_0/counter_RNO[15]  (.A(
        \clock_div_1MHZ_10HZ_0/clk_out4_14 ), .B(
        \clock_div_1MHZ_10HZ_0/clk_out4_13 ), .C(
        \clock_div_1MHZ_10HZ_0/I_43 ), .Y(
        \clock_div_1MHZ_10HZ_0/counter_3[15] ));
    NOR3C \timestamp_0/TIMESTAMP_m6_0_a2_6  (.A(
        \timestamp_0_TIMESTAMP[11] ), .B(\timestamp_0_TIMESTAMP[10] ), 
        .C(\timestamp_0/TIMESTAMP_m6_0_a2_4_net_1 ), .Y(
        \timestamp_0/TIMESTAMP_m6_0_a2_6_net_1 ));
    DFN1E0 \test_harness_geiger_stack_0/data_buffer[4]  (.D(
        \test_harness_geiger_stack_0/data_buffer_5[4] ), .CLK(GLA), .E(
        \test_harness_geiger_stack_0/set_0_RNI7I0G9_0_net_1 ), .Q(
        \test_harness_geiger_stack_0/data_buffer[4]_net_1 ));
    DFN1C0 \geig_data_handling_0/G_DATA_STACK_1[26]/U1  (.D(
        \geig_data_handling_0/G_DATA_STACK_1[26]/Y ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_0), .Q(
        \geig_data_handling_0_G_DATA_STACK[26] ));
    NOR3C \clock_div_1MHZ_100KHZ_0/counter_RNIOECF3[10]  (.A(
        \clock_div_1MHZ_100KHZ_0/clk_out5_2 ), .B(
        \clock_div_1MHZ_100KHZ_0/clk_out5_1 ), .C(
        \clock_div_1MHZ_100KHZ_0/clk_out5_10 ), .Y(
        \clock_div_1MHZ_100KHZ_0/clk_out5_13 ));
    MX2 \test_harness_geiger_stack_0/data_buffer_RNO[32]  (.A(
        \geig_data_handling_0_G_DATA_STACK[32] ), .B(
        \test_harness_geiger_stack_0/data_buffer[40]_net_1 ), .S(
        \test_harness_geiger_stack_0/set_1 ), .Y(
        \test_harness_geiger_stack_0/data_buffer_5[32] ));
    DFN1C0 \clock_div_1MHZ_10HZ_0/counter[13]  (.D(
        \clock_div_1MHZ_10HZ_0/I_37 ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET), .Q(
        \clock_div_1MHZ_10HZ_0/counter[13]_net_1 ));
    XOR2 \clock_div_1MHZ_10HZ_0/un4_counter_1_I_9  (.A(
        \clock_div_1MHZ_10HZ_0/N_15 ), .B(
        \clock_div_1MHZ_10HZ_0/counter[3]_net_1 ), .Y(
        \clock_div_1MHZ_10HZ_0/I_9 ));
    AND3 \clock_div_1MHZ_100KHZ_0/un5_counter_I_31  (.A(
        \clock_div_1MHZ_100KHZ_0/DWACT_FINC_E[6] ), .B(
        \clock_div_1MHZ_100KHZ_0/counter[9]_net_1 ), .C(
        \clock_div_1MHZ_100KHZ_0/counter[10]_net_1 ), .Y(
        \clock_div_1MHZ_100KHZ_0/N_7 ));
    AOI1B \clock_div_1MHZ_100KHZ_0/counter_RNO[1]  (.A(
        \clock_div_1MHZ_100KHZ_0/clk_out5_14 ), .B(
        \clock_div_1MHZ_100KHZ_0/clk_out5_13 ), .C(
        \clock_div_1MHZ_100KHZ_0/I_5_0 ), .Y(
        \clock_div_1MHZ_100KHZ_0/counter_3[1] ));
    OR2 \reset_pulse_0/RESET_6  (.A(BUF2_PBRST_N_T9_c), .B(CLK_48MHZ_c)
        , .Y(reset_pulse_0_RESET_6));
    MX2 \test_harness_geiger_stack_0/data_buffer_RNO[18]  (.A(
        \geig_data_handling_0_G_DATA_STACK[18] ), .B(
        \test_harness_geiger_stack_0/data_buffer[26]_net_1 ), .S(
        \test_harness_geiger_stack_0/set_0 ), .Y(
        \test_harness_geiger_stack_0/data_buffer_5[18] ));
    XOR2 \test_harness_geiger_stack_0/data_prev_RNIPC15[1]  (.A(
        \geig_data_handling_0_G_DATA_STACK[1] ), .B(
        \test_harness_geiger_stack_0/data_prev[1]_net_1 ), .Y(
        \test_harness_geiger_stack_0/un1_TEST_DATA_1_0 ));
    MX2 \test_harness_geiger_stack_0/data_buffer_RNO[35]  (.A(
        \geig_data_handling_0_G_DATA_STACK[35] ), .B(
        \test_harness_geiger_stack_0/data_buffer[43]_net_1 ), .S(
        \test_harness_geiger_stack_0/set_1 ), .Y(
        \test_harness_geiger_stack_0/data_buffer_5[35] ));
    DFN1C0 \geig_data_handling_0/G_DATA_STACK_1[31]/U1  (.D(
        \geig_data_handling_0/G_DATA_STACK_1[31]/Y ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_1), .Q(
        \geig_data_handling_0_G_DATA_STACK[31] ));
    AND3 \clock_div_1MHZ_100KHZ_0/un5_counter_I_18  (.A(
        \clock_div_1MHZ_100KHZ_0/counter[3]_net_1 ), .B(
        \clock_div_1MHZ_100KHZ_0/counter[4]_net_1 ), .C(
        \clock_div_1MHZ_100KHZ_0/counter[5]_net_1 ), .Y(
        \clock_div_1MHZ_100KHZ_0/DWACT_FINC_E[2] ));
    IOPAD_TRI \D3_OUT_pad/U0/U0  (.D(\D3_OUT_pad/U0/NET1 ), .E(
        \D3_OUT_pad/U0/NET2 ), .PAD(D3_OUT));
    DFN1P0 \clock_div_1MHZ_10HZ_0/clk_out  (.D(
        \clock_div_1MHZ_10HZ_0/clk_out_RNO_net_1 ), .CLK(GLA), .PRE(
        reset_pulse_0_RESET_6), .Q(\clock_div_1MHZ_10HZ_0/clk_out_i ));
    NOR2B \timestamp_0/TIMESTAMP_m5_0_a2_1  (.A(
        \timestamp_0_TIMESTAMP[21] ), .B(\timestamp_0_TIMESTAMP[15] ), 
        .Y(\timestamp_0/TIMESTAMP_m5_0_a2_1_net_1 ));
    IOPAD_TRI \D6_OUT_pad/U0/U0  (.D(\D6_OUT_pad/U0/NET1 ), .E(
        \D6_OUT_pad/U0/NET2 ), .PAD(D6_OUT));
    XOR2 \test_harness_geiger_stack_0/data_prev_RNI8VC6[17]  (.A(
        \geig_data_handling_0_G_DATA_STACK[17] ), .B(
        \test_harness_geiger_stack_0/data_prev[17]_net_1 ), .Y(
        \test_harness_geiger_stack_0/un1_TEST_DATA_17 ));
    DFN1E0 \test_harness_geiger_stack_0/data_buffer[34]  (.D(
        \test_harness_geiger_stack_0/data_buffer_5[34] ), .CLK(GLA), 
        .E(\test_harness_geiger_stack_0/set_0_RNI7I0G9_0_net_1 ), .Q(
        \test_harness_geiger_stack_0/data_buffer[34]_net_1 ));
    NOR2A \clock_div_1MHZ_10HZ_0/counter_RNIGC0V[11]  (.A(
        \clock_div_1MHZ_10HZ_0/counter[15]_net_1 ), .B(
        \clock_div_1MHZ_10HZ_0/counter[11]_net_1 ), .Y(
        \clock_div_1MHZ_10HZ_0/clk_out4_1 ));
    AND3 \clock_div_1MHZ_100KHZ_0/un5_counter_I_29  (.A(
        \clock_div_1MHZ_100KHZ_0/counter[6]_net_1 ), .B(
        \clock_div_1MHZ_100KHZ_0/counter[7]_net_1 ), .C(
        \clock_div_1MHZ_100KHZ_0/counter[8]_net_1 ), .Y(
        \clock_div_1MHZ_100KHZ_0/DWACT_FINC_E[5] ));
    XOR2 \clock_div_1MHZ_100KHZ_0/un5_counter_I_20  (.A(
        \clock_div_1MHZ_100KHZ_0/N_11 ), .B(
        \clock_div_1MHZ_100KHZ_0/counter[7]_net_1 ), .Y(
        \clock_div_1MHZ_100KHZ_0/I_20_0 ));
    DFN1E1 \test_harness_geiger_stack_0/data_prev[17]  (.D(
        \geig_data_handling_0_G_DATA_STACK[17] ), .CLK(GLA), .E(
        reset_pulse_0_RESET_4), .Q(
        \test_harness_geiger_stack_0/data_prev[17]_net_1 ));
    DFN1E0 \test_harness_geiger_stack_0/data_buffer[36]  (.D(
        \test_harness_geiger_stack_0/data_buffer_5[36] ), .CLK(GLA), 
        .E(\test_harness_geiger_stack_0/set_0_RNI7I0G9_0_net_1 ), .Q(
        \test_harness_geiger_stack_0/data_buffer[36]_net_1 ));
    DFN1E0 \test_harness_geiger_stack_0/data_buffer[14]  (.D(
        \test_harness_geiger_stack_0/data_buffer_5[14] ), .CLK(GLA), 
        .E(\test_harness_geiger_stack_0/un1_counter18_0 ), .Q(
        \test_harness_geiger_stack_0/data_buffer[14]_net_1 ));
    AND3 \clock_div_1MHZ_100KHZ_0/un5_counter_I_8  (.A(
        \clock_div_1MHZ_100KHZ_0/counter[0]_net_1 ), .B(
        \clock_div_1MHZ_100KHZ_0/counter[1]_net_1 ), .C(
        \clock_div_1MHZ_100KHZ_0/counter[2]_net_1 ), .Y(
        \clock_div_1MHZ_100KHZ_0/N_15 ));
    DFN1C0 \geig_data_handling_0/G_DATA_STACK_1[28]/U1  (.D(
        \geig_data_handling_0/G_DATA_STACK_1[28]/Y ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_1), .Q(
        \geig_data_handling_0_G_DATA_STACK[28] ));
    NOR2A \test_harness_geiger_stack_0/counter14_0  (.A(
        \test_harness_geiger_stack_0/counter_3[1] ), .B(
        \test_harness_geiger_stack_0/DWACT_ADD_CI_0_partial_sum[0] ), 
        .Y(\test_harness_geiger_stack_0/counter14_0_net_1 ));
    INV \geig_data_handling_0/shift_reg_RNO[8]  (.A(
        \geig_data_handling_0/shift_reg[7]_net_1 ), .Y(
        \geig_data_handling_0/shift_reg_i[7] ));
    NOR2A \geig_data_handling_0/min_counter_RNO[4]  (.A(
        \geig_data_handling_0/I_12_1 ), .B(\geig_data_handling_0/N_46 )
        , .Y(\geig_data_handling_0/min_counter_3[4] ));
    DFN1E0 \test_harness_geiger_stack_0/data_buffer[16]  (.D(
        \test_harness_geiger_stack_0/data_buffer_5[16] ), .CLK(GLA), 
        .E(\test_harness_geiger_stack_0/un1_counter18_0 ), .Q(
        \test_harness_geiger_stack_0/data_buffer[16]_net_1 ));
    DFN1C0 \clock_div_1MHZ_10HZ_0/counter[12]  (.D(
        \clock_div_1MHZ_10HZ_0/I_35 ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET), .Q(
        \clock_div_1MHZ_10HZ_0/counter[12]_net_1 ));
    NOR3B \clock_div_1MHZ_100KHZ_0/counter_RNIEAH52[12]  (.A(
        \clock_div_1MHZ_100KHZ_0/counter[0]_net_1 ), .B(
        \clock_div_1MHZ_100KHZ_0/clk_out5_8 ), .C(
        \clock_div_1MHZ_100KHZ_0/counter[12]_net_1 ), .Y(
        \clock_div_1MHZ_100KHZ_0/clk_out5_12 ));
    DFN1E1 \test_harness_geiger_stack_0/data_prev[0]  (.D(
        \geig_data_handling_0_G_DATA_STACK[1] ), .CLK(GLA), .E(
        reset_pulse_0_RESET_4), .Q(
        \test_harness_geiger_stack_0/data_prev[0]_net_1 ));
    DFN1C0 \timestamp_0/TIMESTAMP[2]  (.D(
        \timestamp_0/TIMESTAMP_n2_net_1 ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_3), .Q(\timestamp_0_TIMESTAMP[2] ));
    OR2B \test_harness_geiger_stack_0/counter_RNI1JI9[2]  (.A(
        \test_harness_geiger_stack_0/counter[1]_net_1 ), .B(
        \test_harness_geiger_stack_0/counter[2]_net_1 ), .Y(
        \test_harness_geiger_stack_0/un1_counterlto2 ));
    DFN1E0 \test_harness_geiger_stack_0/data_buffer[28]  (.D(
        \test_harness_geiger_stack_0/data_buffer_5[28] ), .CLK(GLA), 
        .E(\test_harness_geiger_stack_0/un1_counter18_0 ), .Q(
        \test_harness_geiger_stack_0/data_buffer[28]_net_1 ));
    XOR2 \test_harness_geiger_stack_0/data_prev_RNI61H6[34]  (.A(
        \geig_data_handling_0_G_DATA_STACK[34] ), .B(
        \test_harness_geiger_stack_0/data_prev[34]_net_1 ), .Y(
        \test_harness_geiger_stack_0/un1_TEST_DATA_34 ));
    NOR3C \geig_data_handling_0/geig_counts_RNO_0[15]  (.A(
        \geig_data_handling_0/geig_counts_c8 ), .B(
        \geig_data_handling_0/geig_counts_c11_1 ), .C(
        \geig_data_handling_0/geig_counts_31_1 ), .Y(
        \geig_data_handling_0/N_78 ));
    AND3 \clock_div_1MHZ_100KHZ_0/un5_counter_I_22  (.A(
        \clock_div_1MHZ_100KHZ_0/DWACT_FINC_E[0] ), .B(
        \clock_div_1MHZ_100KHZ_0/DWACT_FINC_E[2] ), .C(
        \clock_div_1MHZ_100KHZ_0/DWACT_FINC_E[3] ), .Y(
        \clock_div_1MHZ_100KHZ_0/N_10 ));
    DFN1C0 \clock_div_1MHZ_10HZ_0/counter[7]  (.D(
        \clock_div_1MHZ_10HZ_0/I_20 ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_6), .Q(
        \clock_div_1MHZ_10HZ_0/counter[7]_net_1 ));
    DFN1E1 \test_harness_geiger_stack_0/data_prev[37]  (.D(
        \geig_data_handling_0_G_DATA_STACK[37] ), .CLK(GLA), .E(
        reset_pulse_0_RESET_5), .Q(
        \test_harness_geiger_stack_0/data_prev[37]_net_1 ));
    MX2 \geig_data_handling_0/geig_counts[4]/U0  (.A(
        \geig_data_handling_0/geig_counts[4] ), .B(
        \geig_data_handling_0/geig_counts_n4 ), .S(
        \geig_data_handling_0/geig_countse ), .Y(
        \geig_data_handling_0/geig_counts[4]/Y ));
    DFN1C0 \test_harness_geiger_stack_0/set_1/U1  (.D(
        \test_harness_geiger_stack_0/set_1/Y ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_0), .Q(\test_harness_geiger_stack_0/set_1 )
        );
    IOPAD_TRI \D7_OUT_pad/U0/U0  (.D(\D7_OUT_pad/U0/NET1 ), .E(
        \D7_OUT_pad/U0/NET2 ), .PAD(D7_OUT));
    DFN1C0 \geig_data_handling_0/G_DATA_STACK_1[19]/U1  (.D(
        \geig_data_handling_0/G_DATA_STACK_1[19]/Y ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_0), .Q(
        \geig_data_handling_0_G_DATA_STACK[19] ));
    NOR2B \timestamp_0/TIMESTAMP_m5_0_a2_3  (.A(
        \timestamp_0_TIMESTAMP[18] ), .B(\timestamp_0_TIMESTAMP[20] ), 
        .Y(\timestamp_0/TIMESTAMP_m5_0_a2_3_net_1 ));
    MX2 \test_harness_geiger_stack_0/data_buffer_RNO[12]  (.A(
        \geig_data_handling_0_G_DATA_STACK[12] ), .B(
        \test_harness_geiger_stack_0/data_buffer[20]_net_1 ), .S(
        \test_harness_geiger_stack_0/set_0 ), .Y(
        \test_harness_geiger_stack_0/data_buffer_5[12] ));
    DFN1C0 \clock_div_1MHZ_100KHZ_0/counter[7]  (.D(
        \clock_div_1MHZ_100KHZ_0/I_20_0 ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_7), .Q(
        \clock_div_1MHZ_100KHZ_0/counter[7]_net_1 ));
    XOR2 \test_harness_geiger_stack_0/data_prev_RNISIC6[11]  (.A(
        \geig_data_handling_0_G_DATA_STACK[11] ), .B(
        \test_harness_geiger_stack_0/data_prev[11]_net_1 ), .Y(
        \test_harness_geiger_stack_0/un1_TEST_DATA_11 ));
    MX2 \geig_data_handling_0/G_DATA_STACK_1[36]/U0  (.A(
        \geig_data_handling_0_G_DATA_STACK[36] ), .B(
        \geig_data_handling_0/geig_counts[4] ), .S(
        \geig_data_handling_0/N_46_1 ), .Y(
        \geig_data_handling_0/G_DATA_STACK_1[36]/Y ));
    AX1C \test_harness_geiger_stack_0/counter_3_I_14  (.A(
        \test_harness_geiger_stack_0/DWACT_ADD_CI_0_TMP[0] ), .B(
        \test_harness_geiger_stack_0/counter[1]_net_1 ), .C(
        \test_harness_geiger_stack_0/counter[2]_net_1 ), .Y(
        \test_harness_geiger_stack_0/counter_3[2] ));
    NOR3B \geig_data_handling_0/min_counter_RNITFHI1[1]  (.A(
        \geig_data_handling_0/min_counter[4]_net_1 ), .B(
        \geig_data_handling_0/G_DATA_STACK6_4 ), .C(
        \geig_data_handling_0/min_counter[1]_net_1 ), .Y(
        \geig_data_handling_0/G_DATA_STACK6_6 ));
    XOR2 \timestamp_0/TIMESTAMP_n20  (.A(
        \timestamp_0/TIMESTAMP_c19_net_1 ), .B(
        \timestamp_0_TIMESTAMP[20] ), .Y(
        \timestamp_0/TIMESTAMP_n20_net_1 ));
    MX2 \geig_data_handling_0/G_DATA_STACK_1[12]/U0  (.A(
        \geig_data_handling_0_G_DATA_STACK[12] ), .B(
        \timestamp_0_TIMESTAMP[4] ), .S(\geig_data_handling_0/N_46_0 ), 
        .Y(\geig_data_handling_0/G_DATA_STACK_1[12]/Y ));
    DFN1C0 \timestamp_0/TIMESTAMP[5]  (.D(
        \timestamp_0/TIMESTAMP_n5_net_1 ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_3), .Q(\timestamp_0_TIMESTAMP[5] ));
    MX2 \test_harness_geiger_stack_0/data_buffer_RNO[15]  (.A(
        \geig_data_handling_0_G_DATA_STACK[15] ), .B(
        \test_harness_geiger_stack_0/data_buffer[23]_net_1 ), .S(
        \test_harness_geiger_stack_0/set_0 ), .Y(
        \test_harness_geiger_stack_0/data_buffer_5[15] ));
    AND3 \clock_div_1MHZ_100KHZ_0/un5_counter_I_45  (.A(
        \clock_div_1MHZ_100KHZ_0/DWACT_FINC_E[6] ), .B(
        \clock_div_1MHZ_100KHZ_0/DWACT_FINC_E[10] ), .C(
        \clock_div_1MHZ_100KHZ_0/counter[15]_net_1 ), .Y(
        \clock_div_1MHZ_100KHZ_0/N_2 ));
    MX2 \test_harness_geiger_stack_0/data_chunk[4]/U0  (.A(D4_OUT_c), 
        .B(\test_harness_geiger_stack_0/data_buffer[4]_net_1 ), .S(
        \test_harness_geiger_stack_0/data_chunk7 ), .Y(
        \test_harness_geiger_stack_0/data_chunk[4]/Y ));
    AOI1B \clock_div_1MHZ_10HZ_0/counter_RNO[9]  (.A(
        \clock_div_1MHZ_10HZ_0/clk_out4_14 ), .B(
        \clock_div_1MHZ_10HZ_0/clk_out4_13 ), .C(
        \clock_div_1MHZ_10HZ_0/I_26 ), .Y(
        \clock_div_1MHZ_10HZ_0/counter_3[9] ));
    XOR2 \clock_div_1MHZ_100KHZ_0/un5_counter_I_9  (.A(
        \clock_div_1MHZ_100KHZ_0/N_15 ), .B(
        \clock_div_1MHZ_100KHZ_0/counter[3]_net_1 ), .Y(
        \clock_div_1MHZ_100KHZ_0/I_9_0 ));
    DFN1C0 \test_harness_geiger_stack_0/data_chunk[2]/U1  (.D(
        \test_harness_geiger_stack_0/data_chunk[2]/Y ), .CLK(GLA), 
        .CLR(reset_pulse_0_RESET_2), .Q(D2_OUT_c));
    DFN1E0 \test_harness_geiger_stack_0/data_buffer[38]  (.D(
        \test_harness_geiger_stack_0/data_buffer_5[38] ), .CLK(GLA), 
        .E(\test_harness_geiger_stack_0/set_0_RNI7I0G9_0_net_1 ), .Q(
        \test_harness_geiger_stack_0/data_buffer[38]_net_1 ));
    XA1B \geig_data_handling_0/geig_counts_RNO[7]  (.A(
        \geig_data_handling_0/geig_counts[7] ), .B(
        \geig_data_handling_0/geig_counts_c6 ), .C(
        \geig_data_handling_0/N_46 ), .Y(
        \geig_data_handling_0/geig_counts_n7 ));
    NOR2B \timestamp_0/TIMESTAMP_m6_0_a2_2  (.A(
        \timestamp_0_TIMESTAMP[7] ), .B(\timestamp_0_TIMESTAMP[8] ), 
        .Y(\timestamp_0/TIMESTAMP_m6_0_a2_2_net_1 ));
    DFN1C0 \clock_div_1MHZ_10HZ_0/counter[6]  (.D(
        \clock_div_1MHZ_10HZ_0/counter_3[6] ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_6), .Q(
        \clock_div_1MHZ_10HZ_0/counter[6]_net_1 ));
    DFN1E0 \test_harness_geiger_stack_0/data_buffer[18]  (.D(
        \test_harness_geiger_stack_0/data_buffer_5[18] ), .CLK(GLA), 
        .E(\test_harness_geiger_stack_0/un1_counter18_0 ), .Q(
        \test_harness_geiger_stack_0/data_buffer[18]_net_1 ));
    DFN1C0 \clock_div_1MHZ_100KHZ_0/counter[2]  (.D(
        \clock_div_1MHZ_100KHZ_0/counter_3[2] ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_7), .Q(
        \clock_div_1MHZ_100KHZ_0/counter[2]_net_1 ));
    OR2 \reset_pulse_0/RESET_1  (.A(BUF2_PBRST_N_T9_c), .B(CLK_48MHZ_c)
        , .Y(reset_pulse_0_RESET_1));
    XOR2 \test_harness_geiger_stack_0/data_prev_RNISKE6[20]  (.A(
        \test_harness_geiger_stack_0/data_prev[20]_net_1 ), .B(
        \geig_data_handling_0_G_DATA_STACK[20] ), .Y(
        \test_harness_geiger_stack_0/un1_TEST_DATA_20 ));
    MX2 \geig_data_handling_0/geig_counts[5]/U0  (.A(
        \geig_data_handling_0/geig_counts[5] ), .B(
        \geig_data_handling_0/geig_counts_n5 ), .S(
        \geig_data_handling_0/geig_countse ), .Y(
        \geig_data_handling_0/geig_counts[5]/Y ));
    OR3 \test_harness_geiger_stack_0/data_prev_RNIE5ME1[16]  (.A(
        \test_harness_geiger_stack_0/un1_TEST_DATA_NE_19 ), .B(
        \test_harness_geiger_stack_0/un1_TEST_DATA_NE_18 ), .C(
        \test_harness_geiger_stack_0/un1_TEST_DATA_NE_30 ), .Y(
        \test_harness_geiger_stack_0/un1_TEST_DATA_NE_37 ));
    OR3 \test_harness_geiger_stack_0/data_prev_RNIO22Q[28]  (.A(
        \test_harness_geiger_stack_0/un1_TEST_DATA_32 ), .B(
        \test_harness_geiger_stack_0/un1_TEST_DATA_28 ), .C(
        \test_harness_geiger_stack_0/un1_TEST_DATA_NE_11 ), .Y(
        \test_harness_geiger_stack_0/un1_TEST_DATA_NE_27 ));
    MX2 \geig_data_handling_0/geig_counts[14]/U0  (.A(
        \geig_data_handling_0/geig_counts[14] ), .B(
        \geig_data_handling_0/geig_counts_n14 ), .S(
        \geig_data_handling_0/geig_countse ), .Y(
        \geig_data_handling_0/geig_counts[14]/Y ));
    MX2 \test_harness_geiger_stack_0/data_buffer_RNO[37]  (.A(
        \geig_data_handling_0_G_DATA_STACK[37] ), .B(
        \test_harness_geiger_stack_0/data_buffer[45]_net_1 ), .S(
        \test_harness_geiger_stack_0/set_1 ), .Y(
        \test_harness_geiger_stack_0/data_buffer_5[37] ));
    DFN1E1 \test_harness_geiger_stack_0/data_prev[22]  (.D(
        \geig_data_handling_0_G_DATA_STACK[22] ), .CLK(GLA), .E(
        reset_pulse_0_RESET_4), .Q(
        \test_harness_geiger_stack_0/data_prev[22]_net_1 ));
    DFN1C0 \clock_div_1MHZ_100KHZ_0/counter[12]  (.D(
        \clock_div_1MHZ_100KHZ_0/I_35_0 ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_7), .Q(
        \clock_div_1MHZ_100KHZ_0/counter[12]_net_1 ));
    AND2 \clock_div_1MHZ_100KHZ_0/un5_counter_I_21  (.A(
        \clock_div_1MHZ_100KHZ_0/counter[6]_net_1 ), .B(
        \clock_div_1MHZ_100KHZ_0/counter[7]_net_1 ), .Y(
        \clock_div_1MHZ_100KHZ_0/DWACT_FINC_E[3] ));
    XO1 \test_harness_geiger_stack_0/data_prev_RNIO7JB[39]  (.A(
        \geig_data_handling_0_G_DATA_STACK[39] ), .B(
        \test_harness_geiger_stack_0/data_prev[39]_net_1 ), .C(
        \test_harness_geiger_stack_0/un1_TEST_DATA_8 ), .Y(
        \test_harness_geiger_stack_0/un1_TEST_DATA_NE_1 ));
    DFN1C0 \timestamp_0/TIMESTAMP[20]  (.D(
        \timestamp_0/TIMESTAMP_n20_net_1 ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(reset_pulse_0_RESET), 
        .Q(\timestamp_0_TIMESTAMP[20] ));
    DFN1C0 \geig_data_handling_0/G_DATA_STACK_1[30]/U1  (.D(
        \geig_data_handling_0/G_DATA_STACK_1[30]/Y ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_1), .Q(
        \geig_data_handling_0_G_DATA_STACK[30] ));
    DFN1C0 \geig_data_handling_0/geig_counts[6]/U1  (.D(
        \geig_data_handling_0/geig_counts[6]/Y ), .CLK(
        clock_div_1MHZ_100KHZ_0_CLK_100KHZ_OUT), .CLR(
        reset_pulse_0_RESET_2), .Q(
        \geig_data_handling_0/geig_counts[6] ));
    AND3 \clock_div_1MHZ_10HZ_0/un4_counter_1_I_13  (.A(
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[0] ), .B(
        \clock_div_1MHZ_10HZ_0/counter[3]_net_1 ), .C(
        \clock_div_1MHZ_10HZ_0/counter[4]_net_1 ), .Y(
        \clock_div_1MHZ_10HZ_0/N_13 ));
    AND3 \geig_data_handling_0/un5_min_counter_I_22  (.A(
        \geig_data_handling_0/DWACT_FINC_E[0] ), .B(
        \geig_data_handling_0/DWACT_FINC_E[2] ), .C(
        \geig_data_handling_0/DWACT_FINC_E[3] ), .Y(
        \geig_data_handling_0/N_3 ));
    INV \clock_div_1MHZ_10HZ_0/un4_counter_1_I_4  (.A(
        \clock_div_1MHZ_10HZ_0/counter[0]_net_1 ), .Y(
        \clock_div_1MHZ_10HZ_0/I_4 ));
    NOR2B \geig_data_handling_0/un5_min_counter_I_25  (.A(
        \geig_data_handling_0/min_counter[8]_net_1 ), .B(
        \geig_data_handling_0/DWACT_FINC_E[4] ), .Y(
        \geig_data_handling_0/N_2 ));
    XO1 \test_harness_geiger_stack_0/data_prev_RNI6OTC[37]  (.A(
        \geig_data_handling_0_G_DATA_STACK[37] ), .B(
        \test_harness_geiger_stack_0/data_prev[37]_net_1 ), .C(
        \test_harness_geiger_stack_0/un1_TEST_DATA_10 ), .Y(
        \test_harness_geiger_stack_0/un1_TEST_DATA_NE_3 ));
    XA1B \geig_data_handling_0/geig_counts_RNO[5]  (.A(
        \geig_data_handling_0/geig_counts[5] ), .B(
        \geig_data_handling_0/geig_counts_c4 ), .C(
        \geig_data_handling_0/N_46_1 ), .Y(
        \geig_data_handling_0/geig_counts_n5 ));
    NOR2B \timestamp_0/TIMESTAMP_c21_0  (.A(
        \timestamp_0_TIMESTAMP[21] ), .B(\timestamp_0_TIMESTAMP[20] ), 
        .Y(\timestamp_0/TIMESTAMP_c21_0_net_1 ));
    AND3 \clock_div_1MHZ_100KHZ_0/un5_counter_I_33  (.A(
        \clock_div_1MHZ_100KHZ_0/counter[9]_net_1 ), .B(
        \clock_div_1MHZ_100KHZ_0/counter[10]_net_1 ), .C(
        \clock_div_1MHZ_100KHZ_0/counter[11]_net_1 ), .Y(
        \clock_div_1MHZ_100KHZ_0/DWACT_FINC_E[7] ));
    NOR2B \geig_data_handling_0/geig_counts_RNI1TJD1[8]  (.A(
        \geig_data_handling_0/geig_counts_c7 ), .B(
        \geig_data_handling_0/geig_counts[8] ), .Y(
        \geig_data_handling_0/geig_counts_c8 ));
    DFN1C0 \timestamp_0/TIMESTAMP[10]  (.D(
        \timestamp_0/TIMESTAMP_n10_net_1 ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_7), .Q(\timestamp_0_TIMESTAMP[10] ));
    MX2 \geig_data_handling_0/G_DATA_STACK_1[30]/U0  (.A(
        \geig_data_handling_0_G_DATA_STACK[30] ), .B(
        \timestamp_0_TIMESTAMP[22] ), .S(\geig_data_handling_0/N_46_1 )
        , .Y(\geig_data_handling_0/G_DATA_STACK_1[30]/Y ));
    OR2 \test_harness_geiger_stack_0/data_prev_RNI60IK8[16]  (.A(
        \test_harness_geiger_stack_0/un1_TEST_DATA_NE_41 ), .B(
        \test_harness_geiger_stack_0/un1_TEST_DATA_NE_40 ), .Y(
        \test_harness_geiger_stack_0/un1_TEST_DATA_NE ));
    AX1C \timestamp_0/TIMESTAMP_n8  (.A(\timestamp_0_TIMESTAMP[7] ), 
        .B(\timestamp_0/TIMESTAMP_c6_net_1 ), .C(
        \timestamp_0_TIMESTAMP[8] ), .Y(
        \timestamp_0/TIMESTAMP_n8_net_1 ));
    AND3 \clock_div_1MHZ_10HZ_0/un4_counter_1_I_24  (.A(
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[0] ), .B(
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[2] ), .C(
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[3] ), .Y(
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[4] ));
    NOR3C \timestamp_0/TIMESTAMP_c17  (.A(\timestamp_0_TIMESTAMP[16] ), 
        .B(\timestamp_0/TIMESTAMP_c15_net_1 ), .C(
        \timestamp_0_TIMESTAMP[17] ), .Y(
        \timestamp_0/TIMESTAMP_c17_net_1 ));
    MX2 \geig_data_handling_0/G_DATA_STACK_1[44]/U0  (.A(
        \geig_data_handling_0_G_DATA_STACK[44] ), .B(
        \geig_data_handling_0/geig_counts[12] ), .S(
        \geig_data_handling_0/N_46_1 ), .Y(
        \geig_data_handling_0/G_DATA_STACK_1[44]/Y ));
    XOR2 \clock_div_1MHZ_100KHZ_0/un5_counter_I_46  (.A(
        \clock_div_1MHZ_100KHZ_0/N_2 ), .B(
        \clock_div_1MHZ_100KHZ_0/counter[16]_net_1 ), .Y(
        \clock_div_1MHZ_100KHZ_0/I_46_0 ));
    AND2 \clock_div_1MHZ_10HZ_0/un4_counter_1_I_44  (.A(
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[7] ), .B(
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[9] ), .Y(
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[10] ));
    DFN1E0 \test_harness_geiger_stack_0/data_buffer[41]  (.D(
        \test_harness_geiger_stack_0/data_buffer_5[41] ), .CLK(GLA), 
        .E(\test_harness_geiger_stack_0/set_0_RNI7I0G9_0_net_1 ), .Q(
        \test_harness_geiger_stack_0/data_buffer[41]_net_1 ));
    MX2 \test_harness_geiger_stack_0/data_buffer_RNO[17]  (.A(
        \geig_data_handling_0_G_DATA_STACK[17] ), .B(
        \test_harness_geiger_stack_0/data_buffer[25]_net_1 ), .S(
        \test_harness_geiger_stack_0/set_0 ), .Y(
        \test_harness_geiger_stack_0/data_buffer_5[17] ));
    AOI1B \clock_div_1MHZ_10HZ_0/counter_RNO[8]  (.A(
        \clock_div_1MHZ_10HZ_0/clk_out4_14 ), .B(
        \clock_div_1MHZ_10HZ_0/clk_out4_13 ), .C(
        \clock_div_1MHZ_10HZ_0/I_23 ), .Y(
        \clock_div_1MHZ_10HZ_0/counter_3[8] ));
    DFN1E1 \test_harness_geiger_stack_0/data_prev[19]  (.D(
        \geig_data_handling_0_G_DATA_STACK[19] ), .CLK(GLA), .E(
        reset_pulse_0_RESET_4), .Q(
        \test_harness_geiger_stack_0/data_prev[19]_net_1 ));
    AND3 \clock_div_1MHZ_10HZ_0/un4_counter_1_I_29  (.A(
        \clock_div_1MHZ_10HZ_0/counter[6]_net_1 ), .B(
        \clock_div_1MHZ_10HZ_0/counter[7]_net_1 ), .C(
        \clock_div_1MHZ_10HZ_0/counter[8]_net_1 ), .Y(
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[5] ));
    NOR3C \timestamp_0/TIMESTAMP_c2  (.A(\timestamp_0_TIMESTAMP[1] ), 
        .B(\timestamp_0_TIMESTAMP[0] ), .C(\timestamp_0_TIMESTAMP[2] ), 
        .Y(\timestamp_0/TIMESTAMP_c2_net_1 ));
    XO1 \test_harness_geiger_stack_0/data_prev_RNIC00D[45]  (.A(
        \geig_data_handling_0_G_DATA_STACK[45] ), .B(
        \test_harness_geiger_stack_0/data_prev[45]_net_1 ), .C(
        \test_harness_geiger_stack_0/un1_TEST_DATA_14 ), .Y(
        \test_harness_geiger_stack_0/un1_TEST_DATA_NE_7 ));
    DFN1C0 \geig_data_handling_0/G_DATA_STACK_1[36]/U1  (.D(
        \geig_data_handling_0/G_DATA_STACK_1[36]/Y ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_1), .Q(
        \geig_data_handling_0_G_DATA_STACK[36] ));
    DFN1E0 \test_harness_geiger_stack_0/data_buffer[25]  (.D(
        \test_harness_geiger_stack_0/data_buffer_5[25] ), .CLK(GLA), 
        .E(\test_harness_geiger_stack_0/un1_counter18_0 ), .Q(
        \test_harness_geiger_stack_0/data_buffer[25]_net_1 ));
    XOR2 \test_harness_geiger_stack_0/data_prev_RNI0NC6[13]  (.A(
        \geig_data_handling_0_G_DATA_STACK[13] ), .B(
        \test_harness_geiger_stack_0/data_prev[13]_net_1 ), .Y(
        \test_harness_geiger_stack_0/un1_TEST_DATA_13 ));
    DFN1C0 \test_harness_geiger_stack_0/data_chunk[1]/U1  (.D(
        \test_harness_geiger_stack_0/data_chunk[1]/Y ), .CLK(GLA), 
        .CLR(reset_pulse_0_RESET_2), .Q(D1_OUT_c));
    DFN1C0 \timestamp_0/TIMESTAMP[1]  (.D(
        \timestamp_0/TIMESTAMP_n1_net_1 ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_3), .Q(\timestamp_0_TIMESTAMP[1] ));
    AX1C \timestamp_0/TIMESTAMP_n17  (.A(\timestamp_0_TIMESTAMP[16] ), 
        .B(\timestamp_0/TIMESTAMP_c15_net_1 ), .C(
        \timestamp_0_TIMESTAMP[17] ), .Y(
        \timestamp_0/TIMESTAMP_n17_net_1 ));
    OR3 \test_harness_geiger_stack_0/data_prev_RNIC0CQ[41]  (.A(
        \test_harness_geiger_stack_0/un1_TEST_DATA_42 ), .B(
        \test_harness_geiger_stack_0/un1_TEST_DATA_43 ), .C(
        \test_harness_geiger_stack_0/un1_TEST_DATA_NE_21 ), .Y(
        \test_harness_geiger_stack_0/un1_TEST_DATA_NE_32 ));
    OR2B \test_harness_geiger_stack_0/set_0_RNI7I0G9_0  (.A(
        \test_harness_geiger_stack_0/un1_TEST_DATA_2[0] ), .B(
        reset_pulse_0_RESET), .Y(
        \test_harness_geiger_stack_0/set_0_RNI7I0G9_0_net_1 ));
    DFN1E1 \test_harness_geiger_stack_0/data_prev[43]  (.D(
        \geig_data_handling_0_G_DATA_STACK[43] ), .CLK(GLA), .E(
        reset_pulse_0_RESET_5), .Q(
        \test_harness_geiger_stack_0/data_prev[43]_net_1 ));
    DFN1C0 \test_harness_geiger_stack_0/data_chunk[4]/U1  (.D(
        \test_harness_geiger_stack_0/data_chunk[4]/Y ), .CLK(GLA), 
        .CLR(reset_pulse_0_RESET_2), .Q(D4_OUT_c));
    DFN1C0 \geig_data_handling_0/min_counter[4]  (.D(
        \geig_data_handling_0/min_counter_3[4] ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_6), .Q(
        \geig_data_handling_0/min_counter[4]_net_1 ));
    DFN1C0 \geig_data_handling_0/shift_reg[7]  (.D(
        \geig_data_handling_0/shift_reg[6]_net_1 ), .CLK(
        clock_div_1MHZ_100KHZ_0_CLK_100KHZ_OUT), .CLR(
        reset_pulse_0_RESET_3), .Q(
        \geig_data_handling_0/shift_reg[7]_net_1 ));
    MX2 \geig_data_handling_0/G_DATA_STACK_1[24]/U0  (.A(
        \geig_data_handling_0_G_DATA_STACK[24] ), .B(
        \timestamp_0_TIMESTAMP[16] ), .S(\geig_data_handling_0/N_46_0 )
        , .Y(\geig_data_handling_0/G_DATA_STACK_1[24]/Y ));
    DFN1C0 \geig_data_handling_0/G_DATA_STACK_1[13]/U1  (.D(
        \geig_data_handling_0/G_DATA_STACK_1[13]/Y ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_0), .Q(
        \geig_data_handling_0_G_DATA_STACK[13] ));
    IOTRI_OB_EB \D2_OUT_pad/U0/U1  (.D(D2_OUT_c), .E(VCC), .DOUT(
        \D2_OUT_pad/U0/NET1 ), .EOUT(\D2_OUT_pad/U0/NET2 ));
    DFN1E1 \test_harness_geiger_stack_0/data_prev[28]  (.D(
        \geig_data_handling_0_G_DATA_STACK[28] ), .CLK(GLA), .E(
        reset_pulse_0_RESET_5), .Q(
        \test_harness_geiger_stack_0/data_prev[28]_net_1 ));
    DFN1C0 \test_harness_geiger_stack_0/counter[2]  (.D(
        \test_harness_geiger_stack_0/counter_4[2] ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_4), .Q(
        \test_harness_geiger_stack_0/counter[2]_net_1 ));
    DFN1E1 \test_harness_geiger_stack_0/data_prev[39]  (.D(
        \geig_data_handling_0_G_DATA_STACK[39] ), .CLK(GLA), .E(
        reset_pulse_0_RESET_5), .Q(
        \test_harness_geiger_stack_0/data_prev[39]_net_1 ));
    DFN1E0 \test_harness_geiger_stack_0/data_buffer[43]  (.D(
        \test_harness_geiger_stack_0/data_buffer_5[43] ), .CLK(GLA), 
        .E(\test_harness_geiger_stack_0/set_0_RNI7I0G9_0_net_1 ), .Q(
        \test_harness_geiger_stack_0/data_buffer[43]_net_1 ));
    XOR2 \clock_div_1MHZ_10HZ_0/un4_counter_1_I_37  (.A(
        \clock_div_1MHZ_10HZ_0/N_5 ), .B(
        \clock_div_1MHZ_10HZ_0/counter[13]_net_1 ), .Y(
        \clock_div_1MHZ_10HZ_0/I_37 ));
    DFN1C0 \geig_data_handling_0/G_DATA_STACK_1[38]/U1  (.D(
        \geig_data_handling_0/G_DATA_STACK_1[38]/Y ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_1), .Q(
        \geig_data_handling_0_G_DATA_STACK[38] ));
    AX1C \timestamp_0/TIMESTAMP_n6  (.A(\timestamp_0_TIMESTAMP[5] ), 
        .B(\timestamp_0/TIMESTAMP_c4_net_1 ), .C(
        \timestamp_0_TIMESTAMP[6] ), .Y(
        \timestamp_0/TIMESTAMP_n6_net_1 ));
    DFN1E0 \test_harness_geiger_stack_0/data_buffer[35]  (.D(
        \test_harness_geiger_stack_0/data_buffer_5[35] ), .CLK(GLA), 
        .E(\test_harness_geiger_stack_0/set_0_RNI7I0G9_0_net_1 ), .Q(
        \test_harness_geiger_stack_0/data_buffer[35]_net_1 ));
    XOR2 \timestamp_0/TIMESTAMP_n16  (.A(
        \timestamp_0/TIMESTAMP_c15_net_1 ), .B(
        \timestamp_0_TIMESTAMP[16] ), .Y(
        \timestamp_0/TIMESTAMP_n16_net_1 ));
    DFN1C0 \clock_div_1MHZ_100KHZ_0/counter[3]  (.D(
        \clock_div_1MHZ_100KHZ_0/I_9_0 ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_7), .Q(
        \clock_div_1MHZ_100KHZ_0/counter[3]_net_1 ));
    NOR2B \geig_data_handling_0/min_counter_RNIMHVQ2_1[1]  (.A(
        \geig_data_handling_0/G_DATA_STACK6_6 ), .B(
        \geig_data_handling_0/G_DATA_STACK6_5 ), .Y(
        \geig_data_handling_0/N_46_0 ));
    DFN1E0 \test_harness_geiger_stack_0/data_buffer[15]  (.D(
        \test_harness_geiger_stack_0/data_buffer_5[15] ), .CLK(GLA), 
        .E(\test_harness_geiger_stack_0/un1_counter18_0 ), .Q(
        \test_harness_geiger_stack_0/data_buffer[15]_net_1 ));
    OR3 \test_harness_geiger_stack_0/data_prev_RNIG32K1[30]  (.A(
        \test_harness_geiger_stack_0/un1_TEST_DATA_NE_9 ), .B(
        \test_harness_geiger_stack_0/un1_TEST_DATA_NE_8 ), .C(
        \test_harness_geiger_stack_0/un1_TEST_DATA_NE_27 ), .Y(
        \test_harness_geiger_stack_0/un1_TEST_DATA_NE_35 ));
    NOR2A \test_harness_geiger_stack_0/data_buffer_RNO[46]  (.A(
        \geig_data_handling_0_G_DATA_STACK[46] ), .B(
        \test_harness_geiger_stack_0/set ), .Y(
        \test_harness_geiger_stack_0/data_buffer_5[46] ));
    DFN1C0 \timestamp_0/TIMESTAMP[4]  (.D(
        \timestamp_0/TIMESTAMP_n4_net_1 ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_3), .Q(\timestamp_0_TIMESTAMP[4] ));
    AX1C \timestamp_0/TIMESTAMP_n21  (.A(\timestamp_0_TIMESTAMP[20] ), 
        .B(\timestamp_0/TIMESTAMP_c19_net_1 ), .C(
        \timestamp_0_TIMESTAMP[21] ), .Y(
        \timestamp_0/TIMESTAMP_n21_net_1 ));
    DFN1C0 \clock_div_1MHZ_10HZ_0/counter[2]  (.D(
        \clock_div_1MHZ_10HZ_0/I_7 ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_6), .Q(
        \clock_div_1MHZ_10HZ_0/counter[2]_net_1 ));
    XOR2 \clock_div_1MHZ_10HZ_0/un4_counter_1_I_20  (.A(
        \clock_div_1MHZ_10HZ_0/N_11 ), .B(
        \clock_div_1MHZ_10HZ_0/counter[7]_net_1 ), .Y(
        \clock_div_1MHZ_10HZ_0/I_20 ));
    DFN1E0 \test_harness_geiger_stack_0/data_buffer[9]  (.D(
        \test_harness_geiger_stack_0/data_buffer_5[9] ), .CLK(GLA), .E(
        \test_harness_geiger_stack_0/set_0_RNI7I0G9_0_net_1 ), .Q(
        \test_harness_geiger_stack_0/data_buffer[9]_net_1 ));
    DFN1C0 \timestamp_0/TIMESTAMP[6]  (.D(
        \timestamp_0/TIMESTAMP_n6_net_1 ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_3), .Q(\timestamp_0_TIMESTAMP[6] ));
    DFN1C0 \clock_div_1MHZ_100KHZ_0/counter[5]  (.D(
        \clock_div_1MHZ_100KHZ_0/I_14_0 ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_7), .Q(
        \clock_div_1MHZ_100KHZ_0/counter[5]_net_1 ));
    DFN1C0 \test_harness_geiger_stack_0/set_0/U1  (.D(
        \test_harness_geiger_stack_0/set_0/Y ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_0), .Q(\test_harness_geiger_stack_0/set_0 )
        );
    DFN1C0 \clock_div_1MHZ_100KHZ_0/counter[1]  (.D(
        \clock_div_1MHZ_100KHZ_0/counter_3[1] ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_7), .Q(
        \clock_div_1MHZ_100KHZ_0/counter[1]_net_1 ));
    XOR2 \test_harness_geiger_stack_0/data_prev_RNIA5H6[36]  (.A(
        \test_harness_geiger_stack_0/data_prev[36]_net_1 ), .B(
        \geig_data_handling_0_G_DATA_STACK[36] ), .Y(
        \test_harness_geiger_stack_0/un1_TEST_DATA_36 ));
    XOR2 \clock_div_1MHZ_100KHZ_0/un5_counter_I_23  (.A(
        \clock_div_1MHZ_100KHZ_0/N_10 ), .B(
        \clock_div_1MHZ_100KHZ_0/counter[8]_net_1 ), .Y(
        \clock_div_1MHZ_100KHZ_0/I_23_0 ));
    DFN1C0 \clock_div_1MHZ_100KHZ_0/counter[6]  (.D(
        \clock_div_1MHZ_100KHZ_0/I_17_0 ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_7), .Q(
        \clock_div_1MHZ_100KHZ_0/counter[6]_net_1 ));
    NOR2B \timestamp_0/TIMESTAMP_c11  (.A(
        \timestamp_0/TIMESTAMP_c10_net_1 ), .B(
        \timestamp_0_TIMESTAMP[11] ), .Y(
        \timestamp_0/TIMESTAMP_c11_net_1 ));
    XOR2 \clock_div_1MHZ_10HZ_0/un4_counter_1_I_40  (.A(
        \clock_div_1MHZ_10HZ_0/N_4 ), .B(
        \clock_div_1MHZ_10HZ_0/counter[14]_net_1 ), .Y(
        \clock_div_1MHZ_10HZ_0/I_40 ));
    DFN1C0 \timestamp_0/TIMESTAMP[0]  (.D(
        \timestamp_0/timestamp_0_TIMESTAMP_i[0] ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_3), .Q(\timestamp_0_TIMESTAMP[0] ));
    DFN1C0 \geig_data_handling_0/G_DATA_STACK_1[12]/U1  (.D(
        \geig_data_handling_0/G_DATA_STACK_1[12]/Y ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_0), .Q(
        \geig_data_handling_0_G_DATA_STACK[12] ));
    XOR2 \timestamp_0/TIMESTAMP_n14  (.A(\timestamp_0/TIMESTAMP_c13 ), 
        .B(\timestamp_0_TIMESTAMP[14] ), .Y(
        \timestamp_0/TIMESTAMP_n14_net_1 ));
    DFN1E1 \test_harness_geiger_stack_0/data_prev[44]  (.D(
        \geig_data_handling_0_G_DATA_STACK[44] ), .CLK(GLA), .E(
        reset_pulse_0_RESET_5), .Q(
        \test_harness_geiger_stack_0/data_prev[44]_net_1 ));
    MX2 \test_harness_geiger_stack_0/data_buffer_RNO[31]  (.A(
        \geig_data_handling_0_G_DATA_STACK[31] ), .B(
        \test_harness_geiger_stack_0/data_buffer[39]_net_1 ), .S(
        \test_harness_geiger_stack_0/set_1 ), .Y(
        \test_harness_geiger_stack_0/data_buffer_5[31] ));
    DFN1C0 \geig_data_handling_0/shift_reg[4]  (.D(
        \geig_data_handling_0/shift_reg[3]_net_1 ), .CLK(
        clock_div_1MHZ_100KHZ_0_CLK_100KHZ_OUT), .CLR(
        reset_pulse_0_RESET_3), .Q(
        \geig_data_handling_0/shift_reg[4]_net_1 ));
    XA1B \geig_data_handling_0/geig_counts_RNO[8]  (.A(
        \geig_data_handling_0/geig_counts_c7 ), .B(
        \geig_data_handling_0/geig_counts[8] ), .C(
        \geig_data_handling_0/N_46 ), .Y(
        \geig_data_handling_0/geig_counts_n8 ));
    XOR2 \test_harness_geiger_stack_0/data_prev_RNIA3F6[27]  (.A(
        \test_harness_geiger_stack_0/data_prev[27]_net_1 ), .B(
        \geig_data_handling_0_G_DATA_STACK[27] ), .Y(
        \test_harness_geiger_stack_0/un1_TEST_DATA_27 ));
    DFN1C0 \geig_data_handling_0/G_DATA_STACK_1[44]/U1  (.D(
        \geig_data_handling_0/G_DATA_STACK_1[44]/Y ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_1), .Q(
        \geig_data_handling_0_G_DATA_STACK[44] ));
    MX2 \geig_data_handling_0/G_DATA_STACK_1[17]/U0  (.A(
        \geig_data_handling_0_G_DATA_STACK[17] ), .B(
        \timestamp_0_TIMESTAMP[9] ), .S(\geig_data_handling_0/N_46_0 ), 
        .Y(\geig_data_handling_0/G_DATA_STACK_1[17]/Y ));
    DFN1C0 \geig_data_handling_0/G_DATA_STACK_1[17]/U1  (.D(
        \geig_data_handling_0/G_DATA_STACK_1[17]/Y ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_0), .Q(
        \geig_data_handling_0_G_DATA_STACK[17] ));
    NOR2A \clock_div_1MHZ_100KHZ_0/counter_RNI5UVR[2]  (.A(
        \clock_div_1MHZ_100KHZ_0/counter[2]_net_1 ), .B(
        \clock_div_1MHZ_100KHZ_0/counter[5]_net_1 ), .Y(
        \clock_div_1MHZ_100KHZ_0/clk_out5_2 ));
    DFN1E1 \test_harness_geiger_stack_0/data_prev[21]  (.D(
        \geig_data_handling_0_G_DATA_STACK[21] ), .CLK(GLA), .E(
        reset_pulse_0_RESET_4), .Q(
        \test_harness_geiger_stack_0/data_prev[21]_net_1 ));
    OR2 \reset_pulse_0/RESET_0  (.A(BUF2_PBRST_N_T9_c), .B(CLK_48MHZ_c)
        , .Y(reset_pulse_0_RESET_0));
    XOR2 \test_harness_geiger_stack_0/data_prev_RNIE7F6[29]  (.A(
        \test_harness_geiger_stack_0/data_prev[29]_net_1 ), .B(
        \geig_data_handling_0_G_DATA_STACK[29] ), .Y(
        \test_harness_geiger_stack_0/un1_TEST_DATA_29 ));
    NOR3C \clock_div_1MHZ_10HZ_0/counter_RNIVA0T2[2]  (.A(
        \clock_div_1MHZ_10HZ_0/clk_out4_2 ), .B(
        \clock_div_1MHZ_10HZ_0/clk_out4_1 ), .C(
        \clock_div_1MHZ_10HZ_0/clk_out4_10 ), .Y(
        \clock_div_1MHZ_10HZ_0/clk_out4_13 ));
    AND2 \clock_div_1MHZ_10HZ_0/un4_counter_1_I_21  (.A(
        \clock_div_1MHZ_10HZ_0/counter[6]_net_1 ), .B(
        \clock_div_1MHZ_10HZ_0/counter[7]_net_1 ), .Y(
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[3] ));
    XOR2 \test_harness_geiger_stack_0/data_prev_RNIC5F6[28]  (.A(
        \test_harness_geiger_stack_0/data_prev[28]_net_1 ), .B(
        \geig_data_handling_0_G_DATA_STACK[28] ), .Y(
        \test_harness_geiger_stack_0/un1_TEST_DATA_28 ));
    DFN1E1 \test_harness_geiger_stack_0/data_prev[12]  (.D(
        \geig_data_handling_0_G_DATA_STACK[12] ), .CLK(GLA), .E(
        reset_pulse_0_RESET_4), .Q(
        \test_harness_geiger_stack_0/data_prev[12]_net_1 ));
    DFN1C0 \geig_data_handling_0/geig_counts[9]/U1  (.D(
        \geig_data_handling_0/geig_counts[9]/Y ), .CLK(
        clock_div_1MHZ_100KHZ_0_CLK_100KHZ_OUT), .CLR(
        reset_pulse_0_RESET_2), .Q(
        \geig_data_handling_0/geig_counts[9] ));
    DFN1C0 \clock_div_1MHZ_100KHZ_0/counter[8]  (.D(
        \clock_div_1MHZ_100KHZ_0/I_23_0 ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_7), .Q(
        \clock_div_1MHZ_100KHZ_0/counter[8]_net_1 ));
    XA1B \geig_data_handling_0/min_counter_RNO[6]  (.A(
        \geig_data_handling_0/N_5 ), .B(
        \geig_data_handling_0/min_counter[6]_net_1 ), .C(
        \geig_data_handling_0/N_46 ), .Y(
        \geig_data_handling_0/min_counter_3[6] ));
    NOR2 \clock_div_1MHZ_100KHZ_0/counter_RNIF80S[8]  (.A(
        \clock_div_1MHZ_100KHZ_0/counter[9]_net_1 ), .B(
        \clock_div_1MHZ_100KHZ_0/counter[8]_net_1 ), .Y(
        \clock_div_1MHZ_100KHZ_0/clk_out5_6 ));
    MX2 \geig_data_handling_0/G_DATA_STACK_1[28]/U0  (.A(
        \geig_data_handling_0_G_DATA_STACK[28] ), .B(
        \timestamp_0_TIMESTAMP[20] ), .S(\geig_data_handling_0/N_46_0 )
        , .Y(\geig_data_handling_0/G_DATA_STACK_1[28]/Y ));
    DFN1C0 \geig_data_handling_0/G_DATA_STACK_1[24]/U1  (.D(
        \geig_data_handling_0/G_DATA_STACK_1[24]/Y ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_0), .Q(
        \geig_data_handling_0_G_DATA_STACK[24] ));
    AND3 \clock_div_1MHZ_10HZ_0/un4_counter_1_I_41  (.A(
        \clock_div_1MHZ_10HZ_0/counter[12]_net_1 ), .B(
        \clock_div_1MHZ_10HZ_0/counter[13]_net_1 ), .C(
        \clock_div_1MHZ_10HZ_0/counter[14]_net_1 ), .Y(
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[9] ));
    AND3 \geig_data_handling_0/un5_min_counter_I_10  (.A(
        \geig_data_handling_0/min_counter[0]_net_1 ), .B(
        \geig_data_handling_0/min_counter[1]_net_1 ), .C(
        \geig_data_handling_0/min_counter[2]_net_1 ), .Y(
        \geig_data_handling_0/DWACT_FINC_E[0] ));
    XA1B \geig_data_handling_0/min_counter_RNO[9]  (.A(
        \geig_data_handling_0/N_2 ), .B(
        \geig_data_handling_0/min_counter[9]_net_1 ), .C(
        \geig_data_handling_0/N_46 ), .Y(
        \geig_data_handling_0/min_counter_3[9] ));
    XA1B \geig_data_handling_0/geig_counts_RNO[14]  (.A(
        \geig_data_handling_0/geig_counts_c13 ), .B(
        \geig_data_handling_0/geig_counts[14] ), .C(
        \geig_data_handling_0/N_46 ), .Y(
        \geig_data_handling_0/geig_counts_n14 ));
    DFN1C0 \geig_data_handling_0/min_counter[6]  (.D(
        \geig_data_handling_0/min_counter_3[6] ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_6), .Q(
        \geig_data_handling_0/min_counter[6]_net_1 ));
    DFN1C0 \geig_data_handling_0/geig_counts[4]/U1  (.D(
        \geig_data_handling_0/geig_counts[4]/Y ), .CLK(
        clock_div_1MHZ_100KHZ_0_CLK_100KHZ_OUT), .CLR(
        reset_pulse_0_RESET_2), .Q(
        \geig_data_handling_0/geig_counts[4] ));
    OR2 \reset_pulse_0/RESET_3  (.A(BUF2_PBRST_N_T9_c), .B(CLK_48MHZ_c)
        , .Y(reset_pulse_0_RESET_3));
    MX2 \geig_data_handling_0/G_DATA_STACK_1[43]/U0  (.A(
        \geig_data_handling_0_G_DATA_STACK[43] ), .B(
        \geig_data_handling_0/geig_counts[11] ), .S(
        \geig_data_handling_0/N_46_1 ), .Y(
        \geig_data_handling_0/G_DATA_STACK_1[43]/Y ));
    DFN1C0 \timestamp_0/TIMESTAMP[17]  (.D(
        \timestamp_0/TIMESTAMP_n17_net_1 ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(reset_pulse_0_RESET), 
        .Q(\timestamp_0_TIMESTAMP[17] ));
    NOR2B \test_harness_geiger_stack_0/data_buffer_RNO[3]  (.A(
        \test_harness_geiger_stack_0/data_buffer[11]_net_1 ), .B(
        \test_harness_geiger_stack_0/set ), .Y(
        \test_harness_geiger_stack_0/data_buffer_5[3] ));
    MX2 \test_harness_geiger_stack_0/data_buffer_RNO[1]  (.A(
        \geig_data_handling_0_G_DATA_STACK[1] ), .B(
        \test_harness_geiger_stack_0/data_buffer[9]_net_1 ), .S(
        \test_harness_geiger_stack_0/set_1 ), .Y(
        \test_harness_geiger_stack_0/data_buffer_5[1] ));
    DFN1C0 \geig_data_handling_0/shift_reg[3]  (.D(
        \geig_data_handling_0/shift_reg[2]_net_1 ), .CLK(
        clock_div_1MHZ_100KHZ_0_CLK_100KHZ_OUT), .CLR(
        reset_pulse_0_RESET_3), .Q(
        \geig_data_handling_0/shift_reg[3]_net_1 ));
    DFN1E1 \test_harness_geiger_stack_0/data_prev[32]  (.D(
        \geig_data_handling_0_G_DATA_STACK[32] ), .CLK(GLA), .E(
        reset_pulse_0_RESET_5), .Q(
        \test_harness_geiger_stack_0/data_prev[32]_net_1 ));
    XOR2 \test_harness_geiger_stack_0/data_prev_RNIUME6[21]  (.A(
        \test_harness_geiger_stack_0/data_prev[21]_net_1 ), .B(
        \geig_data_handling_0_G_DATA_STACK[21] ), .Y(
        \test_harness_geiger_stack_0/un1_TEST_DATA_21 ));
    MX2 \test_harness_geiger_stack_0/data_buffer_RNO[24]  (.A(
        \geig_data_handling_0_G_DATA_STACK[24] ), .B(
        \test_harness_geiger_stack_0/data_buffer[32]_net_1 ), .S(
        \test_harness_geiger_stack_0/set_0 ), .Y(
        \test_harness_geiger_stack_0/data_buffer_5[24] ));
    DFN1C0 \geig_data_handling_0/min_counter[0]  (.D(
        \geig_data_handling_0/I_4_0 ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_6), .Q(
        \geig_data_handling_0/min_counter[0]_net_1 ));
    DFN1C0 \clock_div_1MHZ_100KHZ_0/counter[4]  (.D(
        \clock_div_1MHZ_100KHZ_0/I_12_0 ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_7), .Q(
        \clock_div_1MHZ_100KHZ_0/counter[4]_net_1 ));
    MX2 \test_harness_geiger_stack_0/data_buffer_RNO[11]  (.A(
        \geig_data_handling_0_G_DATA_STACK[11] ), .B(
        \test_harness_geiger_stack_0/data_buffer[19]_net_1 ), .S(
        \test_harness_geiger_stack_0/set_0 ), .Y(
        \test_harness_geiger_stack_0/data_buffer_5[11] ));
    XA1B \geig_data_handling_0/min_counter_RNO[3]  (.A(
        \geig_data_handling_0/N_8 ), .B(
        \geig_data_handling_0/min_counter[3]_net_1 ), .C(
        \geig_data_handling_0/N_46 ), .Y(
        \geig_data_handling_0/min_counter_3[3] ));
    DFN1E0 \test_harness_geiger_stack_0/data_buffer[22]  (.D(
        \test_harness_geiger_stack_0/data_buffer_5[22] ), .CLK(GLA), 
        .E(\test_harness_geiger_stack_0/un1_counter18_0 ), .Q(
        \test_harness_geiger_stack_0/data_buffer[22]_net_1 ));
    XOR2 \test_harness_geiger_stack_0/data_prev_RNIE9H6[38]  (.A(
        \test_harness_geiger_stack_0/data_prev[38]_net_1 ), .B(
        \geig_data_handling_0_G_DATA_STACK[38] ), .Y(
        \test_harness_geiger_stack_0/un1_TEST_DATA_38 ));
    XOR2 \timestamp_0/TIMESTAMP_n18  (.A(
        \timestamp_0/TIMESTAMP_c17_net_1 ), .B(
        \timestamp_0_TIMESTAMP[18] ), .Y(
        \timestamp_0/TIMESTAMP_n18_net_1 ));
    XO1 \test_harness_geiger_stack_0/data_prev_RNI2S5D[41]  (.A(
        \geig_data_handling_0_G_DATA_STACK[41] ), .B(
        \test_harness_geiger_stack_0/data_prev[41]_net_1 ), .C(
        \test_harness_geiger_stack_0/un1_TEST_DATA_40 ), .Y(
        \test_harness_geiger_stack_0/un1_TEST_DATA_NE_21 ));
    DFN1C0 \clock_div_1MHZ_100KHZ_0/counter[13]  (.D(
        \clock_div_1MHZ_100KHZ_0/I_37_0 ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_7), .Q(
        \clock_div_1MHZ_100KHZ_0/counter[13]_net_1 ));
    IOTRI_OB_EB \D1_OUT_pad/U0/U1  (.D(D1_OUT_c), .E(VCC), .DOUT(
        \D1_OUT_pad/U0/NET1 ), .EOUT(\D1_OUT_pad/U0/NET2 ));
    MX2 \geig_data_handling_0/G_DATA_STACK_1[23]/U0  (.A(
        \geig_data_handling_0_G_DATA_STACK[23] ), .B(
        \timestamp_0_TIMESTAMP[15] ), .S(\geig_data_handling_0/N_46_0 )
        , .Y(\geig_data_handling_0/G_DATA_STACK_1[23]/Y ));
    IOTRI_OB_EB \D4_OUT_pad/U0/U1  (.D(D4_OUT_c), .E(VCC), .DOUT(
        \D4_OUT_pad/U0/NET1 ), .EOUT(\D4_OUT_pad/U0/NET2 ));
    MX2 \geig_data_handling_0/G_DATA_STACK_1[29]/U0  (.A(
        \geig_data_handling_0_G_DATA_STACK[29] ), .B(
        \timestamp_0_TIMESTAMP[21] ), .S(\geig_data_handling_0/N_46_1 )
        , .Y(\geig_data_handling_0/G_DATA_STACK_1[29]/Y ));
    DFN1C0 \geig_data_handling_0/G_DATA_STACK_1[15]/U1  (.D(
        \geig_data_handling_0/G_DATA_STACK_1[15]/Y ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_0), .Q(
        \geig_data_handling_0_G_DATA_STACK[15] ));
    OR2 \geig_data_handling_0/G_DATA_STACK_1_RNO[0]  (.A(
        \geig_data_handling_0_G_DATA_STACK[1] ), .B(
        \geig_data_handling_0/N_46 ), .Y(
        \geig_data_handling_0/G_DATA_STACK_1_RNO[0]_net_1 ));
    DFN1E0 \test_harness_geiger_stack_0/data_buffer[5]  (.D(
        \test_harness_geiger_stack_0/data_buffer_5[5] ), .CLK(GLA), .E(
        \test_harness_geiger_stack_0/set_0_RNI7I0G9_0_net_1 ), .Q(
        \test_harness_geiger_stack_0/data_buffer[5]_net_1 ));
    MX2 \geig_data_handling_0/G_DATA_STACK_1[34]/U0  (.A(
        \geig_data_handling_0_G_DATA_STACK[34] ), .B(
        \geig_data_handling_0/geig_counts[2] ), .S(
        \geig_data_handling_0/N_46_1 ), .Y(
        \geig_data_handling_0/G_DATA_STACK_1[34]/Y ));
    DFN1E0 \test_harness_geiger_stack_0/data_buffer[32]  (.D(
        \test_harness_geiger_stack_0/data_buffer_5[32] ), .CLK(GLA), 
        .E(\test_harness_geiger_stack_0/un1_counter18_0 ), .Q(
        \test_harness_geiger_stack_0/data_buffer[32]_net_1 ));
    MX2 \geig_data_handling_0/G_DATA_STACK_1[11]/U0  (.A(
        \geig_data_handling_0_G_DATA_STACK[11] ), .B(
        \timestamp_0_TIMESTAMP[3] ), .S(\geig_data_handling_0/N_46_0 ), 
        .Y(\geig_data_handling_0/G_DATA_STACK_1[11]/Y ));
    AX1C \clock_div_1MHZ_100KHZ_0/un5_counter_I_35  (.A(
        \clock_div_1MHZ_100KHZ_0/DWACT_FINC_E[7] ), .B(
        \clock_div_1MHZ_100KHZ_0/DWACT_FINC_E[6] ), .C(
        \clock_div_1MHZ_100KHZ_0/counter[12]_net_1 ), .Y(
        \clock_div_1MHZ_100KHZ_0/I_35_0 ));
    AND3 \clock_div_1MHZ_10HZ_0/un4_counter_1_I_45  (.A(
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[6] ), .B(
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[10] ), .C(
        \clock_div_1MHZ_10HZ_0/counter[15]_net_1 ), .Y(
        \clock_div_1MHZ_10HZ_0/N_2 ));
    DFN1E0 \test_harness_geiger_stack_0/data_buffer[12]  (.D(
        \test_harness_geiger_stack_0/data_buffer_5[12] ), .CLK(GLA), 
        .E(\test_harness_geiger_stack_0/un1_counter18_0 ), .Q(
        \test_harness_geiger_stack_0/data_buffer[12]_net_1 ));
    INV \geig_data_handling_0/un5_min_counter_I_4  (.A(
        \geig_data_handling_0/min_counter[0]_net_1 ), .Y(
        \geig_data_handling_0/I_4_0 ));
    XOR2 \test_harness_geiger_stack_0/data_prev_RNIUKC6[12]  (.A(
        \geig_data_handling_0_G_DATA_STACK[12] ), .B(
        \test_harness_geiger_stack_0/data_prev[12]_net_1 ), .Y(
        \test_harness_geiger_stack_0/un1_TEST_DATA_12 ));
    XA1B \geig_data_handling_0/geig_counts_RNO[9]  (.A(
        \geig_data_handling_0/geig_counts_c8 ), .B(
        \geig_data_handling_0/geig_counts[9] ), .C(
        \geig_data_handling_0/N_46 ), .Y(
        \geig_data_handling_0/geig_counts_n9 ));
    DFN1E1 \test_harness_geiger_stack_0/data_prev[18]  (.D(
        \geig_data_handling_0_G_DATA_STACK[18] ), .CLK(GLA), .E(
        reset_pulse_0_RESET_4), .Q(
        \test_harness_geiger_stack_0/data_prev[18]_net_1 ));
    DFN1E1 \test_harness_geiger_stack_0/data_prev[45]  (.D(
        \geig_data_handling_0_G_DATA_STACK[45] ), .CLK(GLA), .E(
        reset_pulse_0_RESET_6), .Q(
        \test_harness_geiger_stack_0/data_prev[45]_net_1 ));
    NOR2B \geig_data_handling_0/shift_reg_RNI7VDG[8]  (.A(G_STREAM_c), 
        .B(\geig_data_handling_0/shift_reg_i_0[8] ), .Y(
        \geig_data_handling_0/geig_counts10_0 ));
    DFN1E0 \test_harness_geiger_stack_0/data_buffer[27]  (.D(
        \test_harness_geiger_stack_0/data_buffer_5[27] ), .CLK(GLA), 
        .E(\test_harness_geiger_stack_0/un1_counter18_0 ), .Q(
        \test_harness_geiger_stack_0/data_buffer[27]_net_1 ));
    XOR2 \clock_div_1MHZ_10HZ_0/un4_counter_1_I_17  (.A(
        \clock_div_1MHZ_10HZ_0/N_12 ), .B(
        \clock_div_1MHZ_10HZ_0/counter[6]_net_1 ), .Y(
        \clock_div_1MHZ_10HZ_0/I_17 ));
    DFN1C0 \geig_data_handling_0/min_counter[3]  (.D(
        \geig_data_handling_0/min_counter_3[3] ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_6), .Q(
        \geig_data_handling_0/min_counter[3]_net_1 ));
    AND3 \clock_div_1MHZ_10HZ_0/un4_counter_1_I_39  (.A(
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[6] ), .B(
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[7] ), .C(
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[8] ), .Y(
        \clock_div_1MHZ_10HZ_0/N_4 ));
    DFN1E0 \test_harness_geiger_stack_0/data_buffer[1]  (.D(
        \test_harness_geiger_stack_0/data_buffer_5[1] ), .CLK(GLA), .E(
        \test_harness_geiger_stack_0/set_0_RNI7I0G9_0_net_1 ), .Q(
        \test_harness_geiger_stack_0/data_buffer[1]_net_1 ));
    DFN1C0 \clock_div_1MHZ_10HZ_0/counter[4]  (.D(
        \clock_div_1MHZ_10HZ_0/counter_3[4] ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_6), .Q(
        \clock_div_1MHZ_10HZ_0/counter[4]_net_1 ));
    DFN1C0 \timestamp_0/TIMESTAMP[23]  (.D(\timestamp_0/TIMESTAMP_n23 )
        , .CLK(clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET), .Q(\timestamp_0_TIMESTAMP[23] ));
    DFN1C0 \clock_div_1MHZ_100KHZ_0/counter[15]  (.D(
        \clock_div_1MHZ_100KHZ_0/I_43_0 ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_7), .Q(
        \clock_div_1MHZ_100KHZ_0/counter[15]_net_1 ));
    AX1C \clock_div_1MHZ_100KHZ_0/clk_out_RNO  (.A(
        \clock_div_1MHZ_100KHZ_0/clk_out5_13 ), .B(
        \clock_div_1MHZ_100KHZ_0/clk_out5_14 ), .C(
        \clock_div_1MHZ_100KHZ_0/clk_out_i ), .Y(
        \clock_div_1MHZ_100KHZ_0/clk_out_RNO_0 ));
    AX1C \timestamp_0/TIMESTAMP_n4  (.A(\timestamp_0_TIMESTAMP[3] ), 
        .B(\timestamp_0/TIMESTAMP_c2_net_1 ), .C(
        \timestamp_0_TIMESTAMP[4] ), .Y(
        \timestamp_0/TIMESTAMP_n4_net_1 ));
    MX2 \test_harness_geiger_stack_0/data_buffer_RNO[29]  (.A(
        \geig_data_handling_0_G_DATA_STACK[29] ), .B(
        \test_harness_geiger_stack_0/data_buffer[37]_net_1 ), .S(
        \test_harness_geiger_stack_0/set_1 ), .Y(
        \test_harness_geiger_stack_0/data_buffer_5[29] ));
    MX2 \geig_data_handling_0/geig_counts[8]/U0  (.A(
        \geig_data_handling_0/geig_counts[8] ), .B(
        \geig_data_handling_0/geig_counts_n8 ), .S(
        \geig_data_handling_0/geig_countse ), .Y(
        \geig_data_handling_0/geig_counts[8]/Y ));
    AX1C \timestamp_0/TIMESTAMP_n13  (.A(\timestamp_0_TIMESTAMP[12] ), 
        .B(\timestamp_0/TIMESTAMP_c11_net_1 ), .C(
        \timestamp_0_TIMESTAMP[13] ), .Y(
        \timestamp_0/TIMESTAMP_n13_net_1 ));
    DFN1C0 \geig_data_handling_0/geig_counts[3]/U1  (.D(
        \geig_data_handling_0/geig_counts[3]/Y ), .CLK(
        clock_div_1MHZ_100KHZ_0_CLK_100KHZ_OUT), .CLR(
        reset_pulse_0_RESET_2), .Q(
        \geig_data_handling_0/geig_counts[3] ));
    NOR2 \geig_data_handling_0/shift_reg_RNIVOL2[6]  (.A(
        \geig_data_handling_0/shift_reg[6]_net_1 ), .B(
        \geig_data_handling_0/shift_reg[7]_net_1 ), .Y(
        \geig_data_handling_0/geig_counts10_4 ));
    INV \timestamp_0/TIMESTAMP_RNO[0]  (.A(\timestamp_0_TIMESTAMP[0] ), 
        .Y(\timestamp_0/timestamp_0_TIMESTAMP_i[0] ));
    DFN1E1 \test_harness_geiger_stack_0/data_prev[38]  (.D(
        \geig_data_handling_0_G_DATA_STACK[38] ), .CLK(GLA), .E(
        reset_pulse_0_RESET_5), .Q(
        \test_harness_geiger_stack_0/data_prev[38]_net_1 ));
    DFN1E0 \test_harness_geiger_stack_0/data_buffer[29]  (.D(
        \test_harness_geiger_stack_0/data_buffer_5[29] ), .CLK(GLA), 
        .E(\test_harness_geiger_stack_0/un1_counter18_0 ), .Q(
        \test_harness_geiger_stack_0/data_buffer[29]_net_1 ));
    DFN1C0 \timestamp_0/TIMESTAMP[13]  (.D(
        \timestamp_0/TIMESTAMP_n13_net_1 ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(reset_pulse_0_RESET), 
        .Q(\timestamp_0_TIMESTAMP[13] ));
    DFN1C0 \geig_data_handling_0/G_DATA_STACK_1[11]/U1  (.D(
        \geig_data_handling_0/G_DATA_STACK_1[11]/Y ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_0), .Q(
        \geig_data_handling_0_G_DATA_STACK[11] ));
    AX1 \geig_data_handling_0/geig_counts_RNO[15]  (.A(
        \geig_data_handling_0/N_46 ), .B(
        \geig_data_handling_0/geig_counts[15] ), .C(
        \geig_data_handling_0/N_78 ), .Y(
        \geig_data_handling_0/geig_counts_n15 ));
    XO1 \test_harness_geiger_stack_0/data_prev_RNIC00D[46]  (.A(
        \geig_data_handling_0_G_DATA_STACK[46] ), .B(
        \test_harness_geiger_stack_0/data_prev[46]_net_1 ), .C(
        \test_harness_geiger_stack_0/un1_TEST_DATA_13 ), .Y(
        \test_harness_geiger_stack_0/un1_TEST_DATA_NE_6 ));
    DFN1E0 \test_harness_geiger_stack_0/data_buffer[37]  (.D(
        \test_harness_geiger_stack_0/data_buffer_5[37] ), .CLK(GLA), 
        .E(\test_harness_geiger_stack_0/set_0_RNI7I0G9_0_net_1 ), .Q(
        \test_harness_geiger_stack_0/data_buffer[37]_net_1 ));
    MX2 \geig_data_handling_0/geig_counts[10]/U0  (.A(
        \geig_data_handling_0/geig_counts[10] ), .B(
        \geig_data_handling_0/geig_counts_n10 ), .S(
        \geig_data_handling_0/geig_countse ), .Y(
        \geig_data_handling_0/geig_counts[10]/Y ));
    DFN1E0 \test_harness_geiger_stack_0/data_buffer[17]  (.D(
        \test_harness_geiger_stack_0/data_buffer_5[17] ), .CLK(GLA), 
        .E(\test_harness_geiger_stack_0/un1_counter18_0 ), .Q(
        \test_harness_geiger_stack_0/data_buffer[17]_net_1 ));
    XA1B \geig_data_handling_0/geig_counts_RNO[11]  (.A(
        \geig_data_handling_0/geig_counts_c10 ), .B(
        \geig_data_handling_0/geig_counts[11] ), .C(
        \geig_data_handling_0/N_46 ), .Y(
        \geig_data_handling_0/geig_counts_n11 ));
    OA1A \test_harness_geiger_stack_0/counter_RNO[2]  (.A(
        \test_harness_geiger_stack_0/counter_3[1] ), .B(
        \test_harness_geiger_stack_0/DWACT_ADD_CI_0_partial_sum[0] ), 
        .C(\test_harness_geiger_stack_0/counter_3[2] ), .Y(
        \test_harness_geiger_stack_0/counter_4[2] ));
    NOR3C \geig_data_handling_0/shift_reg_RNIP4PL[0]  (.A(
        \geig_data_handling_0/geig_counts10_1 ), .B(
        \geig_data_handling_0/geig_counts10_0 ), .C(
        \geig_data_handling_0/geig_counts10_4 ), .Y(
        \geig_data_handling_0/geig_counts10_7 ));
    OR3 \test_harness_geiger_stack_0/data_prev_RNIAPTJ1[45]  (.A(
        \test_harness_geiger_stack_0/un1_TEST_DATA_NE_7 ), .B(
        \test_harness_geiger_stack_0/un1_TEST_DATA_NE_6 ), .C(
        \test_harness_geiger_stack_0/un1_TEST_DATA_NE_24 ), .Y(
        \test_harness_geiger_stack_0/un1_TEST_DATA_NE_34 ));
    MX2 \test_harness_geiger_stack_0/data_buffer_RNO[28]  (.A(
        \geig_data_handling_0_G_DATA_STACK[28] ), .B(
        \test_harness_geiger_stack_0/data_buffer[36]_net_1 ), .S(
        \test_harness_geiger_stack_0/set_1 ), .Y(
        \test_harness_geiger_stack_0/data_buffer_5[28] ));
    DFN1E0 \test_harness_geiger_stack_0/data_buffer[2]  (.D(
        \test_harness_geiger_stack_0/data_buffer_5[2] ), .CLK(GLA), .E(
        \test_harness_geiger_stack_0/set_0_RNI7I0G9_0_net_1 ), .Q(
        \test_harness_geiger_stack_0/data_buffer[2]_net_1 ));
    XOR2 \test_harness_geiger_stack_0/data_prev_RNIOB15[0]  (.A(
        \geig_data_handling_0_G_DATA_STACK[1] ), .B(
        \test_harness_geiger_stack_0/data_prev[0]_net_1 ), .Y(
        \test_harness_geiger_stack_0/un1_TEST_DATA_0 ));
    DFN1C0 \geig_data_handling_0/min_counter[5]  (.D(
        \geig_data_handling_0/I_14_1 ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_6), .Q(
        \geig_data_handling_0/min_counter[5]_net_1 ));
    DFN1E0 \test_harness_geiger_stack_0/data_buffer[44]  (.D(
        \test_harness_geiger_stack_0/data_buffer_5[44] ), .CLK(GLA), 
        .E(\test_harness_geiger_stack_0/set_0_RNI7I0G9_0_net_1 ), .Q(
        \test_harness_geiger_stack_0/data_buffer[44]_net_1 ));
    AX1C \geig_data_handling_0/geig_counts_RNO_0[2]  (.A(
        \geig_data_handling_0/geig_counts[0] ), .B(
        \geig_data_handling_0/geig_counts[1] ), .C(
        \geig_data_handling_0/geig_counts[2] ), .Y(
        \geig_data_handling_0/geig_counts_n2_tz ));
    IOTRI_OB_EB \D5_OUT_pad/U0/U1  (.D(D5_OUT_c), .E(VCC), .DOUT(
        \D5_OUT_pad/U0/NET1 ), .EOUT(\D5_OUT_pad/U0/NET2 ));
    IOPAD_IN \BUF2_PBRST_N_T9_pad/U0/U0  (.PAD(BUF2_PBRST_N_T9), .Y(
        \BUF2_PBRST_N_T9_pad/U0/NET1 ));
    XOR2 \timestamp_0/TIMESTAMP_n12  (.A(
        \timestamp_0/TIMESTAMP_c11_net_1 ), .B(
        \timestamp_0_TIMESTAMP[12] ), .Y(
        \timestamp_0/TIMESTAMP_n12_net_1 ));
    OR3 \test_harness_geiger_stack_0/data_prev_RNIGE5N[0]  (.A(
        \test_harness_geiger_stack_0/un1_TEST_DATA_31 ), .B(
        \test_harness_geiger_stack_0/un1_TEST_DATA_0 ), .C(
        \test_harness_geiger_stack_0/un1_TEST_DATA_NE_1 ), .Y(
        \test_harness_geiger_stack_0/un1_TEST_DATA_NE_22 ));
    XO1 \test_harness_geiger_stack_0/data_prev_RNIC00D[30]  (.A(
        \geig_data_handling_0_G_DATA_STACK[30] ), .B(
        \test_harness_geiger_stack_0/data_prev[30]_net_1 ), .C(
        \test_harness_geiger_stack_0/un1_TEST_DATA_29 ), .Y(
        \test_harness_geiger_stack_0/un1_TEST_DATA_NE_9 ));
    NOR2A \test_harness_geiger_stack_0/data_buffer_RNO[43]  (.A(
        \geig_data_handling_0_G_DATA_STACK[43] ), .B(
        \test_harness_geiger_stack_0/set ), .Y(
        \test_harness_geiger_stack_0/data_buffer_5[43] ));
    DFN1E0 \test_harness_geiger_stack_0/data_buffer[46]  (.D(
        \test_harness_geiger_stack_0/data_buffer_5[46] ), .CLK(GLA), 
        .E(\test_harness_geiger_stack_0/set_0_RNI7I0G9_0_net_1 ), .Q(
        \test_harness_geiger_stack_0/data_buffer[46]_net_1 ));
    XOR2 \geig_data_handling_0/un5_min_counter_I_14  (.A(
        \geig_data_handling_0/N_6 ), .B(
        \geig_data_handling_0/min_counter[5]_net_1 ), .Y(
        \geig_data_handling_0/I_14_1 ));
    AND3 \geig_data_handling_0/un5_min_counter_I_8  (.A(
        \geig_data_handling_0/min_counter[0]_net_1 ), .B(
        \geig_data_handling_0/min_counter[1]_net_1 ), .C(
        \geig_data_handling_0/min_counter[2]_net_1 ), .Y(
        \geig_data_handling_0/N_8 ));
    NOR2A \test_harness_geiger_stack_0/data_buffer_RNO[40]  (.A(
        \geig_data_handling_0_G_DATA_STACK[40] ), .B(
        \test_harness_geiger_stack_0/set ), .Y(
        \test_harness_geiger_stack_0/data_buffer_5[40] ));
    AND3 \clock_div_1MHZ_10HZ_0/un4_counter_1_I_30  (.A(
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[0] ), .B(
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[2] ), .C(
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[5] ), .Y(
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[6] ));
    IOPAD_TRI \D1_OUT_pad/U0/U0  (.D(\D1_OUT_pad/U0/NET1 ), .E(
        \D1_OUT_pad/U0/NET2 ), .PAD(D1_OUT));
    AND3 \clock_div_1MHZ_100KHZ_0/un5_counter_I_36  (.A(
        \clock_div_1MHZ_100KHZ_0/DWACT_FINC_E[6] ), .B(
        \clock_div_1MHZ_100KHZ_0/DWACT_FINC_E[7] ), .C(
        \clock_div_1MHZ_100KHZ_0/counter[12]_net_1 ), .Y(
        \clock_div_1MHZ_100KHZ_0/N_5 ));
    DFN1E0 \test_harness_geiger_stack_0/data_buffer[39]  (.D(
        \test_harness_geiger_stack_0/data_buffer_5[39] ), .CLK(GLA), 
        .E(\test_harness_geiger_stack_0/set_0_RNI7I0G9_0_net_1 ), .Q(
        \test_harness_geiger_stack_0/data_buffer[39]_net_1 ));
    NOR3A \clock_div_1MHZ_10HZ_0/counter_RNI89O61[16]  (.A(
        \clock_div_1MHZ_10HZ_0/counter[14]_net_1 ), .B(
        \clock_div_1MHZ_10HZ_0/counter[16]_net_1 ), .C(
        \clock_div_1MHZ_10HZ_0/counter[0]_net_1 ), .Y(
        \clock_div_1MHZ_10HZ_0/clk_out4_8 ));
    DFN1E1 \test_harness_geiger_stack_0/data_prev[11]  (.D(
        \geig_data_handling_0_G_DATA_STACK[11] ), .CLK(GLA), .E(
        reset_pulse_0_RESET_4), .Q(
        \test_harness_geiger_stack_0/data_prev[11]_net_1 ));
    DFN1E0 \test_harness_geiger_stack_0/data_buffer[19]  (.D(
        \test_harness_geiger_stack_0/data_buffer_5[19] ), .CLK(GLA), 
        .E(\test_harness_geiger_stack_0/un1_counter18_0 ), .Q(
        \test_harness_geiger_stack_0/data_buffer[19]_net_1 ));
    DFN1E1 \test_harness_geiger_stack_0/data_prev[40]  (.D(
        \geig_data_handling_0_G_DATA_STACK[40] ), .CLK(GLA), .E(
        reset_pulse_0_RESET_5), .Q(
        \test_harness_geiger_stack_0/data_prev[40]_net_1 ));
    MX2 \geig_data_handling_0/G_DATA_STACK_1[38]/U0  (.A(
        \geig_data_handling_0_G_DATA_STACK[38] ), .B(
        \geig_data_handling_0/geig_counts[6] ), .S(
        \geig_data_handling_0/N_46_1 ), .Y(
        \geig_data_handling_0/G_DATA_STACK_1[38]/Y ));
    DFN1C0 \geig_data_handling_0/G_DATA_STACK_1[34]/U1  (.D(
        \geig_data_handling_0/G_DATA_STACK_1[34]/Y ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_1), .Q(
        \geig_data_handling_0_G_DATA_STACK[34] ));
    MX2 \geig_data_handling_0/G_DATA_STACK_1[16]/U0  (.A(
        \geig_data_handling_0_G_DATA_STACK[16] ), .B(
        \timestamp_0_TIMESTAMP[8] ), .S(\geig_data_handling_0/N_46_0 ), 
        .Y(\geig_data_handling_0/G_DATA_STACK_1[16]/Y ));
    NOR3 \clock_div_1MHZ_100KHZ_0/counter_RNITBM91[16]  (.A(
        \clock_div_1MHZ_100KHZ_0/counter[15]_net_1 ), .B(
        \clock_div_1MHZ_100KHZ_0/counter[16]_net_1 ), .C(
        \clock_div_1MHZ_100KHZ_0/counter[3]_net_1 ), .Y(
        \clock_div_1MHZ_100KHZ_0/clk_out5_8 ));
    AOI1B \clock_div_1MHZ_10HZ_0/counter_RNO[6]  (.A(
        \clock_div_1MHZ_10HZ_0/clk_out4_14 ), .B(
        \clock_div_1MHZ_10HZ_0/clk_out4_13 ), .C(
        \clock_div_1MHZ_10HZ_0/I_17 ), .Y(
        \clock_div_1MHZ_10HZ_0/counter_3[6] ));
    DFN1C0 \clock_div_1MHZ_10HZ_0/counter[3]  (.D(
        \clock_div_1MHZ_10HZ_0/I_9 ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_6), .Q(
        \clock_div_1MHZ_10HZ_0/counter[3]_net_1 ));
    AND2 \clock_div_1MHZ_100KHZ_0/un5_counter_I_38  (.A(
        \clock_div_1MHZ_100KHZ_0/counter[12]_net_1 ), .B(
        \clock_div_1MHZ_100KHZ_0/counter[13]_net_1 ), .Y(
        \clock_div_1MHZ_100KHZ_0/DWACT_FINC_E[8] ));
    DFN1E1 \test_harness_geiger_stack_0/data_prev[31]  (.D(
        \geig_data_handling_0_G_DATA_STACK[31] ), .CLK(GLA), .E(
        reset_pulse_0_RESET_5), .Q(
        \test_harness_geiger_stack_0/data_prev[31]_net_1 ));
    MX2 \test_harness_geiger_stack_0/data_buffer_RNO[36]  (.A(
        \geig_data_handling_0_G_DATA_STACK[36] ), .B(
        \test_harness_geiger_stack_0/data_buffer[44]_net_1 ), .S(
        \test_harness_geiger_stack_0/set_1 ), .Y(
        \test_harness_geiger_stack_0/data_buffer_5[36] ));
    OR2 \reset_pulse_0/RESET_4  (.A(BUF2_PBRST_N_T9_c), .B(CLK_48MHZ_c)
        , .Y(reset_pulse_0_RESET_4));
    MX2 \test_harness_geiger_stack_0/data_buffer_RNO[22]  (.A(
        \geig_data_handling_0_G_DATA_STACK[22] ), .B(
        \test_harness_geiger_stack_0/data_buffer[30]_net_1 ), .S(
        \test_harness_geiger_stack_0/set_0 ), .Y(
        \test_harness_geiger_stack_0/data_buffer_5[22] ));
    NOR2A \geig_data_handling_0/geig_counts_RNO[12]  (.A(
        \geig_data_handling_0/geig_counts_n12_tz ), .B(
        \geig_data_handling_0/N_46 ), .Y(
        \geig_data_handling_0/geig_counts_n12 ));
    AND3 \clock_div_1MHZ_10HZ_0/un4_counter_1_I_8  (.A(
        \clock_div_1MHZ_10HZ_0/counter[0]_net_1 ), .B(
        \clock_div_1MHZ_10HZ_0/counter[1]_net_1 ), .C(
        \clock_div_1MHZ_10HZ_0/counter[2]_net_1 ), .Y(
        \clock_div_1MHZ_10HZ_0/N_15 ));
    AND3 \clock_div_1MHZ_10HZ_0/un4_counter_1_I_31  (.A(
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[6] ), .B(
        \clock_div_1MHZ_10HZ_0/counter[9]_net_1 ), .C(
        \clock_div_1MHZ_10HZ_0/counter[10]_net_1 ), .Y(
        \clock_div_1MHZ_10HZ_0/N_7 ));
    DFN1E1 \test_harness_geiger_stack_0/data_prev[46]  (.D(
        \geig_data_handling_0_G_DATA_STACK[46] ), .CLK(GLA), .E(
        reset_pulse_0_RESET_6), .Q(
        \test_harness_geiger_stack_0/data_prev[46]_net_1 ));
    MX2 \test_harness_geiger_stack_0/data_buffer_RNO[25]  (.A(
        \geig_data_handling_0_G_DATA_STACK[25] ), .B(
        \test_harness_geiger_stack_0/data_buffer[33]_net_1 ), .S(
        \test_harness_geiger_stack_0/set_0 ), .Y(
        \test_harness_geiger_stack_0/data_buffer_5[25] ));
    NOR3C \clock_div_1MHZ_10HZ_0/counter_RNIE50T2[1]  (.A(
        \clock_div_1MHZ_10HZ_0/clk_out4_6 ), .B(
        \clock_div_1MHZ_10HZ_0/clk_out4_5 ), .C(
        \clock_div_1MHZ_10HZ_0/clk_out4_12 ), .Y(
        \clock_div_1MHZ_10HZ_0/clk_out4_14 ));
    DFN1C0 \timestamp_0/TIMESTAMP[21]  (.D(
        \timestamp_0/TIMESTAMP_n21_net_1 ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(reset_pulse_0_RESET), 
        .Q(\timestamp_0_TIMESTAMP[21] ));
    DFN1E0 \test_harness_geiger_stack_0/data_buffer[20]  (.D(
        \test_harness_geiger_stack_0/data_buffer_5[20] ), .CLK(GLA), 
        .E(\test_harness_geiger_stack_0/un1_counter18_0 ), .Q(
        \test_harness_geiger_stack_0/data_buffer[20]_net_1 ));
    DFN1C0 \geig_data_handling_0/G_DATA_STACK_1[10]/U1  (.D(
        \geig_data_handling_0/G_DATA_STACK_1[10]/Y ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_0), .Q(
        \geig_data_handling_0_G_DATA_STACK[10] ));
    OR2 \reset_pulse_0/RESET_5  (.A(BUF2_PBRST_N_T9_c), .B(CLK_48MHZ_c)
        , .Y(reset_pulse_0_RESET_5));
    IOTRI_OB_EB \D0_OUT_pad/U0/U1  (.D(D0_OUT_c), .E(VCC), .DOUT(
        \D0_OUT_pad/U0/NET1 ), .EOUT(\D0_OUT_pad/U0/NET2 ));
    MX2 \geig_data_handling_0/G_DATA_STACK_1[33]/U0  (.A(
        \geig_data_handling_0_G_DATA_STACK[33] ), .B(
        \geig_data_handling_0/geig_counts[1] ), .S(
        \geig_data_handling_0/N_46_1 ), .Y(
        \geig_data_handling_0/G_DATA_STACK_1[33]/Y ));
    OR2 \reset_pulse_0/RESET  (.A(BUF2_PBRST_N_T9_c), .B(CLK_48MHZ_c), 
        .Y(reset_pulse_0_RESET));
    DFN1C0 \timestamp_0/TIMESTAMP[11]  (.D(
        \timestamp_0/TIMESTAMP_n11_net_1 ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_7), .Q(\timestamp_0_TIMESTAMP[11] ));
    MX2 \geig_data_handling_0/G_DATA_STACK_1[8]/U0  (.A(
        \geig_data_handling_0_G_DATA_STACK[8] ), .B(
        \timestamp_0_TIMESTAMP[0] ), .S(\geig_data_handling_0/N_46_0 ), 
        .Y(\geig_data_handling_0/G_DATA_STACK_1[8]/Y ));
    MX2 \geig_data_handling_0/G_DATA_STACK_1[39]/U0  (.A(
        \geig_data_handling_0_G_DATA_STACK[39] ), .B(
        \geig_data_handling_0/geig_counts[7] ), .S(
        \geig_data_handling_0/N_46_1 ), .Y(
        \geig_data_handling_0/G_DATA_STACK_1[39]/Y ));
    NOR3B \geig_data_handling_0/geig_counts_RNO_1[15]  (.A(
        \geig_data_handling_0/geig_counts[14] ), .B(
        \geig_data_handling_0/geig_counts_c13_out ), .C(
        \geig_data_handling_0/N_46 ), .Y(
        \geig_data_handling_0/geig_counts_31_1 ));
    DFN1C0 \geig_data_handling_0/geig_counts[15]/U1  (.D(
        \geig_data_handling_0/geig_counts[15]/Y ), .CLK(
        clock_div_1MHZ_100KHZ_0_CLK_100KHZ_OUT), .CLR(
        reset_pulse_0_RESET_2), .Q(
        \geig_data_handling_0/geig_counts[15] ));
    XOR2 \clock_div_1MHZ_100KHZ_0/un5_counter_I_5  (.A(
        \clock_div_1MHZ_100KHZ_0/counter[0]_net_1 ), .B(
        \clock_div_1MHZ_100KHZ_0/counter[1]_net_1 ), .Y(
        \clock_div_1MHZ_100KHZ_0/I_5_0 ));
    DFN1E0 \test_harness_geiger_stack_0/data_buffer[0]  (.D(
        \test_harness_geiger_stack_0/data_buffer_5[0] ), .CLK(GLA), .E(
        \test_harness_geiger_stack_0/set_0_RNI7I0G9_0_net_1 ), .Q(
        \test_harness_geiger_stack_0/data_buffer[0]_net_1 ));
    MX2 \geig_data_handling_0/G_DATA_STACK_1[10]/U0  (.A(
        \geig_data_handling_0_G_DATA_STACK[10] ), .B(
        \timestamp_0_TIMESTAMP[2] ), .S(\geig_data_handling_0/N_46_0 ), 
        .Y(\geig_data_handling_0/G_DATA_STACK_1[10]/Y ));
    NOR2A \geig_data_handling_0/shift_reg_RNIRKL2[4]  (.A(
        \geig_data_handling_0/shift_reg[4]_net_1 ), .B(
        \geig_data_handling_0/shift_reg[5]_net_1 ), .Y(
        \geig_data_handling_0/geig_counts10_3 ));
    NOR3B \geig_data_handling_0/min_counter_RNIP1E81[8]  (.A(
        \geig_data_handling_0/min_counter[6]_net_1 ), .B(
        \geig_data_handling_0/G_DATA_STACK6_2 ), .C(
        \geig_data_handling_0/min_counter[8]_net_1 ), .Y(
        \geig_data_handling_0/G_DATA_STACK6_5 ));
    XOR2 \clock_div_1MHZ_10HZ_0/un4_counter_1_I_14  (.A(
        \clock_div_1MHZ_10HZ_0/N_13 ), .B(
        \clock_div_1MHZ_10HZ_0/counter[5]_net_1 ), .Y(
        \clock_div_1MHZ_10HZ_0/I_14 ));
    NOR3A \clock_div_1MHZ_10HZ_0/counter_RNIEQN61[2]  (.A(
        \clock_div_1MHZ_10HZ_0/clk_out4_4 ), .B(
        \clock_div_1MHZ_10HZ_0/counter[7]_net_1 ), .C(
        \clock_div_1MHZ_10HZ_0/counter[2]_net_1 ), .Y(
        \clock_div_1MHZ_10HZ_0/clk_out4_10 ));
    DFN1E0 \test_harness_geiger_stack_0/data_buffer[30]  (.D(
        \test_harness_geiger_stack_0/data_buffer_5[30] ), .CLK(GLA), 
        .E(\test_harness_geiger_stack_0/un1_counter18_0 ), .Q(
        \test_harness_geiger_stack_0/data_buffer[30]_net_1 ));
    DFN1C0 \timestamp_0/TIMESTAMP[3]  (.D(
        \timestamp_0/TIMESTAMP_n3_net_1 ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_3), .Q(\timestamp_0_TIMESTAMP[3] ));
    AX1C \clock_div_1MHZ_100KHZ_0/un5_counter_I_26  (.A(
        \clock_div_1MHZ_100KHZ_0/counter[8]_net_1 ), .B(
        \clock_div_1MHZ_100KHZ_0/DWACT_FINC_E[4] ), .C(
        \clock_div_1MHZ_100KHZ_0/counter[9]_net_1 ), .Y(
        \clock_div_1MHZ_100KHZ_0/I_26_0 ));
    MX2 \test_harness_geiger_stack_0/data_buffer_RNO[16]  (.A(
        \geig_data_handling_0_G_DATA_STACK[16] ), .B(
        \test_harness_geiger_stack_0/data_buffer[24]_net_1 ), .S(
        \test_harness_geiger_stack_0/set_0 ), .Y(
        \test_harness_geiger_stack_0/data_buffer_5[16] ));
    AX1C \clock_div_1MHZ_10HZ_0/clk_out_RNO  (.A(
        \clock_div_1MHZ_10HZ_0/clk_out4_13 ), .B(
        \clock_div_1MHZ_10HZ_0/clk_out4_14 ), .C(
        \clock_div_1MHZ_10HZ_0/clk_out_i ), .Y(
        \clock_div_1MHZ_10HZ_0/clk_out_RNO_net_1 ));
    DFN1E0 \test_harness_geiger_stack_0/data_buffer[10]  (.D(
        \test_harness_geiger_stack_0/data_buffer_5[10] ), .CLK(GLA), 
        .E(\test_harness_geiger_stack_0/un1_counter18_0 ), .Q(
        \test_harness_geiger_stack_0/data_buffer[10]_net_1 ));
    IOIN_IB \BUF2_PBRST_N_T9_pad/U0/U1  (.YIN(
        \BUF2_PBRST_N_T9_pad/U0/NET1 ), .Y(BUF2_PBRST_N_T9_c));
    AND3 \clock_div_1MHZ_10HZ_0/un4_counter_1_I_19  (.A(
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[0] ), .B(
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[2] ), .C(
        \clock_div_1MHZ_10HZ_0/counter[6]_net_1 ), .Y(
        \clock_div_1MHZ_10HZ_0/N_11 ));
    DFN1C0 \geig_data_handling_0/G_DATA_STACK_1[16]/U1  (.D(
        \geig_data_handling_0/G_DATA_STACK_1[16]/Y ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_0), .Q(
        \geig_data_handling_0_G_DATA_STACK[16] ));
    XOR2 \timestamp_0/TIMESTAMP_n1  (.A(\timestamp_0_TIMESTAMP[0] ), 
        .B(\timestamp_0_TIMESTAMP[1] ), .Y(
        \timestamp_0/TIMESTAMP_n1_net_1 ));
    AX1C \timestamp_0/TIMESTAMP_n19  (.A(\timestamp_0_TIMESTAMP[18] ), 
        .B(\timestamp_0/TIMESTAMP_c17_net_1 ), .C(
        \timestamp_0_TIMESTAMP[19] ), .Y(
        \timestamp_0/TIMESTAMP_n19_net_1 ));
    MX2 \test_harness_geiger_stack_0/data_buffer_RNO[8]  (.A(
        \geig_data_handling_0_G_DATA_STACK[8] ), .B(
        \test_harness_geiger_stack_0/data_buffer[16]_net_1 ), .S(
        \test_harness_geiger_stack_0/set ), .Y(
        \test_harness_geiger_stack_0/data_buffer_5[8] ));
    AX1C \clock_div_1MHZ_10HZ_0/un4_counter_1_I_35  (.A(
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[7] ), .B(
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[6] ), .C(
        \clock_div_1MHZ_10HZ_0/counter[12]_net_1 ), .Y(
        \clock_div_1MHZ_10HZ_0/I_35 ));
    DFN1P0 \clock_div_1MHZ_10HZ_0/counter[0]  (.D(
        \clock_div_1MHZ_10HZ_0/I_4 ), .CLK(GLA), .PRE(
        reset_pulse_0_RESET_6), .Q(
        \clock_div_1MHZ_10HZ_0/counter[0]_net_1 ));
    XOR2 \clock_div_1MHZ_100KHZ_0/un5_counter_I_28  (.A(
        \clock_div_1MHZ_100KHZ_0/N_8 ), .B(
        \clock_div_1MHZ_100KHZ_0/counter[10]_net_1 ), .Y(
        \clock_div_1MHZ_100KHZ_0/I_28_0 ));
    DFN1C0 \geig_data_handling_0/geig_counts[12]/U1  (.D(
        \geig_data_handling_0/geig_counts[12]/Y ), .CLK(
        clock_div_1MHZ_100KHZ_0_CLK_100KHZ_OUT), .CLR(
        reset_pulse_0_RESET_2), .Q(
        \geig_data_handling_0/geig_counts[12] ));
    MX2 \test_harness_geiger_stack_0/data_buffer_RNO[27]  (.A(
        \geig_data_handling_0_G_DATA_STACK[27] ), .B(
        \test_harness_geiger_stack_0/data_buffer[35]_net_1 ), .S(
        \test_harness_geiger_stack_0/set_1 ), .Y(
        \test_harness_geiger_stack_0/data_buffer_5[27] ));
    DFN1C0 \timestamp_0/TIMESTAMP[9]  (.D(
        \timestamp_0/TIMESTAMP_n9_net_1 ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_3), .Q(\timestamp_0_TIMESTAMP[9] ));
    DFN1E1 \test_harness_geiger_stack_0/data_prev[23]  (.D(
        \geig_data_handling_0_G_DATA_STACK[23] ), .CLK(GLA), .E(
        reset_pulse_0_RESET_5), .Q(
        \test_harness_geiger_stack_0/data_prev[23]_net_1 ));
    XO1 \test_harness_geiger_stack_0/data_prev_RNIC00D[44]  (.A(
        \geig_data_handling_0_G_DATA_STACK[44] ), .B(
        \test_harness_geiger_stack_0/data_prev[44]_net_1 ), .C(
        \test_harness_geiger_stack_0/un1_TEST_DATA_15 ), .Y(
        \test_harness_geiger_stack_0/un1_TEST_DATA_NE_8 ));
    AND3 \clock_div_1MHZ_10HZ_0/un4_counter_1_I_22  (.A(
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[0] ), .B(
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[2] ), .C(
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[3] ), .Y(
        \clock_div_1MHZ_10HZ_0/N_10 ));
    NOR3C \timestamp_0/TIMESTAMP_m5_0_a2  (.A(
        \timestamp_0_TIMESTAMP[14] ), .B(\timestamp_0/TIMESTAMP_c13 ), 
        .C(\timestamp_0/TIMESTAMP_m5_0_a2_6_net_1 ), .Y(
        \timestamp_0/TIMESTAMP_N_12_mux_0 ));
    MX2 \test_harness_geiger_stack_0/data_chunk[2]/U0  (.A(D2_OUT_c), 
        .B(\test_harness_geiger_stack_0/data_buffer[2]_net_1 ), .S(
        \test_harness_geiger_stack_0/data_chunk7 ), .Y(
        \test_harness_geiger_stack_0/data_chunk[2]/Y ));
    DFN1C0 \geig_data_handling_0/G_DATA_STACK_1[18]/U1  (.D(
        \geig_data_handling_0/G_DATA_STACK_1[18]/Y ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_0), .Q(
        \geig_data_handling_0_G_DATA_STACK[18] ));
    DFN1C0 \geig_data_handling_0/shift_reg[6]  (.D(
        \geig_data_handling_0/shift_reg[5]_net_1 ), .CLK(
        clock_div_1MHZ_100KHZ_0_CLK_100KHZ_OUT), .CLR(
        reset_pulse_0_RESET_3), .Q(
        \geig_data_handling_0/shift_reg[6]_net_1 ));
    AND3 \geig_data_handling_0/un5_min_counter_I_13  (.A(
        \geig_data_handling_0/DWACT_FINC_E[0] ), .B(
        \geig_data_handling_0/min_counter[3]_net_1 ), .C(
        \geig_data_handling_0/min_counter[4]_net_1 ), .Y(
        \geig_data_handling_0/N_6 ));
    NOR3C \geig_data_handling_0/geig_counts_RNI2B6F[2]  (.A(
        \geig_data_handling_0/geig_counts[0] ), .B(
        \geig_data_handling_0/geig_counts[1] ), .C(
        \geig_data_handling_0/geig_counts[2] ), .Y(
        \geig_data_handling_0/geig_counts_c2 ));
    OR2B \test_harness_geiger_stack_0/set_0_RNI7I0G9  (.A(
        \test_harness_geiger_stack_0/un1_TEST_DATA_2[0] ), .B(
        reset_pulse_0_RESET_0), .Y(
        \test_harness_geiger_stack_0/un1_counter18_0 ));
    AND3 \clock_div_1MHZ_10HZ_0/un4_counter_1_I_42  (.A(
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[6] ), .B(
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[7] ), .C(
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[9] ), .Y(
        \clock_div_1MHZ_10HZ_0/N_3 ));
    XOR2 \clock_div_1MHZ_100KHZ_0/un5_counter_I_17  (.A(
        \clock_div_1MHZ_100KHZ_0/N_12 ), .B(
        \clock_div_1MHZ_100KHZ_0/counter[6]_net_1 ), .Y(
        \clock_div_1MHZ_100KHZ_0/I_17_0 ));
    MX2 \geig_data_handling_0/G_DATA_STACK_1[45]/U0  (.A(
        \geig_data_handling_0_G_DATA_STACK[45] ), .B(
        \geig_data_handling_0/geig_counts[13] ), .S(
        \geig_data_handling_0/N_46_1 ), .Y(
        \geig_data_handling_0/G_DATA_STACK_1[45]/Y ));
    NOR3C \timestamp_0/TIMESTAMP_m5_0_a2_5  (.A(
        \timestamp_0_TIMESTAMP[17] ), .B(\timestamp_0_TIMESTAMP[16] ), 
        .C(\timestamp_0/TIMESTAMP_m5_0_a2_3_net_1 ), .Y(
        \timestamp_0/TIMESTAMP_m5_0_a2_5_net_1 ));
    NOR3C \timestamp_0/TIMESTAMP_c10  (.A(\timestamp_0_TIMESTAMP[9] ), 
        .B(\timestamp_0/TIMESTAMP_c8_net_1 ), .C(
        \timestamp_0_TIMESTAMP[10] ), .Y(
        \timestamp_0/TIMESTAMP_c10_net_1 ));
    DFN1C0 \timestamp_0/TIMESTAMP[14]  (.D(
        \timestamp_0/TIMESTAMP_n14_net_1 ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(reset_pulse_0_RESET), 
        .Q(\timestamp_0_TIMESTAMP[14] ));
    DFN1E0 \test_harness_geiger_stack_0/data_buffer[45]  (.D(
        \test_harness_geiger_stack_0/data_buffer_5[45] ), .CLK(GLA), 
        .E(\test_harness_geiger_stack_0/set_0_RNI7I0G9_0_net_1 ), .Q(
        \test_harness_geiger_stack_0/data_buffer[45]_net_1 ));
    NOR3C \timestamp_0/TIMESTAMP_c15  (.A(\timestamp_0_TIMESTAMP[14] ), 
        .B(\timestamp_0/TIMESTAMP_c13 ), .C(
        \timestamp_0_TIMESTAMP[15] ), .Y(
        \timestamp_0/TIMESTAMP_c15_net_1 ));
    AND3 \clock_div_1MHZ_10HZ_0/un4_counter_1_I_10  (.A(
        \clock_div_1MHZ_10HZ_0/counter[0]_net_1 ), .B(
        \clock_div_1MHZ_10HZ_0/counter[1]_net_1 ), .C(
        \clock_div_1MHZ_10HZ_0/counter[2]_net_1 ), .Y(
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[0] ));
    DFN1C0 \test_harness_geiger_stack_0/counter[1]  (.D(
        \test_harness_geiger_stack_0/counter_4[1] ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_4), .Q(
        \test_harness_geiger_stack_0/counter[1]_net_1 ));
    XO1 \test_harness_geiger_stack_0/data_prev_RNIC00D[47]  (.A(
        \geig_data_handling_0_G_DATA_STACK[47] ), .B(
        \test_harness_geiger_stack_0/data_prev[47]_net_1 ), .C(
        \test_harness_geiger_stack_0/un1_TEST_DATA_12 ), .Y(
        \test_harness_geiger_stack_0/un1_TEST_DATA_NE_5 ));
    NOR3C \timestamp_0/TIMESTAMP_c8  (.A(\timestamp_0_TIMESTAMP[7] ), 
        .B(\timestamp_0/TIMESTAMP_c6_net_1 ), .C(
        \timestamp_0_TIMESTAMP[8] ), .Y(
        \timestamp_0/TIMESTAMP_c8_net_1 ));
    OR3 \test_harness_geiger_stack_0/data_prev_RNI48RP[22]  (.A(
        \test_harness_geiger_stack_0/un1_TEST_DATA_23 ), .B(
        \test_harness_geiger_stack_0/un1_TEST_DATA_24 ), .C(
        \test_harness_geiger_stack_0/un1_TEST_DATA_NE_15 ), .Y(
        \test_harness_geiger_stack_0/un1_TEST_DATA_NE_29 ));
    XOR2 \clock_div_1MHZ_100KHZ_0/un5_counter_I_14  (.A(
        \clock_div_1MHZ_100KHZ_0/N_13 ), .B(
        \clock_div_1MHZ_100KHZ_0/counter[5]_net_1 ), .Y(
        \clock_div_1MHZ_100KHZ_0/I_14_0 ));
    NOR2B \test_harness_geiger_stack_0/data_buffer_RNO[5]  (.A(
        \test_harness_geiger_stack_0/data_buffer[13]_net_1 ), .B(
        \test_harness_geiger_stack_0/set ), .Y(
        \test_harness_geiger_stack_0/data_buffer_5[5] ));
    DFN1C0 \clock_div_1MHZ_10HZ_0/counter[8]  (.D(
        \clock_div_1MHZ_10HZ_0/counter_3[8] ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_6), .Q(
        \clock_div_1MHZ_10HZ_0/counter[8]_net_1 ));
    MX2 \geig_data_handling_0/G_DATA_STACK_1[25]/U0  (.A(
        \geig_data_handling_0_G_DATA_STACK[25] ), .B(
        \timestamp_0_TIMESTAMP[17] ), .S(\geig_data_handling_0/N_46_0 )
        , .Y(\geig_data_handling_0/G_DATA_STACK_1[25]/Y ));
    XA1B \geig_data_handling_0/geig_counts_RNO[13]  (.A(
        \geig_data_handling_0/geig_counts_c12 ), .B(
        \geig_data_handling_0/geig_counts[13] ), .C(
        \geig_data_handling_0/N_46 ), .Y(
        \geig_data_handling_0/geig_counts_n13 ));
    DFN1C0 \geig_data_handling_0/shift_reg[5]  (.D(
        \geig_data_handling_0/shift_reg[4]_net_1 ), .CLK(
        clock_div_1MHZ_100KHZ_0_CLK_100KHZ_OUT), .CLR(
        reset_pulse_0_RESET_3), .Q(
        \geig_data_handling_0/shift_reg[5]_net_1 ));
    NOR2B \timestamp_0/TIMESTAMP_m5_0_a2_0  (.A(
        \timestamp_0_TIMESTAMP[22] ), .B(\timestamp_0_TIMESTAMP[19] ), 
        .Y(\timestamp_0/TIMESTAMP_m5_0_a2_0_net_1 ));
    DFN1C0 \clock_div_1MHZ_10HZ_0/counter[1]  (.D(
        \clock_div_1MHZ_10HZ_0/I_5 ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_6), .Q(
        \clock_div_1MHZ_10HZ_0/counter[1]_net_1 ));
    DFN1E1 \test_harness_geiger_stack_0/data_prev[24]  (.D(
        \geig_data_handling_0_G_DATA_STACK[24] ), .CLK(GLA), .E(
        reset_pulse_0_RESET_5), .Q(
        \test_harness_geiger_stack_0/data_prev[24]_net_1 ));
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule
