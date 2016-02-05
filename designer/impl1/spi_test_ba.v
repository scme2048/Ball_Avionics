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
    
    PLL_SDF #( .VCOFREQUENCY(208.000000) )  pll_sdf_0 (.CLKA(CLKA), 
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
    PLL_DLY_SDF #( .VCOFREQUENCY(208.000000) )  pll_dly_sdf_0 (.GLA(
        GLA), .LOCK(LOCK), .GLB(GLB), .YB(YB), .GLC(GLC), .YC(YC), 
        .GLAIN(GLADLY), .LOCKIN(LOCKDLY), .GLBIN(GLBDLY), .YBIN(YBDLY), 
        .GLCIN(GLCDLY), .YCIN(YCDLY), .EXTFBOUT(EXTFBDLY), .EXTFBIN(
        EXTFB), .VCOIN(VCODLY), .PLLOUT(FB));
    GND GND_power_inst1 (.Y(GND_power_net1));
    
endmodule


module spi_test(
       CLK_48MHZ,
       RESET,
       BUSY,
       CLK_SCK,
       MOSI
    );
input  CLK_48MHZ;
input  RESET;
output BUSY;
output CLK_SCK;
output MOSI;

    wire GLA, clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT, 
        clock_div_1MHZ_1KHZ_0_CLK_1KHZ_OUT, test_constants_spi_0_START, 
        \test_constants_spi_0_DATA[0] , \test_constants_spi_0_DATA[1] , 
        \test_constants_spi_0_DATA[2] , \test_constants_spi_0_DATA[3] , 
        \test_constants_spi_0_DATA[4] , \test_constants_spi_0_DATA[5] , 
        \test_constants_spi_0_DATA[6] , \test_constants_spi_0_DATA[7] , 
        \spi_master_0.state_q_83_d , CLK_48MHZ_c, RESET_c, CLK_SCK_c, 
        MOSI_c, RESET_c_0, RESET_c_1, 
        \test_constants_spi_0/test_constants_spi_0_START_i , 
        \test_constants_spi_0/test_constants_spi_0_DATA_i[0] , 
        \test_constants_spi_0/da_c5_net_1 , 
        \test_constants_spi_0/da_c4_net_1 , 
        \test_constants_spi_0/da_n1_net_1 , 
        \test_constants_spi_0/da_n5_net_1 , 
        \test_constants_spi_0/da_n6_net_1 , 
        \test_constants_spi_0/da_n7_net_1 , 
        \test_constants_spi_0/da_c2_net_1 , 
        \test_constants_spi_0/da_n2_net_1 , 
        \test_constants_spi_0/da_n3_net_1 , 
        \test_constants_spi_0/da_n4_net_1 , 
        \spi_master_0/state_q_ns_i_a2_0_0[1] , \spi_master_0/N_18 , 
        \spi_master_0/state_q_ns_i_a2_0_a2_1_0[1] , 
        \spi_master_0/N_28 , \spi_master_0/state_q_ns_i_a2_0_0[0] , 
        \spi_master_0/state_q[0]_net_1 , 
        \spi_master_0/state_q[1]_net_1 , \spi_master_0/ctr_q[2]_net_1 , 
        \spi_master_0/N_31_1 , \spi_master_0/N_152 , 
        \spi_master_0/ctr_q[0]_net_1 , \spi_master_0/ctr_q[1]_net_1 , 
        \spi_master_0/un1_ctr_q4_i , \spi_master_0/sck_q_3[1] , 
        \spi_master_0/N_21 , \spi_master_0/N_149 , 
        \spi_master_0/sck_q[1]_net_1 , \spi_master_0/sck_q[0]_net_1 , 
        \spi_master_0/ctr_qe , \spi_master_0/N_151 , 
        \spi_master_0/new_data_d_0_sqmuxa , \spi_master_0/N_26 , 
        \spi_master_0/data_q_3[6]_net_1 , 
        \spi_master_0/data_q[5]_net_1 , 
        \spi_master_0/data_q_3[5]_net_1 , 
        \spi_master_0/data_q[4]_net_1 , 
        \spi_master_0/data_q_3[4]_net_1 , 
        \spi_master_0/data_q[3]_net_1 , \spi_master_0/N_66 , 
        \spi_master_0/data_q[6]_net_1 , 
        \spi_master_0/un1_data_d_0_sqmuxa , \spi_master_0/N_65 , 
        \spi_master_0/N_64 , \spi_master_0/data_q_1[6]_net_1 , 
        \spi_master_0/data_q_1[5]_net_1 , 
        \spi_master_0/data_q_1[4]_net_1 , 
        \spi_master_0/mosi_q_RNO_net_1 , \spi_master_0/N_59 , 
        \spi_master_0/data_q[7]_net_1 , \spi_master_0/sck_q_3[0] , 
        \spi_master_0/N_33 , \spi_master_0/N_27 , 
        \spi_master_0/data_q_3[0]_net_1 , 
        \spi_master_0/data_q_3[7]_net_1 , 
        \spi_master_0/data_q_3[3]_net_1 , 
        \spi_master_0/data_q[2]_net_1 , 
        \spi_master_0/data_q_3[2]_net_1 , 
        \spi_master_0/data_q[1]_net_1 , 
        \spi_master_0/data_q_3[1]_net_1 , 
        \spi_master_0/data_q[0]_net_1 , \spi_master_0/N_67 , 
        \spi_master_0/N_63 , \spi_master_0/N_62 , \spi_master_0/N_61 , 
        \spi_master_0/N_60 , \spi_master_0/state_q_nss[1] , 
        \spi_master_0/state_q_nss[0] , 
        \spi_master_0/data_q_1[7]_net_1 , 
        \spi_master_0/data_q_1[3]_net_1 , 
        \spi_master_0/data_q_1[2]_net_1 , 
        \spi_master_0/data_q_1[1]_net_1 , 
        \spi_master_0/data_q_1[0]_net_1 , 
        \clock_div_1MHZ_1KHZ_0/clk_out_i , 
        \clock_div_1MHZ_1KHZ_0/counter[1]_net_1 , 
        \clock_div_1MHZ_1KHZ_0/counter[0]_net_1 , 
        \clock_div_1MHZ_1KHZ_0/counter[3]_net_1 , 
        \clock_div_1MHZ_1KHZ_0/DWACT_FINC_E[0] , 
        \clock_div_1MHZ_1KHZ_0/counter[8]_net_1 , 
        \clock_div_1MHZ_1KHZ_0/DWACT_FINC_E[4] , 
        \clock_div_1MHZ_1KHZ_0/DWACT_FINC_E[7] , 
        \clock_div_1MHZ_1KHZ_0/DWACT_FINC_E[6] , 
        \clock_div_1MHZ_1KHZ_0/clk_out5_13 , 
        \clock_div_1MHZ_1KHZ_0/clk_out5_5 , 
        \clock_div_1MHZ_1KHZ_0/clk_out5_4 , 
        \clock_div_1MHZ_1KHZ_0/clk_out5_11 , 
        \clock_div_1MHZ_1KHZ_0/clk_out5_12 , 
        \clock_div_1MHZ_1KHZ_0/clk_out5_1 , 
        \clock_div_1MHZ_1KHZ_0/clk_out5_0 , 
        \clock_div_1MHZ_1KHZ_0/clk_out5_9 , 
        \clock_div_1MHZ_1KHZ_0/counter[6]_net_1 , 
        \clock_div_1MHZ_1KHZ_0/clk_out5_7 , 
        \clock_div_1MHZ_1KHZ_0/counter[7]_net_1 , 
        \clock_div_1MHZ_1KHZ_0/clk_out5_3 , 
        \clock_div_1MHZ_1KHZ_0/counter[10]_net_1 , 
        \clock_div_1MHZ_1KHZ_0/counter[4]_net_1 , 
        \clock_div_1MHZ_1KHZ_0/counter[9]_net_1 , 
        \clock_div_1MHZ_1KHZ_0/counter[13]_net_1 , 
        \clock_div_1MHZ_1KHZ_0/counter[12]_net_1 , 
        \clock_div_1MHZ_1KHZ_0/counter[5]_net_1 , 
        \clock_div_1MHZ_1KHZ_0/counter[2]_net_1 , 
        \clock_div_1MHZ_1KHZ_0/counter[14]_net_1 , 
        \clock_div_1MHZ_1KHZ_0/counter[11]_net_1 , 
        \clock_div_1MHZ_1KHZ_0/counter[16]_net_1 , 
        \clock_div_1MHZ_1KHZ_0/counter[15]_net_1 , 
        \clock_div_1MHZ_1KHZ_0/clk_out_RNO_net_1 , 
        \clock_div_1MHZ_1KHZ_0/counter_3[8] , 
        \clock_div_1MHZ_1KHZ_0/I_23 , 
        \clock_div_1MHZ_1KHZ_0/counter_3[7] , 
        \clock_div_1MHZ_1KHZ_0/I_20 , 
        \clock_div_1MHZ_1KHZ_0/counter_3[6] , 
        \clock_div_1MHZ_1KHZ_0/I_17 , 
        \clock_div_1MHZ_1KHZ_0/counter_3[5] , 
        \clock_div_1MHZ_1KHZ_0/I_14 , 
        \clock_div_1MHZ_1KHZ_0/counter_3[4] , 
        \clock_div_1MHZ_1KHZ_0/I_12 , 
        \clock_div_1MHZ_1KHZ_0/counter_3[2] , 
        \clock_div_1MHZ_1KHZ_0/I_7 , \clock_div_1MHZ_1KHZ_0/I_4 , 
        \clock_div_1MHZ_1KHZ_0/I_5 , \clock_div_1MHZ_1KHZ_0/I_9 , 
        \clock_div_1MHZ_1KHZ_0/I_26 , \clock_div_1MHZ_1KHZ_0/I_28 , 
        \clock_div_1MHZ_1KHZ_0/I_32 , \clock_div_1MHZ_1KHZ_0/I_35 , 
        \clock_div_1MHZ_1KHZ_0/I_37 , \clock_div_1MHZ_1KHZ_0/I_40 , 
        \clock_div_1MHZ_1KHZ_0/I_43 , \clock_div_1MHZ_1KHZ_0/I_46 , 
        \clock_div_1MHZ_1KHZ_0/N_2 , 
        \clock_div_1MHZ_1KHZ_0/DWACT_FINC_E[10] , 
        \clock_div_1MHZ_1KHZ_0/DWACT_FINC_E[9] , 
        \clock_div_1MHZ_1KHZ_0/N_3 , \clock_div_1MHZ_1KHZ_0/N_4 , 
        \clock_div_1MHZ_1KHZ_0/DWACT_FINC_E[8] , 
        \clock_div_1MHZ_1KHZ_0/N_5 , \clock_div_1MHZ_1KHZ_0/N_7 , 
        \clock_div_1MHZ_1KHZ_0/DWACT_FINC_E[2] , 
        \clock_div_1MHZ_1KHZ_0/DWACT_FINC_E[5] , 
        \clock_div_1MHZ_1KHZ_0/N_8 , 
        \clock_div_1MHZ_1KHZ_0/DWACT_FINC_E[3] , 
        \clock_div_1MHZ_1KHZ_0/N_10 , \clock_div_1MHZ_1KHZ_0/N_11 , 
        \clock_div_1MHZ_1KHZ_0/N_12 , 
        \clock_div_1MHZ_1KHZ_0/DWACT_FINC_E[1] , 
        \clock_div_1MHZ_1KHZ_0/N_13 , \clock_div_1MHZ_1KHZ_0/N_15 , 
        \clock_div_26MHZ_1MHZ_0/clk_out_i , 
        \clock_div_26MHZ_1MHZ_0/counter[1]_net_1 , 
        \clock_div_26MHZ_1MHZ_0/counter[0]_net_1 , 
        \clock_div_26MHZ_1MHZ_0/counter[3]_net_1 , 
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[0] , 
        \clock_div_26MHZ_1MHZ_0/counter[8]_net_1 , 
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[4] , 
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[7] , 
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[6] , 
        \clock_div_26MHZ_1MHZ_0/clk_out5_14 , 
        \clock_div_26MHZ_1MHZ_0/clk_out5_6 , 
        \clock_div_26MHZ_1MHZ_0/clk_out5_5 , 
        \clock_div_26MHZ_1MHZ_0/clk_out5_12 , 
        \clock_div_26MHZ_1MHZ_0/clk_out5_13 , 
        \clock_div_26MHZ_1MHZ_0/clk_out5_2 , 
        \clock_div_26MHZ_1MHZ_0/clk_out5_1 , 
        \clock_div_26MHZ_1MHZ_0/clk_out5_10 , 
        \clock_div_26MHZ_1MHZ_0/clk_out5_8 , 
        \clock_div_26MHZ_1MHZ_0/counter[9]_net_1 , 
        \clock_div_26MHZ_1MHZ_0/clk_out5_4 , 
        \clock_div_26MHZ_1MHZ_0/counter[5]_net_1 , 
        \clock_div_26MHZ_1MHZ_0/counter[10]_net_1 , 
        \clock_div_26MHZ_1MHZ_0/counter[15]_net_1 , 
        \clock_div_26MHZ_1MHZ_0/counter[16]_net_1 , 
        \clock_div_26MHZ_1MHZ_0/counter[4]_net_1 , 
        \clock_div_26MHZ_1MHZ_0/counter[12]_net_1 , 
        \clock_div_26MHZ_1MHZ_0/counter[2]_net_1 , 
        \clock_div_26MHZ_1MHZ_0/counter[6]_net_1 , 
        \clock_div_26MHZ_1MHZ_0/counter[7]_net_1 , 
        \clock_div_26MHZ_1MHZ_0/counter[13]_net_1 , 
        \clock_div_26MHZ_1MHZ_0/counter[11]_net_1 , 
        \clock_div_26MHZ_1MHZ_0/counter[14]_net_1 , 
        \clock_div_26MHZ_1MHZ_0/clk_out_RNO_0 , 
        \clock_div_26MHZ_1MHZ_0/counter_3[0] , 
        \clock_div_26MHZ_1MHZ_0/counter_3[3] , 
        \clock_div_26MHZ_1MHZ_0/I_9_0 , 
        \clock_div_26MHZ_1MHZ_0/counter_3[2] , 
        \clock_div_26MHZ_1MHZ_0/I_7_0 , 
        \clock_div_26MHZ_1MHZ_0/counter_3[1] , 
        \clock_div_26MHZ_1MHZ_0/I_5_0 , 
        \clock_div_26MHZ_1MHZ_0/I_12_0 , 
        \clock_div_26MHZ_1MHZ_0/I_14_0 , 
        \clock_div_26MHZ_1MHZ_0/I_17_0 , 
        \clock_div_26MHZ_1MHZ_0/I_20_0 , 
        \clock_div_26MHZ_1MHZ_0/I_23_0 , 
        \clock_div_26MHZ_1MHZ_0/I_26_0 , 
        \clock_div_26MHZ_1MHZ_0/I_28_0 , 
        \clock_div_26MHZ_1MHZ_0/I_32_0 , 
        \clock_div_26MHZ_1MHZ_0/I_35_0 , 
        \clock_div_26MHZ_1MHZ_0/I_37_0 , 
        \clock_div_26MHZ_1MHZ_0/I_40_0 , 
        \clock_div_26MHZ_1MHZ_0/I_43_0 , 
        \clock_div_26MHZ_1MHZ_0/I_46_0 , \clock_div_26MHZ_1MHZ_0/N_2 , 
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[10] , 
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[9] , 
        \clock_div_26MHZ_1MHZ_0/N_3 , \clock_div_26MHZ_1MHZ_0/N_4 , 
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[8] , 
        \clock_div_26MHZ_1MHZ_0/N_5 , \clock_div_26MHZ_1MHZ_0/N_7 , 
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[2] , 
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[5] , 
        \clock_div_26MHZ_1MHZ_0/N_8 , 
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[3] , 
        \clock_div_26MHZ_1MHZ_0/N_10 , \clock_div_26MHZ_1MHZ_0/N_11 , 
        \clock_div_26MHZ_1MHZ_0/N_12 , 
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[1] , 
        \clock_div_26MHZ_1MHZ_0/N_13 , \clock_div_26MHZ_1MHZ_0/N_15 , 
        GND, VCC, \MOSI_pad/U0/NET1 , \MOSI_pad/U0/NET2 , 
        \CLK_48MHZ_pad/U0/NET1 , \RESET_pad/U0/NET1 , 
        \BUSY_pad/U0/NET1 , \BUSY_pad/U0/NET2 , \CLK_SCK_pad/U0/NET1 , 
        \CLK_SCK_pad/U0/NET2 , AFLSDF_VCC, AFLSDF_GND;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign GND = GND_power_net1;
    assign AFLSDF_GND = GND_power_net1;
    assign VCC = VCC_power_net1;
    assign AFLSDF_VCC = VCC_power_net1;
    
    AND3 \clock_div_1MHZ_1KHZ_0/un5_counter_I_19  (.A(
        \clock_div_1MHZ_1KHZ_0/DWACT_FINC_E[0] ), .B(
        \clock_div_1MHZ_1KHZ_0/DWACT_FINC_E[2] ), .C(
        \clock_div_1MHZ_1KHZ_0/counter[6]_net_1 ), .Y(
        \clock_div_1MHZ_1KHZ_0/N_11 ));
    NOR2B \spi_master_0/state_q_RNO_2[1]  (.A(
        \spi_master_0/ctr_q[2]_net_1 ), .B(\spi_master_0/N_31_1 ), .Y(
        \spi_master_0/state_q_ns_i_a2_0_a2_1_0[1] ));
    NOR2A \clock_div_26MHZ_1MHZ_0/counter_RNIO87A[2]  (.A(
        \clock_div_26MHZ_1MHZ_0/counter[2]_net_1 ), .B(
        \clock_div_26MHZ_1MHZ_0/counter[6]_net_1 ), .Y(
        \clock_div_26MHZ_1MHZ_0/clk_out5_4 ));
    MX2 \spi_master_0/data_q_0[6]  (.A(\spi_master_0/data_q[6]_net_1 ), 
        .B(\spi_master_0/data_q_3[6]_net_1 ), .S(
        \spi_master_0/un1_data_d_0_sqmuxa ), .Y(\spi_master_0/N_66 ));
    NOR2 \clock_div_26MHZ_1MHZ_0/counter_RNIB9ND[7]  (.A(
        \clock_div_26MHZ_1MHZ_0/counter[7]_net_1 ), .B(
        \clock_div_26MHZ_1MHZ_0/counter[13]_net_1 ), .Y(
        \clock_div_26MHZ_1MHZ_0/clk_out5_2 ));
    DFN1C1 \clock_div_1MHZ_1KHZ_0/counter[6]  (.D(
        \clock_div_1MHZ_1KHZ_0/counter_3[6] ), .CLK(
        clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT), .CLR(RESET_c), .Q(
        \clock_div_1MHZ_1KHZ_0/counter[6]_net_1 ));
    AX1C \test_constants_spi_0/da_n4  (.A(
        \test_constants_spi_0_DATA[3] ), .B(
        \test_constants_spi_0/da_c2_net_1 ), .C(
        \test_constants_spi_0_DATA[4] ), .Y(
        \test_constants_spi_0/da_n4_net_1 ));
    AND3 \clock_div_1MHZ_1KHZ_0/un5_counter_I_36  (.A(
        \clock_div_1MHZ_1KHZ_0/DWACT_FINC_E[6] ), .B(
        \clock_div_1MHZ_1KHZ_0/DWACT_FINC_E[7] ), .C(
        \clock_div_1MHZ_1KHZ_0/counter[12]_net_1 ), .Y(
        \clock_div_1MHZ_1KHZ_0/N_5 ));
    AND3 \clock_div_26MHZ_1MHZ_0/un5_counter_I_33  (.A(
        \clock_div_26MHZ_1MHZ_0/counter[9]_net_1 ), .B(
        \clock_div_26MHZ_1MHZ_0/counter[10]_net_1 ), .C(
        \clock_div_26MHZ_1MHZ_0/counter[11]_net_1 ), .Y(
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[7] ));
    DFN1C1 \clock_div_1MHZ_1KHZ_0/counter[14]  (.D(
        \clock_div_1MHZ_1KHZ_0/I_40 ), .CLK(
        clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT), .CLR(RESET_c_1), .Q(
        \clock_div_1MHZ_1KHZ_0/counter[14]_net_1 ));
    XOR2 \clock_div_1MHZ_1KHZ_0/un5_counter_I_23  (.A(
        \clock_div_1MHZ_1KHZ_0/N_10 ), .B(
        \clock_div_1MHZ_1KHZ_0/counter[8]_net_1 ), .Y(
        \clock_div_1MHZ_1KHZ_0/I_23 ));
    NOR2A \spi_master_0/data_q_1[7]  (.A(\spi_master_0/N_67 ), .B(
        RESET_c), .Y(\spi_master_0/data_q_1[7]_net_1 ));
    DFN1C1 \clock_div_1MHZ_1KHZ_0/counter[3]  (.D(
        \clock_div_1MHZ_1KHZ_0/I_9 ), .CLK(
        clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT), .CLR(RESET_c), .Q(
        \clock_div_1MHZ_1KHZ_0/counter[3]_net_1 ));
    AND2 \clock_div_26MHZ_1MHZ_0/un5_counter_I_44  (.A(
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[7] ), .B(
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[9] ), .Y(
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[10] ));
    NOR2 \clock_div_26MHZ_1MHZ_0/counter_RNISC7A[4]  (.A(
        \clock_div_26MHZ_1MHZ_0/counter[4]_net_1 ), .B(
        \clock_div_26MHZ_1MHZ_0/counter[8]_net_1 ), .Y(
        \clock_div_26MHZ_1MHZ_0/clk_out5_6 ));
    NOR2B \spi_master_0/state_q_RNO_3[1]  (.A(
        \spi_master_0/state_q[0]_net_1 ), .B(
        \spi_master_0/state_q[1]_net_1 ), .Y(\spi_master_0/N_28 ));
    AO1B \clock_div_26MHZ_1MHZ_0/counter_RNO[0]  (.A(
        \clock_div_26MHZ_1MHZ_0/clk_out5_14 ), .B(
        \clock_div_26MHZ_1MHZ_0/clk_out5_13 ), .C(
        \clock_div_26MHZ_1MHZ_0/counter[0]_net_1 ), .Y(
        \clock_div_26MHZ_1MHZ_0/counter_3[0] ));
    DFN1C1 \clock_div_1MHZ_1KHZ_0/counter[11]  (.D(
        \clock_div_1MHZ_1KHZ_0/I_32 ), .CLK(
        clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT), .CLR(RESET_c_1), .Q(
        \clock_div_1MHZ_1KHZ_0/counter[11]_net_1 ));
    XOR2 \clock_div_1MHZ_1KHZ_0/un5_counter_I_32  (.A(
        \clock_div_1MHZ_1KHZ_0/N_7 ), .B(
        \clock_div_1MHZ_1KHZ_0/counter[11]_net_1 ), .Y(
        \clock_div_1MHZ_1KHZ_0/I_32 ));
    AND2 \clock_div_26MHZ_1MHZ_0/un5_counter_I_15  (.A(
        \clock_div_26MHZ_1MHZ_0/counter[3]_net_1 ), .B(
        \clock_div_26MHZ_1MHZ_0/counter[4]_net_1 ), .Y(
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[1] ));
    DFN1C1 \clock_div_26MHZ_1MHZ_0/counter[4]  (.D(
        \clock_div_26MHZ_1MHZ_0/I_12_0 ), .CLK(GLA), .CLR(RESET_c_0), 
        .Q(\clock_div_26MHZ_1MHZ_0/counter[4]_net_1 ));
    XOR2 \clock_div_26MHZ_1MHZ_0/un5_counter_I_37  (.A(
        \clock_div_26MHZ_1MHZ_0/N_5 ), .B(
        \clock_div_26MHZ_1MHZ_0/counter[13]_net_1 ), .Y(
        \clock_div_26MHZ_1MHZ_0/I_37_0 ));
    XOR2 \clock_div_1MHZ_1KHZ_0/un5_counter_I_40  (.A(
        \clock_div_1MHZ_1KHZ_0/N_4 ), .B(
        \clock_div_1MHZ_1KHZ_0/counter[14]_net_1 ), .Y(
        \clock_div_1MHZ_1KHZ_0/I_40 ));
    DFN1C1 \clock_div_26MHZ_1MHZ_0/counter[3]  (.D(
        \clock_div_26MHZ_1MHZ_0/counter_3[3] ), .CLK(GLA), .CLR(
        RESET_c_0), .Q(\clock_div_26MHZ_1MHZ_0/counter[3]_net_1 ));
    DFN1 \spi_master_0/data_q[4]  (.D(\spi_master_0/data_q_1[4]_net_1 )
        , .CLK(GLA), .Q(\spi_master_0/data_q[4]_net_1 ));
    AND3 \clock_div_26MHZ_1MHZ_0/un5_counter_I_16  (.A(
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[0] ), .B(
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[1] ), .C(
        \clock_div_26MHZ_1MHZ_0/counter[5]_net_1 ), .Y(
        \clock_div_26MHZ_1MHZ_0/N_12 ));
    XOR2 \test_constants_spi_0/da_n5  (.A(
        \test_constants_spi_0/da_c4_net_1 ), .B(
        \test_constants_spi_0_DATA[5] ), .Y(
        \test_constants_spi_0/da_n5_net_1 ));
    AND3 \clock_div_1MHZ_1KHZ_0/un5_counter_I_18  (.A(
        \clock_div_1MHZ_1KHZ_0/counter[3]_net_1 ), .B(
        \clock_div_1MHZ_1KHZ_0/counter[4]_net_1 ), .C(
        \clock_div_1MHZ_1KHZ_0/counter[5]_net_1 ), .Y(
        \clock_div_1MHZ_1KHZ_0/DWACT_FINC_E[2] ));
    AX1C \clock_div_1MHZ_1KHZ_0/un5_counter_I_7  (.A(
        \clock_div_1MHZ_1KHZ_0/counter[1]_net_1 ), .B(
        \clock_div_1MHZ_1KHZ_0/counter[0]_net_1 ), .C(
        \clock_div_1MHZ_1KHZ_0/counter[2]_net_1 ), .Y(
        \clock_div_1MHZ_1KHZ_0/I_7 ));
    NOR2 \clock_div_1MHZ_1KHZ_0/counter_RNI87FR[1]  (.A(
        \clock_div_1MHZ_1KHZ_0/counter[9]_net_1 ), .B(
        \clock_div_1MHZ_1KHZ_0/counter[1]_net_1 ), .Y(
        \clock_div_1MHZ_1KHZ_0/clk_out5_5 ));
    MX2 \spi_master_0/data_q_0[7]  (.A(\spi_master_0/data_q[7]_net_1 ), 
        .B(\spi_master_0/data_q_3[7]_net_1 ), .S(
        \spi_master_0/un1_data_d_0_sqmuxa ), .Y(\spi_master_0/N_67 ));
    DFN1C1 \clock_div_1MHZ_1KHZ_0/counter[16]  (.D(
        \clock_div_1MHZ_1KHZ_0/I_46 ), .CLK(
        clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT), .CLR(RESET_c_1), .Q(
        \clock_div_1MHZ_1KHZ_0/counter[16]_net_1 ));
    XOR2 \clock_div_1MHZ_1KHZ_0/un5_counter_I_5  (.A(
        \clock_div_1MHZ_1KHZ_0/counter[0]_net_1 ), .B(
        \clock_div_1MHZ_1KHZ_0/counter[1]_net_1 ), .Y(
        \clock_div_1MHZ_1KHZ_0/I_5 ));
    AX1C \clock_div_1MHZ_1KHZ_0/un5_counter_I_35  (.A(
        \clock_div_1MHZ_1KHZ_0/DWACT_FINC_E[7] ), .B(
        \clock_div_1MHZ_1KHZ_0/DWACT_FINC_E[6] ), .C(
        \clock_div_1MHZ_1KHZ_0/counter[12]_net_1 ), .Y(
        \clock_div_1MHZ_1KHZ_0/I_35 ));
    NOR2B \clock_div_1MHZ_1KHZ_0/counter_RNI54FR[2]  (.A(
        \clock_div_1MHZ_1KHZ_0/counter[5]_net_1 ), .B(
        \clock_div_1MHZ_1KHZ_0/counter[2]_net_1 ), .Y(
        \clock_div_1MHZ_1KHZ_0/clk_out5_3 ));
    AND2 \clock_div_26MHZ_1MHZ_0/un5_counter_I_38  (.A(
        \clock_div_26MHZ_1MHZ_0/counter[12]_net_1 ), .B(
        \clock_div_26MHZ_1MHZ_0/counter[13]_net_1 ), .Y(
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[8] ));
    DFN1C1 \test_constants_spi_0/da[3]  (.D(
        \test_constants_spi_0/da_n3_net_1 ), .CLK(
        clock_div_1MHZ_1KHZ_0_CLK_1KHZ_OUT), .CLR(RESET_c_0), .Q(
        \test_constants_spi_0_DATA[3] ));
    OR2B \spi_master_0/ctr_q_RNIBS9K[1]  (.A(
        \spi_master_0/ctr_q[1]_net_1 ), .B(
        \spi_master_0/ctr_q[0]_net_1 ), .Y(\spi_master_0/N_18 ));
    AOI1B \clock_div_1MHZ_1KHZ_0/counter_RNO[4]  (.A(
        \clock_div_1MHZ_1KHZ_0/clk_out5_13 ), .B(
        \clock_div_1MHZ_1KHZ_0/clk_out5_12 ), .C(
        \clock_div_1MHZ_1KHZ_0/I_12 ), .Y(
        \clock_div_1MHZ_1KHZ_0/counter_3[4] ));
    XOR2 \clock_div_26MHZ_1MHZ_0/un5_counter_I_40  (.A(
        \clock_div_26MHZ_1MHZ_0/N_4 ), .B(
        \clock_div_26MHZ_1MHZ_0/counter[14]_net_1 ), .Y(
        \clock_div_26MHZ_1MHZ_0/I_40_0 ));
    AX1C \clock_div_26MHZ_1MHZ_0/un5_counter_I_26  (.A(
        \clock_div_26MHZ_1MHZ_0/counter[8]_net_1 ), .B(
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[4] ), .C(
        \clock_div_26MHZ_1MHZ_0/counter[9]_net_1 ), .Y(
        \clock_div_26MHZ_1MHZ_0/I_26_0 ));
    AX1C \clock_div_1MHZ_1KHZ_0/un5_counter_I_26  (.A(
        \clock_div_1MHZ_1KHZ_0/counter[8]_net_1 ), .B(
        \clock_div_1MHZ_1KHZ_0/DWACT_FINC_E[4] ), .C(
        \clock_div_1MHZ_1KHZ_0/counter[9]_net_1 ), .Y(
        \clock_div_1MHZ_1KHZ_0/I_26 ));
    NOR2 \clock_div_26MHZ_1MHZ_0/counter_RNIN27H[11]  (.A(
        \clock_div_26MHZ_1MHZ_0/counter[11]_net_1 ), .B(
        \clock_div_26MHZ_1MHZ_0/counter[14]_net_1 ), .Y(
        \clock_div_26MHZ_1MHZ_0/clk_out5_1 ));
    NOR2A \spi_master_0/data_q_1[4]  (.A(\spi_master_0/N_64 ), .B(
        RESET_c), .Y(\spi_master_0/data_q_1[4]_net_1 ));
    NOR2A \spi_master_0/sck_q_RNISE6G[1]  (.A(
        \spi_master_0/state_q[1]_net_1 ), .B(
        \spi_master_0/sck_q[1]_net_1 ), .Y(CLK_SCK_c));
    DFN1E1 \spi_master_0/ctr_q[1]  (.D(\spi_master_0/N_152 ), .CLK(GLA)
        , .E(\spi_master_0/ctr_qe ), .Q(\spi_master_0/ctr_q[1]_net_1 ));
    AND2 \clock_div_26MHZ_1MHZ_0/un5_counter_I_21  (.A(
        \clock_div_26MHZ_1MHZ_0/counter[6]_net_1 ), .B(
        \clock_div_26MHZ_1MHZ_0/counter[7]_net_1 ), .Y(
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[3] ));
    XOR2 \spi_master_0/un1_sck_q_2_1_SUM1  (.A(
        \spi_master_0/sck_q[1]_net_1 ), .B(
        \spi_master_0/sck_q[0]_net_1 ), .Y(\spi_master_0/N_149 ));
    DFN1P1 \clock_div_26MHZ_1MHZ_0/counter[0]  (.D(
        \clock_div_26MHZ_1MHZ_0/counter_3[0] ), .CLK(GLA), .PRE(
        RESET_c_0), .Q(\clock_div_26MHZ_1MHZ_0/counter[0]_net_1 ));
    IOPAD_TRI \BUSY_pad/U0/U0  (.D(\BUSY_pad/U0/NET1 ), .E(
        \BUSY_pad/U0/NET2 ), .PAD(BUSY));
    DFN1C1 \test_constants_spi_0/da[1]  (.D(
        \test_constants_spi_0/da_n1_net_1 ), .CLK(
        clock_div_1MHZ_1KHZ_0_CLK_1KHZ_OUT), .CLR(RESET_c_0), .Q(
        \test_constants_spi_0_DATA[1] ));
    OR3B \spi_master_0/sck_q_RNI8ILG[1]  (.A(
        \spi_master_0/sck_q[0]_net_1 ), .B(
        \spi_master_0/state_q[0]_net_1 ), .C(
        \spi_master_0/sck_q[1]_net_1 ), .Y(\spi_master_0/N_21 ));
    OR2 \spi_master_0/state_q_RNIRHEV[0]  (.A(
        \spi_master_0/state_q[0]_net_1 ), .B(
        \spi_master_0/state_q[1]_net_1 ), .Y(
        \spi_master_0.state_q_83_d ));
    DFN1C1 \clock_div_26MHZ_1MHZ_0/counter[7]  (.D(
        \clock_div_26MHZ_1MHZ_0/I_20_0 ), .CLK(GLA), .CLR(RESET_c_0), 
        .Q(\clock_div_26MHZ_1MHZ_0/counter[7]_net_1 ));
    AND3 \clock_div_1MHZ_1KHZ_0/un5_counter_I_22  (.A(
        \clock_div_1MHZ_1KHZ_0/DWACT_FINC_E[0] ), .B(
        \clock_div_1MHZ_1KHZ_0/DWACT_FINC_E[2] ), .C(
        \clock_div_1MHZ_1KHZ_0/DWACT_FINC_E[3] ), .Y(
        \clock_div_1MHZ_1KHZ_0/N_10 ));
    DFN1C1 \test_constants_spi_0/da[4]  (.D(
        \test_constants_spi_0/da_n4_net_1 ), .CLK(
        clock_div_1MHZ_1KHZ_0_CLK_1KHZ_OUT), .CLR(RESET_c_0), .Q(
        \test_constants_spi_0_DATA[4] ));
    AND3 \clock_div_1MHZ_1KHZ_0/un5_counter_I_24  (.A(
        \clock_div_1MHZ_1KHZ_0/DWACT_FINC_E[0] ), .B(
        \clock_div_1MHZ_1KHZ_0/DWACT_FINC_E[2] ), .C(
        \clock_div_1MHZ_1KHZ_0/DWACT_FINC_E[3] ), .Y(
        \clock_div_1MHZ_1KHZ_0/DWACT_FINC_E[4] ));
    PLLBA \CLK_26MHZ_0/Core  (.CLKA(CLK_48MHZ_c), .EXTFB(GND), 
        .POWERDOWN(VCC), .GLA(GLA), .LOCK(), .GLB(), .YB(), .GLC(), 
        .YC(), .OADIV0(VCC), .OADIV1(VCC), .OADIV2(VCC), .OADIV3(GND), 
        .OADIV4(GND), .OAMUX0(GND), .OAMUX1(GND), .OAMUX2(VCC), 
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
        .FINDIV4(GND), .FINDIV5(GND), .FINDIV6(GND), .FBDIV0(GND), 
        .FBDIV1(VCC), .FBDIV2(VCC), .FBDIV3(GND), .FBDIV4(GND), 
        .FBDIV5(VCC), .FBDIV6(GND), .FBDLY0(GND), .FBDLY1(GND), 
        .FBDLY2(GND), .FBDLY3(GND), .FBDLY4(GND), .FBSEL0(VCC), 
        .FBSEL1(GND), .XDLYSEL(GND), .VCOSEL0(GND), .VCOSEL1(VCC), 
        .VCOSEL2(VCC));
    DFN1E1 \spi_master_0/ctr_q[2]  (.D(\spi_master_0/N_151 ), .CLK(GLA)
        , .E(\spi_master_0/ctr_qe ), .Q(\spi_master_0/ctr_q[2]_net_1 ));
    AND3 \clock_div_1MHZ_1KHZ_0/un5_counter_I_41  (.A(
        \clock_div_1MHZ_1KHZ_0/counter[12]_net_1 ), .B(
        \clock_div_1MHZ_1KHZ_0/counter[13]_net_1 ), .C(
        \clock_div_1MHZ_1KHZ_0/counter[14]_net_1 ), .Y(
        \clock_div_1MHZ_1KHZ_0/DWACT_FINC_E[9] ));
    XOR2 \clock_div_1MHZ_1KHZ_0/un5_counter_I_17  (.A(
        \clock_div_1MHZ_1KHZ_0/N_12 ), .B(
        \clock_div_1MHZ_1KHZ_0/counter[6]_net_1 ), .Y(
        \clock_div_1MHZ_1KHZ_0/I_17 ));
    AND3 \clock_div_1MHZ_1KHZ_0/un5_counter_I_39  (.A(
        \clock_div_1MHZ_1KHZ_0/DWACT_FINC_E[6] ), .B(
        \clock_div_1MHZ_1KHZ_0/DWACT_FINC_E[7] ), .C(
        \clock_div_1MHZ_1KHZ_0/DWACT_FINC_E[8] ), .Y(
        \clock_div_1MHZ_1KHZ_0/N_4 ));
    NOR3B \spi_master_0/sck_q_RNI9JLG[1]  (.A(
        \spi_master_0/sck_q[0]_net_1 ), .B(
        \spi_master_0/state_q[1]_net_1 ), .C(
        \spi_master_0/sck_q[1]_net_1 ), .Y(\spi_master_0/N_33 ));
    BUFF RESET_pad_RNIN4HC_0 (.A(RESET_c), .Y(RESET_c_1));
    DFN1C1 \clock_div_1MHZ_1KHZ_0/counter[13]  (.D(
        \clock_div_1MHZ_1KHZ_0/I_37 ), .CLK(
        clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT), .CLR(RESET_c_1), .Q(
        \clock_div_1MHZ_1KHZ_0/counter[13]_net_1 ));
    NOR2 \clock_div_1MHZ_1KHZ_0/counter_RNI5DBA[13]  (.A(
        \clock_div_1MHZ_1KHZ_0/counter[13]_net_1 ), .B(
        \clock_div_1MHZ_1KHZ_0/counter[12]_net_1 ), .Y(
        \clock_div_1MHZ_1KHZ_0/clk_out5_4 ));
    AO1A \spi_master_0/sck_q_RNIFNQT1[1]  (.A(
        \spi_master_0.state_q_83_d ), .B(test_constants_spi_0_START), 
        .C(\spi_master_0/N_33 ), .Y(\spi_master_0/un1_data_d_0_sqmuxa )
        );
    XOR2 \clock_div_26MHZ_1MHZ_0/un5_counter_I_14  (.A(
        \clock_div_26MHZ_1MHZ_0/N_13 ), .B(
        \clock_div_26MHZ_1MHZ_0/counter[5]_net_1 ), .Y(
        \clock_div_26MHZ_1MHZ_0/I_14_0 ));
    AND3 \clock_div_26MHZ_1MHZ_0/un5_counter_I_42  (.A(
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[6] ), .B(
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[7] ), .C(
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[9] ), .Y(
        \clock_div_26MHZ_1MHZ_0/N_3 ));
    NOR3A \clock_div_26MHZ_1MHZ_0/counter_RNIUCUN[5]  (.A(
        \clock_div_26MHZ_1MHZ_0/clk_out5_4 ), .B(
        \clock_div_26MHZ_1MHZ_0/counter[5]_net_1 ), .C(
        \clock_div_26MHZ_1MHZ_0/counter[10]_net_1 ), .Y(
        \clock_div_26MHZ_1MHZ_0/clk_out5_10 ));
    XOR2 \clock_div_1MHZ_1KHZ_0/un5_counter_I_43  (.A(
        \clock_div_1MHZ_1KHZ_0/N_3 ), .B(
        \clock_div_1MHZ_1KHZ_0/counter[15]_net_1 ), .Y(
        \clock_div_1MHZ_1KHZ_0/I_43 ));
    DFN1C1 \test_constants_spi_0/da[0]  (.D(
        \test_constants_spi_0/test_constants_spi_0_DATA_i[0] ), .CLK(
        clock_div_1MHZ_1KHZ_0_CLK_1KHZ_OUT), .CLR(RESET_c_0), .Q(
        \test_constants_spi_0_DATA[0] ));
    DFN1C1 \clock_div_1MHZ_1KHZ_0/counter[15]  (.D(
        \clock_div_1MHZ_1KHZ_0/I_43 ), .CLK(
        clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT), .CLR(RESET_c_1), .Q(
        \clock_div_1MHZ_1KHZ_0/counter[15]_net_1 ));
    INV \test_constants_spi_0/da_RNO[0]  (.A(
        \test_constants_spi_0_DATA[0] ), .Y(
        \test_constants_spi_0/test_constants_spi_0_DATA_i[0] ));
    AX1C \clock_div_26MHZ_1MHZ_0/un5_counter_I_35  (.A(
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[7] ), .B(
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[6] ), .C(
        \clock_div_26MHZ_1MHZ_0/counter[12]_net_1 ), .Y(
        \clock_div_26MHZ_1MHZ_0/I_35_0 ));
    DFN1 \spi_master_0/state_q[0]  (.D(\spi_master_0/state_q_nss[0] ), 
        .CLK(GLA), .Q(\spi_master_0/state_q[0]_net_1 ));
    DFN1E1 \spi_master_0/ctr_q[0]  (.D(\spi_master_0/N_26 ), .CLK(GLA), 
        .E(\spi_master_0/ctr_qe ), .Q(\spi_master_0/ctr_q[0]_net_1 ));
    AOI1B \clock_div_1MHZ_1KHZ_0/counter_RNO[2]  (.A(
        \clock_div_1MHZ_1KHZ_0/clk_out5_13 ), .B(
        \clock_div_1MHZ_1KHZ_0/clk_out5_12 ), .C(
        \clock_div_1MHZ_1KHZ_0/I_7 ), .Y(
        \clock_div_1MHZ_1KHZ_0/counter_3[2] ));
    AND3 \clock_div_26MHZ_1MHZ_0/un5_counter_I_24  (.A(
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[0] ), .B(
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[2] ), .C(
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[3] ), .Y(
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[4] ));
    NOR3C \test_constants_spi_0/da_c2  (.A(
        \test_constants_spi_0_DATA[0] ), .B(
        \test_constants_spi_0_DATA[1] ), .C(
        \test_constants_spi_0_DATA[2] ), .Y(
        \test_constants_spi_0/da_c2_net_1 ));
    NOR3B \clock_div_1MHZ_1KHZ_0/counter_RNIRDCE1[10]  (.A(
        \clock_div_1MHZ_1KHZ_0/counter[7]_net_1 ), .B(
        \clock_div_1MHZ_1KHZ_0/clk_out5_3 ), .C(
        \clock_div_1MHZ_1KHZ_0/counter[10]_net_1 ), .Y(
        \clock_div_1MHZ_1KHZ_0/clk_out5_9 ));
    AX1C \clock_div_26MHZ_1MHZ_0/un5_counter_I_7  (.A(
        \clock_div_26MHZ_1MHZ_0/counter[1]_net_1 ), .B(
        \clock_div_26MHZ_1MHZ_0/counter[0]_net_1 ), .C(
        \clock_div_26MHZ_1MHZ_0/counter[2]_net_1 ), .Y(
        \clock_div_26MHZ_1MHZ_0/I_7_0 ));
    AND3 \clock_div_26MHZ_1MHZ_0/un5_counter_I_36  (.A(
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[6] ), .B(
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[7] ), .C(
        \clock_div_26MHZ_1MHZ_0/counter[12]_net_1 ), .Y(
        \clock_div_26MHZ_1MHZ_0/N_5 ));
    AND3 \clock_div_26MHZ_1MHZ_0/un5_counter_I_31  (.A(
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[6] ), .B(
        \clock_div_26MHZ_1MHZ_0/counter[9]_net_1 ), .C(
        \clock_div_26MHZ_1MHZ_0/counter[10]_net_1 ), .Y(
        \clock_div_26MHZ_1MHZ_0/N_7 ));
    AND2 \clock_div_1MHZ_1KHZ_0/un5_counter_I_38  (.A(
        \clock_div_1MHZ_1KHZ_0/counter[12]_net_1 ), .B(
        \clock_div_1MHZ_1KHZ_0/counter[13]_net_1 ), .Y(
        \clock_div_1MHZ_1KHZ_0/DWACT_FINC_E[8] ));
    NOR3A \spi_master_0/state_q_RNO[0]  (.A(\spi_master_0/N_21 ), .B(
        \spi_master_0/state_q_ns_i_a2_0_0[0] ), .C(RESET_c), .Y(
        \spi_master_0/state_q_nss[0] ));
    AND3 \clock_div_1MHZ_1KHZ_0/un5_counter_I_29  (.A(
        \clock_div_1MHZ_1KHZ_0/counter[6]_net_1 ), .B(
        \clock_div_1MHZ_1KHZ_0/counter[7]_net_1 ), .C(
        \clock_div_1MHZ_1KHZ_0/counter[8]_net_1 ), .Y(
        \clock_div_1MHZ_1KHZ_0/DWACT_FINC_E[5] ));
    MX2 \spi_master_0/data_q_3[1]  (.A(\test_constants_spi_0_DATA[1] ), 
        .B(\spi_master_0/data_q[0]_net_1 ), .S(
        \spi_master_0/state_q[1]_net_1 ), .Y(
        \spi_master_0/data_q_3[1]_net_1 ));
    NOR2A \spi_master_0/data_q_1[2]  (.A(\spi_master_0/N_62 ), .B(
        RESET_c), .Y(\spi_master_0/data_q_1[2]_net_1 ));
    AND3 \clock_div_26MHZ_1MHZ_0/un5_counter_I_10  (.A(
        \clock_div_26MHZ_1MHZ_0/counter[0]_net_1 ), .B(
        \clock_div_26MHZ_1MHZ_0/counter[1]_net_1 ), .C(
        \clock_div_26MHZ_1MHZ_0/counter[2]_net_1 ), .Y(
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[0] ));
    DFN1C1 \clock_div_26MHZ_1MHZ_0/counter[1]  (.D(
        \clock_div_26MHZ_1MHZ_0/counter_3[1] ), .CLK(GLA), .CLR(
        RESET_c_0), .Q(\clock_div_26MHZ_1MHZ_0/counter[1]_net_1 ));
    NOR2A \clock_div_1MHZ_1KHZ_0/counter_RNI54FR[4]  (.A(
        \clock_div_1MHZ_1KHZ_0/counter[4]_net_1 ), .B(
        \clock_div_1MHZ_1KHZ_0/counter[3]_net_1 ), .Y(
        \clock_div_1MHZ_1KHZ_0/clk_out5_7 ));
    OR2A \spi_master_0/state_q_RNIIMVB1[0]  (.A(
        \spi_master_0.state_q_83_d ), .B(RESET_c), .Y(
        \spi_master_0/un1_ctr_q4_i ));
    XOR2 \clock_div_1MHZ_1KHZ_0/un5_counter_I_46  (.A(
        \clock_div_1MHZ_1KHZ_0/N_2 ), .B(
        \clock_div_1MHZ_1KHZ_0/counter[16]_net_1 ), .Y(
        \clock_div_1MHZ_1KHZ_0/I_46 ));
    DFN1C1 \clock_div_1MHZ_1KHZ_0/counter[9]  (.D(
        \clock_div_1MHZ_1KHZ_0/I_26 ), .CLK(
        clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT), .CLR(RESET_c), .Q(
        \clock_div_1MHZ_1KHZ_0/counter[9]_net_1 ));
    MX2 \spi_master_0/data_q_0[2]  (.A(\spi_master_0/data_q[2]_net_1 ), 
        .B(\spi_master_0/data_q_3[2]_net_1 ), .S(
        \spi_master_0/un1_data_d_0_sqmuxa ), .Y(\spi_master_0/N_62 ));
    NOR3A \clock_div_26MHZ_1MHZ_0/counter_RNI5PAM[16]  (.A(
        \clock_div_26MHZ_1MHZ_0/counter[0]_net_1 ), .B(
        \clock_div_26MHZ_1MHZ_0/counter[15]_net_1 ), .C(
        \clock_div_26MHZ_1MHZ_0/counter[16]_net_1 ), .Y(
        \clock_div_26MHZ_1MHZ_0/clk_out5_8 ));
    XOR2 \clock_div_26MHZ_1MHZ_0/un5_counter_I_20  (.A(
        \clock_div_26MHZ_1MHZ_0/N_11 ), .B(
        \clock_div_26MHZ_1MHZ_0/counter[7]_net_1 ), .Y(
        \clock_div_26MHZ_1MHZ_0/I_20_0 ));
    MX2 \spi_master_0/data_q_0[1]  (.A(\spi_master_0/data_q[1]_net_1 ), 
        .B(\spi_master_0/data_q_3[1]_net_1 ), .S(
        \spi_master_0/un1_data_d_0_sqmuxa ), .Y(\spi_master_0/N_61 ));
    NOR3C \clock_div_26MHZ_1MHZ_0/counter_RNI0PSM1[5]  (.A(
        \clock_div_26MHZ_1MHZ_0/clk_out5_2 ), .B(
        \clock_div_26MHZ_1MHZ_0/clk_out5_1 ), .C(
        \clock_div_26MHZ_1MHZ_0/clk_out5_10 ), .Y(
        \clock_div_26MHZ_1MHZ_0/clk_out5_13 ));
    DFN1C1 \clock_div_26MHZ_1MHZ_0/counter[16]  (.D(
        \clock_div_26MHZ_1MHZ_0/I_46_0 ), .CLK(GLA), .CLR(RESET_c_1), 
        .Q(\clock_div_26MHZ_1MHZ_0/counter[16]_net_1 ));
    XOR2 \test_constants_spi_0/da_n3  (.A(
        \test_constants_spi_0/da_c2_net_1 ), .B(
        \test_constants_spi_0_DATA[3] ), .Y(
        \test_constants_spi_0/da_n3_net_1 ));
    DFN1C1 \test_constants_spi_0/da[6]  (.D(
        \test_constants_spi_0/da_n6_net_1 ), .CLK(
        clock_div_1MHZ_1KHZ_0_CLK_1KHZ_OUT), .CLR(RESET_c_0), .Q(
        \test_constants_spi_0_DATA[6] ));
    NOR2A \spi_master_0/data_q_1[1]  (.A(\spi_master_0/N_61 ), .B(
        RESET_c), .Y(\spi_master_0/data_q_1[1]_net_1 ));
    NOR2 \spi_master_0/sck_q_RNO[0]  (.A(\spi_master_0/un1_ctr_q4_i ), 
        .B(\spi_master_0/sck_q[0]_net_1 ), .Y(
        \spi_master_0/sck_q_3[0] ));
    DFN1 \spi_master_0/data_q[5]  (.D(\spi_master_0/data_q_1[5]_net_1 )
        , .CLK(GLA), .Q(\spi_master_0/data_q[5]_net_1 ));
    INV \clock_div_1MHZ_1KHZ_0/un5_counter_I_4  (.A(
        \clock_div_1MHZ_1KHZ_0/counter[0]_net_1 ), .Y(
        \clock_div_1MHZ_1KHZ_0/I_4 ));
    BUFF RESET_pad_RNIN4HC (.A(RESET_c), .Y(RESET_c_0));
    AND3 \clock_div_1MHZ_1KHZ_0/un5_counter_I_42  (.A(
        \clock_div_1MHZ_1KHZ_0/DWACT_FINC_E[6] ), .B(
        \clock_div_1MHZ_1KHZ_0/DWACT_FINC_E[7] ), .C(
        \clock_div_1MHZ_1KHZ_0/DWACT_FINC_E[9] ), .Y(
        \clock_div_1MHZ_1KHZ_0/N_3 ));
    AND2 \clock_div_1MHZ_1KHZ_0/un5_counter_I_44  (.A(
        \clock_div_1MHZ_1KHZ_0/DWACT_FINC_E[7] ), .B(
        \clock_div_1MHZ_1KHZ_0/DWACT_FINC_E[9] ), .Y(
        \clock_div_1MHZ_1KHZ_0/DWACT_FINC_E[10] ));
    XA1B \spi_master_0/ctr_q_RNO[1]  (.A(\spi_master_0/ctr_q[0]_net_1 )
        , .B(\spi_master_0/ctr_q[1]_net_1 ), .C(
        \spi_master_0/un1_ctr_q4_i ), .Y(\spi_master_0/N_152 ));
    AX1C \test_constants_spi_0/da_n7  (.A(
        \test_constants_spi_0_DATA[6] ), .B(
        \test_constants_spi_0/da_c5_net_1 ), .C(
        \test_constants_spi_0_DATA[7] ), .Y(
        \test_constants_spi_0/da_n7_net_1 ));
    DFN1C1 \clock_div_26MHZ_1MHZ_0/counter[15]  (.D(
        \clock_div_26MHZ_1MHZ_0/I_43_0 ), .CLK(GLA), .CLR(RESET_c_1), 
        .Q(\clock_div_26MHZ_1MHZ_0/counter[15]_net_1 ));
    AOI1B \clock_div_1MHZ_1KHZ_0/counter_RNO[5]  (.A(
        \clock_div_1MHZ_1KHZ_0/clk_out5_13 ), .B(
        \clock_div_1MHZ_1KHZ_0/clk_out5_12 ), .C(
        \clock_div_1MHZ_1KHZ_0/I_14 ), .Y(
        \clock_div_1MHZ_1KHZ_0/counter_3[5] ));
    AOI1B \clock_div_26MHZ_1MHZ_0/counter_RNO[1]  (.A(
        \clock_div_26MHZ_1MHZ_0/clk_out5_14 ), .B(
        \clock_div_26MHZ_1MHZ_0/clk_out5_13 ), .C(
        \clock_div_26MHZ_1MHZ_0/I_5_0 ), .Y(
        \clock_div_26MHZ_1MHZ_0/counter_3[1] ));
    DFN1C1 \clock_div_26MHZ_1MHZ_0/counter[11]  (.D(
        \clock_div_26MHZ_1MHZ_0/I_32_0 ), .CLK(GLA), .CLR(RESET_c_1), 
        .Q(\clock_div_26MHZ_1MHZ_0/counter[11]_net_1 ));
    MX2 \spi_master_0/data_q_3[6]  (.A(\test_constants_spi_0_DATA[6] ), 
        .B(\spi_master_0/data_q[5]_net_1 ), .S(
        \spi_master_0/state_q[1]_net_1 ), .Y(
        \spi_master_0/data_q_3[6]_net_1 ));
    XOR2 \clock_div_1MHZ_1KHZ_0/un5_counter_I_37  (.A(
        \clock_div_1MHZ_1KHZ_0/N_5 ), .B(
        \clock_div_1MHZ_1KHZ_0/counter[13]_net_1 ), .Y(
        \clock_div_1MHZ_1KHZ_0/I_37 ));
    AND3 \clock_div_1MHZ_1KHZ_0/un5_counter_I_10  (.A(
        \clock_div_1MHZ_1KHZ_0/counter[0]_net_1 ), .B(
        \clock_div_1MHZ_1KHZ_0/counter[1]_net_1 ), .C(
        \clock_div_1MHZ_1KHZ_0/counter[2]_net_1 ), .Y(
        \clock_div_1MHZ_1KHZ_0/DWACT_FINC_E[0] ));
    DFN1 \spi_master_0/sck_q[0]  (.D(\spi_master_0/sck_q_3[0] ), .CLK(
        GLA), .Q(\spi_master_0/sck_q[0]_net_1 ));
    AX1C \clock_div_26MHZ_1MHZ_0/un5_counter_I_12  (.A(
        \clock_div_26MHZ_1MHZ_0/counter[3]_net_1 ), .B(
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[0] ), .C(
        \clock_div_26MHZ_1MHZ_0/counter[4]_net_1 ), .Y(
        \clock_div_26MHZ_1MHZ_0/I_12_0 ));
    XOR2 \clock_div_1MHZ_1KHZ_0/un5_counter_I_28  (.A(
        \clock_div_1MHZ_1KHZ_0/N_8 ), .B(
        \clock_div_1MHZ_1KHZ_0/counter[10]_net_1 ), .Y(
        \clock_div_1MHZ_1KHZ_0/I_28 ));
    NOR2A \spi_master_0/mosi_q_RNO_1  (.A(CLK_SCK_c), .B(
        \spi_master_0/sck_q[0]_net_1 ), .Y(
        \spi_master_0/new_data_d_0_sqmuxa ));
    DFN1 \spi_master_0/data_q[7]  (.D(\spi_master_0/data_q_1[7]_net_1 )
        , .CLK(GLA), .Q(\spi_master_0/data_q[7]_net_1 ));
    XA1C \spi_master_0/ctr_q_RNO[2]  (.A(\spi_master_0/N_18 ), .B(
        \spi_master_0/ctr_q[2]_net_1 ), .C(\spi_master_0/un1_ctr_q4_i )
        , .Y(\spi_master_0/N_151 ));
    NOR2 \clock_div_1MHZ_1KHZ_0/counter_RNIBJBA[16]  (.A(
        \clock_div_1MHZ_1KHZ_0/counter[16]_net_1 ), .B(
        \clock_div_1MHZ_1KHZ_0/counter[15]_net_1 ), .Y(
        \clock_div_1MHZ_1KHZ_0/clk_out5_0 ));
    DFN1C1 \clock_div_26MHZ_1MHZ_0/counter[10]  (.D(
        \clock_div_26MHZ_1MHZ_0/I_28_0 ), .CLK(GLA), .CLR(RESET_c_1), 
        .Q(\clock_div_26MHZ_1MHZ_0/counter[10]_net_1 ));
    AOI1B \clock_div_1MHZ_1KHZ_0/counter_RNO[7]  (.A(
        \clock_div_1MHZ_1KHZ_0/clk_out5_13 ), .B(
        \clock_div_1MHZ_1KHZ_0/clk_out5_12 ), .C(
        \clock_div_1MHZ_1KHZ_0/I_20 ), .Y(
        \clock_div_1MHZ_1KHZ_0/counter_3[7] ));
    AND3 \clock_div_1MHZ_1KHZ_0/un5_counter_I_45  (.A(
        \clock_div_1MHZ_1KHZ_0/DWACT_FINC_E[6] ), .B(
        \clock_div_1MHZ_1KHZ_0/DWACT_FINC_E[10] ), .C(
        \clock_div_1MHZ_1KHZ_0/counter[15]_net_1 ), .Y(
        \clock_div_1MHZ_1KHZ_0/N_2 ));
    MX2 \spi_master_0/data_q_0[4]  (.A(\spi_master_0/data_q[4]_net_1 ), 
        .B(\spi_master_0/data_q_3[4]_net_1 ), .S(
        \spi_master_0/un1_data_d_0_sqmuxa ), .Y(\spi_master_0/N_64 ));
    DFN1 \spi_master_0/data_q[3]  (.D(\spi_master_0/data_q_1[3]_net_1 )
        , .CLK(GLA), .Q(\spi_master_0/data_q[3]_net_1 ));
    IOIN_IB \CLK_48MHZ_pad/U0/U1  (.YIN(\CLK_48MHZ_pad/U0/NET1 ), .Y(
        CLK_48MHZ_c));
    AND3 \clock_div_26MHZ_1MHZ_0/un5_counter_I_22  (.A(
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[0] ), .B(
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[2] ), .C(
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[3] ), .Y(
        \clock_div_26MHZ_1MHZ_0/N_10 ));
    DFN1C1 \clock_div_1MHZ_1KHZ_0/counter[10]  (.D(
        \clock_div_1MHZ_1KHZ_0/I_28 ), .CLK(
        clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT), .CLR(RESET_c_1), .Q(
        \clock_div_1MHZ_1KHZ_0/counter[10]_net_1 ));
    AND3 \clock_div_1MHZ_1KHZ_0/un5_counter_I_8  (.A(
        \clock_div_1MHZ_1KHZ_0/counter[0]_net_1 ), .B(
        \clock_div_1MHZ_1KHZ_0/counter[1]_net_1 ), .C(
        \clock_div_1MHZ_1KHZ_0/counter[2]_net_1 ), .Y(
        \clock_div_1MHZ_1KHZ_0/N_15 ));
    DFN1C1 \clock_div_26MHZ_1MHZ_0/counter[8]  (.D(
        \clock_div_26MHZ_1MHZ_0/I_23_0 ), .CLK(GLA), .CLR(RESET_c_0), 
        .Q(\clock_div_26MHZ_1MHZ_0/counter[8]_net_1 ));
    MX2 \spi_master_0/data_q_3[2]  (.A(\test_constants_spi_0_DATA[2] ), 
        .B(\spi_master_0/data_q[1]_net_1 ), .S(
        \spi_master_0/state_q[1]_net_1 ), .Y(
        \spi_master_0/data_q_3[2]_net_1 ));
    IOPAD_IN \CLK_48MHZ_pad/U0/U0  (.PAD(CLK_48MHZ), .Y(
        \CLK_48MHZ_pad/U0/NET1 ));
    NOR3C \clock_div_1MHZ_1KHZ_0/counter_RNIBE332[10]  (.A(
        \clock_div_1MHZ_1KHZ_0/clk_out5_1 ), .B(
        \clock_div_1MHZ_1KHZ_0/clk_out5_0 ), .C(
        \clock_div_1MHZ_1KHZ_0/clk_out5_9 ), .Y(
        \clock_div_1MHZ_1KHZ_0/clk_out5_12 ));
    DFN1 \spi_master_0/mosi_q  (.D(\spi_master_0/mosi_q_RNO_net_1 ), 
        .CLK(GLA), .Q(MOSI_c));
    DFN1 \spi_master_0/state_q[1]  (.D(\spi_master_0/state_q_nss[1] ), 
        .CLK(GLA), .Q(\spi_master_0/state_q[1]_net_1 ));
    MX2 \spi_master_0/mosi_q_RNO_0  (.A(MOSI_c), .B(
        \spi_master_0/data_q[7]_net_1 ), .S(
        \spi_master_0/new_data_d_0_sqmuxa ), .Y(\spi_master_0/N_59 ));
    IOPAD_TRI \CLK_SCK_pad/U0/U0  (.D(\CLK_SCK_pad/U0/NET1 ), .E(
        \CLK_SCK_pad/U0/NET2 ), .PAD(CLK_SCK));
    AO1A \spi_master_0/state_q_RNIQ8LS1[0]  (.A(
        \spi_master_0/state_q[0]_net_1 ), .B(\spi_master_0/N_31_1 ), 
        .C(\spi_master_0/un1_ctr_q4_i ), .Y(\spi_master_0/ctr_qe ));
    AND3 \clock_div_26MHZ_1MHZ_0/un5_counter_I_30  (.A(
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[0] ), .B(
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[2] ), .C(
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[5] ), .Y(
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[6] ));
    AND3 \clock_div_1MHZ_1KHZ_0/un5_counter_I_27  (.A(
        \clock_div_1MHZ_1KHZ_0/DWACT_FINC_E[4] ), .B(
        \clock_div_1MHZ_1KHZ_0/counter[8]_net_1 ), .C(
        \clock_div_1MHZ_1KHZ_0/counter[9]_net_1 ), .Y(
        \clock_div_1MHZ_1KHZ_0/N_8 ));
    XOR2 \clock_div_26MHZ_1MHZ_0/un5_counter_I_43  (.A(
        \clock_div_26MHZ_1MHZ_0/N_3 ), .B(
        \clock_div_26MHZ_1MHZ_0/counter[15]_net_1 ), .Y(
        \clock_div_26MHZ_1MHZ_0/I_43_0 ));
    XOR2 \test_constants_spi_0/da_n1  (.A(
        \test_constants_spi_0_DATA[1] ), .B(
        \test_constants_spi_0_DATA[0] ), .Y(
        \test_constants_spi_0/da_n1_net_1 ));
    ULSICC_INT INT_ULSICC_INSTANCE_0 (.USTDBY(GND), .LPENA(GND));
    AND3 \clock_div_26MHZ_1MHZ_0/un5_counter_I_19  (.A(
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[0] ), .B(
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[2] ), .C(
        \clock_div_26MHZ_1MHZ_0/counter[6]_net_1 ), .Y(
        \clock_div_26MHZ_1MHZ_0/N_11 ));
    AOI1B \clock_div_26MHZ_1MHZ_0/counter_RNO[2]  (.A(
        \clock_div_26MHZ_1MHZ_0/clk_out5_14 ), .B(
        \clock_div_26MHZ_1MHZ_0/clk_out5_13 ), .C(
        \clock_div_26MHZ_1MHZ_0/I_7_0 ), .Y(
        \clock_div_26MHZ_1MHZ_0/counter_3[2] ));
    INV \test_constants_spi_0/st_RNO  (.A(test_constants_spi_0_START), 
        .Y(\test_constants_spi_0/test_constants_spi_0_START_i ));
    DFN1 \spi_master_0/data_q[6]  (.D(\spi_master_0/data_q_1[6]_net_1 )
        , .CLK(GLA), .Q(\spi_master_0/data_q[6]_net_1 ));
    MX2 \spi_master_0/data_q_0[3]  (.A(\spi_master_0/data_q[3]_net_1 ), 
        .B(\spi_master_0/data_q_3[3]_net_1 ), .S(
        \spi_master_0/un1_data_d_0_sqmuxa ), .Y(\spi_master_0/N_63 ));
    XOR2 \clock_div_1MHZ_1KHZ_0/un5_counter_I_9  (.A(
        \clock_div_1MHZ_1KHZ_0/N_15 ), .B(
        \clock_div_1MHZ_1KHZ_0/counter[3]_net_1 ), .Y(
        \clock_div_1MHZ_1KHZ_0/I_9 ));
    DFN1 \spi_master_0/sck_q[1]  (.D(\spi_master_0/sck_q_3[1] ), .CLK(
        GLA), .Q(\spi_master_0/sck_q[1]_net_1 ));
    MX2 \spi_master_0/data_q_0[0]  (.A(\spi_master_0/data_q[0]_net_1 ), 
        .B(\spi_master_0/data_q_3[0]_net_1 ), .S(
        \spi_master_0/un1_data_d_0_sqmuxa ), .Y(\spi_master_0/N_60 ));
    AOI1B \clock_div_1MHZ_1KHZ_0/counter_RNO[8]  (.A(
        \clock_div_1MHZ_1KHZ_0/clk_out5_13 ), .B(
        \clock_div_1MHZ_1KHZ_0/clk_out5_12 ), .C(
        \clock_div_1MHZ_1KHZ_0/I_23 ), .Y(
        \clock_div_1MHZ_1KHZ_0/counter_3[8] ));
    AX1C \test_constants_spi_0/da_n2  (.A(
        \test_constants_spi_0_DATA[0] ), .B(
        \test_constants_spi_0_DATA[1] ), .C(
        \test_constants_spi_0_DATA[2] ), .Y(
        \test_constants_spi_0/da_n2_net_1 ));
    AND3 \clock_div_26MHZ_1MHZ_0/un5_counter_I_8  (.A(
        \clock_div_26MHZ_1MHZ_0/counter[0]_net_1 ), .B(
        \clock_div_26MHZ_1MHZ_0/counter[1]_net_1 ), .C(
        \clock_div_26MHZ_1MHZ_0/counter[2]_net_1 ), .Y(
        \clock_div_26MHZ_1MHZ_0/N_15 ));
    DFN1 \spi_master_0/data_q[0]  (.D(\spi_master_0/data_q_1[0]_net_1 )
        , .CLK(GLA), .Q(\spi_master_0/data_q[0]_net_1 ));
    MX2 \spi_master_0/data_q_3[7]  (.A(\test_constants_spi_0_DATA[7] ), 
        .B(\spi_master_0/data_q[6]_net_1 ), .S(
        \spi_master_0/state_q[1]_net_1 ), .Y(
        \spi_master_0/data_q_3[7]_net_1 ));
    DFN1 \spi_master_0/data_q[1]  (.D(\spi_master_0/data_q_1[1]_net_1 )
        , .CLK(GLA), .Q(\spi_master_0/data_q[1]_net_1 ));
    AND3 \clock_div_26MHZ_1MHZ_0/un5_counter_I_29  (.A(
        \clock_div_26MHZ_1MHZ_0/counter[6]_net_1 ), .B(
        \clock_div_26MHZ_1MHZ_0/counter[7]_net_1 ), .C(
        \clock_div_26MHZ_1MHZ_0/counter[8]_net_1 ), .Y(
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[5] ));
    AND3 \clock_div_1MHZ_1KHZ_0/un5_counter_I_13  (.A(
        \clock_div_1MHZ_1KHZ_0/DWACT_FINC_E[0] ), .B(
        \clock_div_1MHZ_1KHZ_0/counter[3]_net_1 ), .C(
        \clock_div_1MHZ_1KHZ_0/counter[4]_net_1 ), .Y(
        \clock_div_1MHZ_1KHZ_0/N_13 ));
    MX2 \spi_master_0/data_q_3[4]  (.A(\test_constants_spi_0_DATA[4] ), 
        .B(\spi_master_0/data_q[3]_net_1 ), .S(
        \spi_master_0/state_q[1]_net_1 ), .Y(
        \spi_master_0/data_q_3[4]_net_1 ));
    AOI1B \clock_div_26MHZ_1MHZ_0/counter_RNO[3]  (.A(
        \clock_div_26MHZ_1MHZ_0/clk_out5_14 ), .B(
        \clock_div_26MHZ_1MHZ_0/clk_out5_13 ), .C(
        \clock_div_26MHZ_1MHZ_0/I_9_0 ), .Y(
        \clock_div_26MHZ_1MHZ_0/counter_3[3] ));
    IOTRI_OB_EB \MOSI_pad/U0/U1  (.D(MOSI_c), .E(VCC), .DOUT(
        \MOSI_pad/U0/NET1 ), .EOUT(\MOSI_pad/U0/NET2 ));
    NOR3C \test_constants_spi_0/da_c4  (.A(
        \test_constants_spi_0_DATA[3] ), .B(
        \test_constants_spi_0/da_c2_net_1 ), .C(
        \test_constants_spi_0_DATA[4] ), .Y(
        \test_constants_spi_0/da_c4_net_1 ));
    DFN1C1 \test_constants_spi_0/st  (.D(
        \test_constants_spi_0/test_constants_spi_0_START_i ), .CLK(
        clock_div_1MHZ_1KHZ_0_CLK_1KHZ_OUT), .CLR(RESET_c_1), .Q(
        test_constants_spi_0_START));
    DFN1C1 \clock_div_1MHZ_1KHZ_0/counter[7]  (.D(
        \clock_div_1MHZ_1KHZ_0/counter_3[7] ), .CLK(
        clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT), .CLR(RESET_c), .Q(
        \clock_div_1MHZ_1KHZ_0/counter[7]_net_1 ));
    XOR2 \clock_div_26MHZ_1MHZ_0/un5_counter_I_32  (.A(
        \clock_div_26MHZ_1MHZ_0/N_7 ), .B(
        \clock_div_26MHZ_1MHZ_0/counter[11]_net_1 ), .Y(
        \clock_div_26MHZ_1MHZ_0/I_32_0 ));
    DFN1C1 \clock_div_1MHZ_1KHZ_0/counter[5]  (.D(
        \clock_div_1MHZ_1KHZ_0/counter_3[5] ), .CLK(
        clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT), .CLR(RESET_c), .Q(
        \clock_div_1MHZ_1KHZ_0/counter[5]_net_1 ));
    AND3 \clock_div_1MHZ_1KHZ_0/un5_counter_I_30  (.A(
        \clock_div_1MHZ_1KHZ_0/DWACT_FINC_E[0] ), .B(
        \clock_div_1MHZ_1KHZ_0/DWACT_FINC_E[2] ), .C(
        \clock_div_1MHZ_1KHZ_0/DWACT_FINC_E[5] ), .Y(
        \clock_div_1MHZ_1KHZ_0/DWACT_FINC_E[6] ));
    XOR2 \test_constants_spi_0/da_n6  (.A(
        \test_constants_spi_0/da_c5_net_1 ), .B(
        \test_constants_spi_0_DATA[6] ), .Y(
        \test_constants_spi_0/da_n6_net_1 ));
    DFN1C1 \clock_div_1MHZ_1KHZ_0/counter[8]  (.D(
        \clock_div_1MHZ_1KHZ_0/counter_3[8] ), .CLK(
        clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT), .CLR(RESET_c), .Q(
        \clock_div_1MHZ_1KHZ_0/counter[8]_net_1 ));
    DFN1C1 \clock_div_26MHZ_1MHZ_0/counter[6]  (.D(
        \clock_div_26MHZ_1MHZ_0/I_17_0 ), .CLK(GLA), .CLR(RESET_c_0), 
        .Q(\clock_div_26MHZ_1MHZ_0/counter[6]_net_1 ));
    NOR3C \clock_div_1MHZ_1KHZ_0/counter_RNIHFUM1[6]  (.A(
        \clock_div_1MHZ_1KHZ_0/counter[6]_net_1 ), .B(
        \clock_div_1MHZ_1KHZ_0/counter[8]_net_1 ), .C(
        \clock_div_1MHZ_1KHZ_0/clk_out5_7 ), .Y(
        \clock_div_1MHZ_1KHZ_0/clk_out5_11 ));
    DFN1C1 \clock_div_1MHZ_1KHZ_0/counter[4]  (.D(
        \clock_div_1MHZ_1KHZ_0/counter_3[4] ), .CLK(
        clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT), .CLR(RESET_c), .Q(
        \clock_div_1MHZ_1KHZ_0/counter[4]_net_1 ));
    DFN1C1 \clock_div_1MHZ_1KHZ_0/counter[12]  (.D(
        \clock_div_1MHZ_1KHZ_0/I_35 ), .CLK(
        clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT), .CLR(RESET_c_1), .Q(
        \clock_div_1MHZ_1KHZ_0/counter[12]_net_1 ));
    IOPAD_TRI \MOSI_pad/U0/U0  (.D(\MOSI_pad/U0/NET1 ), .E(
        \MOSI_pad/U0/NET2 ), .PAD(MOSI));
    AO1A \spi_master_0/state_q_RNO_1[1]  (.A(\spi_master_0/N_18 ), .B(
        \spi_master_0/state_q_ns_i_a2_0_a2_1_0[1] ), .C(
        \spi_master_0/N_28 ), .Y(\spi_master_0/state_q_ns_i_a2_0_0[1] )
        );
    CLKINT \clock_div_26MHZ_1MHZ_0/clk_out_RNIH497  (.A(
        \clock_div_26MHZ_1MHZ_0/clk_out_i ), .Y(
        clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT));
    DFN1C1 \clock_div_26MHZ_1MHZ_0/counter[9]  (.D(
        \clock_div_26MHZ_1MHZ_0/I_26_0 ), .CLK(GLA), .CLR(RESET_c_0), 
        .Q(\clock_div_26MHZ_1MHZ_0/counter[9]_net_1 ));
    IOTRI_OB_EB \CLK_SCK_pad/U0/U1  (.D(CLK_SCK_c), .E(VCC), .DOUT(
        \CLK_SCK_pad/U0/NET1 ), .EOUT(\CLK_SCK_pad/U0/NET2 ));
    NOR2A \spi_master_0/data_q_3[0]  (.A(
        \test_constants_spi_0_DATA[0] ), .B(
        \spi_master_0/state_q[1]_net_1 ), .Y(
        \spi_master_0/data_q_3[0]_net_1 ));
    MX2 \spi_master_0/data_q_0[5]  (.A(\spi_master_0/data_q[5]_net_1 ), 
        .B(\spi_master_0/data_q_3[5]_net_1 ), .S(
        \spi_master_0/un1_data_d_0_sqmuxa ), .Y(\spi_master_0/N_65 ));
    NOR3 \spi_master_0/state_q_RNO[1]  (.A(\spi_master_0/N_27 ), .B(
        \spi_master_0/state_q_ns_i_a2_0_0[1] ), .C(RESET_c), .Y(
        \spi_master_0/state_q_nss[1] ));
    NOR2A \spi_master_0/state_q_RNO_0[1]  (.A(\spi_master_0/N_21 ), .B(
        \spi_master_0/state_q[1]_net_1 ), .Y(\spi_master_0/N_27 ));
    NOR2A \spi_master_0/mosi_q_RNO  (.A(\spi_master_0/N_59 ), .B(
        RESET_c), .Y(\spi_master_0/mosi_q_RNO_net_1 ));
    NOR2 \spi_master_0/ctr_q_RNO[0]  (.A(\spi_master_0/ctr_q[0]_net_1 )
        , .B(\spi_master_0/un1_ctr_q4_i ), .Y(\spi_master_0/N_26 ));
    NOR2B \test_constants_spi_0/da_c5  (.A(
        \test_constants_spi_0/da_c4_net_1 ), .B(
        \test_constants_spi_0_DATA[5] ), .Y(
        \test_constants_spi_0/da_c5_net_1 ));
    IOIN_IB \RESET_pad/U0/U1  (.YIN(\RESET_pad/U0/NET1 ), .Y(RESET_c));
    AND3 \clock_div_1MHZ_1KHZ_0/un5_counter_I_16  (.A(
        \clock_div_1MHZ_1KHZ_0/DWACT_FINC_E[0] ), .B(
        \clock_div_1MHZ_1KHZ_0/DWACT_FINC_E[1] ), .C(
        \clock_div_1MHZ_1KHZ_0/counter[5]_net_1 ), .Y(
        \clock_div_1MHZ_1KHZ_0/N_12 ));
    NOR2A \spi_master_0/data_q_1[6]  (.A(\spi_master_0/N_66 ), .B(
        RESET_c), .Y(\spi_master_0/data_q_1[6]_net_1 ));
    NOR2B \spi_master_0/sck_q_RNIR9U[1]  (.A(
        \spi_master_0/sck_q[1]_net_1 ), .B(
        \spi_master_0/sck_q[0]_net_1 ), .Y(\spi_master_0/N_31_1 ));
    XOR2 \clock_div_26MHZ_1MHZ_0/un5_counter_I_9  (.A(
        \clock_div_26MHZ_1MHZ_0/N_15 ), .B(
        \clock_div_26MHZ_1MHZ_0/counter[3]_net_1 ), .Y(
        \clock_div_26MHZ_1MHZ_0/I_9_0 ));
    DFN1P1 \clock_div_1MHZ_1KHZ_0/counter[0]  (.D(
        \clock_div_1MHZ_1KHZ_0/I_4 ), .CLK(
        clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT), .PRE(RESET_c_1), .Q(
        \clock_div_1MHZ_1KHZ_0/counter[0]_net_1 ));
    NOR3B \spi_master_0/sck_q_RNO[1]  (.A(\spi_master_0/N_21 ), .B(
        \spi_master_0/N_149 ), .C(\spi_master_0/un1_ctr_q4_i ), .Y(
        \spi_master_0/sck_q_3[1] ));
    NOR2A \spi_master_0/data_q_1[0]  (.A(\spi_master_0/N_60 ), .B(
        RESET_c), .Y(\spi_master_0/data_q_1[0]_net_1 ));
    DFN1 \spi_master_0/data_q[2]  (.D(\spi_master_0/data_q_1[2]_net_1 )
        , .CLK(GLA), .Q(\spi_master_0/data_q[2]_net_1 ));
    XOR2 \clock_div_26MHZ_1MHZ_0/un5_counter_I_5  (.A(
        \clock_div_26MHZ_1MHZ_0/counter[0]_net_1 ), .B(
        \clock_div_26MHZ_1MHZ_0/counter[1]_net_1 ), .Y(
        \clock_div_26MHZ_1MHZ_0/I_5_0 ));
    DFN1C1 \test_constants_spi_0/da[7]  (.D(
        \test_constants_spi_0/da_n7_net_1 ), .CLK(
        clock_div_1MHZ_1KHZ_0_CLK_1KHZ_OUT), .CLR(RESET_c_0), .Q(
        \test_constants_spi_0_DATA[7] ));
    DFN1C1 \clock_div_26MHZ_1MHZ_0/counter[13]  (.D(
        \clock_div_26MHZ_1MHZ_0/I_37_0 ), .CLK(GLA), .CLR(RESET_c_1), 
        .Q(\clock_div_26MHZ_1MHZ_0/counter[13]_net_1 ));
    AND3 \clock_div_26MHZ_1MHZ_0/un5_counter_I_13  (.A(
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[0] ), .B(
        \clock_div_26MHZ_1MHZ_0/counter[3]_net_1 ), .C(
        \clock_div_26MHZ_1MHZ_0/counter[4]_net_1 ), .Y(
        \clock_div_26MHZ_1MHZ_0/N_13 ));
    NOR2 \clock_div_26MHZ_1MHZ_0/counter_RNI42ND[1]  (.A(
        \clock_div_26MHZ_1MHZ_0/counter[1]_net_1 ), .B(
        \clock_div_26MHZ_1MHZ_0/counter[12]_net_1 ), .Y(
        \clock_div_26MHZ_1MHZ_0/clk_out5_5 ));
    NOR2A \spi_master_0/data_q_1[3]  (.A(\spi_master_0/N_63 ), .B(
        RESET_c), .Y(\spi_master_0/data_q_1[3]_net_1 ));
    AX1C \clock_div_1MHZ_1KHZ_0/un5_counter_I_12  (.A(
        \clock_div_1MHZ_1KHZ_0/counter[3]_net_1 ), .B(
        \clock_div_1MHZ_1KHZ_0/DWACT_FINC_E[0] ), .C(
        \clock_div_1MHZ_1KHZ_0/counter[4]_net_1 ), .Y(
        \clock_div_1MHZ_1KHZ_0/I_12 ));
    XOR2 \clock_div_1MHZ_1KHZ_0/un5_counter_I_20  (.A(
        \clock_div_1MHZ_1KHZ_0/N_11 ), .B(
        \clock_div_1MHZ_1KHZ_0/counter[7]_net_1 ), .Y(
        \clock_div_1MHZ_1KHZ_0/I_20 ));
    XOR2 \clock_div_1MHZ_1KHZ_0/un5_counter_I_14  (.A(
        \clock_div_1MHZ_1KHZ_0/N_13 ), .B(
        \clock_div_1MHZ_1KHZ_0/counter[5]_net_1 ), .Y(
        \clock_div_1MHZ_1KHZ_0/I_14 ));
    AND3 \clock_div_26MHZ_1MHZ_0/un5_counter_I_39  (.A(
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[6] ), .B(
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[7] ), .C(
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[8] ), .Y(
        \clock_div_26MHZ_1MHZ_0/N_4 ));
    AX1C \clock_div_26MHZ_1MHZ_0/clk_out_RNO  (.A(
        \clock_div_26MHZ_1MHZ_0/clk_out5_13 ), .B(
        \clock_div_26MHZ_1MHZ_0/clk_out5_14 ), .C(
        \clock_div_26MHZ_1MHZ_0/clk_out_i ), .Y(
        \clock_div_26MHZ_1MHZ_0/clk_out_RNO_0 ));
    AND3 \clock_div_1MHZ_1KHZ_0/un5_counter_I_31  (.A(
        \clock_div_1MHZ_1KHZ_0/DWACT_FINC_E[6] ), .B(
        \clock_div_1MHZ_1KHZ_0/counter[9]_net_1 ), .C(
        \clock_div_1MHZ_1KHZ_0/counter[10]_net_1 ), .Y(
        \clock_div_1MHZ_1KHZ_0/N_7 ));
    DFN1C1 \clock_div_26MHZ_1MHZ_0/counter[2]  (.D(
        \clock_div_26MHZ_1MHZ_0/counter_3[2] ), .CLK(GLA), .CLR(
        RESET_c_0), .Q(\clock_div_26MHZ_1MHZ_0/counter[2]_net_1 ));
    XOR2 \clock_div_26MHZ_1MHZ_0/un5_counter_I_17  (.A(
        \clock_div_26MHZ_1MHZ_0/N_12 ), .B(
        \clock_div_26MHZ_1MHZ_0/counter[6]_net_1 ), .Y(
        \clock_div_26MHZ_1MHZ_0/I_17_0 ));
    XOR2 \clock_div_26MHZ_1MHZ_0/un5_counter_I_23  (.A(
        \clock_div_26MHZ_1MHZ_0/N_10 ), .B(
        \clock_div_26MHZ_1MHZ_0/counter[8]_net_1 ), .Y(
        \clock_div_26MHZ_1MHZ_0/I_23_0 ));
    DFN1C1 \test_constants_spi_0/da[2]  (.D(
        \test_constants_spi_0/da_n2_net_1 ), .CLK(
        clock_div_1MHZ_1KHZ_0_CLK_1KHZ_OUT), .CLR(RESET_c_0), .Q(
        \test_constants_spi_0_DATA[2] ));
    MX2 \spi_master_0/data_q_3[3]  (.A(\test_constants_spi_0_DATA[3] ), 
        .B(\spi_master_0/data_q[2]_net_1 ), .S(
        \spi_master_0/state_q[1]_net_1 ), .Y(
        \spi_master_0/data_q_3[3]_net_1 ));
    AND3 \clock_div_26MHZ_1MHZ_0/un5_counter_I_45  (.A(
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[6] ), .B(
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[10] ), .C(
        \clock_div_26MHZ_1MHZ_0/counter[15]_net_1 ), .Y(
        \clock_div_26MHZ_1MHZ_0/N_2 ));
    NOR3C \clock_div_26MHZ_1MHZ_0/counter_RNI1LGO1[1]  (.A(
        \clock_div_26MHZ_1MHZ_0/clk_out5_6 ), .B(
        \clock_div_26MHZ_1MHZ_0/clk_out5_5 ), .C(
        \clock_div_26MHZ_1MHZ_0/clk_out5_12 ), .Y(
        \clock_div_26MHZ_1MHZ_0/clk_out5_14 ));
    DFN1P1 \clock_div_26MHZ_1MHZ_0/clk_out  (.D(
        \clock_div_26MHZ_1MHZ_0/clk_out_RNO_0 ), .CLK(GLA), .PRE(
        RESET_c_1), .Q(\clock_div_26MHZ_1MHZ_0/clk_out_i ));
    IOPAD_IN \RESET_pad/U0/U0  (.PAD(RESET), .Y(\RESET_pad/U0/NET1 ));
    DFN1C1 \clock_div_26MHZ_1MHZ_0/counter[12]  (.D(
        \clock_div_26MHZ_1MHZ_0/I_35_0 ), .CLK(GLA), .CLR(RESET_c_1), 
        .Q(\clock_div_26MHZ_1MHZ_0/counter[12]_net_1 ));
    AOI1B \clock_div_1MHZ_1KHZ_0/counter_RNO[6]  (.A(
        \clock_div_1MHZ_1KHZ_0/clk_out5_13 ), .B(
        \clock_div_1MHZ_1KHZ_0/clk_out5_12 ), .C(
        \clock_div_1MHZ_1KHZ_0/I_17 ), .Y(
        \clock_div_1MHZ_1KHZ_0/counter_3[6] ));
    DFN1C1 \clock_div_1MHZ_1KHZ_0/counter[2]  (.D(
        \clock_div_1MHZ_1KHZ_0/counter_3[2] ), .CLK(
        clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT), .CLR(RESET_c_1), .Q(
        \clock_div_1MHZ_1KHZ_0/counter[2]_net_1 ));
    AX1C \clock_div_1MHZ_1KHZ_0/clk_out_RNO  (.A(
        \clock_div_1MHZ_1KHZ_0/clk_out5_12 ), .B(
        \clock_div_1MHZ_1KHZ_0/clk_out5_13 ), .C(
        \clock_div_1MHZ_1KHZ_0/clk_out_i ), .Y(
        \clock_div_1MHZ_1KHZ_0/clk_out_RNO_net_1 ));
    XOR2 \clock_div_26MHZ_1MHZ_0/un5_counter_I_46  (.A(
        \clock_div_26MHZ_1MHZ_0/N_2 ), .B(
        \clock_div_26MHZ_1MHZ_0/counter[16]_net_1 ), .Y(
        \clock_div_26MHZ_1MHZ_0/I_46_0 ));
    DFN1C1 \clock_div_26MHZ_1MHZ_0/counter[14]  (.D(
        \clock_div_26MHZ_1MHZ_0/I_40_0 ), .CLK(GLA), .CLR(RESET_c_1), 
        .Q(\clock_div_26MHZ_1MHZ_0/counter[14]_net_1 ));
    DFN1C1 \clock_div_26MHZ_1MHZ_0/counter[5]  (.D(
        \clock_div_26MHZ_1MHZ_0/I_14_0 ), .CLK(GLA), .CLR(RESET_c_0), 
        .Q(\clock_div_26MHZ_1MHZ_0/counter[5]_net_1 ));
    AND2 \clock_div_1MHZ_1KHZ_0/un5_counter_I_15  (.A(
        \clock_div_1MHZ_1KHZ_0/counter[3]_net_1 ), .B(
        \clock_div_1MHZ_1KHZ_0/counter[4]_net_1 ), .Y(
        \clock_div_1MHZ_1KHZ_0/DWACT_FINC_E[1] ));
    AND3 \clock_div_26MHZ_1MHZ_0/un5_counter_I_27  (.A(
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[4] ), .B(
        \clock_div_26MHZ_1MHZ_0/counter[8]_net_1 ), .C(
        \clock_div_26MHZ_1MHZ_0/counter[9]_net_1 ), .Y(
        \clock_div_26MHZ_1MHZ_0/N_8 ));
    AND3 \clock_div_1MHZ_1KHZ_0/un5_counter_I_33  (.A(
        \clock_div_1MHZ_1KHZ_0/counter[9]_net_1 ), .B(
        \clock_div_1MHZ_1KHZ_0/counter[10]_net_1 ), .C(
        \clock_div_1MHZ_1KHZ_0/counter[11]_net_1 ), .Y(
        \clock_div_1MHZ_1KHZ_0/DWACT_FINC_E[7] ));
    NOR3C \clock_div_1MHZ_1KHZ_0/counter_RNIU3PS2[13]  (.A(
        \clock_div_1MHZ_1KHZ_0/clk_out5_5 ), .B(
        \clock_div_1MHZ_1KHZ_0/clk_out5_4 ), .C(
        \clock_div_1MHZ_1KHZ_0/clk_out5_11 ), .Y(
        \clock_div_1MHZ_1KHZ_0/clk_out5_13 ));
    DFN1P1 \clock_div_1MHZ_1KHZ_0/clk_out  (.D(
        \clock_div_1MHZ_1KHZ_0/clk_out_RNO_net_1 ), .CLK(
        clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT), .PRE(RESET_c_0), .Q(
        \clock_div_1MHZ_1KHZ_0/clk_out_i ));
    AND3 \clock_div_26MHZ_1MHZ_0/un5_counter_I_41  (.A(
        \clock_div_26MHZ_1MHZ_0/counter[12]_net_1 ), .B(
        \clock_div_26MHZ_1MHZ_0/counter[13]_net_1 ), .C(
        \clock_div_26MHZ_1MHZ_0/counter[14]_net_1 ), .Y(
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[9] ));
    AND3 \clock_div_26MHZ_1MHZ_0/un5_counter_I_18  (.A(
        \clock_div_26MHZ_1MHZ_0/counter[3]_net_1 ), .B(
        \clock_div_26MHZ_1MHZ_0/counter[4]_net_1 ), .C(
        \clock_div_26MHZ_1MHZ_0/counter[5]_net_1 ), .Y(
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[2] ));
    DFN1C1 \test_constants_spi_0/da[5]  (.D(
        \test_constants_spi_0/da_n5_net_1 ), .CLK(
        clock_div_1MHZ_1KHZ_0_CLK_1KHZ_OUT), .CLR(RESET_c_0), .Q(
        \test_constants_spi_0_DATA[5] ));
    DFN1C1 \clock_div_1MHZ_1KHZ_0/counter[1]  (.D(
        \clock_div_1MHZ_1KHZ_0/I_5 ), .CLK(
        clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT), .CLR(RESET_c_1), .Q(
        \clock_div_1MHZ_1KHZ_0/counter[1]_net_1 ));
    MX2 \spi_master_0/data_q_3[5]  (.A(\test_constants_spi_0_DATA[5] ), 
        .B(\spi_master_0/data_q[4]_net_1 ), .S(
        \spi_master_0/state_q[1]_net_1 ), .Y(
        \spi_master_0/data_q_3[5]_net_1 ));
    NOR2 \clock_div_1MHZ_1KHZ_0/counter_RNI5DBA[11]  (.A(
        \clock_div_1MHZ_1KHZ_0/counter[14]_net_1 ), .B(
        \clock_div_1MHZ_1KHZ_0/counter[11]_net_1 ), .Y(
        \clock_div_1MHZ_1KHZ_0/clk_out5_1 ));
    CLKINT \clock_div_1MHZ_1KHZ_0/clk_out_RNIODC3  (.A(
        \clock_div_1MHZ_1KHZ_0/clk_out_i ), .Y(
        clock_div_1MHZ_1KHZ_0_CLK_1KHZ_OUT));
    AO1D \spi_master_0/state_q_RNO_0[0]  (.A(
        test_constants_spi_0_START), .B(
        \spi_master_0/state_q[0]_net_1 ), .C(
        \spi_master_0/state_q[1]_net_1 ), .Y(
        \spi_master_0/state_q_ns_i_a2_0_0[0] ));
    XOR2 \clock_div_26MHZ_1MHZ_0/un5_counter_I_28  (.A(
        \clock_div_26MHZ_1MHZ_0/N_8 ), .B(
        \clock_div_26MHZ_1MHZ_0/counter[10]_net_1 ), .Y(
        \clock_div_26MHZ_1MHZ_0/I_28_0 ));
    AND2 \clock_div_1MHZ_1KHZ_0/un5_counter_I_21  (.A(
        \clock_div_1MHZ_1KHZ_0/counter[6]_net_1 ), .B(
        \clock_div_1MHZ_1KHZ_0/counter[7]_net_1 ), .Y(
        \clock_div_1MHZ_1KHZ_0/DWACT_FINC_E[3] ));
    IOTRI_OB_EB \BUSY_pad/U0/U1  (.D(\spi_master_0.state_q_83_d ), .E(
        VCC), .DOUT(\BUSY_pad/U0/NET1 ), .EOUT(\BUSY_pad/U0/NET2 ));
    NOR2A \spi_master_0/data_q_1[5]  (.A(\spi_master_0/N_65 ), .B(
        RESET_c), .Y(\spi_master_0/data_q_1[5]_net_1 ));
    NOR3B \clock_div_26MHZ_1MHZ_0/counter_RNI16I01[9]  (.A(
        \clock_div_26MHZ_1MHZ_0/counter[3]_net_1 ), .B(
        \clock_div_26MHZ_1MHZ_0/clk_out5_8 ), .C(
        \clock_div_26MHZ_1MHZ_0/counter[9]_net_1 ), .Y(
        \clock_div_26MHZ_1MHZ_0/clk_out5_12 ));
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule
