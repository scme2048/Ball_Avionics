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


module transceiver_integration(
       BUF2_PBRST_T9,
       CLK_48MHZ,
       MISO,
       MOSI,
       SCLK,
       SS,
       ds0,
       ds1,
       ds2,
       ds3,
       ds4,
       ds5,
       ds6,
       ds7
    );
input  BUF2_PBRST_T9;
input  CLK_48MHZ;
input  MISO;
output MOSI;
output SCLK;
output SS;
output ds0;
output ds1;
output ds2;
output ds3;
output ds4;
output ds5;
output ds6;
output ds7;

    wire reset_pulse_0_CLK_OUT_48MHZ, GLA, 
        clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT, reset_pulse_0_RESET, 
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT, 
        spi_mode_config_0_begin_pass, orbit_control_0_tx_enable, 
        spi_mode_config_0_next_cmd, spi_mode_config_0_start, 
        \spi_mode_config_0_byte_out[0] , 
        \spi_mode_config_0_byte_out[1] , 
        \spi_mode_config_0_byte_out[2] , 
        \spi_mode_config_0_byte_out[3] , 
        \spi_mode_config_0_byte_out[4] , 
        \spi_mode_config_0_byte_out[5] , 
        \spi_mode_config_0_byte_out[6] , 
        \spi_mode_config_0_byte_out[7] , \spi_master_0.state_q_89 , 
        \sck_q_RNISE6G[1] , \read_buffer_0.byte_out[0] , 
        \read_buffer_0.byte_out_cl[0] , \read_buffer_0.byte_out[1] , 
        \read_buffer_0.byte_out[3] , \read_buffer_0.byte_out[6] , 
        BUF2_PBRST_T9_c, CLK_48MHZ_c, MISO_c, MOSI_c, SS_c, ds0_c, 
        ds1_c, ds2_c, ds3_c, ds4_c, ds5_c, ds6_c, ds7_c, 
        \read_buffer_0_BYTE_OUT[2] , reset_pulse_0_RESET_0, 
        reset_pulse_0_RESET_1, reset_pulse_0_RESET_2, 
        reset_pulse_0_RESET_3, reset_pulse_0_RESET_4, 
        \spi_mode_config_0/byte_tracker_b_0 , 
        \spi_mode_config_0/byte_tracker_a_net_1 , 
        \spi_mode_config_0/ss_a_net_1 , \spi_mode_config_0/next_b_i , 
        \spi_mode_config_0/DWACT_ADD_CI_0_g_array_2[0] , 
        \spi_mode_config_0/DWACT_ADD_CI_0_pog_array_1_1[0] , 
        \spi_mode_config_0/DWACT_ADD_CI_0_g_array_1[0] , 
        \spi_mode_config_0/config_cntr_b[2] , 
        \spi_mode_config_0/DWACT_ADD_CI_0_TMP[0] , 
        \spi_mode_config_0/config_cntr_b[1] , 
        \spi_mode_config_0/config_cntr_b[4] , 
        \spi_mode_config_0/ss_b_1_sqmuxa_1_0_a3_1_1 , 
        \spi_mode_config_0/rst_cntr[3] , 
        \spi_mode_config_0/rst_cntr[4] , \spi_mode_config_0/N_431 , 
        \spi_mode_config_0/ss_b_1_sqmuxa_1_0_a3_0 , 
        \spi_mode_config_0/ss_b11lto10 , \spi_mode_config_0/N_385 , 
        \spi_mode_config_0/byte_out_b_1_sqmuxa_i_i_a3_1 , 
        \spi_mode_config_0/N_492 , \spi_mode_config_0/N_373 , 
        \spi_mode_config_0/byte_out_b_1_sqmuxa_i_i_a3_0 , 
        \spi_mode_config_0/N_364 , 
        \spi_mode_config_0/ss_b_1_sqmuxa_1_0_a2_1 , 
        \spi_mode_config_0/rst_cntr[5] , 
        \spi_mode_config_0/byte_out_a_8_1_12[0] , 
        \spi_mode_config_0/byte_out_a_8_1_4[0] , 
        \spi_mode_config_0/byte_out_a_8_1_3[0] , 
        \spi_mode_config_0/byte_out_a_8_1_10[0] , 
        \spi_mode_config_0/N_264 , \spi_mode_config_0/N_263 , 
        \spi_mode_config_0/byte_out_a_8_1_6[0] , 
        \spi_mode_config_0/byte_out_a_8_1_8[0] , 
        \spi_mode_config_0/N_254 , \spi_mode_config_0/N_260 , 
        \spi_mode_config_0/byte_out_a_8_1_1[0] , 
        \spi_mode_config_0/byte_out_a_8_1_7[0] , 
        \spi_mode_config_0/N_827 , \spi_mode_config_0/N_253 , 
        \spi_mode_config_0/N_262 , \spi_mode_config_0/N_342 , 
        \spi_mode_config_0/N_77 , \spi_mode_config_0/N_261 , 
        \spi_mode_config_0/N_386 , \spi_mode_config_0/N_672 , 
        \spi_mode_config_0/N_252 , \spi_mode_config_0/N_288 , 
        \spi_mode_config_0/byte_out_a_8_1_a4_12_0[0] , 
        \spi_mode_config_0/N_197 , 
        \spi_mode_config_0/byte_out_a_8_1_4_0_a3_0[0] , 
        \spi_mode_config_0/N_633 , \spi_mode_config_0/N_257 , 
        \spi_mode_config_0/byte_out_a_8_1_a4_11_2[0] , 
        \spi_mode_config_0/N_403 , 
        \spi_mode_config_0/byte_out_a_8_1_0_a2_4_0[3] , 
        \spi_mode_config_0/N_391 , \spi_mode_config_0/state_b[2] , 
        \spi_mode_config_0/byte_out_a_8_1_a4_4_1[0] , 
        \spi_mode_config_0/N_439 , 
        \spi_mode_config_0/byte_out_a_8_1_0_1_tz_1[1] , 
        \spi_mode_config_0/N_622 , \spi_mode_config_0/N_623 , 
        \spi_mode_config_0/N_483 , 
        \spi_mode_config_0/byte_out_a_8_1_0_0_tz_1[7] , 
        \spi_mode_config_0/N_687 , 
        \spi_mode_config_0/byte_tracker_a_0_0_0_a3_3_1 , 
        \spi_mode_config_0/byte_tracker_b , 
        \spi_mode_config_0/state_b[0] , 
        \spi_mode_config_0/byte_tracker_a_0_0_0_a3_3_0 , 
        \spi_mode_config_0/N_398 , 
        \spi_mode_config_0/byte_out_a_8_1_a4_10_0_a3_1[0] , 
        \spi_mode_config_0/byte_out_a_8_1_a4_8_2[0] , 
        \spi_mode_config_0/byte_out_a_8_1_a4_8_0[0] , 
        \spi_mode_config_0/N_375 , \spi_mode_config_0/N_413 , 
        \spi_mode_config_0/byte_out_a_8_1_0_10[1] , 
        \spi_mode_config_0/byte_out_a_8_1_0_0[1] , 
        \spi_mode_config_0/N_585 , 
        \spi_mode_config_0/byte_out_a_8_1_0_6[1] , 
        \spi_mode_config_0/byte_out_a_8_1_0_9[1] , 
        \spi_mode_config_0/N_588 , \spi_mode_config_0/N_693 , 
        \spi_mode_config_0/byte_out_a_8_1_0_5[1] , 
        \spi_mode_config_0/byte_out_a_8_1_0_8[1] , 
        \spi_mode_config_0/N_589 , \spi_mode_config_0/N_516 , 
        \spi_mode_config_0/byte_out_a_8_1_0_3[1] , 
        \spi_mode_config_0/N_381 , \spi_mode_config_0/N_300 , 
        \spi_mode_config_0/N_584 , \spi_mode_config_0/N_692 , 
        \spi_mode_config_0/N_583 , \spi_mode_config_0/N_404 , 
        \spi_mode_config_0/N_646 , \spi_mode_config_0/N_586 , 
        \spi_mode_config_0/byte_out_a_8_1_0_1_tz[1] , 
        \spi_mode_config_0/N_581 , 
        \spi_mode_config_0/config_cntr_b[3] , 
        \spi_mode_config_0/byte_out_a_8_i_i_10[5] , 
        \spi_mode_config_0/byte_out_a_8_i_i_4[5] , 
        \spi_mode_config_0/byte_out_a_8_i_i_3[5] , 
        \spi_mode_config_0/byte_out_a_8_i_i_7[5] , 
        \spi_mode_config_0/N_546 , \spi_mode_config_0/N_549 , 
        \spi_mode_config_0/byte_out_a_8_i_i_2[5] , 
        \spi_mode_config_0/byte_out_a_8_i_i_6[5] , 
        \spi_mode_config_0/N_456 , \spi_mode_config_0/N_537 , 
        \spi_mode_config_0/N_539 , 
        \spi_mode_config_0/byte_out_a_8_i_i_5[5] , 
        \spi_mode_config_0/N_414 , \spi_mode_config_0/N_538 , 
        \spi_mode_config_0/N_541 , \spi_mode_config_0/N_416 , 
        \spi_mode_config_0/byte_out_a_8_i_i_a3_7_0[5] , 
        \spi_mode_config_0/N_542 , \spi_mode_config_0/N_664 , 
        \spi_mode_config_0/N_372 , \spi_mode_config_0/N_547 , 
        \spi_mode_config_0/byte_tracker_a_0_0_0_3 , 
        \spi_mode_config_0/N_513 , \spi_mode_config_0/N_514 , 
        \spi_mode_config_0/byte_tracker_a_0_0_0_0 , 
        \spi_mode_config_0/N_678 , 
        \spi_mode_config_0/byte_out_a_8_i_i_a3_3_0[5] , 
        \spi_mode_config_0/N_424 , \spi_mode_config_0/N_410 , 
        \spi_mode_config_0/N_382 , 
        \spi_mode_config_0/byte_out_a_8_1_0_a3_1[6] , 
        \spi_mode_config_0/config_cntr_b[5] , 
        \spi_mode_config_0/byte_out_a_8_1_0_a3_1_2[7] , 
        \spi_mode_config_0/N_371 , 
        \spi_mode_config_0/byte_out_a_8_1_0_a3_1_1[7] , 
        \spi_mode_config_0/N_388 , 
        \spi_mode_config_0/byte_tracker_a_0_0_0_o2_2_0 , 
        \spi_mode_config_0/N_663 , 
        \spi_mode_config_0/config_cntr_b[0] , 
        \spi_mode_config_0/byte_tracker_a_0_0_0_o2_3_0 , 
        \spi_mode_config_0/state_b[1] , 
        \spi_mode_config_0/byte_out_a_8_1_0_a3_6_0[3] , 
        \spi_mode_config_0/N_376 , 
        \spi_mode_config_0/byte_out_a_8_1_0_14[3] , 
        \spi_mode_config_0/byte_out_a_8_1_0_3[3] , 
        \spi_mode_config_0/byte_out_a_8_1_0_2[3] , 
        \spi_mode_config_0/byte_out_a_8_1_0_11[3] , 
        \spi_mode_config_0/byte_out_a_8_1_0_13[3] , 
        \spi_mode_config_0/byte_out_a_8_1_0_1[3] , 
        \spi_mode_config_0/byte_out_a_8_1_0_0[3] , 
        \spi_mode_config_0/byte_out_a_8_1_0_8[3] , 
        \spi_mode_config_0/byte_out_a_8_1_0_12[3] , 
        \spi_mode_config_0/N_575 , \spi_mode_config_0/N_574 , 
        \spi_mode_config_0/byte_out_a_8_1_0_7[3] , 
        \spi_mode_config_0/N_565 , \spi_mode_config_0/N_566 , 
        \spi_mode_config_0/byte_out_a_8_1_0_4[3] , 
        \spi_mode_config_0/N_476 , \spi_mode_config_0/N_569 , 
        \spi_mode_config_0/byte_out_a_8_1_0_a3_9_0[3] , 
        \spi_mode_config_0/N_643 , \spi_mode_config_0/N_570 , 
        \spi_mode_config_0/N_43 , \spi_mode_config_0/N_521 , 
        \spi_mode_config_0/N_409 , \spi_mode_config_0/N_469 , 
        \spi_mode_config_0/N_840 , \spi_mode_config_0/N_645 , 
        \spi_mode_config_0/N_563 , \spi_mode_config_0/N_572 , 
        \spi_mode_config_0/byte_out_a_8_i_i_o3_0[5] , 
        \spi_mode_config_0/N_433 , \spi_mode_config_0/N_638 , 
        \spi_mode_config_0/byte_out_a_8_1_0_a3_4_0[6] , 
        \spi_mode_config_0/byte_out_a_8_1_0_7[6] , 
        \spi_mode_config_0/byte_out_a_8_1_0_1[6] , 
        \spi_mode_config_0/byte_out_a_8_1_0_0[6] , 
        \spi_mode_config_0/byte_out_a_8_1_0_4[6] , 
        \spi_mode_config_0/N_536 , \spi_mode_config_0/N_524 , 
        \spi_mode_config_0/byte_out_a_8_1_0_3[6] , 
        \spi_mode_config_0/N_438 , \spi_mode_config_0/N_528 , 
        \spi_mode_config_0/byte_out_a_8_1_0_2[6] , 
        \spi_mode_config_0/N_530 , \spi_mode_config_0/N_534 , 
        \spi_mode_config_0/N_535 , \spi_mode_config_0/N_327 , 
        \spi_mode_config_0/N_532 , 
        \spi_mode_config_0/byte_out_a_8_1_0_5[7] , 
        \spi_mode_config_0/N_523 , 
        \spi_mode_config_0/byte_out_a_8_1_0_2[7] , 
        \spi_mode_config_0/byte_out_a_8_1_0_4[7] , 
        \spi_mode_config_0/N_522 , 
        \spi_mode_config_0/byte_out_a_8_1_0_3[7] , 
        \spi_mode_config_0/byte_out_a_8_1_0_0_tz[7] , 
        \spi_mode_config_0/N_526 , 
        \spi_mode_config_0/byte_out_a_8_i_a4_10_0_a3_1[5] , 
        \spi_mode_config_0/config_cntr_b[6] , 
        \spi_mode_config_0/byte_out_a_8_i_11[2] , 
        \spi_mode_config_0/byte_out_a_8_i_7[2] , 
        \spi_mode_config_0/byte_out_a_8_i_8[2] , 
        \spi_mode_config_0/byte_out_a_8_i_10[2] , 
        \spi_mode_config_0/N_359 , \spi_mode_config_0/N_234 , 
        \spi_mode_config_0/byte_out_a_8_i_5[2] , 
        \spi_mode_config_0/byte_out_a_8_i_9[2] , 
        \spi_mode_config_0/N_237 , 
        \spi_mode_config_0/byte_out_a_8_i_0[2] , 
        \spi_mode_config_0/byte_out_a_8_i_4[2] , 
        \spi_mode_config_0/N_230 , \spi_mode_config_0/N_224 , 
        \spi_mode_config_0/byte_out_a_8_i_2[2] , 
        \spi_mode_config_0/N_225 , \spi_mode_config_0/N_227 , 
        \spi_mode_config_0/N_226 , \spi_mode_config_0/N_233_1 , 
        \spi_mode_config_0/N_232 , \spi_mode_config_0/N_236 , 
        \spi_mode_config_0/N_578 , 
        \spi_mode_config_0/byte_out_a_8_i_a4_5_0[2] , 
        \spi_mode_config_0/N_420 , 
        \spi_mode_config_0/state_a_7_i_0_a3_2_2[2] , 
        \spi_mode_config_0/byte_out_a_8_i_a4_1_0[2] , 
        \spi_mode_config_0/N_322 , \spi_mode_config_0/N_346 , 
        \spi_mode_config_0/byte_out_a_8_i_a4_2_2[2] , 
        \spi_mode_config_0/N_457_i , \spi_mode_config_0/N_630 , 
        \spi_mode_config_0/un1_byte_out_a_83_sqmuxa_0_a4_0 , 
        \spi_mode_config_0/N_365 , 
        \spi_mode_config_0/un1_mem_enable_a21_27_i_a4_0 , 
        \spi_mode_config_0/N_117 , \spi_mode_config_0/N_360 , 
        \spi_mode_config_0/N_370 , 
        \spi_mode_config_0/byte_out_a_8_1_0_a3_10_0[3] , 
        \spi_mode_config_0/un1_mem_enable_a21_27_i_0_1 , 
        \spi_mode_config_0/byte_out_a_8_i_i_o2_4_1[5] , 
        \spi_mode_config_0/N_369 , \spi_mode_config_0/N_667 , 
        \spi_mode_config_0/byte_out_a_8_i_i_o2_4_0[5] , 
        \spi_mode_config_0/N_624 , 
        \spi_mode_config_0/state_a_7_i_0_1[2] , 
        \spi_mode_config_0/state_a_7_i_0_a3_0_0[2] , 
        \spi_mode_config_0/N_446 , \spi_mode_config_0/N_593 , 
        \spi_mode_config_0/state_a_7_i_0_0[2] , 
        \spi_mode_config_0/N_397 , 
        \spi_mode_config_0/byte_out_a_8_i_i_a2_6_1[5] , 
        \spi_mode_config_0/un1_byte_out_a_83_sqmuxa_0_a4_0_0 , 
        \spi_mode_config_0/N_665 , \spi_mode_config_0/N_423 , 
        \spi_mode_config_0/un1_mem_enable_a21_27_i_a4_0_i_2 , 
        \spi_mode_config_0/un1_mem_enable_a21_27_i_a4_0_i_1 , 
        \spi_mode_config_0/un1_mem_enable_a21_27_i_a4_0_i_0 , 
        \spi_mode_config_0/un1_mem_enable_a21_26_2 , 
        \spi_mode_config_0/N_121_i , \spi_mode_config_0/N_284 , 
        \spi_mode_config_0/N_283 , 
        \spi_mode_config_0/byte_out_a_8_i_i_a3_6_0[4] , 
        \spi_mode_config_0/state_a_7_i_0_a3_0_0[0] , 
        \spi_mode_config_0/state_a_7_i_0_a3_1_0[0] , 
        \spi_mode_config_0/N_396 , 
        \spi_mode_config_0/state_a_7_i_0_0[0] , 
        \spi_mode_config_0/N_418 , \spi_mode_config_0/N_597 , 
        \spi_mode_config_0/byte_out_a_8_i_i_7[4] , 
        \spi_mode_config_0/N_551 , 
        \spi_mode_config_0/byte_out_a_8_i_i_3[4] , 
        \spi_mode_config_0/byte_out_a_8_i_i_6[4] , 
        \spi_mode_config_0/N_554 , \spi_mode_config_0/N_559 , 
        \spi_mode_config_0/byte_out_a_8_i_i_2[4] , 
        \spi_mode_config_0/byte_out_a_8_i_i_5[4] , 
        \spi_mode_config_0/byte_out_a_8_i_i_0[4] , 
        \spi_mode_config_0/byte_out_a_8_i_i_a3_1_0[4] , 
        \spi_mode_config_0/N_632 , \spi_mode_config_0/N_552 , 
        \spi_mode_config_0/N_555 , \spi_mode_config_0/N_560 , 
        \spi_mode_config_0/N_467 , \spi_mode_config_0/N_428 , 
        \spi_mode_config_0/N_121 , \spi_mode_config_0/N_570_1 , 
        \spi_mode_config_0/N_31 , \spi_mode_config_0/N_647 , 
        \spi_mode_config_0/N_421 , \spi_mode_config_0/N_670 , 
        \spi_mode_config_0/N_451 , \spi_mode_config_0/N_379 , 
        \spi_mode_config_0/N_452 , \spi_mode_config_0/rst_cntr[7] , 
        \spi_mode_config_0/rst_cntr[8] , 
        \spi_mode_config_0/rst_cntr[9] , \spi_mode_config_0/N_282 , 
        \spi_mode_config_0/ss_b_1_sqmuxa_1 , \spi_mode_config_0/N_602 , 
        \spi_mode_config_0/N_600 , \spi_mode_config_0/N_601 , 
        \spi_mode_config_0/N_445 , \spi_mode_config_0/ss_b11lto6 , 
        \spi_mode_config_0/N_35 , \spi_mode_config_0/N_338 , 
        \spi_mode_config_0/N_279 , 
        \spi_mode_config_0/un1_mem_enable_a21_26 , 
        \spi_mode_config_0/N_281 , \spi_mode_config_0/N_596 , 
        \spi_mode_config_0/N_648 , \spi_mode_config_0/N_27 , 
        \spi_mode_config_0/N_23 , \spi_mode_config_0/N_367 , 
        \spi_mode_config_0/N_142 , \spi_mode_config_0/N_449 , 
        \spi_mode_config_0/N_415 , \spi_mode_config_0/N_468 , 
        \spi_mode_config_0/byte_out_a_8[7] , 
        \spi_mode_config_0/byte_out_a_8[6] , \spi_mode_config_0/N_694 , 
        \spi_mode_config_0/N_644 , \spi_mode_config_0/N_628 , 
        \spi_mode_config_0/N_666 , 
        \spi_mode_config_0/byte_tracker_b_RNI00D03_net_1 , 
        \spi_mode_config_0/N_608 , 
        \spi_mode_config_0/byte_tracker_a_RNO_net_1 , 
        \spi_mode_config_0/N_515 , 
        \spi_mode_config_0/byte_out_a_RNO[5]_net_1 , 
        \spi_mode_config_0/byte_out_a_8[3] , 
        \spi_mode_config_0/byte_out_a_8[1] , \spi_mode_config_0/N_617 , 
        \spi_mode_config_0/byte_out_a_8[0] , \spi_mode_config_0/N_686 , 
        \spi_mode_config_0/byte_out_a_8_1_0_a3_0_0[7] , 
        \spi_mode_config_0/byte_out_a_8_1_0_a3_0[1] , 
        \spi_mode_config_0/byte_out_a_8_i_3_0_a3_0[2] , 
        \spi_mode_config_0/N_677 , \spi_mode_config_0/N_685 , 
        \spi_mode_config_0/config_cntr_a_86[2] , 
        \spi_mode_config_0/I_26_1 , 
        \spi_mode_config_0/config_cntr_a_86[4] , 
        \spi_mode_config_0/I_30 , 
        \spi_mode_config_0/config_cntr_a_86[6] , 
        \spi_mode_config_0/I_28_1 , 
        \spi_mode_config_0/byte_out_b_6[3] , 
        \spi_mode_config_0/byte_out_a[3]_net_1 , 
        \spi_mode_config_0/N_627 , \spi_mode_config_0/N_411 , 
        \spi_mode_config_0/N_611 , \spi_mode_config_0/N_629 , 
        \spi_mode_config_0/N_29 , \spi_mode_config_0/N_458_i , 
        \spi_mode_config_0/un74lto0 , \spi_mode_config_0/un74lto1 , 
        \spi_mode_config_0/byte_out_b_6[1] , 
        \spi_mode_config_0/byte_out_a[1]_net_1 , 
        \spi_mode_config_0/byte_out_b_6[2] , 
        \spi_mode_config_0/byte_out_a[2]_net_1 , 
        \spi_mode_config_0/byte_out_b_6[7] , 
        \spi_mode_config_0/byte_out_a[7]_net_1 , 
        \spi_mode_config_0/state_b_6[1] , 
        \spi_mode_config_0/state_a[1]_net_1 , 
        \spi_mode_config_0/byte_out_b_6[4] , 
        \spi_mode_config_0/byte_out_a[4]_net_1 , 
        \spi_mode_config_0/state_b_6[0] , 
        \spi_mode_config_0/state_a[0]_net_1 , 
        \spi_mode_config_0/state_b_6[2] , 
        \spi_mode_config_0/state_a[2]_net_1 , 
        \spi_mode_config_0/N_145 , \spi_mode_config_0/N_824 , 
        \spi_mode_config_0/N_430 , \spi_mode_config_0/un74lto2 , 
        \spi_mode_config_0/N_477_i , \spi_mode_config_0/N_383 , 
        \spi_mode_config_0/start_b_6 , 
        \spi_mode_config_0/start_a_net_1 , \spi_mode_config_0/N_607 , 
        \spi_mode_config_0/start_a_RNO_net_1 , 
        \spi_mode_config_0/byte_out_b_6[5] , 
        \spi_mode_config_0/byte_out_a[5]_net_1 , 
        \spi_mode_config_0/byte_out_b_6[0] , 
        \spi_mode_config_0/byte_out_a[0]_net_1 , 
        \spi_mode_config_0/rst_cntr_n10 , \spi_mode_config_0/N_419 , 
        \spi_mode_config_0/N_378 , \spi_mode_config_0/N_400 , 
        \spi_mode_config_0/N_459_i , \spi_mode_config_0/N_460_i , 
        \spi_mode_config_0/N_461_i , \spi_mode_config_0/N_463_i , 
        \spi_mode_config_0/N_470_i , \spi_mode_config_0/N_486_i , 
        \spi_mode_config_0/N_493_i , \spi_mode_config_0/N_503_i , 
        \spi_mode_config_0/next_a_RNO_net_1 , 
        \spi_mode_config_0/N_143 , \spi_mode_config_0/N_575_1 , 
        \spi_mode_config_0/byte_out_b_6[6] , 
        \spi_mode_config_0/byte_out_a[6]_net_1 , 
        \spi_mode_config_0/N_432 , \spi_mode_config_0/N_671 , 
        \spi_mode_config_0/N_490 , \spi_mode_config_0/N_392 , 
        \spi_mode_config_0/N_641 , \spi_mode_config_0/N_640 , 
        \spi_mode_config_0/N_126 , \spi_mode_config_0/N_124 , 
        \spi_mode_config_0/N_407 , \spi_mode_config_0/N_14 , 
        \spi_mode_config_0/next_a_net_1 , 
        \spi_mode_config_0/begin_pass_a_net_1 , 
        \spi_mode_config_0/config_cntr_a[0]_net_1 , 
        \spi_mode_config_0/config_cntr_a[1]_net_1 , 
        \spi_mode_config_0/config_cntr_a[2]_net_1 , 
        \spi_mode_config_0/config_cntr_a[3]_net_1 , 
        \spi_mode_config_0/config_cntr_a[4]_net_1 , 
        \spi_mode_config_0/config_cntr_a[5]_net_1 , 
        \spi_mode_config_0/config_cntr_a[6]_net_1 , 
        \spi_mode_config_0/DWACT_ADD_CI_0_partial_sum[0] , 
        \spi_mode_config_0/I_27 , \spi_mode_config_0/I_24 , 
        \spi_mode_config_0/I_29 , \orbit_control_0/cntr_n11 , 
        \orbit_control_0/cntr_c10 , \orbit_control_0/cntr[11]_net_1 , 
        \orbit_control_0/cntr13 , \orbit_control_0/cntr_n10 , 
        \orbit_control_0/cntr_c9 , \orbit_control_0/cntr[10]_net_1 , 
        \orbit_control_0/cntr_n9 , \orbit_control_0/cntr_c8 , 
        \orbit_control_0/cntr[9]_net_1 , \orbit_control_0/cntr_n12 , 
        \orbit_control_0/cntr_25_0 , \orbit_control_0/N_55 , 
        \orbit_control_0/cntr_c7 , \orbit_control_0/cntr[8]_net_1 , 
        \orbit_control_0/cntr_c6 , \orbit_control_0/cntr[7]_net_1 , 
        \orbit_control_0/cntr_c5 , \orbit_control_0/cntr[6]_net_1 , 
        \orbit_control_0/cntr[5]_net_1 , \orbit_control_0/cntr_c4 , 
        \orbit_control_0/cntr[4]_net_1 , \orbit_control_0/cntr_c3 , 
        \orbit_control_0/cntr[3]_net_1 , \orbit_control_0/cntr_c2 , 
        \orbit_control_0/cntr[2]_net_1 , \orbit_control_0/cntr_c1 , 
        \orbit_control_0/cntr[1]_net_1 , 
        \orbit_control_0/cntr[0]_net_1 , 
        \orbit_control_0/un1_cntrlto11_0 , 
        \orbit_control_0/un1_cntrlt12 , \orbit_control_0/un1_cntrlt9 , 
        \orbit_control_0/cntr_n8 , \orbit_control_0/cntr_n7 , 
        \orbit_control_0/cntr_n6 , \orbit_control_0/cntr_n5 , 
        \orbit_control_0/cntr_n4 , \orbit_control_0/cntr_n3 , 
        \orbit_control_0/cntr_n2 , \orbit_control_0/cntr_n1 , 
        \orbit_control_0/cntr_n0 , \orbit_control_0/cntr[12]_net_1 , 
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
        \read_buffer_0/position_i[0] , 
        \read_buffer_0/position[0]_net_1 , 
        \read_buffer_0/init_wait_26_0 , \read_buffer_0/init_wait[7] , 
        \read_buffer_0/un1_init_wait , \read_buffer_0/init_wait[8] , 
        \read_buffer_0/init_stage_ns_i_a2_0_0[1] , 
        \read_buffer_0/init_stage[1]_net_1 , 
        \read_buffer_0/init_stage[0]_net_1 , 
        \read_buffer_0/init_stage_ns_i_a2_1_tz[1] , 
        \read_buffer_0/init_stage_ns_i_a2_2_1[1] , 
        \read_buffer_0/init_wait[5] , \read_buffer_0/init_wait[6] , 
        \read_buffer_0/init_wait[4] , 
        \read_buffer_0/init_stage_RNO[1]_net_1 , 
        \read_buffer_0/init_stage_ns_i_a2_2_tz_tz[1] , 
        \read_buffer_0/un1_init_waitlt8 , \read_buffer_0/init_wait_n2 , 
        \read_buffer_0/init_wait_n2_tz , \read_buffer_0/init_wait[1] , 
        \read_buffer_0/init_wait_c0 , \read_buffer_0/init_wait[2] , 
        \read_buffer_0/init_wait_n7 , \read_buffer_0/init_wait_c6 , 
        \read_buffer_0/init_wait_n6 , \read_buffer_0/init_wait_c5 , 
        \read_buffer_0/init_wait_n5 , \read_buffer_0/init_wait_c4 , 
        \read_buffer_0/init_wait_n4 , \read_buffer_0/init_wait_c3 , 
        \read_buffer_0/init_wait_n3 , \read_buffer_0/init_wait[3] , 
        \read_buffer_0/init_wait_c2 , \read_buffer_0/init_wait_n1 , 
        \read_buffer_0/N_268 , 
        \read_buffer_0/byte_out_cl_RNO[0]_net_1 , 
        \read_buffer_0/init_stage_177_d , 
        \read_buffer_0/byte_out_RNO[6]_net_1 , 
        \read_buffer_0/byte_out_RNO[0]_net_1 , 
        \read_buffer_0/byte_out_RNO[2]_net_1 , 
        \read_buffer_0/byte_out[2]_net_1 , 
        \read_buffer_0/init_wait_n8 , \read_buffer_0/N_173 , GND, 
        \read_buffer_0/DWACT_ADD_CI_0_partial_sum[0] , 
        \reset_pulse_0/CLK_OUT_48MHZ_i , 
        \clock_div_1MHZ_10HZ_0/clk_out_i , 
        \clock_div_1MHZ_10HZ_0/counter[1]_net_1 , 
        \clock_div_1MHZ_10HZ_0/counter[0]_net_1 , 
        \clock_div_1MHZ_10HZ_0/counter[3]_net_1 , 
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[0] , 
        \clock_div_1MHZ_10HZ_0/counter[8]_net_1 , 
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[4] , 
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[7] , 
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[6] , 
        \clock_div_1MHZ_10HZ_0/clk_out5_13 , 
        \clock_div_1MHZ_10HZ_0/clk_out5_5 , 
        \clock_div_1MHZ_10HZ_0/clk_out5_4 , 
        \clock_div_1MHZ_10HZ_0/clk_out5_11 , 
        \clock_div_1MHZ_10HZ_0/clk_out5_12 , 
        \clock_div_1MHZ_10HZ_0/clk_out5_1 , 
        \clock_div_1MHZ_10HZ_0/clk_out5_0 , 
        \clock_div_1MHZ_10HZ_0/clk_out5_9 , 
        \clock_div_1MHZ_10HZ_0/counter[6]_net_1 , 
        \clock_div_1MHZ_10HZ_0/clk_out5_7 , 
        \clock_div_1MHZ_10HZ_0/clk_out5_3 , 
        \clock_div_1MHZ_10HZ_0/counter[2]_net_1 , 
        \clock_div_1MHZ_10HZ_0/counter[7]_net_1 , 
        \clock_div_1MHZ_10HZ_0/counter[4]_net_1 , 
        \clock_div_1MHZ_10HZ_0/counter[9]_net_1 , 
        \clock_div_1MHZ_10HZ_0/counter[10]_net_1 , 
        \clock_div_1MHZ_10HZ_0/counter[12]_net_1 , 
        \clock_div_1MHZ_10HZ_0/counter[13]_net_1 , 
        \clock_div_1MHZ_10HZ_0/counter[5]_net_1 , 
        \clock_div_1MHZ_10HZ_0/counter[15]_net_1 , 
        \clock_div_1MHZ_10HZ_0/counter[14]_net_1 , 
        \clock_div_1MHZ_10HZ_0/counter[16]_net_1 , 
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
        \spi_master_0/state_q_i_d[0] , 
        \spi_master_0/state_q_ns_0_i_0[1] , 
        \spi_master_0/state_q[1]_net_1 , 
        \spi_master_0/state_q[0]_net_1 , \spi_master_0/N_19 , 
        \spi_master_0/N_154 , \spi_master_0/N_36 , 
        \spi_master_0/state_q_RNO[0]_net_1 , \spi_master_0/N_13 , 
        \spi_master_0/N_34 , \spi_master_0/N_50 , \spi_master_0/N_9 , 
        \spi_master_0/ctr_q[0] , \spi_master_0/ctr_q[1] , 
        \spi_master_0/N_7 , \spi_master_0/N_23 , 
        \spi_master_0/ctr_q[2] , \spi_master_0/data_d[2] , 
        \spi_master_0/data_q[1] , \spi_master_0/data_d[3] , 
        \spi_master_0/data_q[2] , \spi_master_0/data_d[1] , 
        \spi_master_0/data_q[0] , \spi_master_0/sck_d[0] , 
        \spi_master_0/sck_q[0]_net_1 , \spi_master_0/sck_q[1]_net_1 , 
        \spi_master_0/new_data_d_2_sqmuxa , \spi_master_0/N_33 , 
        \spi_master_0/N_42 , \spi_master_0/N_45 , 
        \spi_master_0/ctr_qe , \spi_master_0/N_22 , 
        \spi_master_0/un1_sck_d_0_sqmuxa , 
        \spi_master_0/un1_data_d_0_sqmuxa , \spi_master_0/data_d[7] , 
        \spi_master_0/data_q[6] , \spi_master_0/data_d[6] , 
        \spi_master_0/data_q[5] , \spi_master_0/data_d[5] , 
        \spi_master_0/data_q[4] , \spi_master_0/data_d[4] , 
        \spi_master_0/data_q[3] , \spi_master_0/data_d[0] , 
        \spi_master_0/data_q[7] , VCC, \MISO_pad/U0/NET1 , 
        \ds7_pad/U0/NET1 , \ds7_pad/U0/NET2 , \ds0_pad/U0/NET1 , 
        \ds0_pad/U0/NET2 , \MOSI_pad/U0/NET1 , \MOSI_pad/U0/NET2 , 
        \ds5_pad/U0/NET1 , \ds5_pad/U0/NET2 , \SCLK_pad/U0/NET1 , 
        \SCLK_pad/U0/NET2 , \ds1_pad/U0/NET1 , \ds1_pad/U0/NET2 , 
        \ds2_pad/U0/NET1 , \ds2_pad/U0/NET2 , \ds3_pad/U0/NET1 , 
        \ds3_pad/U0/NET2 , \ds4_pad/U0/NET1 , \ds4_pad/U0/NET2 , 
        \ds6_pad/U0/NET1 , \ds6_pad/U0/NET2 , \SS_pad/U0/NET1 , 
        \SS_pad/U0/NET2 , \CLK_48MHZ_pad/U0/NET1 , 
        \BUF2_PBRST_T9_pad/U0/NET1 , \spi_mode_config_0/rst_cntr[7]/Y , 
        \spi_mode_config_0/config_cntr_b[6]/Y , 
        \spi_mode_config_0/rst_cntr[8]/Y , 
        \spi_mode_config_0/start_b/Y , \read_buffer_0/byte_out[1]/Y , 
        \spi_master_0/data_q[5]/Y , \read_buffer_0/init_wait[6]/Y , 
        \spi_mode_config_0/byte_out_b[1]/Y , 
        \spi_mode_config_0/config_cntr_b[0]/Y , 
        \spi_master_0/ctr_q[1]/Y , \spi_mode_config_0/rst_cntr[10]/Y , 
        \spi_mode_config_0/config_cntr_b[4]/Y , 
        \spi_mode_config_0/rst_cntr[9]/Y , 
        \spi_mode_config_0/byte_out_b[6]/Y , 
        \spi_master_0/data_q[0]/Y , \spi_master_0/data_out_q[2]/Y , 
        \spi_mode_config_0/rst_cntr[4]/Y , 
        \read_buffer_0/init_wait[2]/Y , 
        \spi_mode_config_0/byte_tracker_b/Y , 
        \spi_master_0/data_q[2]/Y , \spi_master_0/data_q[3]/Y , 
        \spi_mode_config_0/byte_out_b[3]/Y , 
        \spi_mode_config_0/config_cntr_b[3]/Y , 
        \spi_mode_config_0/state_b[1]/Y , 
        \spi_mode_config_0/byte_out_b[2]/Y , 
        \spi_mode_config_0/byte_out_b[4]/Y , 
        \spi_master_0/data_out_q[7]/Y , \read_buffer_0/init_wait[8]/Y , 
        \spi_master_0/data_out_q[0]/Y , 
        \spi_mode_config_0/byte_out_b[0]/Y , 
        \spi_mode_config_0/next_b/Y , \read_buffer_0/init_wait[3]/Y , 
        \spi_master_0/data_out_q[5]/Y , \spi_master_0/data_out_q[3]/Y , 
        \spi_mode_config_0/rst_cntr[2]/Y , 
        \read_buffer_0/init_wait[5]/Y , 
        \spi_mode_config_0/rst_cntr[1]/Y , 
        \read_buffer_0/init_wait[0]/Y , 
        \spi_mode_config_0/begin_pass_b/Y , 
        \spi_mode_config_0/rst_cntr[3]/Y , \spi_master_0/mosi_q/Y , 
        \read_buffer_0/init_wait[7]/Y , 
        \spi_mode_config_0/byte_out_b[5]/Y , 
        \spi_mode_config_0/ss_b/Y , 
        \spi_mode_config_0/byte_tracker_b_0/Y , 
        \spi_mode_config_0/byte_out_b[7]/Y , 
        \spi_mode_config_0/rst_cntr[6]/Y , 
        \spi_mode_config_0/config_cntr_b[2]/Y , 
        \spi_master_0/data_q[6]/Y , \spi_master_0/data_out_q[6]/Y , 
        \spi_master_0/data_q[4]/Y , \spi_master_0/data_out_q[4]/Y , 
        \spi_master_0/ctr_q[0]/Y , \read_buffer_0/init_wait[1]/Y , 
        \spi_master_0/data_q[7]/Y , 
        \spi_mode_config_0/config_cntr_b[1]/Y , 
        \spi_master_0/ctr_q[2]/Y , \read_buffer_0/byte_out[3]/Y , 
        \spi_mode_config_0/state_b[0]/Y , 
        \spi_mode_config_0/rst_cntr[5]/Y , \spi_master_0/data_q[1]/Y , 
        \spi_master_0/data_out_q[1]/Y , \read_buffer_0/init_wait[4]/Y , 
        \spi_mode_config_0/config_cntr_b[5]/Y , 
        \spi_mode_config_0/state_b[2]/Y , AFLSDF_VCC, AFLSDF_GND;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign GND = GND_power_net1;
    assign AFLSDF_GND = GND_power_net1;
    assign VCC = VCC_power_net1;
    assign AFLSDF_VCC = VCC_power_net1;
    
    IOTRI_OB_EB \ds6_pad/U0/U1  (.D(ds6_c), .E(VCC), .DOUT(
        \ds6_pad/U0/NET1 ), .EOUT(\ds6_pad/U0/NET2 ));
    DFN1C0 \spi_mode_config_0/config_cntr_b[6]/U1  (.D(
        \spi_mode_config_0/config_cntr_b[6]/Y ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_1), .Q(
        \spi_mode_config_0/config_cntr_b[6] ));
    OR3 \spi_mode_config_0/byte_out_a_RNO_0[1]  (.A(
        \spi_mode_config_0/N_588 ), .B(\spi_mode_config_0/N_693 ), .C(
        \spi_mode_config_0/byte_out_a_8_1_0_5[1] ), .Y(
        \spi_mode_config_0/byte_out_a_8_1_0_9[1] ));
    AX1C \clock_div_26MHZ_1MHZ_0/un5_counter_I_12  (.A(
        \clock_div_26MHZ_1MHZ_0/counter[3]_net_1 ), .B(
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[0] ), .C(
        \clock_div_26MHZ_1MHZ_0/counter[4]_net_1 ), .Y(
        \clock_div_26MHZ_1MHZ_0/I_12_0 ));
    AO1 \spi_mode_config_0/byte_out_a_RNO_9[0]  (.A(
        \spi_mode_config_0/N_386 ), .B(\spi_mode_config_0/N_672 ), .C(
        \spi_mode_config_0/N_252 ), .Y(
        \spi_mode_config_0/byte_out_a_8_1_4[0] ));
    OR3 \spi_mode_config_0/byte_out_a_RNO_0[5]  (.A(
        \spi_mode_config_0/N_456 ), .B(\spi_mode_config_0/N_537 ), .C(
        \spi_mode_config_0/N_539 ), .Y(
        \spi_mode_config_0/byte_out_a_8_i_i_6[5] ));
    AOI1B \spi_mode_config_0/state_b_RNO[1]  (.A(
        \spi_mode_config_0/byte_out_b_1_sqmuxa_i_i_a3_1 ), .B(
        \spi_mode_config_0/byte_out_b_1_sqmuxa_i_i_a3_0 ), .C(
        \spi_mode_config_0/state_a[1]_net_1 ), .Y(
        \spi_mode_config_0/state_b_6[1] ));
    XOR2 \clock_div_1MHZ_10HZ_0/un5_counter_I_43  (.A(
        \clock_div_1MHZ_10HZ_0/N_3 ), .B(
        \clock_div_1MHZ_10HZ_0/counter[15]_net_1 ), .Y(
        \clock_div_1MHZ_10HZ_0/I_43 ));
    INV \read_buffer_0/byte_out_RNO[1]  (.A(
        \read_buffer_0/position[0]_net_1 ), .Y(
        \read_buffer_0/position_i[0] ));
    NOR2A \spi_mode_config_0/byte_tracker_b_RNIVE2U  (.A(
        \spi_mode_config_0/byte_tracker_b ), .B(
        \spi_mode_config_0/N_409 ), .Y(\spi_mode_config_0/N_327 ));
    XA1 \read_buffer_0/init_wait_RNO[3]  (.A(
        \read_buffer_0/init_wait[3] ), .B(\read_buffer_0/init_wait_c2 )
        , .C(\read_buffer_0/un1_init_wait ), .Y(
        \read_buffer_0/init_wait_n3 ));
    XNOR2 \read_buffer_0/init_stage_RNO_0[1]  (.A(
        \read_buffer_0/init_stage[1]_net_1 ), .B(
        \read_buffer_0/init_stage[0]_net_1 ), .Y(
        \read_buffer_0/init_stage_ns_i_a2_2_tz_tz[1] ));
    XOR2 \clock_div_26MHZ_1MHZ_0/un5_counter_I_37  (.A(
        \clock_div_26MHZ_1MHZ_0/N_5 ), .B(
        \clock_div_26MHZ_1MHZ_0/counter[13]_net_1 ), .Y(
        \clock_div_26MHZ_1MHZ_0/I_37_0 ));
    OR3A \spi_mode_config_0/byte_out_a_RNO_1[0]  (.A(
        \spi_mode_config_0/N_827 ), .B(\spi_mode_config_0/N_253 ), .C(
        \spi_mode_config_0/N_262 ), .Y(
        \spi_mode_config_0/byte_out_a_8_1_7[0] ));
    AND3 \clock_div_1MHZ_10HZ_0/un5_counter_I_39  (.A(
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[6] ), .B(
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[7] ), .C(
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[8] ), .Y(
        \clock_div_1MHZ_10HZ_0/N_4 ));
    DFN0 \spi_mode_config_0/byte_out_a[3]  (.D(
        \spi_mode_config_0/byte_out_a_8[3] ), .CLK(
        \spi_master_0.state_q_89 ), .Q(
        \spi_mode_config_0/byte_out_a[3]_net_1 ));
    DFN1C0 \clock_div_1MHZ_10HZ_0/counter[15]  (.D(
        \clock_div_1MHZ_10HZ_0/counter_3[15] ), .CLK(
        clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT), .CLR(reset_pulse_0_RESET)
        , .Q(\clock_div_1MHZ_10HZ_0/counter[15]_net_1 ));
    NOR2A \spi_mode_config_0/byte_out_a_RNO_9[6]  (.A(
        \spi_mode_config_0/config_cntr_b[1] ), .B(
        \spi_mode_config_0/config_cntr_b[5] ), .Y(
        \spi_mode_config_0/byte_out_a_8_1_0_a3_1[6] ));
    DFN1C1 \clock_div_26MHZ_1MHZ_0/counter[14]  (.D(
        \clock_div_26MHZ_1MHZ_0/I_40_0 ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET), .Q(
        \clock_div_26MHZ_1MHZ_0/counter[14]_net_1 ));
    MX2 \spi_master_0/data_q_RNO[3]  (.A(\spi_master_0/data_q[2] ), .B(
        \spi_mode_config_0_byte_out[3] ), .S(\spi_master_0.state_q_89 )
        , .Y(\spi_master_0/data_d[3] ));
    OR2 \spi_mode_config_0/state_b_RNIBP68[0]  (.A(
        \spi_mode_config_0/N_365 ), .B(\spi_mode_config_0/N_364 ), .Y(
        \spi_mode_config_0/N_367 ));
    NOR2B \read_buffer_0/init_wait_RNIEEOD1[3]  (.A(
        \read_buffer_0/init_wait_c2 ), .B(\read_buffer_0/init_wait[3] )
        , .Y(\read_buffer_0/init_wait_c3 ));
    NOR2B \clock_div_1MHZ_10HZ_0/counter_RNIJF0V[14]  (.A(
        \clock_div_1MHZ_10HZ_0/counter[15]_net_1 ), .B(
        \clock_div_1MHZ_10HZ_0/counter[14]_net_1 ), .Y(
        \clock_div_1MHZ_10HZ_0/clk_out5_1 ));
    DFN1P1 \clock_div_26MHZ_1MHZ_0/clk_out  (.D(
        \clock_div_26MHZ_1MHZ_0/clk_out_RNO_0 ), .CLK(GLA), .PRE(
        reset_pulse_0_RESET_4), .Q(\clock_div_26MHZ_1MHZ_0/clk_out_i ));
    DFN1P0 \read_buffer_0/init_stage[0]  (.D(GND), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .PRE(reset_pulse_0_RESET_3), .Q(
        \read_buffer_0/init_stage[0]_net_1 ));
    AO1A \spi_mode_config_0/byte_out_a_RNO_1[6]  (.A(
        \spi_mode_config_0/N_381 ), .B(\spi_mode_config_0/N_633 ), .C(
        \spi_mode_config_0/N_530 ), .Y(
        \spi_mode_config_0/byte_out_a_8_1_0_2[6] ));
    DFN1C0 \orbit_control_0/cntr[5]  (.D(\orbit_control_0/cntr_n5 ), 
        .CLK(clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_4), .Q(\orbit_control_0/cntr[5]_net_1 ));
    DFN1C0 \spi_master_0/data_q[5]/U1  (.D(\spi_master_0/data_q[5]/Y ), 
        .CLK(GLA), .CLR(reset_pulse_0_RESET_2), .Q(
        \spi_master_0/data_q[5] ));
    NOR2 \clock_div_26MHZ_1MHZ_0/counter_RNISC7A[4]  (.A(
        \clock_div_26MHZ_1MHZ_0/counter[4]_net_1 ), .B(
        \clock_div_26MHZ_1MHZ_0/counter[8]_net_1 ), .Y(
        \clock_div_26MHZ_1MHZ_0/clk_out5_6 ));
    OR3 \spi_mode_config_0/byte_out_a_RNO_2[5]  (.A(
        \spi_mode_config_0/byte_out_a_8_i_i_4[5] ), .B(
        \spi_mode_config_0/byte_out_a_8_i_i_3[5] ), .C(
        \spi_mode_config_0/byte_out_a_8_i_i_7[5] ), .Y(
        \spi_mode_config_0/byte_out_a_8_i_i_10[5] ));
    XA1 \orbit_control_0/cntr_RNO[4]  (.A(
        \orbit_control_0/cntr[4]_net_1 ), .B(\orbit_control_0/cntr_c3 )
        , .C(\orbit_control_0/cntr13 ), .Y(\orbit_control_0/cntr_n4 ));
    OR2 \spi_mode_config_0/config_cntr_b_RNIFFNH[5]  (.A(
        \spi_mode_config_0/N_43 ), .B(
        \spi_mode_config_0/config_cntr_b[5] ), .Y(
        \spi_mode_config_0/N_439 ));
    MX2 \read_buffer_0/init_wait[4]/U0  (.A(
        \read_buffer_0/init_wait_n4 ), .B(\read_buffer_0/init_wait[4] )
        , .S(\read_buffer_0/init_stage_177_d ), .Y(
        \read_buffer_0/init_wait[4]/Y ));
    NOR2B \spi_mode_config_0/un1_config_cntr_b_7_I_32  (.A(
        \spi_mode_config_0/DWACT_ADD_CI_0_TMP[0] ), .B(
        \spi_mode_config_0/config_cntr_b[1] ), .Y(
        \spi_mode_config_0/DWACT_ADD_CI_0_g_array_1[0] ));
    OR3B \spi_mode_config_0/rst_cntr_RNI7DQ6[4]  (.A(
        \spi_mode_config_0/rst_cntr[3] ), .B(
        \spi_mode_config_0/rst_cntr[4] ), .C(\spi_mode_config_0/N_378 )
        , .Y(\spi_mode_config_0/N_383 ));
    OA1C \spi_mode_config_0/byte_tracker_a_RNO_0  (.A(
        \spi_mode_config_0/config_cntr_b[6] ), .B(
        \spi_mode_config_0/N_432 ), .C(\spi_mode_config_0/N_392 ), .Y(
        \spi_mode_config_0/N_515 ));
    OR2 \spi_mode_config_0/config_cntr_b_RNI186M_0[6]  (.A(
        \spi_mode_config_0/N_396 ), .B(
        \spi_mode_config_0/config_cntr_b[6] ), .Y(
        \spi_mode_config_0/N_416 ));
    XOR2 \read_buffer_0/un1_position_2_I_8  (.A(
        \read_buffer_0/position[0]_net_1 ), .B(
        \read_buffer_0/init_stage_177_d ), .Y(
        \read_buffer_0/DWACT_ADD_CI_0_partial_sum[0] ));
    OR2A \spi_mode_config_0/config_cntr_b_RNII7QB[3]  (.A(
        \spi_mode_config_0/config_cntr_b[1] ), .B(
        \spi_mode_config_0/config_cntr_b[3] ), .Y(
        \spi_mode_config_0/N_476 ));
    XOR2 \clock_div_26MHZ_1MHZ_0/un5_counter_I_9  (.A(
        \clock_div_26MHZ_1MHZ_0/N_15 ), .B(
        \clock_div_26MHZ_1MHZ_0/counter[3]_net_1 ), .Y(
        \clock_div_26MHZ_1MHZ_0/I_9_0 ));
    DFN1C0 \spi_master_0/ctr_q[0]/U1  (.D(\spi_master_0/ctr_q[0]/Y ), 
        .CLK(GLA), .CLR(reset_pulse_0_RESET_1), .Q(
        \spi_master_0/ctr_q[0] ));
    DFN1C0 \read_buffer_0/init_wait[5]/U1  (.D(
        \read_buffer_0/init_wait[5]/Y ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_2), .Q(
        \read_buffer_0/init_wait[5] ));
    OR2A \spi_mode_config_0/config_cntr_b_RNI2R3E[0]  (.A(
        \spi_mode_config_0/config_cntr_b[0] ), .B(
        \spi_mode_config_0/N_367 ), .Y(\spi_mode_config_0/N_392 ));
    DFN1C0 \read_buffer_0/byte_out[6]  (.D(
        \read_buffer_0/byte_out_RNO[6]_net_1 ), .CLK(
        spi_mode_config_0_next_cmd), .CLR(reset_pulse_0_RESET_4), .Q(
        \read_buffer_0.byte_out[6] ));
    DFN1C0 \clock_div_1MHZ_10HZ_0/counter[14]  (.D(
        \clock_div_1MHZ_10HZ_0/counter_3[14] ), .CLK(
        clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT), .CLR(reset_pulse_0_RESET)
        , .Q(\clock_div_1MHZ_10HZ_0/counter[14]_net_1 ));
    NOR3B \spi_mode_config_0/byte_out_a_RNO_4[0]  (.A(
        \spi_mode_config_0/N_300 ), .B(\spi_mode_config_0/N_382 ), .C(
        \spi_mode_config_0/N_413 ), .Y(\spi_mode_config_0/N_260 ));
    XNOR2 \spi_mode_config_0/rst_cntr_RNO[0]  (.A(
        \spi_mode_config_0/un74lto0 ), .B(\spi_mode_config_0/N_397 ), 
        .Y(\spi_mode_config_0/N_460_i ));
    OR2 \spi_mode_config_0/config_cntr_b_RNIBBNH[1]  (.A(
        \spi_mode_config_0/N_43 ), .B(
        \spi_mode_config_0/config_cntr_b[1] ), .Y(
        \spi_mode_config_0/N_403 ));
    DFN1C0 \read_buffer_0/init_wait[2]/U1  (.D(
        \read_buffer_0/init_wait[2]/Y ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_2), .Q(
        \read_buffer_0/init_wait[2] ));
    AOI1B \spi_mode_config_0/config_cntr_a_RNO[6]  (.A(
        \spi_mode_config_0/state_a_7_i_0_a3_1_0[0] ), .B(
        \spi_mode_config_0/N_647 ), .C(\spi_mode_config_0/I_28_1 ), .Y(
        \spi_mode_config_0/config_cntr_a_86[6] ));
    MX2 \spi_mode_config_0/rst_cntr[10]/U0  (.A(
        \spi_mode_config_0/rst_cntr_n10 ), .B(
        \spi_mode_config_0/ss_b11lto10 ), .S(\spi_mode_config_0/N_397 )
        , .Y(\spi_mode_config_0/rst_cntr[10]/Y ));
    IOPAD_TRI \ds5_pad/U0/U0  (.D(\ds5_pad/U0/NET1 ), .E(
        \ds5_pad/U0/NET2 ), .PAD(ds5));
    NOR2 \clock_div_26MHZ_1MHZ_0/counter_RNIB9ND[7]  (.A(
        \clock_div_26MHZ_1MHZ_0/counter[7]_net_1 ), .B(
        \clock_div_26MHZ_1MHZ_0/counter[13]_net_1 ), .Y(
        \clock_div_26MHZ_1MHZ_0/clk_out5_2 ));
    NOR2B \spi_mode_config_0/byte_out_a_RNO_17[3]  (.A(
        \spi_mode_config_0/N_570_1 ), .B(\spi_mode_config_0/N_670 ), 
        .Y(\spi_mode_config_0/N_570 ));
    XA1 \orbit_control_0/cntr_RNO[1]  (.A(
        \orbit_control_0/cntr[1]_net_1 ), .B(
        \orbit_control_0/cntr[0]_net_1 ), .C(\orbit_control_0/cntr13 ), 
        .Y(\orbit_control_0/cntr_n1 ));
    NOR2A \spi_mode_config_0/byte_out_a_RNO_21[2]  (.A(
        \spi_mode_config_0/config_cntr_b[3] ), .B(
        \spi_mode_config_0/N_388 ), .Y(\spi_mode_config_0/N_677 ));
    CLKINT \spi_mode_config_0/next_b_RNI28CE  (.A(
        \spi_mode_config_0/next_b_i ), .Y(spi_mode_config_0_next_cmd));
    DFN1C0 \read_buffer_0/init_stage[1]  (.D(
        \read_buffer_0/init_stage_RNO[1]_net_1 ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_3), .Q(
        \read_buffer_0/init_stage[1]_net_1 ));
    AND3 \clock_div_26MHZ_1MHZ_0/un5_counter_I_39  (.A(
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[6] ), .B(
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[7] ), .C(
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[8] ), .Y(
        \clock_div_26MHZ_1MHZ_0/N_4 ));
    XOR2 \clock_div_1MHZ_10HZ_0/un5_counter_I_17  (.A(
        \clock_div_1MHZ_10HZ_0/N_12 ), .B(
        \clock_div_1MHZ_10HZ_0/counter[6]_net_1 ), .Y(
        \clock_div_1MHZ_10HZ_0/I_17 ));
    AO1A \spi_mode_config_0/state_b_RNIQ7MD[0]  (.A(
        \spi_mode_config_0/state_b[0] ), .B(\spi_mode_config_0/N_369 ), 
        .C(\spi_mode_config_0/N_667 ), .Y(
        \spi_mode_config_0/byte_out_a_8_i_i_o2_4_1[5] ));
    AOI1 \spi_mode_config_0/state_a_RNO[0]  (.A(
        \spi_mode_config_0/state_a_7_i_0_a3_1_0[0] ), .B(
        \spi_mode_config_0/N_647 ), .C(
        \spi_mode_config_0/state_a_7_i_0_0[0] ), .Y(
        \spi_mode_config_0/N_31 ));
    MX2 \spi_mode_config_0/rst_cntr[9]/U0  (.A(
        \spi_mode_config_0/N_503_i ), .B(
        \spi_mode_config_0/rst_cntr[9] ), .S(\spi_mode_config_0/N_397 )
        , .Y(\spi_mode_config_0/rst_cntr[9]/Y ));
    AOI1B \spi_mode_config_0/byte_out_b_RNO[1]  (.A(
        \spi_mode_config_0/byte_out_b_1_sqmuxa_i_i_a3_1 ), .B(
        \spi_mode_config_0/byte_out_b_1_sqmuxa_i_i_a3_0 ), .C(
        \spi_mode_config_0/byte_out_a[1]_net_1 ), .Y(
        \spi_mode_config_0/byte_out_b_6[1] ));
    AX1C \clock_div_26MHZ_1MHZ_0/clk_out_RNO  (.A(
        \clock_div_26MHZ_1MHZ_0/clk_out5_13 ), .B(
        \clock_div_26MHZ_1MHZ_0/clk_out5_14 ), .C(
        \clock_div_26MHZ_1MHZ_0/clk_out_i ), .Y(
        \clock_div_26MHZ_1MHZ_0/clk_out_RNO_0 ));
    OA1B \spi_mode_config_0/byte_out_a_RNO_24[2]  (.A(
        \spi_mode_config_0/N_322 ), .B(\spi_mode_config_0/N_346 ), .C(
        \spi_mode_config_0_byte_out[2] ), .Y(
        \spi_mode_config_0/byte_out_a_8_i_a4_1_0[2] ));
    NOR2B \orbit_control_0/cntr_RNO_0[12]  (.A(
        \orbit_control_0/cntr[11]_net_1 ), .B(\orbit_control_0/cntr13 )
        , .Y(\orbit_control_0/cntr_25_0 ));
    NOR2A \spi_mode_config_0/config_cntr_b_RNIRV7A1[1]  (.A(
        \spi_mode_config_0/N_643 ), .B(\spi_mode_config_0/N_403 ), .Y(
        \spi_mode_config_0/N_678 ));
    IOPAD_TRI \MOSI_pad/U0/U0  (.D(\MOSI_pad/U0/NET1 ), .E(
        \MOSI_pad/U0/NET2 ), .PAD(MOSI));
    DFN1C0 \spi_mode_config_0/config_cntr_b[4]/U1  (.D(
        \spi_mode_config_0/config_cntr_b[4]/Y ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_1), .Q(
        \spi_mode_config_0/config_cntr_b[4] ));
    MX2 \spi_master_0/data_q_RNO[2]  (.A(\spi_master_0/data_q[1] ), .B(
        \spi_mode_config_0_byte_out[2] ), .S(\spi_master_0.state_q_89 )
        , .Y(\spi_master_0/data_d[2] ));
    XOR2 \clock_div_26MHZ_1MHZ_0/un5_counter_I_5  (.A(
        \clock_div_26MHZ_1MHZ_0/counter[0]_net_1 ), .B(
        \clock_div_26MHZ_1MHZ_0/counter[1]_net_1 ), .Y(
        \clock_div_26MHZ_1MHZ_0/I_5_0 ));
    AND3C \spi_mode_config_0/byte_out_a_RNO_11[2]  (.A(
        \spi_mode_config_0/N_375 ), .B(
        \spi_mode_config_0/config_cntr_b[5] ), .C(
        \spi_mode_config_0/N_404 ), .Y(\spi_mode_config_0/N_232 ));
    MX2 \spi_mode_config_0/ss_b/U0  (.A(SS_c), .B(
        \spi_mode_config_0/ss_b_1_sqmuxa_1 ), .S(
        \spi_mode_config_0/N_824 ), .Y(\spi_mode_config_0/ss_b/Y ));
    OR3 \spi_mode_config_0/byte_out_a_RNO_0[0]  (.A(
        \spi_mode_config_0/N_254 ), .B(\spi_mode_config_0/N_260 ), .C(
        \spi_mode_config_0/byte_out_a_8_1_1[0] ), .Y(
        \spi_mode_config_0/byte_out_a_8_1_8[0] ));
    DFN1C1 \clock_div_26MHZ_1MHZ_0/counter[12]  (.D(
        \clock_div_26MHZ_1MHZ_0/I_35_0 ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET), .Q(
        \clock_div_26MHZ_1MHZ_0/counter[12]_net_1 ));
    AO1A \spi_mode_config_0/byte_tracker_b_0_RNI3OVE2  (.A(
        \spi_mode_config_0/N_391 ), .B(\spi_mode_config_0/N_433 ), .C(
        \spi_mode_config_0/N_638 ), .Y(
        \spi_mode_config_0/byte_out_a_8_i_i_o3_0[5] ));
    NOR3B \spi_mode_config_0/byte_out_a_RNO_12[5]  (.A(
        \spi_mode_config_0/config_cntr_b[6] ), .B(
        \spi_mode_config_0_byte_out[5] ), .C(
        \spi_mode_config_0/byte_tracker_b_0 ), .Y(
        \spi_mode_config_0/N_546 ));
    XA1 \orbit_control_0/cntr_RNO[2]  (.A(
        \orbit_control_0/cntr[2]_net_1 ), .B(\orbit_control_0/cntr_c1 )
        , .C(\orbit_control_0/cntr13 ), .Y(\orbit_control_0/cntr_n2 ));
    NOR2B \spi_mode_config_0/state_b_RNIPPJ4[1]  (.A(
        \spi_mode_config_0/state_b[1] ), .B(
        \spi_mode_config_0/state_b[0] ), .Y(\spi_mode_config_0/N_666 ));
    OR2B \spi_mode_config_0/begin_pass_b_RNIAEKK  (.A(
        spi_mode_config_0_begin_pass), .B(orbit_control_0_tx_enable), 
        .Y(\spi_mode_config_0/N_418 ));
    NOR3A \spi_mode_config_0/byte_out_a_RNO_14[2]  (.A(
        \spi_mode_config_0/N_142 ), .B(\spi_mode_config_0_byte_out[2] )
        , .C(\spi_mode_config_0/N_449 ), .Y(\spi_mode_config_0/N_225 ));
    OR2 \spi_mode_config_0/state_b_RNIT9TR[2]  (.A(
        \spi_mode_config_0/N_407 ), .B(\spi_mode_config_0/N_398 ), .Y(
        \spi_mode_config_0/N_409 ));
    AND3B \spi_mode_config_0/state_b_RNI1JGE[1]  (.A(
        \spi_mode_config_0/N_424 ), .B(ds7_c), .C(
        \spi_mode_config_0/N_666 ), .Y(\spi_mode_config_0/N_628 ));
    NOR2A \spi_mode_config_0/byte_out_a_RNO_10[5]  (.A(
        \spi_mode_config_0/N_43 ), .B(\spi_mode_config_0/N_382 ), .Y(
        \spi_mode_config_0/byte_out_a_8_i_i_a3_7_0[5] ));
    NOR2A \spi_mode_config_0/config_cntr_b_RNITE3S[5]  (.A(
        \spi_mode_config_0/config_cntr_b[5] ), .B(
        \spi_mode_config_0/N_375 ), .Y(\spi_mode_config_0/N_632 ));
    AO1 \spi_mode_config_0/byte_out_a_RNO_8[3]  (.A(
        \spi_mode_config_0/byte_out_a_8_1_0_a3_9_0[3] ), .B(
        \spi_mode_config_0/N_643 ), .C(\spi_mode_config_0/N_570 ), .Y(
        \spi_mode_config_0/byte_out_a_8_1_0_7[3] ));
    OA1B \spi_mode_config_0/byte_out_a_RNO_18[1]  (.A(
        \spi_mode_config_0/N_379 ), .B(\spi_mode_config_0/N_685 ), .C(
        \spi_mode_config_0/N_365 ), .Y(
        \spi_mode_config_0/byte_out_a_8_1_0_a3_0[1] ));
    AOI1 \spi_mode_config_0/state_a_RNO_6[2]  (.A(
        \spi_mode_config_0/N_391 ), .B(\spi_mode_config_0/state_b[2] ), 
        .C(orbit_control_0_tx_enable), .Y(\spi_mode_config_0/N_593 ));
    NOR3A \spi_mode_config_0/byte_out_a_RNO_20[0]  (.A(
        \spi_mode_config_0/byte_out_a_8_1_a4_10_0_a3_1[0] ), .B(
        \spi_mode_config_0/state_b[2] ), .C(\spi_mode_config_0/N_391 ), 
        .Y(\spi_mode_config_0/N_263 ));
    DFN1C0 \clock_div_1MHZ_10HZ_0/counter[16]  (.D(
        \clock_div_1MHZ_10HZ_0/I_46 ), .CLK(
        clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT), .CLR(reset_pulse_0_RESET)
        , .Q(\clock_div_1MHZ_10HZ_0/counter[16]_net_1 ));
    OR2A \spi_mode_config_0/state_b_RNIBP68[2]  (.A(
        \spi_mode_config_0/state_b[2] ), .B(\spi_mode_config_0/N_391 ), 
        .Y(\spi_mode_config_0/N_407 ));
    NOR2A \spi_mode_config_0/config_cntr_b_RNIRC3S_0[3]  (.A(
        \spi_mode_config_0/config_cntr_b[3] ), .B(
        \spi_mode_config_0/N_375 ), .Y(\spi_mode_config_0/N_300 ));
    AND3 \clock_div_1MHZ_10HZ_0/un5_counter_I_24  (.A(
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[0] ), .B(
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[2] ), .C(
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[3] ), .Y(
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[4] ));
    NOR3C \spi_mode_config_0/byte_out_a_RNO_3[6]  (.A(
        \spi_mode_config_0/N_300 ), .B(\spi_mode_config_0/N_468 ), .C(
        \spi_mode_config_0/byte_out_a_8_1_0_a3_1[6] ), .Y(
        \spi_mode_config_0/N_528 ));
    DFN1C1 \clock_div_26MHZ_1MHZ_0/counter[15]  (.D(
        \clock_div_26MHZ_1MHZ_0/I_43_0 ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET), .Q(
        \clock_div_26MHZ_1MHZ_0/counter[15]_net_1 ));
    OR3 \spi_mode_config_0/start_a_RNO_1  (.A(
        \spi_mode_config_0/N_281 ), .B(\spi_mode_config_0/N_282 ), .C(
        \spi_mode_config_0/un1_mem_enable_a21_26_2 ), .Y(
        \spi_mode_config_0/un1_mem_enable_a21_26 ));
    OR3 \spi_mode_config_0/state_b_RNIDHCA1[2]  (.A(
        \spi_mode_config_0/N_622 ), .B(\spi_mode_config_0/N_623 ), .C(
        \spi_mode_config_0/N_629 ), .Y(\spi_mode_config_0/N_411 ));
    DFN1C0 \spi_master_0/sck_q[1]  (.D(\spi_master_0/N_19 ), .CLK(GLA), 
        .CLR(reset_pulse_0_RESET_3), .Q(\spi_master_0/sck_q[1]_net_1 ));
    IOPAD_TRI \ds0_pad/U0/U0  (.D(\ds0_pad/U0/NET1 ), .E(
        \ds0_pad/U0/NET2 ), .PAD(ds0));
    AO1B \spi_mode_config_0/start_a_RNO_4  (.A(
        \spi_mode_config_0/N_386 ), .B(\spi_mode_config_0/N_672 ), .C(
        \spi_mode_config_0/state_b[0] ), .Y(
        \spi_mode_config_0/un1_mem_enable_a21_27_i_0_1 ));
    NOR3B \clock_div_26MHZ_1MHZ_0/counter_RNI16I01[9]  (.A(
        \clock_div_26MHZ_1MHZ_0/counter[3]_net_1 ), .B(
        \clock_div_26MHZ_1MHZ_0/clk_out5_8 ), .C(
        \clock_div_26MHZ_1MHZ_0/counter[9]_net_1 ), .Y(
        \clock_div_26MHZ_1MHZ_0/clk_out5_12 ));
    DFN1C1 \clock_div_26MHZ_1MHZ_0/counter[7]  (.D(
        \clock_div_26MHZ_1MHZ_0/I_20_0 ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_3), .Q(
        \clock_div_26MHZ_1MHZ_0/counter[7]_net_1 ));
    OR3 \spi_mode_config_0/byte_out_a_RNO_2[4]  (.A(
        \spi_mode_config_0/N_456 ), .B(\spi_mode_config_0/N_551 ), .C(
        \spi_mode_config_0/byte_out_a_8_i_i_3[4] ), .Y(
        \spi_mode_config_0/byte_out_a_8_i_i_7[4] ));
    XA1 \orbit_control_0/cntr_RNO[5]  (.A(
        \orbit_control_0/cntr[5]_net_1 ), .B(\orbit_control_0/cntr_c4 )
        , .C(\orbit_control_0/cntr13 ), .Y(\orbit_control_0/cntr_n5 ));
    AO1A \spi_mode_config_0/byte_out_a_RNO_10[0]  (.A(
        \spi_mode_config_0/N_288 ), .B(
        \spi_mode_config_0/byte_out_a_8_1_a4_12_0[0] ), .C(
        \spi_mode_config_0/N_197 ), .Y(
        \spi_mode_config_0/byte_out_a_8_1_3[0] ));
    AO1A \spi_mode_config_0/byte_out_a_RNO_6[1]  (.A(
        \spi_mode_config_0/N_404 ), .B(\spi_mode_config_0/N_646 ), .C(
        \spi_mode_config_0/N_586 ), .Y(
        \spi_mode_config_0/byte_out_a_8_1_0_3[1] ));
    AO1 \spi_mode_config_0/byte_out_a_RNO_0[6]  (.A(
        \spi_mode_config_0/N_438 ), .B(\spi_mode_config_0_byte_out[6] )
        , .C(\spi_mode_config_0/N_528 ), .Y(
        \spi_mode_config_0/byte_out_a_8_1_0_3[6] ));
    NOR3A \spi_master_0/sck_q_RNO[1]  (.A(\spi_master_0/N_154 ), .B(
        \spi_master_0/N_36 ), .C(\spi_master_0/state_q_i_d[0] ), .Y(
        \spi_master_0/N_19 ));
    MX2 \spi_master_0/data_q[5]/U0  (.A(\spi_master_0/data_q[5] ), .B(
        \spi_master_0/data_d[5] ), .S(
        \spi_master_0/un1_data_d_0_sqmuxa ), .Y(
        \spi_master_0/data_q[5]/Y ));
    DFN1P0 \spi_mode_config_0/state_b[0]/U1  (.D(
        \spi_mode_config_0/state_b[0]/Y ), .CLK(GLA), .PRE(
        reset_pulse_0_RESET_0), .Q(\spi_mode_config_0/state_b[0] ));
    AO1B \spi_mode_config_0/state_b_RNIA17B1[1]  (.A(
        \spi_mode_config_0/N_386 ), .B(\spi_mode_config_0/N_666 ), .C(
        \spi_mode_config_0/N_391 ), .Y(\spi_mode_config_0/N_694 ));
    OR2 \spi_mode_config_0/config_cntr_b_RNICJ0B1[3]  (.A(
        \spi_mode_config_0/N_671 ), .B(\spi_mode_config_0/N_372 ), .Y(
        \spi_mode_config_0/N_379 ));
    OR3A \spi_mode_config_0/byte_out_a_RNO_6[0]  (.A(
        \spi_mode_config_0/config_cntr_b[1] ), .B(
        \spi_mode_config_0/N_396 ), .C(\spi_mode_config_0/N_617 ), .Y(
        \spi_mode_config_0/N_827 ));
    DFN0 \spi_mode_config_0/byte_out_a[7]  (.D(
        \spi_mode_config_0/byte_out_a_8[7] ), .CLK(
        \spi_master_0.state_q_89 ), .Q(
        \spi_mode_config_0/byte_out_a[7]_net_1 ));
    OR3A \spi_mode_config_0/byte_out_a_8_1_a4_8_2_i_o2[0]  (.A(ds5_c), 
        .B(ds4_c), .C(ds6_c), .Y(\spi_mode_config_0/N_369 ));
    OA1 \spi_mode_config_0/byte_out_a_RNO_7[7]  (.A(
        \spi_mode_config_0/N_364 ), .B(\spi_mode_config_0/N_624 ), .C(
        \spi_mode_config_0/state_b[2] ), .Y(\spi_mode_config_0/N_686 ));
    NOR2A \spi_mode_config_0/byte_tracker_b_RNIILSJ  (.A(
        \spi_mode_config_0/N_647 ), .B(
        \spi_mode_config_0/byte_tracker_b ), .Y(
        \spi_mode_config_0/N_648 ));
    NOR3A \spi_mode_config_0/config_cntr_b_RNI30OJ1[5]  (.A(
        \spi_mode_config_0/N_644 ), .B(\spi_mode_config_0/N_388 ), .C(
        \spi_mode_config_0/N_371 ), .Y(\spi_mode_config_0/N_638 ));
    AO1B \spi_mode_config_0/config_cntr_b_RNI5GKN[3]  (.A(
        \spi_mode_config_0/config_cntr_b[3] ), .B(
        \spi_mode_config_0/config_cntr_b[2] ), .C(
        \spi_mode_config_0/N_476 ), .Y(\spi_mode_config_0/N_414 ));
    DFN1C1 \clock_div_26MHZ_1MHZ_0/counter[6]  (.D(
        \clock_div_26MHZ_1MHZ_0/I_17_0 ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_3), .Q(
        \clock_div_26MHZ_1MHZ_0/counter[6]_net_1 ));
    CLKINT \clock_div_1MHZ_10HZ_0/clk_out_RNIT8C7  (.A(
        \clock_div_1MHZ_10HZ_0/clk_out_i ), .Y(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT));
    NOR2B \spi_mode_config_0/byte_tracker_a_RNO_8  (.A(
        \spi_mode_config_0/N_398 ), .B(\spi_mode_config_0/state_b[2] ), 
        .Y(\spi_mode_config_0/byte_tracker_a_0_0_0_a3_3_0 ));
    DFN1C1 \clock_div_26MHZ_1MHZ_0/counter[13]  (.D(
        \clock_div_26MHZ_1MHZ_0/I_37_0 ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET), .Q(
        \clock_div_26MHZ_1MHZ_0/counter[13]_net_1 ));
    OR2 \reset_pulse_0/RESET_2  (.A(BUF2_PBRST_T9_c), .B(CLK_48MHZ_c), 
        .Y(reset_pulse_0_RESET_2));
    AND3 \clock_div_26MHZ_1MHZ_0/un5_counter_I_36  (.A(
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[6] ), .B(
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[7] ), .C(
        \clock_div_26MHZ_1MHZ_0/counter[12]_net_1 ), .Y(
        \clock_div_26MHZ_1MHZ_0/N_5 ));
    DFN1C0 \spi_master_0/data_q[7]/U1  (.D(\spi_master_0/data_q[7]/Y ), 
        .CLK(GLA), .CLR(reset_pulse_0_RESET_2), .Q(
        \spi_master_0/data_q[7] ));
    DFN1C0 \orbit_control_0/cntr[1]  (.D(\orbit_control_0/cntr_n1 ), 
        .CLK(clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_3), .Q(\orbit_control_0/cntr[1]_net_1 ));
    IOTRI_OB_EB \ds5_pad/U0/U1  (.D(ds5_c), .E(VCC), .DOUT(
        \ds5_pad/U0/NET1 ), .EOUT(\ds5_pad/U0/NET2 ));
    NOR2A \spi_mode_config_0/start_a_RNO_18  (.A(
        \spi_mode_config_0/N_43 ), .B(\spi_mode_config_0/N_376 ), .Y(
        \spi_mode_config_0/N_360 ));
    NOR2B \read_buffer_0/byte_out_RNIQHIH[2]  (.A(
        \read_buffer_0/byte_out[2]_net_1 ), .B(
        \read_buffer_0.byte_out_cl[0] ), .Y(
        \read_buffer_0_BYTE_OUT[2] ));
    DFN1C0 \orbit_control_0/cntr[3]  (.D(\orbit_control_0/cntr_n3 ), 
        .CLK(clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_3), .Q(\orbit_control_0/cntr[3]_net_1 ));
    DFN1C0 \spi_mode_config_0/rst_cntr[7]/U1  (.D(
        \spi_mode_config_0/rst_cntr[7]/Y ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_0), .Q(\spi_mode_config_0/rst_cntr[7] ));
    AO1 \spi_mode_config_0/byte_out_a_RNO_9[1]  (.A(
        \spi_mode_config_0/N_381 ), .B(\spi_mode_config_0/N_300 ), .C(
        \spi_mode_config_0/N_584 ), .Y(
        \spi_mode_config_0/byte_out_a_8_1_0_6[1] ));
    OR3 \spi_mode_config_0/byte_out_a_RNO_0[2]  (.A(
        \spi_mode_config_0/N_359 ), .B(\spi_mode_config_0/N_234 ), .C(
        \spi_mode_config_0/byte_out_a_8_i_5[2] ), .Y(
        \spi_mode_config_0/byte_out_a_8_i_10[2] ));
    NOR3B \spi_mode_config_0/start_a_RNO_3  (.A(
        \spi_mode_config_0/state_b[2] ), .B(
        \spi_mode_config_0/un1_mem_enable_a21_27_i_a4_0 ), .C(
        \spi_mode_config_0/N_364 ), .Y(\spi_mode_config_0/N_279 ));
    OR2B \spi_mode_config_0/byte_out_a_RNO_25[3]  (.A(
        \spi_mode_config_0/N_43 ), .B(
        \spi_mode_config_0/config_cntr_b[5] ), .Y(
        \spi_mode_config_0/N_451 ));
    DFN1C0 \clock_div_1MHZ_10HZ_0/counter[10]  (.D(
        \clock_div_1MHZ_10HZ_0/I_28 ), .CLK(
        clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT), .CLR(reset_pulse_0_RESET)
        , .Q(\clock_div_1MHZ_10HZ_0/counter[10]_net_1 ));
    XA1 \read_buffer_0/init_wait_RNO[5]  (.A(
        \read_buffer_0/init_wait_c4 ), .B(\read_buffer_0/init_wait[5] )
        , .C(\read_buffer_0/un1_init_wait ), .Y(
        \read_buffer_0/init_wait_n5 ));
    NOR3B \spi_master_0/state_q_RNI8ILG[0]  (.A(
        \spi_master_0/sck_q[0]_net_1 ), .B(
        \spi_master_0/state_q[0]_net_1 ), .C(
        \spi_master_0/sck_q[1]_net_1 ), .Y(\spi_master_0/N_36 ));
    AND2 \clock_div_1MHZ_10HZ_0/un5_counter_I_38  (.A(
        \clock_div_1MHZ_10HZ_0/counter[12]_net_1 ), .B(
        \clock_div_1MHZ_10HZ_0/counter[13]_net_1 ), .Y(
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[8] ));
    NOR3 \spi_master_0/state_q_RNO[1]  (.A(\spi_master_0/N_34 ), .B(
        \spi_master_0/state_q_ns_0_i_0[1] ), .C(\spi_master_0/N_50 ), 
        .Y(\spi_master_0/N_13 ));
    OR3B \read_buffer_0/init_wait_RNI897P1[4]  (.A(
        \read_buffer_0/init_wait[8] ), .B(\read_buffer_0/init_wait[7] )
        , .C(\read_buffer_0/un1_init_waitlt8 ), .Y(
        \read_buffer_0/un1_init_wait ));
    NOR3A \spi_mode_config_0/byte_out_a_RNO_16[1]  (.A(
        \spi_mode_config_0/N_233_1 ), .B(\spi_mode_config_0/N_376 ), 
        .C(\spi_mode_config_0/N_371 ), .Y(\spi_mode_config_0/N_584 ));
    XA1B \spi_master_0/ctr_q_RNO[1]  (.A(\spi_master_0/ctr_q[0] ), .B(
        \spi_master_0/ctr_q[1] ), .C(\spi_master_0.state_q_89 ), .Y(
        \spi_master_0/N_9 ));
    XOR2 \clock_div_26MHZ_1MHZ_0/un5_counter_I_43  (.A(
        \clock_div_26MHZ_1MHZ_0/N_3 ), .B(
        \clock_div_26MHZ_1MHZ_0/counter[15]_net_1 ), .Y(
        \clock_div_26MHZ_1MHZ_0/I_43_0 ));
    OR3A \spi_mode_config_0/state_b_RNIGNT71[2]  (.A(
        \spi_mode_config_0/state_b[2] ), .B(\spi_mode_config_0/N_364 ), 
        .C(\spi_mode_config_0/N_624 ), .Y(
        \spi_mode_config_0/byte_out_a_8_i_i_o2_4_0[5] ));
    OR3A \spi_mode_config_0/start_a_RNO_7  (.A(
        \spi_mode_config_0/N_121_i ), .B(\spi_mode_config_0/N_284 ), 
        .C(\spi_mode_config_0/N_283 ), .Y(
        \spi_mode_config_0/un1_mem_enable_a21_26_2 ));
    NOR2A \spi_mode_config_0/byte_out_a_RNO_11[7]  (.A(
        \spi_mode_config_0/N_388 ), .B(\spi_mode_config_0/N_413 ), .Y(
        \spi_mode_config_0/byte_out_a_8_1_0_a3_1_1[7] ));
    OR2A \spi_mode_config_0/byte_out_a_RNO_8[6]  (.A(
        \spi_mode_config_0/config_cntr_b[4] ), .B(
        \spi_mode_config_0/config_cntr_b[2] ), .Y(
        \spi_mode_config_0/N_468 ));
    DFN1C0 \spi_mode_config_0/byte_out_b[4]/U1  (.D(
        \spi_mode_config_0/byte_out_b[4]/Y ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_1), .Q(\spi_mode_config_0_byte_out[4] ));
    DFN1C0 \spi_master_0/data_q[4]/U1  (.D(\spi_master_0/data_q[4]/Y ), 
        .CLK(GLA), .CLR(reset_pulse_0_RESET_2), .Q(
        \spi_master_0/data_q[4] ));
    MX2 \spi_mode_config_0/start_a_RNO  (.A(\spi_mode_config_0/N_35 ), 
        .B(spi_mode_config_0_start), .S(
        \spi_mode_config_0/un1_mem_enable_a21_26 ), .Y(
        \spi_mode_config_0/start_a_RNO_net_1 ));
    DFN1C0 \spi_mode_config_0/next_b/U1  (.D(
        \spi_mode_config_0/next_b/Y ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_2), .Q(\spi_mode_config_0/next_b_i ));
    MX2 \spi_mode_config_0/config_cntr_b[4]/U0  (.A(
        \spi_mode_config_0/config_cntr_a[4]_net_1 ), .B(
        \spi_mode_config_0/config_cntr_b[4] ), .S(
        \spi_mode_config_0/ss_a_net_1 ), .Y(
        \spi_mode_config_0/config_cntr_b[4]/Y ));
    DFN1C1 \clock_div_26MHZ_1MHZ_0/counter[2]  (.D(
        \clock_div_26MHZ_1MHZ_0/counter_3[2] ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_3), .Q(
        \clock_div_26MHZ_1MHZ_0/counter[2]_net_1 ));
    NOR2 \clock_div_1MHZ_10HZ_0/counter_RNI148N[5]  (.A(
        \clock_div_1MHZ_10HZ_0/counter[13]_net_1 ), .B(
        \clock_div_1MHZ_10HZ_0/counter[5]_net_1 ), .Y(
        \clock_div_1MHZ_10HZ_0/clk_out5_3 ));
    NOR3C \spi_mode_config_0/ss_b_RNO_4  (.A(
        \spi_mode_config_0/rst_cntr[3] ), .B(
        \spi_mode_config_0/rst_cntr[4] ), .C(\spi_mode_config_0/N_431 )
        , .Y(\spi_mode_config_0/ss_b_1_sqmuxa_1_0_a3_1_1 ));
    NOR3A \clock_div_26MHZ_1MHZ_0/counter_RNI5PAM[16]  (.A(
        \clock_div_26MHZ_1MHZ_0/counter[0]_net_1 ), .B(
        \clock_div_26MHZ_1MHZ_0/counter[15]_net_1 ), .C(
        \clock_div_26MHZ_1MHZ_0/counter[16]_net_1 ), .Y(
        \clock_div_26MHZ_1MHZ_0/clk_out5_8 ));
    XOR2 \clock_div_1MHZ_10HZ_0/un5_counter_I_20  (.A(
        \clock_div_1MHZ_10HZ_0/N_11 ), .B(
        \clock_div_1MHZ_10HZ_0/counter[7]_net_1 ), .Y(
        \clock_div_1MHZ_10HZ_0/I_20 ));
    NOR3B \spi_mode_config_0/byte_out_a_RNO_19[0]  (.A(
        \spi_mode_config_0/N_342 ), .B(
        \spi_mode_config_0/byte_out_a_8_1_a4_11_2[0] ), .C(
        \spi_mode_config_0/config_cntr_b[6] ), .Y(
        \spi_mode_config_0/N_264 ));
    DFN1C0 \spi_master_0/data_out_q[4]/U1  (.D(
        \spi_master_0/data_out_q[4]/Y ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_0), .Q(ds4_c));
    OR2 \spi_mode_config_0/byte_out_a_RNO_26[3]  (.A(
        \spi_mode_config_0/config_cntr_b[1] ), .B(
        \spi_mode_config_0/config_cntr_b[2] ), .Y(
        \spi_mode_config_0/N_421 ));
    NOR2B \spi_mode_config_0/byte_out_a_RNO_15[3]  (.A(
        \spi_mode_config_0/N_687 ), .B(\spi_mode_config_0_byte_out[3] )
        , .Y(\spi_mode_config_0/N_569 ));
    DFN0 \spi_mode_config_0/byte_out_a[2]  (.D(
        \spi_mode_config_0/N_23 ), .CLK(\spi_master_0.state_q_89 ), .Q(
        \spi_mode_config_0/byte_out_a[2]_net_1 ));
    OR2B \spi_mode_config_0/byte_out_a_RNO_13[4]  (.A(
        \spi_mode_config_0/N_43 ), .B(
        \spi_mode_config_0/config_cntr_b[4] ), .Y(
        \spi_mode_config_0/N_452 ));
    DFN1C0 \spi_mode_config_0/config_cntr_b[1]/U1  (.D(
        \spi_mode_config_0/config_cntr_b[1]/Y ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_1), .Q(
        \spi_mode_config_0/config_cntr_b[1] ));
    AOI1B \clock_div_26MHZ_1MHZ_0/counter_RNO[2]  (.A(
        \clock_div_26MHZ_1MHZ_0/clk_out5_14 ), .B(
        \clock_div_26MHZ_1MHZ_0/clk_out5_13 ), .C(
        \clock_div_26MHZ_1MHZ_0/I_7_0 ), .Y(
        \clock_div_26MHZ_1MHZ_0/counter_3[2] ));
    OR2A \spi_mode_config_0/state_b_RNIQQJ4_0[0]  (.A(
        \spi_mode_config_0/state_b[0] ), .B(
        \spi_mode_config_0/state_b[2] ), .Y(\spi_mode_config_0/N_373 ));
    NOR2 \spi_mode_config_0/state_a_RNO_1[1]  (.A(
        \spi_mode_config_0/N_418 ), .B(\spi_mode_config_0/N_373 ), .Y(
        \spi_mode_config_0/N_611 ));
    AOI1B \clock_div_1MHZ_10HZ_0/counter_RNO[14]  (.A(
        \clock_div_1MHZ_10HZ_0/clk_out5_13 ), .B(
        \clock_div_1MHZ_10HZ_0/clk_out5_12 ), .C(
        \clock_div_1MHZ_10HZ_0/I_40 ), .Y(
        \clock_div_1MHZ_10HZ_0/counter_3[14] ));
    AX1 \spi_mode_config_0/rst_cntr_RNO[8]  (.A(
        \spi_mode_config_0/N_400 ), .B(\spi_mode_config_0/rst_cntr[7] )
        , .C(\spi_mode_config_0/rst_cntr[8] ), .Y(
        \spi_mode_config_0/N_493_i ));
    OR2 \spi_mode_config_0/config_cntr_b_RNII7QB_0[3]  (.A(
        \spi_mode_config_0/config_cntr_b[1] ), .B(
        \spi_mode_config_0/config_cntr_b[3] ), .Y(
        \spi_mode_config_0/N_420 ));
    OR3 \spi_mode_config_0/byte_out_a_RNO[3]  (.A(
        \spi_mode_config_0/byte_out_a_8_1_0_13[3] ), .B(
        \spi_mode_config_0/byte_out_a_8_1_0_12[3] ), .C(
        \spi_mode_config_0/byte_out_a_8_1_0_14[3] ), .Y(
        \spi_mode_config_0/byte_out_a_8[3] ));
    NOR2A \spi_mode_config_0/config_cntr_b_RNIBMKN[3]  (.A(
        \spi_mode_config_0/N_43 ), .B(\spi_mode_config_0/N_388 ), .Y(
        \spi_mode_config_0/N_671 ));
    XNOR2 \spi_mode_config_0/config_cntr_b_RNIH6QB[1]  (.A(
        \spi_mode_config_0/config_cntr_b[2] ), .B(
        \spi_mode_config_0/config_cntr_b[1] ), .Y(
        \spi_mode_config_0/N_381 ));
    XOR2 \spi_mode_config_0/un1_config_cntr_b_7_I_26  (.A(
        \spi_mode_config_0/config_cntr_b[2] ), .B(
        \spi_mode_config_0/DWACT_ADD_CI_0_g_array_1[0] ), .Y(
        \spi_mode_config_0/I_26_1 ));
    AND3 \clock_div_1MHZ_10HZ_0/un5_counter_I_13  (.A(
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[0] ), .B(
        \clock_div_1MHZ_10HZ_0/counter[3]_net_1 ), .C(
        \clock_div_1MHZ_10HZ_0/counter[4]_net_1 ), .Y(
        \clock_div_1MHZ_10HZ_0/N_13 ));
    AO1 \spi_mode_config_0/state_a_RNO_2[2]  (.A(
        \spi_mode_config_0/state_a_7_i_0_a3_0_0[2] ), .B(
        \spi_mode_config_0/N_446 ), .C(\spi_mode_config_0/N_593 ), .Y(
        \spi_mode_config_0/state_a_7_i_0_1[2] ));
    NOR2B \read_buffer_0/init_wait_RNIRRK42[5]  (.A(
        \read_buffer_0/init_wait_c4 ), .B(\read_buffer_0/init_wait[5] )
        , .Y(\read_buffer_0/init_wait_c5 ));
    OR2 \spi_mode_config_0/byte_tracker_a_RNO_6  (.A(
        \spi_mode_config_0/N_663 ), .B(
        \spi_mode_config_0/config_cntr_b[0] ), .Y(
        \spi_mode_config_0/byte_tracker_a_0_0_0_o2_2_0 ));
    AND3 \clock_div_26MHZ_1MHZ_0/un5_counter_I_41  (.A(
        \clock_div_26MHZ_1MHZ_0/counter[12]_net_1 ), .B(
        \clock_div_26MHZ_1MHZ_0/counter[13]_net_1 ), .C(
        \clock_div_26MHZ_1MHZ_0/counter[14]_net_1 ), .Y(
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[9] ));
    DFN1P0 \spi_master_0/sck_q[0]  (.D(\spi_master_0/sck_d[0] ), .CLK(
        GLA), .PRE(reset_pulse_0_RESET_3), .Q(
        \spi_master_0/sck_q[0]_net_1 ));
    OAI1 \spi_mode_config_0/byte_tracker_b_0_RNI3TAL  (.A(
        \spi_mode_config_0/byte_tracker_b_0 ), .B(
        \spi_mode_config_0/N_369 ), .C(orbit_control_0_tx_enable), .Y(
        \spi_mode_config_0/N_433 ));
    AO1 \spi_master_0/sck_q_RNIL00Q1[0]  (.A(spi_mode_config_0_start), 
        .B(\spi_master_0.state_q_89 ), .C(\spi_master_0/N_42 ), .Y(
        \spi_master_0/un1_data_d_0_sqmuxa ));
    NOR2B \orbit_control_0/cntr_RNIP0MA[1]  (.A(
        \orbit_control_0/cntr[1]_net_1 ), .B(
        \orbit_control_0/cntr[0]_net_1 ), .Y(\orbit_control_0/cntr_c1 )
        );
    NOR2A \spi_mode_config_0/byte_out_a_RNO_16[3]  (.A(
        \spi_mode_config_0_byte_out[3] ), .B(\spi_mode_config_0/N_43 ), 
        .Y(\spi_mode_config_0/byte_out_a_8_1_0_a3_9_0[3] ));
    NOR2A \spi_mode_config_0/ss_b_RNO_5  (.A(
        \spi_mode_config_0/ss_b11lto10 ), .B(\spi_mode_config_0/N_385 )
        , .Y(\spi_mode_config_0/ss_b_1_sqmuxa_1_0_a3_0 ));
    DFN1C0 \spi_mode_config_0/rst_cntr[4]/U1  (.D(
        \spi_mode_config_0/rst_cntr[4]/Y ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_0), .Q(\spi_mode_config_0/rst_cntr[4] ));
    DFN1P0 \spi_mode_config_0/config_cntr_b[0]/U1  (.D(
        \spi_mode_config_0/config_cntr_b[0]/Y ), .CLK(GLA), .PRE(
        reset_pulse_0_RESET_1), .Q(
        \spi_mode_config_0/config_cntr_b[0] ));
    NOR2A \spi_mode_config_0/state_b_RNI7278[0]  (.A(
        \spi_mode_config_0/state_b[0] ), .B(
        \spi_mode_config_0/config_cntr_b[4] ), .Y(
        \spi_mode_config_0/byte_out_a_8_i_i_a2_6_1[5] ));
    XA1C \spi_master_0/ctr_q_RNO[2]  (.A(\spi_master_0/N_23 ), .B(
        \spi_master_0/ctr_q[2] ), .C(\spi_master_0.state_q_89 ), .Y(
        \spi_master_0/N_7 ));
    AND2 \clock_div_26MHZ_1MHZ_0/un5_counter_I_44  (.A(
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[7] ), .B(
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[9] ), .Y(
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[10] ));
    AO1 \spi_mode_config_0/byte_out_a_RNO_6[6]  (.A(
        \spi_mode_config_0/byte_out_a_8_1_0_a3_4_0[6] ), .B(
        \spi_mode_config_0/N_327 ), .C(\spi_mode_config_0/N_532 ), .Y(
        \spi_mode_config_0/byte_out_a_8_1_0_0[6] ));
    DFN1C0 \orbit_control_0/cntr[0]  (.D(\orbit_control_0/cntr_n0 ), 
        .CLK(clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_3), .Q(\orbit_control_0/cntr[0]_net_1 ));
    AOI1B \clock_div_26MHZ_1MHZ_0/counter_RNO[1]  (.A(
        \clock_div_26MHZ_1MHZ_0/clk_out5_14 ), .B(
        \clock_div_26MHZ_1MHZ_0/clk_out5_13 ), .C(
        \clock_div_26MHZ_1MHZ_0/I_5_0 ), .Y(
        \clock_div_26MHZ_1MHZ_0/counter_3[1] ));
    NOR2A \spi_mode_config_0/rst_cntr_RNIR1IG[10]  (.A(
        \spi_mode_config_0/ss_b11lto10 ), .B(\spi_mode_config_0/N_364 )
        , .Y(\spi_mode_config_0/byte_out_b_1_sqmuxa_i_i_a3_0 ));
    DFN0 \spi_mode_config_0/ss_a  (.D(SS_c), .CLK(
        \spi_master_0.state_q_89 ), .Q(\spi_mode_config_0/ss_a_net_1 ));
    XA1 \orbit_control_0/cntr_RNO[9]  (.A(\orbit_control_0/cntr_c8 ), 
        .B(\orbit_control_0/cntr[9]_net_1 ), .C(
        \orbit_control_0/cntr13 ), .Y(\orbit_control_0/cntr_n9 ));
    CLKINT \reset_pulse_0/CLK_OUT_48MHZ_inferred_clock  (.A(
        \reset_pulse_0/CLK_OUT_48MHZ_i ), .Y(
        reset_pulse_0_CLK_OUT_48MHZ));
    DFN1C0 \clock_div_1MHZ_10HZ_0/counter[9]  (.D(
        \clock_div_1MHZ_10HZ_0/counter_3[9] ), .CLK(
        clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT), .CLR(
        reset_pulse_0_RESET_4), .Q(
        \clock_div_1MHZ_10HZ_0/counter[9]_net_1 ));
    OA1A \spi_master_0/state_q_RNO_0[1]  (.A(
        \spi_master_0/sck_q[0]_net_1 ), .B(
        \spi_master_0/sck_q[1]_net_1 ), .C(
        \spi_master_0/state_q[0]_net_1 ), .Y(\spi_master_0/N_34 ));
    NOR2B \read_buffer_0/init_wait_RNO_0[8]  (.A(
        \read_buffer_0/init_wait[7] ), .B(
        \read_buffer_0/un1_init_wait ), .Y(
        \read_buffer_0/init_wait_26_0 ));
    AX1 \spi_mode_config_0/rst_cntr_RNO[10]  (.A(
        \spi_mode_config_0/N_419 ), .B(\spi_mode_config_0/rst_cntr[9] )
        , .C(\spi_mode_config_0/ss_b11lto10 ), .Y(
        \spi_mode_config_0/rst_cntr_n10 ));
    MX2 \spi_mode_config_0/byte_out_b[3]/U0  (.A(
        \spi_mode_config_0_byte_out[3] ), .B(
        \spi_mode_config_0/byte_out_b_6[3] ), .S(
        \spi_mode_config_0/N_145 ), .Y(
        \spi_mode_config_0/byte_out_b[3]/Y ));
    MX2 \read_buffer_0/init_wait[7]/U0  (.A(
        \read_buffer_0/init_wait_n7 ), .B(\read_buffer_0/init_wait[7] )
        , .S(\read_buffer_0/init_stage_177_d ), .Y(
        \read_buffer_0/init_wait[7]/Y ));
    AO1C \spi_mode_config_0/byte_tracker_b_RNIKCM01  (.A(
        \spi_mode_config_0/N_424 ), .B(\spi_mode_config_0/N_665 ), .C(
        \spi_mode_config_0/N_418 ), .Y(\spi_mode_config_0/N_386 ));
    AX1C \clock_div_1MHZ_10HZ_0/un5_counter_I_26  (.A(
        \clock_div_1MHZ_10HZ_0/counter[8]_net_1 ), .B(
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[4] ), .C(
        \clock_div_1MHZ_10HZ_0/counter[9]_net_1 ), .Y(
        \clock_div_1MHZ_10HZ_0/I_26 ));
    AOI1B \clock_div_1MHZ_10HZ_0/counter_RNO[4]  (.A(
        \clock_div_1MHZ_10HZ_0/clk_out5_13 ), .B(
        \clock_div_1MHZ_10HZ_0/clk_out5_12 ), .C(
        \clock_div_1MHZ_10HZ_0/I_12 ), .Y(
        \clock_div_1MHZ_10HZ_0/counter_3[4] ));
    IOTRI_OB_EB \MOSI_pad/U0/U1  (.D(MOSI_c), .E(VCC), .DOUT(
        \MOSI_pad/U0/NET1 ), .EOUT(\MOSI_pad/U0/NET2 ));
    MX2 \spi_mode_config_0/config_cntr_b[3]/U0  (.A(
        \spi_mode_config_0/config_cntr_a[3]_net_1 ), .B(
        \spi_mode_config_0/config_cntr_b[3] ), .S(
        \spi_mode_config_0/ss_a_net_1 ), .Y(
        \spi_mode_config_0/config_cntr_b[3]/Y ));
    MX2 \read_buffer_0/init_wait[8]/U0  (.A(
        \read_buffer_0/init_wait_n8 ), .B(\read_buffer_0/init_wait[8] )
        , .S(\read_buffer_0/init_stage_177_d ), .Y(
        \read_buffer_0/init_wait[8]/Y ));
    NOR3B \spi_mode_config_0/byte_out_a_RNO_20[3]  (.A(
        \spi_mode_config_0/N_421 ), .B(\spi_mode_config_0/N_670 ), .C(
        \spi_mode_config_0/N_388 ), .Y(\spi_mode_config_0/N_563 ));
    MX2 \spi_master_0/ctr_q[1]/U0  (.A(\spi_master_0/ctr_q[1] ), .B(
        \spi_master_0/N_9 ), .S(\spi_master_0/ctr_qe ), .Y(
        \spi_master_0/ctr_q[1]/Y ));
    MX2 \spi_mode_config_0/byte_out_b[6]/U0  (.A(
        \spi_mode_config_0_byte_out[6] ), .B(
        \spi_mode_config_0/byte_out_b_6[6] ), .S(
        \spi_mode_config_0/N_145 ), .Y(
        \spi_mode_config_0/byte_out_b[6]/Y ));
    NOR2B \spi_mode_config_0/byte_out_a_RNO_22[3]  (.A(
        \spi_mode_config_0/N_670 ), .B(\spi_mode_config_0/N_372 ), .Y(
        \spi_mode_config_0/N_566 ));
    NOR2B \spi_mode_config_0/byte_out_a_RNO_11[4]  (.A(
        \spi_mode_config_0/N_648 ), .B(\spi_mode_config_0_byte_out[4] )
        , .Y(\spi_mode_config_0/N_555 ));
    NOR2 \spi_mode_config_0/state_b_RNIFBJP[0]  (.A(
        \spi_mode_config_0/N_398 ), .B(\spi_mode_config_0/N_391 ), .Y(
        \spi_mode_config_0/N_640 ));
    NOR2B \spi_mode_config_0/state_b_RNIQH5I[2]  (.A(
        \spi_mode_config_0/state_b[2] ), .B(orbit_control_0_tx_enable), 
        .Y(\spi_mode_config_0/byte_out_a_8_1_a4_8_0[0] ));
    OA1B \spi_mode_config_0/state_a_RNO_2[0]  (.A(
        \spi_mode_config_0/N_364 ), .B(\spi_mode_config_0/N_428 ), .C(
        \spi_mode_config_0/state_b[0] ), .Y(\spi_mode_config_0/N_597 ));
    NOR2A \spi_mode_config_0/config_cntr_b_RNIOK021[6]  (.A(
        \spi_mode_config_0/N_627 ), .B(\spi_mode_config_0/N_396 ), .Y(
        \spi_mode_config_0/N_692 ));
    MX2 \spi_mode_config_0/byte_out_b[7]/U0  (.A(
        \spi_mode_config_0_byte_out[7] ), .B(
        \spi_mode_config_0/byte_out_b_6[7] ), .S(
        \spi_mode_config_0/N_145 ), .Y(
        \spi_mode_config_0/byte_out_b[7]/Y ));
    NOR2B \spi_master_0/sck_q_RNIR9U[0]  (.A(
        \spi_master_0/sck_q[1]_net_1 ), .B(
        \spi_master_0/sck_q[0]_net_1 ), .Y(\spi_master_0/N_45 ));
    OR2 \spi_mode_config_0/config_cntr_b_RNINCQB_0[5]  (.A(
        \spi_mode_config_0/config_cntr_b[5] ), .B(
        \spi_mode_config_0/config_cntr_b[4] ), .Y(
        \spi_mode_config_0/N_376 ));
    AND2 \spi_mode_config_0/un1_config_cntr_b_7_I_39  (.A(
        \spi_mode_config_0/config_cntr_b[4] ), .B(
        \spi_mode_config_0/config_cntr_b[5] ), .Y(
        \spi_mode_config_0/DWACT_ADD_CI_0_pog_array_1_1[0] ));
    OA1 \spi_mode_config_0/begin_pass_a_RNO  (.A(
        orbit_control_0_tx_enable), .B(\spi_mode_config_0/N_407 ), .C(
        spi_mode_config_0_begin_pass), .Y(\spi_mode_config_0/N_14 ));
    AND3 \clock_div_26MHZ_1MHZ_0/un5_counter_I_27  (.A(
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[4] ), .B(
        \clock_div_26MHZ_1MHZ_0/counter[8]_net_1 ), .C(
        \clock_div_26MHZ_1MHZ_0/counter[9]_net_1 ), .Y(
        \clock_div_26MHZ_1MHZ_0/N_8 ));
    AO1A \spi_mode_config_0/byte_out_a_RNO_4[1]  (.A(
        \spi_mode_config_0/config_cntr_b[2] ), .B(
        \spi_mode_config_0/N_692 ), .C(\spi_mode_config_0/N_583 ), .Y(
        \spi_mode_config_0/byte_out_a_8_1_0_5[1] ));
    IOPAD_TRI \ds2_pad/U0/U0  (.D(\ds2_pad/U0/NET1 ), .E(
        \ds2_pad/U0/NET2 ), .PAD(ds2));
    NOR2 \spi_mode_config_0/config_cntr_b_RNIBBNH[3]  (.A(
        \spi_mode_config_0/N_404 ), .B(
        \spi_mode_config_0/config_cntr_b[3] ), .Y(
        \spi_mode_config_0/N_575_1 ));
    DFN1C0 \read_buffer_0/byte_out[3]/U1  (.D(
        \read_buffer_0/byte_out[3]/Y ), .CLK(
        spi_mode_config_0_next_cmd), .CLR(reset_pulse_0_RESET_1), .Q(
        \read_buffer_0.byte_out[3] ));
    IOTRI_OB_EB \ds3_pad/U0/U1  (.D(ds3_c), .E(VCC), .DOUT(
        \ds3_pad/U0/NET1 ), .EOUT(\ds3_pad/U0/NET2 ));
    OR3 \spi_mode_config_0/byte_out_a_RNO_9[2]  (.A(
        \spi_mode_config_0/N_225 ), .B(\spi_mode_config_0/N_227 ), .C(
        \spi_mode_config_0/N_226 ), .Y(
        \spi_mode_config_0/byte_out_a_8_i_7[2] ));
    DFN1C0 \read_buffer_0/init_wait[6]/U1  (.D(
        \read_buffer_0/init_wait[6]/Y ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_2), .Q(
        \read_buffer_0/init_wait[6] ));
    NOR2 \clock_div_1MHZ_10HZ_0/counter_RNIHD0V[16]  (.A(
        \clock_div_1MHZ_10HZ_0/counter[16]_net_1 ), .B(
        \clock_div_1MHZ_10HZ_0/counter[11]_net_1 ), .Y(
        \clock_div_1MHZ_10HZ_0/clk_out5_0 ));
    DFN0 \spi_mode_config_0/byte_out_a[1]  (.D(
        \spi_mode_config_0/byte_out_a_8[1] ), .CLK(
        \spi_master_0.state_q_89 ), .Q(
        \spi_mode_config_0/byte_out_a[1]_net_1 ));
    NOR3B \spi_mode_config_0/ss_b_RNO_2  (.A(\spi_mode_config_0/N_492 )
        , .B(\spi_mode_config_0/ss_b_1_sqmuxa_1_0_a3_0 ), .C(
        \spi_mode_config_0/N_397 ), .Y(\spi_mode_config_0/N_600 ));
    OR3A \spi_mode_config_0/byte_out_a_RNO_13[1]  (.A(
        \spi_mode_config_0/N_397 ), .B(
        \spi_mode_config_0/byte_out_a_8_1_0_a3_0[1] ), .C(
        \spi_mode_config_0/byte_out_a_8_1_0_1_tz_1[1] ), .Y(
        \spi_mode_config_0/byte_out_a_8_1_0_1_tz[1] ));
    AO1 \spi_mode_config_0/byte_out_a_RNO_10[3]  (.A(
        \spi_mode_config_0/N_414 ), .B(\spi_mode_config_0/N_645 ), .C(
        \spi_mode_config_0/N_563 ), .Y(
        \spi_mode_config_0/byte_out_a_8_1_0_2[3] ));
    AND3 \clock_div_26MHZ_1MHZ_0/un5_counter_I_30  (.A(
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[0] ), .B(
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[2] ), .C(
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[5] ), .Y(
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[6] ));
    MX2 \spi_mode_config_0/byte_out_a_RNO_21[1]  (.A(
        \spi_mode_config_0/N_418 ), .B(\spi_mode_config_0/N_364 ), .S(
        \spi_mode_config_0/N_373 ), .Y(\spi_mode_config_0/N_483 ));
    DFN0 \spi_mode_config_0/state_a[0]  (.D(\spi_mode_config_0/N_31 ), 
        .CLK(\spi_master_0.state_q_89 ), .Q(
        \spi_mode_config_0/state_a[0]_net_1 ));
    NOR2B \read_buffer_0/init_stage_RNO_3[1]  (.A(
        \read_buffer_0/init_wait[7] ), .B(\read_buffer_0/init_wait[8] )
        , .Y(\read_buffer_0/init_stage_ns_i_a2_1_tz[1] ));
    MX2 \spi_master_0/data_out_q[3]/U0  (.A(ds3_c), .B(
        \spi_master_0/data_q[3] ), .S(
        \spi_master_0/new_data_d_2_sqmuxa ), .Y(
        \spi_master_0/data_out_q[3]/Y ));
    AO1 \spi_mode_config_0/byte_out_b_RNO[4]  (.A(
        \spi_mode_config_0/byte_out_b_1_sqmuxa_i_i_a3_1 ), .B(
        \spi_mode_config_0/byte_out_b_1_sqmuxa_i_i_a3_0 ), .C(
        \spi_mode_config_0/byte_out_a[4]_net_1 ), .Y(
        \spi_mode_config_0/byte_out_b_6[4] ));
    AO1A \spi_master_0/state_q_RNIHDRV1[0]  (.A(
        \spi_master_0/state_q[0]_net_1 ), .B(\spi_master_0/N_22 ), .C(
        \spi_master_0.state_q_89 ), .Y(\spi_master_0/ctr_qe ));
    NOR2A \spi_mode_config_0/byte_out_a_RNO_4[4]  (.A(
        \spi_mode_config_0/N_646 ), .B(
        \spi_mode_config_0/config_cntr_b[1] ), .Y(
        \spi_mode_config_0/N_559 ));
    AOI1B \spi_mode_config_0/byte_out_b_RNO[6]  (.A(
        \spi_mode_config_0/byte_out_b_1_sqmuxa_i_i_a3_1 ), .B(
        \spi_mode_config_0/byte_out_b_1_sqmuxa_i_i_a3_0 ), .C(
        \spi_mode_config_0/byte_out_a[6]_net_1 ), .Y(
        \spi_mode_config_0/byte_out_b_6[6] ));
    DFN0 \spi_mode_config_0/config_cntr_a[3]  (.D(
        \spi_mode_config_0/I_24 ), .CLK(\spi_master_0.state_q_89 ), .Q(
        \spi_mode_config_0/config_cntr_a[3]_net_1 ));
    MX2 \spi_mode_config_0/state_b[0]/U0  (.A(
        \spi_mode_config_0/state_b[0] ), .B(
        \spi_mode_config_0/state_b_6[0] ), .S(
        \spi_mode_config_0/N_145 ), .Y(
        \spi_mode_config_0/state_b[0]/Y ));
    DFN0 \spi_mode_config_0/config_cntr_a[1]  (.D(
        \spi_mode_config_0/I_27 ), .CLK(\spi_master_0.state_q_89 ), .Q(
        \spi_mode_config_0/config_cntr_a[1]_net_1 ));
    NOR3A \clock_div_26MHZ_1MHZ_0/counter_RNIUCUN[5]  (.A(
        \clock_div_26MHZ_1MHZ_0/clk_out5_4 ), .B(
        \clock_div_26MHZ_1MHZ_0/counter[5]_net_1 ), .C(
        \clock_div_26MHZ_1MHZ_0/counter[10]_net_1 ), .Y(
        \clock_div_26MHZ_1MHZ_0/clk_out5_10 ));
    NOR2B \spi_mode_config_0/config_cntr_b_RNILAQB[6]  (.A(
        \spi_mode_config_0/config_cntr_b[6] ), .B(
        \spi_mode_config_0/config_cntr_b[1] ), .Y(
        \spi_mode_config_0/byte_out_a_8_i_a4_10_0_a3_1[5] ));
    AND3 \clock_div_1MHZ_10HZ_0/un5_counter_I_22  (.A(
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[0] ), .B(
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[2] ), .C(
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[3] ), .Y(
        \clock_div_1MHZ_10HZ_0/N_10 ));
    OR2A \spi_mode_config_0/byte_tracker_b_RNISVO6  (.A(
        \spi_mode_config_0/byte_tracker_b ), .B(
        \spi_mode_config_0/N_365 ), .Y(\spi_mode_config_0/N_449 ));
    NOR2A \spi_mode_config_0/byte_out_a_RNO_13[5]  (.A(
        \spi_mode_config_0/N_632 ), .B(\spi_mode_config_0/N_403 ), .Y(
        \spi_mode_config_0/N_549 ));
    MX2 \spi_master_0/data_q[4]/U0  (.A(\spi_master_0/data_q[4] ), .B(
        \spi_master_0/data_d[4] ), .S(
        \spi_master_0/un1_data_d_0_sqmuxa ), .Y(
        \spi_master_0/data_q[4]/Y ));
    XA1 \read_buffer_0/init_wait_RNO[1]  (.A(
        \read_buffer_0/init_wait[1] ), .B(\read_buffer_0/init_wait_c0 )
        , .C(\read_buffer_0/un1_init_wait ), .Y(
        \read_buffer_0/init_wait_n1 ));
    IOIN_IB \CLK_48MHZ_pad/U0/U1  (.YIN(\CLK_48MHZ_pad/U0/NET1 ), .Y(
        CLK_48MHZ_c));
    OA1B \spi_mode_config_0/byte_tracker_b_0_RNIC4VH1  (.A(
        \spi_mode_config_0/N_641 ), .B(\spi_mode_config_0/N_640 ), .C(
        \spi_mode_config_0/byte_tracker_b_0 ), .Y(
        \spi_mode_config_0/N_516 ));
    DFN1C0 \spi_master_0/mosi_q/U1  (.D(\spi_master_0/mosi_q/Y ), .CLK(
        GLA), .CLR(reset_pulse_0_RESET_1), .Q(MOSI_c));
    OR3 \spi_mode_config_0/byte_out_a_RNO_0[4]  (.A(
        \spi_mode_config_0/N_554 ), .B(\spi_mode_config_0/N_559 ), .C(
        \spi_mode_config_0/byte_out_a_8_i_i_2[4] ), .Y(
        \spi_mode_config_0/byte_out_a_8_i_i_6[4] ));
    AND3C \spi_mode_config_0/byte_out_a_RNO_8[1]  (.A(
        \spi_mode_config_0/N_375 ), .B(
        \spi_mode_config_0/config_cntr_b[4] ), .C(
        \spi_mode_config_0/N_476 ), .Y(\spi_mode_config_0/N_585 ));
    AOI1B \spi_mode_config_0/config_cntr_a_RNO[4]  (.A(
        \spi_mode_config_0/state_a_7_i_0_a3_1_0[0] ), .B(
        \spi_mode_config_0/N_647 ), .C(\spi_mode_config_0/I_30 ), .Y(
        \spi_mode_config_0/config_cntr_a_86[4] ));
    MX2 \spi_master_0/data_q[7]/U0  (.A(\spi_master_0/data_q[7] ), .B(
        \spi_master_0/data_d[7] ), .S(
        \spi_master_0/un1_data_d_0_sqmuxa ), .Y(
        \spi_master_0/data_q[7]/Y ));
    MX2 \spi_mode_config_0/rst_cntr[8]/U0  (.A(
        \spi_mode_config_0/N_493_i ), .B(
        \spi_mode_config_0/rst_cntr[8] ), .S(\spi_mode_config_0/N_397 )
        , .Y(\spi_mode_config_0/rst_cntr[8]/Y ));
    XOR2 \clock_div_26MHZ_1MHZ_0/un5_counter_I_17  (.A(
        \clock_div_26MHZ_1MHZ_0/N_12 ), .B(
        \clock_div_26MHZ_1MHZ_0/counter[6]_net_1 ), .Y(
        \clock_div_26MHZ_1MHZ_0/I_17_0 ));
    NOR3A \spi_mode_config_0/byte_out_a_RNO_11[5]  (.A(
        \spi_mode_config_0/N_664 ), .B(\spi_mode_config_0/N_388 ), .C(
        \spi_mode_config_0/N_233_1 ), .Y(\spi_mode_config_0/N_542 ));
    NOR2A \spi_mode_config_0/config_cntr_b_RNIOK021[4]  (.A(
        \spi_mode_config_0/N_632 ), .B(
        \spi_mode_config_0/config_cntr_b[4] ), .Y(
        \spi_mode_config_0/N_633 ));
    DFN1C0 \spi_mode_config_0/byte_tracker_b/U1  (.D(
        \spi_mode_config_0/byte_tracker_b/Y ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_0), .Q(\spi_mode_config_0/byte_tracker_b ));
    AND3 \clock_div_26MHZ_1MHZ_0/un5_counter_I_45  (.A(
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[6] ), .B(
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[10] ), .C(
        \clock_div_26MHZ_1MHZ_0/counter[15]_net_1 ), .Y(
        \clock_div_26MHZ_1MHZ_0/N_2 ));
    OAI1 \spi_mode_config_0/rst_cntr_RNIEU24_0[2]  (.A(
        \spi_mode_config_0/un74lto1 ), .B(\spi_mode_config_0/un74lto0 )
        , .C(\spi_mode_config_0/un74lto2 ), .Y(
        \spi_mode_config_0/N_430 ));
    DFN1C0 \read_buffer_0/byte_out[0]  (.D(
        \read_buffer_0/byte_out_RNO[0]_net_1 ), .CLK(
        spi_mode_config_0_next_cmd), .CLR(reset_pulse_0_RESET_4), .Q(
        \read_buffer_0.byte_out[0] ));
    NOR2 \spi_master_0/state_q_RNIRHEV[0]  (.A(
        \spi_master_0/state_q[0]_net_1 ), .B(
        \spi_master_0/state_q[1]_net_1 ), .Y(
        \spi_master_0/state_q_i_d[0] ));
    NOR3A \spi_mode_config_0/byte_out_a_RNO_3[0]  (.A(
        \spi_mode_config_0/N_124 ), .B(\spi_mode_config_0/N_376 ), .C(
        \spi_mode_config_0/N_371 ), .Y(\spi_mode_config_0/N_254 ));
    AND3B \spi_mode_config_0/config_cntr_b_RNIASQD1[1]  (.A(
        \spi_mode_config_0/N_382 ), .B(
        \spi_mode_config_0/config_cntr_b[1] ), .C(
        \spi_mode_config_0/N_300 ), .Y(\spi_mode_config_0/N_535 ));
    MX2 \spi_mode_config_0/config_cntr_b[6]/U0  (.A(
        \spi_mode_config_0/config_cntr_a[6]_net_1 ), .B(
        \spi_mode_config_0/config_cntr_b[6] ), .S(
        \spi_mode_config_0/ss_a_net_1 ), .Y(
        \spi_mode_config_0/config_cntr_b[6]/Y ));
    OR2 \spi_mode_config_0/config_cntr_b_RNIRC3S[3]  (.A(
        \spi_mode_config_0/N_375 ), .B(
        \spi_mode_config_0/config_cntr_b[3] ), .Y(
        \spi_mode_config_0/N_288 ));
    AO1 \spi_mode_config_0/byte_out_a_RNO_21[0]  (.A(
        \spi_mode_config_0/N_342 ), .B(\spi_mode_config_0/N_77 ), .C(
        \spi_mode_config_0/N_261 ), .Y(
        \spi_mode_config_0/byte_out_a_8_1_6[0] ));
    NOR2B \orbit_control_0/cntr_RNIN21G[2]  (.A(
        \orbit_control_0/cntr[2]_net_1 ), .B(\orbit_control_0/cntr_c1 )
        , .Y(\orbit_control_0/cntr_c2 ));
    NOR2B \spi_mode_config_0/config_cntr_b_RNIPEQB[5]  (.A(
        \spi_mode_config_0/config_cntr_b[5] ), .B(
        \spi_mode_config_0/config_cntr_b[6] ), .Y(
        \spi_mode_config_0/N_663 ));
    NOR3A \spi_mode_config_0/byte_out_a_RNO_23[2]  (.A(
        \spi_mode_config_0/N_457_i ), .B(\spi_mode_config_0/N_630 ), 
        .C(\spi_mode_config_0/N_376 ), .Y(
        \spi_mode_config_0/byte_out_a_8_i_a4_2_2[2] ));
    NOR2A \clock_div_1MHZ_10HZ_0/counter_RNIIRFF[1]  (.A(
        \clock_div_1MHZ_10HZ_0/counter[9]_net_1 ), .B(
        \clock_div_1MHZ_10HZ_0/counter[1]_net_1 ), .Y(
        \clock_div_1MHZ_10HZ_0/clk_out5_5 ));
    DFN1C0 \spi_mode_config_0/rst_cntr[9]/U1  (.D(
        \spi_mode_config_0/rst_cntr[9]/Y ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_0), .Q(\spi_mode_config_0/rst_cntr[9] ));
    OR2 \read_buffer_0/byte_out_cl_RNO[0]  (.A(
        \read_buffer_0.byte_out_cl[0] ), .B(
        \read_buffer_0/init_stage_177_d ), .Y(
        \read_buffer_0/byte_out_cl_RNO[0]_net_1 ));
    NOR3B \spi_mode_config_0/byte_out_a_RNO_5[5]  (.A(
        \spi_mode_config_0/config_cntr_b[6] ), .B(
        \spi_mode_config_0/N_432 ), .C(\spi_mode_config_0/N_396 ), .Y(
        \spi_mode_config_0/N_538 ));
    DFN1C0 \orbit_control_0/cntr[7]  (.D(\orbit_control_0/cntr_n7 ), 
        .CLK(clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_4), .Q(\orbit_control_0/cntr[7]_net_1 ));
    OR2B \spi_mode_config_0/config_cntr_b_RNIH6QB_0[1]  (.A(
        \spi_mode_config_0/config_cntr_b[1] ), .B(
        \spi_mode_config_0/config_cntr_b[2] ), .Y(
        \spi_mode_config_0/N_413 ));
    AND3 \clock_div_26MHZ_1MHZ_0/un5_counter_I_29  (.A(
        \clock_div_26MHZ_1MHZ_0/counter[6]_net_1 ), .B(
        \clock_div_26MHZ_1MHZ_0/counter[7]_net_1 ), .C(
        \clock_div_26MHZ_1MHZ_0/counter[8]_net_1 ), .Y(
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[5] ));
    NOR3 \spi_mode_config_0/byte_out_a_RNO_4[2]  (.A(
        \spi_mode_config_0/config_cntr_b[2] ), .B(
        \spi_mode_config_0/N_382 ), .C(\spi_mode_config_0/N_416 ), .Y(
        \spi_mode_config_0/N_234 ));
    OR3A \spi_mode_config_0/start_a_RNO_0  (.A(
        \spi_mode_config_0/N_338 ), .B(\spi_mode_config_0/N_279 ), .C(
        \spi_mode_config_0/un1_mem_enable_a21_27_i_0_1 ), .Y(
        \spi_mode_config_0/N_35 ));
    MX2 \read_buffer_0/init_wait[1]/U0  (.A(
        \read_buffer_0/init_wait_n1 ), .B(\read_buffer_0/init_wait[1] )
        , .S(\read_buffer_0/init_stage_177_d ), .Y(
        \read_buffer_0/init_wait[1]/Y ));
    NOR3B \spi_mode_config_0/state_a_RNO_3[2]  (.A(
        \spi_mode_config_0/state_b[0] ), .B(
        \spi_mode_config_0/config_cntr_b[0] ), .C(
        \spi_mode_config_0/N_439 ), .Y(
        \spi_mode_config_0/state_a_7_i_0_a3_2_2[2] ));
    MX2 \spi_mode_config_0/byte_out_b[2]/U0  (.A(
        \spi_mode_config_0_byte_out[2] ), .B(
        \spi_mode_config_0/byte_out_b_6[2] ), .S(
        \spi_mode_config_0/N_145 ), .Y(
        \spi_mode_config_0/byte_out_b[2]/Y ));
    OR3 \spi_mode_config_0/byte_out_a_RNO_10[2]  (.A(
        \spi_mode_config_0/N_230 ), .B(\spi_mode_config_0/N_224 ), .C(
        \spi_mode_config_0/byte_out_a_8_i_2[2] ), .Y(
        \spi_mode_config_0/byte_out_a_8_i_8[2] ));
    AX1C \read_buffer_0/init_wait_RNO_0[2]  (.A(
        \read_buffer_0/init_wait[1] ), .B(\read_buffer_0/init_wait_c0 )
        , .C(\read_buffer_0/init_wait[2] ), .Y(
        \read_buffer_0/init_wait_n2_tz ));
    IOPAD_TRI \ds4_pad/U0/U0  (.D(\ds4_pad/U0/NET1 ), .E(
        \ds4_pad/U0/NET2 ), .PAD(ds4));
    NOR3B \spi_mode_config_0/byte_out_a_RNO_3[1]  (.A(
        \spi_mode_config_0/config_cntr_b[6] ), .B(
        \spi_mode_config_0/N_644 ), .C(\spi_mode_config_0/N_396 ), .Y(
        \spi_mode_config_0/N_588 ));
    XA1 \read_buffer_0/init_wait_RNO[6]  (.A(
        \read_buffer_0/init_wait_c5 ), .B(\read_buffer_0/init_wait[6] )
        , .C(\read_buffer_0/un1_init_wait ), .Y(
        \read_buffer_0/init_wait_n6 ));
    DFN1C1 \clock_div_26MHZ_1MHZ_0/counter[10]  (.D(
        \clock_div_26MHZ_1MHZ_0/I_28_0 ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_4), .Q(
        \clock_div_26MHZ_1MHZ_0/counter[10]_net_1 ));
    OR3 \spi_mode_config_0/byte_out_a_RNO_11[0]  (.A(
        \spi_mode_config_0/N_264 ), .B(\spi_mode_config_0/N_263 ), .C(
        \spi_mode_config_0/byte_out_a_8_1_6[0] ), .Y(
        \spi_mode_config_0/byte_out_a_8_1_10[0] ));
    NOR2B \orbit_control_0/cntr_RNO_1[12]  (.A(
        \orbit_control_0/cntr[12]_net_1 ), .B(\orbit_control_0/cntr13 )
        , .Y(\orbit_control_0/N_55 ));
    OR2 \spi_mode_config_0/config_cntr_b_RNIJ8QB_0[3]  (.A(
        \spi_mode_config_0/config_cntr_b[3] ), .B(
        \spi_mode_config_0/config_cntr_b[2] ), .Y(
        \spi_mode_config_0/N_43 ));
    NOR3B \spi_mode_config_0/byte_out_a_RNO_9[5]  (.A(
        \spi_mode_config_0/N_410 ), .B(
        \spi_mode_config_0/byte_out_a_8_i_i_a3_3_0[5] ), .C(
        \spi_mode_config_0/N_376 ), .Y(\spi_mode_config_0/N_541 ));
    AO1B \clock_div_26MHZ_1MHZ_0/counter_RNO[0]  (.A(
        \clock_div_26MHZ_1MHZ_0/clk_out5_14 ), .B(
        \clock_div_26MHZ_1MHZ_0/clk_out5_13 ), .C(
        \clock_div_26MHZ_1MHZ_0/counter[0]_net_1 ), .Y(
        \clock_div_26MHZ_1MHZ_0/counter_3[0] ));
    AO1 \spi_mode_config_0/byte_out_a_RNO_5[2]  (.A(
        \spi_mode_config_0/N_233_1 ), .B(\spi_mode_config_0/N_300 ), 
        .C(\spi_mode_config_0/N_232 ), .Y(
        \spi_mode_config_0/byte_out_a_8_i_5[2] ));
    NOR3 \spi_mode_config_0/byte_out_a_RNO_13[2]  (.A(
        \spi_mode_config_0/N_388 ), .B(\spi_mode_config_0/N_371 ), .C(
        \spi_mode_config_0/N_439 ), .Y(\spi_mode_config_0/N_236 ));
    OR2 \spi_mode_config_0/config_cntr_b_RNI186M[6]  (.A(
        \spi_mode_config_0/N_371 ), .B(
        \spi_mode_config_0/config_cntr_b[6] ), .Y(
        \spi_mode_config_0/N_375 ));
    MX2 \spi_mode_config_0/rst_cntr[4]/U0  (.A(
        \spi_mode_config_0/N_463_i ), .B(
        \spi_mode_config_0/rst_cntr[4] ), .S(\spi_mode_config_0/N_397 )
        , .Y(\spi_mode_config_0/rst_cntr[4]/Y ));
    AO1 \spi_mode_config_0/byte_out_a_RNO_7[1]  (.A(
        \spi_mode_config_0_byte_out[1] ), .B(
        \spi_mode_config_0/byte_out_a_8_1_0_1_tz[1] ), .C(
        \spi_mode_config_0/N_581 ), .Y(
        \spi_mode_config_0/byte_out_a_8_1_0_0[1] ));
    NOR2A \spi_mode_config_0/byte_out_a_RNO_29[2]  (.A(
        \spi_mode_config_0/config_cntr_b[4] ), .B(
        \spi_mode_config_0/N_476 ), .Y(\spi_mode_config_0/N_346 ));
    ULSICC_INT INT_ULSICC_INSTANCE_0 (.USTDBY(GND), .LPENA(GND));
    OA1C \spi_mode_config_0/rst_cntr_RNI1F9I[6]  (.A(
        \spi_mode_config_0/N_492 ), .B(\spi_mode_config_0/N_385 ), .C(
        \spi_mode_config_0/N_373 ), .Y(
        \spi_mode_config_0/byte_out_b_1_sqmuxa_i_i_a3_1 ));
    AX1 \spi_mode_config_0/rst_cntr_RNO[6]  (.A(
        \spi_mode_config_0/N_383 ), .B(\spi_mode_config_0/rst_cntr[5] )
        , .C(\spi_mode_config_0/ss_b11lto6 ), .Y(
        \spi_mode_config_0/N_477_i ));
    OR3 \spi_mode_config_0/ss_b_RNO_6  (.A(
        \spi_mode_config_0/rst_cntr[5] ), .B(
        \spi_mode_config_0/ss_b11lto6 ), .C(\spi_mode_config_0/N_385 ), 
        .Y(\spi_mode_config_0/N_445 ));
    XOR2 \spi_mode_config_0/un1_config_cntr_b_7_I_20  (.A(
        \spi_mode_config_0/config_cntr_b[0] ), .B(
        \spi_mode_config_0/byte_tracker_b_RNI00D03_net_1 ), .Y(
        \spi_mode_config_0/DWACT_ADD_CI_0_partial_sum[0] ));
    AO1A \spi_mode_config_0/byte_out_a_RNO_0[7]  (.A(
        \spi_mode_config_0/N_404 ), .B(\spi_mode_config_0/N_535 ), .C(
        \spi_mode_config_0/N_522 ), .Y(
        \spi_mode_config_0/byte_out_a_8_1_0_4[7] ));
    AO1A \spi_mode_config_0/byte_out_a_RNO_6[5]  (.A(
        \spi_mode_config_0/N_381 ), .B(\spi_mode_config_0/N_646 ), .C(
        \spi_mode_config_0/N_541 ), .Y(
        \spi_mode_config_0/byte_out_a_8_i_i_4[5] ));
    XOR2 \clock_div_1MHZ_10HZ_0/un5_counter_I_9  (.A(
        \clock_div_1MHZ_10HZ_0/N_15 ), .B(
        \clock_div_1MHZ_10HZ_0/counter[3]_net_1 ), .Y(
        \clock_div_1MHZ_10HZ_0/I_9 ));
    AO1D \spi_mode_config_0/state_b_RNI5HTN2[2]  (.A(
        \spi_mode_config_0/N_694 ), .B(\spi_mode_config_0/state_b[2] ), 
        .C(\spi_mode_config_0/N_411 ), .Y(\spi_mode_config_0/N_438 ));
    XA1 \orbit_control_0/cntr_RNO[8]  (.A(\orbit_control_0/cntr_c7 ), 
        .B(\orbit_control_0/cntr[8]_net_1 ), .C(
        \orbit_control_0/cntr13 ), .Y(\orbit_control_0/cntr_n8 ));
    OR2A \spi_mode_config_0/start_a_RNO_8  (.A(
        \spi_mode_config_0/state_b[2] ), .B(\spi_mode_config_0/N_663 ), 
        .Y(\spi_mode_config_0/un1_mem_enable_a21_27_i_a4_0_i_1 ));
    AO1D \spi_mode_config_0/byte_tracker_b_0_RNIBUPJ  (.A(
        \spi_mode_config_0/state_b[2] ), .B(
        \spi_mode_config_0/byte_tracker_b_0 ), .C(
        orbit_control_0_tx_enable), .Y(\spi_mode_config_0/N_428 ));
    OA1 \spi_mode_config_0/byte_out_a_RNO_3[5]  (.A(
        \spi_mode_config_0/byte_out_a_8_i_i_o2_4_0[5] ), .B(
        \spi_mode_config_0/byte_out_a_8_i_i_o2_4_1[5] ), .C(
        \spi_mode_config_0_byte_out[5] ), .Y(\spi_mode_config_0/N_537 )
        );
    MX2 \read_buffer_0/init_wait[0]/U0  (.A(\read_buffer_0/N_268 ), .B(
        \read_buffer_0/init_wait_c0 ), .S(
        \read_buffer_0/init_stage_177_d ), .Y(
        \read_buffer_0/init_wait[0]/Y ));
    AND3 \clock_div_26MHZ_1MHZ_0/un5_counter_I_19  (.A(
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[0] ), .B(
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[2] ), .C(
        \clock_div_26MHZ_1MHZ_0/counter[6]_net_1 ), .Y(
        \clock_div_26MHZ_1MHZ_0/N_11 ));
    NOR2A \spi_mode_config_0/state_a_RNO_1[0]  (.A(
        \spi_mode_config_0/state_b[1] ), .B(
        \spi_mode_config_0/state_b[2] ), .Y(
        \spi_mode_config_0/state_a_7_i_0_a3_0_0[0] ));
    AND3 \clock_div_26MHZ_1MHZ_0/un5_counter_I_42  (.A(
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[6] ), .B(
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[7] ), .C(
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[9] ), .Y(
        \clock_div_26MHZ_1MHZ_0/N_3 ));
    OR2A \spi_mode_config_0/config_cntr_b_RNIP628[0]  (.A(
        \spi_mode_config_0/byte_tracker_b ), .B(
        \spi_mode_config_0/config_cntr_b[0] ), .Y(
        \spi_mode_config_0/N_370 ));
    AND3 \clock_div_1MHZ_10HZ_0/un5_counter_I_19  (.A(
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[0] ), .B(
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[2] ), .C(
        \clock_div_1MHZ_10HZ_0/counter[6]_net_1 ), .Y(
        \clock_div_1MHZ_10HZ_0/N_11 ));
    AO1D \spi_mode_config_0/byte_out_a_RNO_19[2]  (.A(
        \spi_mode_config_0/N_416 ), .B(
        \spi_mode_config_0/config_cntr_b[3] ), .C(
        \spi_mode_config_0/N_578 ), .Y(
        \spi_mode_config_0/byte_out_a_8_i_2[2] ));
    DFN1C0 \orbit_control_0/cntr[10]  (.D(\orbit_control_0/cntr_n10 ), 
        .CLK(clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_2), .Q(\orbit_control_0/cntr[10]_net_1 ));
    DFN1C0 \clock_div_1MHZ_10HZ_0/counter[11]  (.D(
        \clock_div_1MHZ_10HZ_0/I_32 ), .CLK(
        clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT), .CLR(reset_pulse_0_RESET)
        , .Q(\clock_div_1MHZ_10HZ_0/counter[11]_net_1 ));
    DFN0 \spi_mode_config_0/byte_out_a[4]  (.D(
        \spi_mode_config_0/N_121 ), .CLK(\spi_master_0.state_q_89 ), 
        .Q(\spi_mode_config_0/byte_out_a[4]_net_1 ));
    DFN1C0 \spi_master_0/data_out_q[2]/U1  (.D(
        \spi_master_0/data_out_q[2]/Y ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_0), .Q(ds2_c));
    OR3 \spi_mode_config_0/ss_b_RNO  (.A(\spi_mode_config_0/N_602 ), 
        .B(\spi_mode_config_0/N_600 ), .C(\spi_mode_config_0/N_601 ), 
        .Y(\spi_mode_config_0/ss_b_1_sqmuxa_1 ));
    NOR2 \clock_div_1MHZ_10HZ_0/counter_RNIC80V[10]  (.A(
        \clock_div_1MHZ_10HZ_0/counter[10]_net_1 ), .B(
        \clock_div_1MHZ_10HZ_0/counter[12]_net_1 ), .Y(
        \clock_div_1MHZ_10HZ_0/clk_out5_4 ));
    NOR2A \spi_mode_config_0/byte_out_a_RNO_7[0]  (.A(
        \spi_mode_config_0/N_126 ), .B(\spi_mode_config_0/N_409 ), .Y(
        \spi_mode_config_0/N_253 ));
    XOR2 \spi_mode_config_0/un1_config_cntr_b_7_I_27  (.A(
        \spi_mode_config_0/config_cntr_b[1] ), .B(
        \spi_mode_config_0/DWACT_ADD_CI_0_TMP[0] ), .Y(
        \spi_mode_config_0/I_27 ));
    INV \clock_div_1MHZ_10HZ_0/un5_counter_I_4  (.A(
        \clock_div_1MHZ_10HZ_0/counter[0]_net_1 ), .Y(
        \clock_div_1MHZ_10HZ_0/I_4 ));
    OR2 \read_buffer_0/byte_out_RNO[6]  (.A(
        \read_buffer_0.byte_out[6] ), .B(
        \read_buffer_0/init_stage_177_d ), .Y(
        \read_buffer_0/byte_out_RNO[6]_net_1 ));
    AND3 \clock_div_1MHZ_10HZ_0/un5_counter_I_27  (.A(
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[4] ), .B(
        \clock_div_1MHZ_10HZ_0/counter[8]_net_1 ), .C(
        \clock_div_1MHZ_10HZ_0/counter[9]_net_1 ), .Y(
        \clock_div_1MHZ_10HZ_0/N_8 ));
    MX2 \spi_mode_config_0/rst_cntr[3]/U0  (.A(
        \spi_mode_config_0/N_461_i ), .B(
        \spi_mode_config_0/rst_cntr[3] ), .S(\spi_mode_config_0/N_397 )
        , .Y(\spi_mode_config_0/rst_cntr[3]/Y ));
    DFN1C0 \clock_div_1MHZ_10HZ_0/counter[5]  (.D(
        \clock_div_1MHZ_10HZ_0/I_14 ), .CLK(
        clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT), .CLR(
        reset_pulse_0_RESET_4), .Q(
        \clock_div_1MHZ_10HZ_0/counter[5]_net_1 ));
    AX1C \spi_mode_config_0/un1_config_cntr_b_7_I_24  (.A(
        \spi_mode_config_0/DWACT_ADD_CI_0_g_array_1[0] ), .B(
        \spi_mode_config_0/config_cntr_b[2] ), .C(
        \spi_mode_config_0/config_cntr_b[3] ), .Y(
        \spi_mode_config_0/I_24 ));
    NOR2 \spi_mode_config_0/state_a_RNO_4[2]  (.A(
        \spi_mode_config_0/state_b[0] ), .B(
        \spi_mode_config_0/state_b[2] ), .Y(
        \spi_mode_config_0/state_a_7_i_0_a3_0_0[2] ));
    AO1A \spi_mode_config_0/state_b_RNIRNGS3[2]  (.A(
        \spi_mode_config_0/state_b[2] ), .B(\spi_mode_config_0/N_694 ), 
        .C(\spi_mode_config_0/byte_out_a_8_i_i_o3_0[5] ), .Y(
        \spi_mode_config_0/N_456 ));
    AND2 \clock_div_1MHZ_10HZ_0/un5_counter_I_21  (.A(
        \clock_div_1MHZ_10HZ_0/counter[6]_net_1 ), .B(
        \clock_div_1MHZ_10HZ_0/counter[7]_net_1 ), .Y(
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[3] ));
    AXOI4 \spi_mode_config_0/byte_out_a_RNO_22[1]  (.A(
        \spi_mode_config_0/N_376 ), .B(
        \spi_mode_config_0/byte_tracker_b_0 ), .C(
        \spi_mode_config_0/config_cntr_b[6] ), .Y(
        \spi_mode_config_0/N_490 ));
    AO1 \spi_mode_config_0/byte_out_a_RNO_1[7]  (.A(
        \spi_mode_config_0_byte_out[7] ), .B(
        \spi_mode_config_0/byte_out_a_8_1_0_0_tz[7] ), .C(
        \spi_mode_config_0/N_526 ), .Y(
        \spi_mode_config_0/byte_out_a_8_1_0_3[7] ));
    XA1 \orbit_control_0/cntr_RNO[10]  (.A(\orbit_control_0/cntr_c9 ), 
        .B(\orbit_control_0/cntr[10]_net_1 ), .C(
        \orbit_control_0/cntr13 ), .Y(\orbit_control_0/cntr_n10 ));
    OAI1 \spi_mode_config_0/byte_out_a_RNO_22[2]  (.A(
        \spi_mode_config_0/config_cntr_b[4] ), .B(
        \spi_mode_config_0/N_420 ), .C(\spi_mode_config_0/N_388 ), .Y(
        \spi_mode_config_0/N_142 ));
    NOR3B \spi_mode_config_0/config_cntr_b_RNIIPT71[3]  (.A(
        \spi_mode_config_0/N_627 ), .B(
        \spi_mode_config_0/config_cntr_b[3] ), .C(
        \spi_mode_config_0/N_371 ), .Y(\spi_mode_config_0/N_646 ));
    DFN1C0 \spi_mode_config_0/config_cntr_b[3]/U1  (.D(
        \spi_mode_config_0/config_cntr_b[3]/Y ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_1), .Q(
        \spi_mode_config_0/config_cntr_b[3] ));
    NOR2B \read_buffer_0/init_wait_RNO[2]  (.A(
        \read_buffer_0/un1_init_wait ), .B(
        \read_buffer_0/init_wait_n2_tz ), .Y(
        \read_buffer_0/init_wait_n2 ));
    MX2 \spi_master_0/data_q_RNO[6]  (.A(\spi_master_0/data_q[5] ), .B(
        \spi_mode_config_0_byte_out[6] ), .S(\spi_master_0.state_q_89 )
        , .Y(\spi_master_0/data_d[6] ));
    DFN1C0 \spi_master_0/data_out_q[7]/U1  (.D(
        \spi_master_0/data_out_q[7]/Y ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_0), .Q(ds7_c));
    AOI1B \spi_mode_config_0/byte_out_b_RNO[2]  (.A(
        \spi_mode_config_0/byte_out_b_1_sqmuxa_i_i_a3_1 ), .B(
        \spi_mode_config_0/byte_out_b_1_sqmuxa_i_i_a3_0 ), .C(
        \spi_mode_config_0/byte_out_a[2]_net_1 ), .Y(
        \spi_mode_config_0/byte_out_b_6[2] ));
    MX2 \spi_mode_config_0/config_cntr_b[5]/U0  (.A(
        \spi_mode_config_0/config_cntr_a[5]_net_1 ), .B(
        \spi_mode_config_0/config_cntr_b[5] ), .S(
        \spi_mode_config_0/ss_a_net_1 ), .Y(
        \spi_mode_config_0/config_cntr_b[5]/Y ));
    MX2 \spi_mode_config_0/begin_pass_b/U0  (.A(
        \spi_mode_config_0/begin_pass_a_net_1 ), .B(
        spi_mode_config_0_begin_pass), .S(
        \spi_mode_config_0/ss_a_net_1 ), .Y(
        \spi_mode_config_0/begin_pass_b/Y ));
    DFN1C0 \spi_master_0/data_q[0]/U1  (.D(\spi_master_0/data_q[0]/Y ), 
        .CLK(GLA), .CLR(reset_pulse_0_RESET_2), .Q(
        \spi_master_0/data_q[0] ));
    NOR2A \spi_mode_config_0/state_b_RNIBP68_0[2]  (.A(
        \spi_mode_config_0/N_391 ), .B(\spi_mode_config_0/state_b[2] ), 
        .Y(\spi_mode_config_0/byte_out_a_8_1_0_a2_4_0[3] ));
    OR3 \spi_mode_config_0/byte_out_a_RNO_2[0]  (.A(
        \spi_mode_config_0/byte_out_a_8_1_4[0] ), .B(
        \spi_mode_config_0/byte_out_a_8_1_3[0] ), .C(
        \spi_mode_config_0/byte_out_a_8_1_10[0] ), .Y(
        \spi_mode_config_0/byte_out_a_8_1_12[0] ));
    AX1C \clock_div_26MHZ_1MHZ_0/un5_counter_I_26  (.A(
        \clock_div_26MHZ_1MHZ_0/counter[8]_net_1 ), .B(
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[4] ), .C(
        \clock_div_26MHZ_1MHZ_0/counter[9]_net_1 ), .Y(
        \clock_div_26MHZ_1MHZ_0/I_26_0 ));
    OA1A \orbit_control_0/cntr_RNI942M[9]  (.A(
        \orbit_control_0/cntr[9]_net_1 ), .B(
        \orbit_control_0/un1_cntrlt9 ), .C(
        \orbit_control_0/un1_cntrlto11_0 ), .Y(
        \orbit_control_0/un1_cntrlt12 ));
    XA1 \read_buffer_0/init_wait_RNO[4]  (.A(
        \read_buffer_0/init_wait[4] ), .B(\read_buffer_0/init_wait_c3 )
        , .C(\read_buffer_0/un1_init_wait ), .Y(
        \read_buffer_0/init_wait_n4 ));
    IOPAD_IN \CLK_48MHZ_pad/U0/U0  (.PAD(CLK_48MHZ), .Y(
        \CLK_48MHZ_pad/U0/NET1 ));
    NOR2A \spi_mode_config_0/config_cntr_b_RNI295C[0]  (.A(
        \spi_mode_config_0/N_667 ), .B(\spi_mode_config_0/N_365 ), .Y(
        \spi_mode_config_0/N_623 ));
    OR2 \spi_mode_config_0/byte_out_a_RNO_2[2]  (.A(
        \spi_mode_config_0/byte_out_a_8_i_7[2] ), .B(
        \spi_mode_config_0/byte_out_a_8_i_8[2] ), .Y(
        \spi_mode_config_0/byte_out_a_8_i_11[2] ));
    NOR3B \spi_mode_config_0/byte_out_a_RNO_12[1]  (.A(
        \spi_mode_config_0/config_cntr_b[5] ), .B(
        \spi_mode_config_0/N_300 ), .C(
        \spi_mode_config_0/config_cntr_b[1] ), .Y(
        \spi_mode_config_0/N_586 ));
    OR2 \spi_mode_config_0/state_b_RNI7OT6[1]  (.A(
        \spi_mode_config_0/N_373 ), .B(\spi_mode_config_0/state_b[1] ), 
        .Y(\spi_mode_config_0/N_397 ));
    DFN1P0 \spi_mode_config_0/ss_b/U1  (.D(\spi_mode_config_0/ss_b/Y ), 
        .CLK(GLA), .PRE(reset_pulse_0_RESET_1), .Q(SS_c));
    OA1B \spi_mode_config_0/byte_out_a_RNO_12[2]  (.A(
        \spi_mode_config_0/N_372 ), .B(\spi_mode_config_0/N_677 ), .C(
        \spi_mode_config_0/N_365 ), .Y(
        \spi_mode_config_0/byte_out_a_8_i_3_0_a3_0[2] ));
    NOR2A \spi_mode_config_0/start_a_RNO_15  (.A(
        \spi_mode_config_0/N_678 ), .B(\spi_mode_config_0/state_b[1] ), 
        .Y(\spi_mode_config_0/N_284 ));
    MX2 \spi_master_0/data_out_q[4]/U0  (.A(ds4_c), .B(
        \spi_master_0/data_q[4] ), .S(
        \spi_master_0/new_data_d_2_sqmuxa ), .Y(
        \spi_master_0/data_out_q[4]/Y ));
    IOTRI_OB_EB \ds7_pad/U0/U1  (.D(ds7_c), .E(VCC), .DOUT(
        \ds7_pad/U0/NET1 ), .EOUT(\ds7_pad/U0/NET2 ));
    DFN1C0 \spi_master_0/data_out_q[3]/U1  (.D(
        \spi_master_0/data_out_q[3]/Y ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_0), .Q(ds3_c));
    NOR3 \spi_mode_config_0/rst_cntr_RNIN734[4]  (.A(
        \spi_mode_config_0/rst_cntr[5] ), .B(
        \spi_mode_config_0/rst_cntr[3] ), .C(
        \spi_mode_config_0/rst_cntr[4] ), .Y(
        \spi_mode_config_0/ss_b_1_sqmuxa_1_0_a2_1 ));
    IOPAD_IN \BUF2_PBRST_T9_pad/U0/U0  (.PAD(BUF2_PBRST_T9), .Y(
        \BUF2_PBRST_T9_pad/U0/NET1 ));
    MX2 \spi_mode_config_0/rst_cntr[1]/U0  (.A(
        \spi_mode_config_0/N_458_i ), .B(\spi_mode_config_0/un74lto1 ), 
        .S(\spi_mode_config_0/N_397 ), .Y(
        \spi_mode_config_0/rst_cntr[1]/Y ));
    NOR3A \spi_master_0/state_q_RNO[0]  (.A(spi_mode_config_0_start), 
        .B(\spi_master_0/state_q[1]_net_1 ), .C(\spi_master_0/N_36 ), 
        .Y(\spi_master_0/state_q_RNO[0]_net_1 ));
    NOR2 \spi_mode_config_0/config_cntr_b_RNIJF021[5]  (.A(
        \spi_mode_config_0/N_439 ), .B(\spi_mode_config_0/N_396 ), .Y(
        \spi_mode_config_0/state_a_7_i_0_a3_1_0[0] ));
    AND3B \spi_mode_config_0/config_cntr_b_RNI8QQD1[6]  (.A(
        \spi_mode_config_0/N_439 ), .B(\spi_mode_config_0/N_371 ), .C(
        \spi_mode_config_0/byte_out_a_8_i_a4_10_0_a3_1[5] ), .Y(
        \spi_mode_config_0/N_197 ));
    AOI1B \clock_div_1MHZ_10HZ_0/counter_RNO[15]  (.A(
        \clock_div_1MHZ_10HZ_0/clk_out5_13 ), .B(
        \clock_div_1MHZ_10HZ_0/clk_out5_12 ), .C(
        \clock_div_1MHZ_10HZ_0/I_43 ), .Y(
        \clock_div_1MHZ_10HZ_0/counter_3[15] ));
    DFN0 \spi_mode_config_0/next_a  (.D(
        \spi_mode_config_0/next_a_RNO_net_1 ), .CLK(
        \spi_master_0.state_q_89 ), .Q(
        \spi_mode_config_0/next_a_net_1 ));
    OR3 \spi_mode_config_0/byte_out_a_RNO[0]  (.A(
        \spi_mode_config_0/byte_out_a_8_1_8[0] ), .B(
        \spi_mode_config_0/byte_out_a_8_1_7[0] ), .C(
        \spi_mode_config_0/byte_out_a_8_1_12[0] ), .Y(
        \spi_mode_config_0/byte_out_a_8[0] ));
    PLLBA \CLK_26MHZ_0/Core  (.CLKA(reset_pulse_0_CLK_OUT_48MHZ), 
        .EXTFB(GND), .POWERDOWN(VCC), .GLA(GLA), .LOCK(), .GLB(), .YB()
        , .GLC(), .YC(), .OADIV0(VCC), .OADIV1(VCC), .OADIV2(VCC), 
        .OADIV3(GND), .OADIV4(GND), .OAMUX0(GND), .OAMUX1(GND), 
        .OAMUX2(VCC), .DLYGLA0(GND), .DLYGLA1(GND), .DLYGLA2(GND), 
        .DLYGLA3(GND), .DLYGLA4(GND), .OBDIV0(AFLSDF_GND), .OBDIV1(
        AFLSDF_GND), .OBDIV2(AFLSDF_GND), .OBDIV3(AFLSDF_GND), .OBDIV4(
        AFLSDF_GND), .OBMUX0(AFLSDF_GND), .OBMUX1(AFLSDF_GND), .OBMUX2(
        AFLSDF_GND), .DLYYB0(AFLSDF_GND), .DLYYB1(AFLSDF_GND), .DLYYB2(
        AFLSDF_GND), .DLYYB3(AFLSDF_GND), .DLYYB4(AFLSDF_GND), 
        .DLYGLB0(AFLSDF_GND), .DLYGLB1(AFLSDF_GND), .DLYGLB2(
        AFLSDF_GND), .DLYGLB3(AFLSDF_GND), .DLYGLB4(AFLSDF_GND), 
        .OCDIV0(AFLSDF_GND), .OCDIV1(AFLSDF_GND), .OCDIV2(AFLSDF_GND), 
        .OCDIV3(AFLSDF_GND), .OCDIV4(AFLSDF_GND), .OCMUX0(AFLSDF_GND), 
        .OCMUX1(AFLSDF_GND), .OCMUX2(AFLSDF_GND), .DLYYC0(AFLSDF_GND), 
        .DLYYC1(AFLSDF_GND), .DLYYC2(AFLSDF_GND), .DLYYC3(AFLSDF_GND), 
        .DLYYC4(AFLSDF_GND), .DLYGLC0(AFLSDF_GND), .DLYGLC1(AFLSDF_GND)
        , .DLYGLC2(AFLSDF_GND), .DLYGLC3(AFLSDF_GND), .DLYGLC4(
        AFLSDF_GND), .FINDIV0(GND), .FINDIV1(GND), .FINDIV2(GND), 
        .FINDIV3(VCC), .FINDIV4(GND), .FINDIV5(GND), .FINDIV6(GND), 
        .FBDIV0(GND), .FBDIV1(VCC), .FBDIV2(VCC), .FBDIV3(GND), 
        .FBDIV4(GND), .FBDIV5(VCC), .FBDIV6(GND), .FBDLY0(GND), 
        .FBDLY1(GND), .FBDLY2(GND), .FBDLY3(GND), .FBDLY4(GND), 
        .FBSEL0(VCC), .FBSEL1(GND), .XDLYSEL(GND), .VCOSEL0(GND), 
        .VCOSEL1(VCC), .VCOSEL2(VCC));
    DFN1C0 \read_buffer_0/position[0]  (.D(
        \read_buffer_0/DWACT_ADD_CI_0_partial_sum[0] ), .CLK(
        spi_mode_config_0_next_cmd), .CLR(reset_pulse_0_RESET), .Q(
        \read_buffer_0/position[0]_net_1 ));
    DFN1C0 \clock_div_1MHZ_10HZ_0/counter[13]  (.D(
        \clock_div_1MHZ_10HZ_0/I_37 ), .CLK(
        clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT), .CLR(reset_pulse_0_RESET)
        , .Q(\clock_div_1MHZ_10HZ_0/counter[13]_net_1 ));
    NOR2 \spi_mode_config_0/start_a_RNO_12  (.A(
        \spi_mode_config_0/N_365 ), .B(\spi_mode_config_0/state_b[1] ), 
        .Y(\spi_mode_config_0/un1_byte_out_a_83_sqmuxa_0_a4_0 ));
    AOI1B \spi_mode_config_0/config_cntr_a_RNO[2]  (.A(
        \spi_mode_config_0/state_a_7_i_0_a3_1_0[0] ), .B(
        \spi_mode_config_0/N_647 ), .C(\spi_mode_config_0/I_26_1 ), .Y(
        \spi_mode_config_0/config_cntr_a_86[2] ));
    NOR2A \spi_mode_config_0/byte_out_a_RNO_18[0]  (.A(
        \spi_mode_config_0/config_cntr_b[4] ), .B(
        \spi_mode_config_0/N_413 ), .Y(
        \spi_mode_config_0/byte_out_a_8_1_a4_12_0[0] ));
    OR3 \spi_mode_config_0/byte_out_a_RNO_1[1]  (.A(
        \spi_mode_config_0/N_589 ), .B(\spi_mode_config_0/N_516 ), .C(
        \spi_mode_config_0/byte_out_a_8_1_0_3[1] ), .Y(
        \spi_mode_config_0/byte_out_a_8_1_0_8[1] ));
    OR3 \spi_mode_config_0/byte_out_a_RNO_1[3]  (.A(
        \spi_mode_config_0/N_575 ), .B(\spi_mode_config_0/N_574 ), .C(
        \spi_mode_config_0/byte_out_a_8_1_0_7[3] ), .Y(
        \spi_mode_config_0/byte_out_a_8_1_0_12[3] ));
    DFN1C0 \spi_master_0/data_out_q[6]/U1  (.D(
        \spi_master_0/data_out_q[6]/Y ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_0), .Q(ds6_c));
    AND3 \clock_div_26MHZ_1MHZ_0/un5_counter_I_16  (.A(
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[0] ), .B(
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[1] ), .C(
        \clock_div_26MHZ_1MHZ_0/counter[5]_net_1 ), .Y(
        \clock_div_26MHZ_1MHZ_0/N_12 ));
    OA1B \spi_mode_config_0/byte_out_a_RNO_22[0]  (.A(
        \spi_mode_config_0/config_cntr_b[6] ), .B(
        \spi_mode_config_0/config_cntr_b[1] ), .C(
        \spi_mode_config_0/N_439 ), .Y(
        \spi_mode_config_0/byte_out_a_8_1_a4_4_1[0] ));
    OR2 \spi_mode_config_0/byte_out_a_RNO_7[6]  (.A(
        \spi_mode_config_0/N_536 ), .B(\spi_mode_config_0/N_524 ), .Y(
        \spi_mode_config_0/byte_out_a_8_1_0_4[6] ));
    MX2 \spi_mode_config_0/byte_out_b[1]/U0  (.A(
        \spi_mode_config_0_byte_out[1] ), .B(
        \spi_mode_config_0/byte_out_b_6[1] ), .S(
        \spi_mode_config_0/N_145 ), .Y(
        \spi_mode_config_0/byte_out_b[1]/Y ));
    NOR2 \read_buffer_0/init_stage_RNI3HC6[0]  (.A(
        \read_buffer_0/init_stage[0]_net_1 ), .B(
        \read_buffer_0/init_stage[1]_net_1 ), .Y(
        \read_buffer_0/init_stage_177_d ));
    DFN1P0 \clock_div_1MHZ_10HZ_0/clk_out  (.D(
        \clock_div_1MHZ_10HZ_0/clk_out_RNO_net_1 ), .CLK(
        clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT), .PRE(
        reset_pulse_0_RESET_4), .Q(\clock_div_1MHZ_10HZ_0/clk_out_i ));
    NOR3A \spi_mode_config_0/byte_out_a_RNO_10[6]  (.A(
        \spi_mode_config_0/N_575_1 ), .B(\spi_mode_config_0/N_376 ), 
        .C(\spi_mode_config_0/N_371 ), .Y(\spi_mode_config_0/N_534 ));
    DFN1C0 \read_buffer_0/init_wait[4]/U1  (.D(
        \read_buffer_0/init_wait[4]/Y ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_2), .Q(
        \read_buffer_0/init_wait[4] ));
    DFN1C1 \clock_div_26MHZ_1MHZ_0/counter[9]  (.D(
        \clock_div_26MHZ_1MHZ_0/I_26_0 ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_3), .Q(
        \clock_div_26MHZ_1MHZ_0/counter[9]_net_1 ));
    OR3 \spi_mode_config_0/byte_out_a_RNO[7]  (.A(
        \spi_mode_config_0/byte_out_a_8_1_0_4[7] ), .B(
        \spi_mode_config_0/byte_out_a_8_1_0_3[7] ), .C(
        \spi_mode_config_0/byte_out_a_8_1_0_5[7] ), .Y(
        \spi_mode_config_0/byte_out_a_8[7] ));
    NOR3B \spi_mode_config_0/byte_out_a_RNO_12[4]  (.A(
        \spi_mode_config_0/N_627 ), .B(\spi_mode_config_0/N_233_1 ), 
        .C(\spi_mode_config_0/N_371 ), .Y(\spi_mode_config_0/N_560 ));
    DFN0 \spi_mode_config_0/byte_out_a[0]  (.D(
        \spi_mode_config_0/byte_out_a_8[0] ), .CLK(
        \spi_master_0.state_q_89 ), .Q(
        \spi_mode_config_0/byte_out_a[0]_net_1 ));
    CLKINT \spi_master_0/state_q_RNIRHEV_0[0]  (.A(
        \spi_master_0/state_q_i_d[0] ), .Y(\spi_master_0.state_q_89 ));
    DFN1C0 \read_buffer_0/byte_out[1]/U1  (.D(
        \read_buffer_0/byte_out[1]/Y ), .CLK(
        spi_mode_config_0_next_cmd), .CLR(reset_pulse_0_RESET_1), .Q(
        \read_buffer_0.byte_out[1] ));
    DFN1C0 \clock_div_1MHZ_10HZ_0/counter[12]  (.D(
        \clock_div_1MHZ_10HZ_0/I_35 ), .CLK(
        clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT), .CLR(reset_pulse_0_RESET)
        , .Q(\clock_div_1MHZ_10HZ_0/counter[12]_net_1 ));
    OR2 \spi_mode_config_0/state_b_RNITQS5[0]  (.A(
        \spi_mode_config_0/N_364 ), .B(\spi_mode_config_0/state_b[0] ), 
        .Y(\spi_mode_config_0/N_391 ));
    OR3 \spi_mode_config_0/byte_out_a_RNO_1[2]  (.A(
        \spi_mode_config_0/N_237 ), .B(
        \spi_mode_config_0/byte_out_a_8_i_0[2] ), .C(
        \spi_mode_config_0/byte_out_a_8_i_4[2] ), .Y(
        \spi_mode_config_0/byte_out_a_8_i_9[2] ));
    MX2 \spi_master_0/data_out_q[1]/U0  (.A(ds1_c), .B(
        \spi_master_0/data_q[1] ), .S(
        \spi_master_0/new_data_d_2_sqmuxa ), .Y(
        \spi_master_0/data_out_q[1]/Y ));
    AO1B \spi_mode_config_0/ss_a_RNI43V91  (.A(
        \spi_mode_config_0/byte_out_b_1_sqmuxa_i_i_a3_1 ), .B(
        \spi_mode_config_0/byte_out_b_1_sqmuxa_i_i_a3_0 ), .C(
        \spi_mode_config_0/ss_a_net_1 ), .Y(\spi_mode_config_0/N_145 ));
    NOR2A \spi_mode_config_0/byte_out_a_RNO_3[2]  (.A(
        \spi_mode_config_0/N_633 ), .B(
        \spi_mode_config_0/config_cntr_b[2] ), .Y(
        \spi_mode_config_0/N_359 ));
    OR2B \spi_mode_config_0/byte_out_a_RNO_12[0]  (.A(
        \spi_mode_config_0/N_410 ), .B(\spi_mode_config_0/N_404 ), .Y(
        \spi_mode_config_0/N_124 ));
    AND3 \clock_div_1MHZ_10HZ_0/un5_counter_I_30  (.A(
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[0] ), .B(
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[2] ), .C(
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[5] ), .Y(
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[6] ));
    NOR2A \spi_mode_config_0/byte_out_a_RNO_3[7]  (.A(
        \spi_mode_config_0/N_633 ), .B(\spi_mode_config_0/N_420 ), .Y(
        \spi_mode_config_0/N_522 ));
    DFN1C0 \spi_master_0/data_q[2]/U1  (.D(\spi_master_0/data_q[2]/Y ), 
        .CLK(GLA), .CLR(reset_pulse_0_RESET_2), .Q(
        \spi_master_0/data_q[2] ));
    AND3 \clock_div_26MHZ_1MHZ_0/un5_counter_I_33  (.A(
        \clock_div_26MHZ_1MHZ_0/counter[9]_net_1 ), .B(
        \clock_div_26MHZ_1MHZ_0/counter[10]_net_1 ), .C(
        \clock_div_26MHZ_1MHZ_0/counter[11]_net_1 ), .Y(
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[7] ));
    DFN1C0 \spi_mode_config_0/rst_cntr[8]/U1  (.D(
        \spi_mode_config_0/rst_cntr[8]/Y ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_0), .Q(\spi_mode_config_0/rst_cntr[8] ));
    DFN1C0 \clock_div_1MHZ_10HZ_0/counter[7]  (.D(
        \clock_div_1MHZ_10HZ_0/I_20 ), .CLK(
        clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT), .CLR(
        reset_pulse_0_RESET_4), .Q(
        \clock_div_1MHZ_10HZ_0/counter[7]_net_1 ));
    OR3A \spi_mode_config_0/un1_byte_out_a_83_sqmuxa_0_o2_i_o2  (.A(
        ds4_c), .B(ds5_c), .C(ds6_c), .Y(\spi_mode_config_0/N_423 ));
    OR3 \spi_mode_config_0/byte_out_a_RNO_4[7]  (.A(
        \spi_mode_config_0/N_686 ), .B(
        \spi_mode_config_0/byte_out_a_8_1_0_a3_0_0[7] ), .C(
        \spi_mode_config_0/byte_out_a_8_1_0_0_tz_1[7] ), .Y(
        \spi_mode_config_0/byte_out_a_8_1_0_0_tz[7] ));
    NOR3 \spi_mode_config_0/byte_tracker_b_RNI00D03  (.A(
        \spi_mode_config_0/N_77 ), .B(\spi_mode_config_0/N_608 ), .C(
        \spi_mode_config_0/N_367 ), .Y(
        \spi_mode_config_0/byte_tracker_b_RNI00D03_net_1 ));
    DFN1C0 \orbit_control_0/cntr[6]  (.D(\orbit_control_0/cntr_n6 ), 
        .CLK(clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_4), .Q(\orbit_control_0/cntr[6]_net_1 ));
    NOR3B \spi_master_0/ctr_q_RNIT5DV[2]  (.A(\spi_master_0/N_45 ), .B(
        \spi_master_0/ctr_q[2] ), .C(\spi_master_0/N_23 ), .Y(
        \spi_master_0/N_50 ));
    DFN1C0 \spi_mode_config_0/state_b[2]/U1  (.D(
        \spi_mode_config_0/state_b[2]/Y ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_0), .Q(\spi_mode_config_0/state_b[2] ));
    OR2A \spi_master_0/state_q_RNI9JLG[1]  (.A(
        \spi_master_0/state_q[1]_net_1 ), .B(\spi_master_0/N_45 ), .Y(
        \spi_master_0/N_22 ));
    XO1A \read_buffer_0/init_stage_RNO_2[1]  (.A(
        \read_buffer_0/init_stage[1]_net_1 ), .B(
        \read_buffer_0/init_stage[0]_net_1 ), .C(
        \read_buffer_0/init_stage_ns_i_a2_1_tz[1] ), .Y(
        \read_buffer_0/init_stage_ns_i_a2_0_0[1] ));
    NOR2B \orbit_control_0/cntr_RNINE201[5]  (.A(
        \orbit_control_0/cntr[5]_net_1 ), .B(\orbit_control_0/cntr_c4 )
        , .Y(\orbit_control_0/cntr_c5 ));
    MX2 \read_buffer_0/byte_out[3]/U0  (.A(\read_buffer_0.byte_out[3] )
        , .B(\read_buffer_0/position[0]_net_1 ), .S(
        \read_buffer_0/init_stage_177_d ), .Y(
        \read_buffer_0/byte_out[3]/Y ));
    NOR2B \spi_mode_config_0/byte_out_a_RNO_27[0]  (.A(
        \spi_mode_config_0_byte_out[0] ), .B(
        \spi_mode_config_0/byte_out_a_8_1_a4_8_0[0] ), .Y(
        \spi_mode_config_0/byte_out_a_8_1_a4_8_2[0] ));
    NOR2 \spi_mode_config_0/config_cntr_b_RNI7IKN[5]  (.A(
        \spi_mode_config_0/N_403 ), .B(
        \spi_mode_config_0/config_cntr_b[5] ), .Y(
        \spi_mode_config_0/N_644 ));
    AO1 \spi_mode_config_0/byte_out_a_RNO_1[4]  (.A(
        \spi_mode_config_0/byte_out_a_8_i_i_a3_6_0[4] ), .B(
        \spi_mode_config_0/N_300 ), .C(
        \spi_mode_config_0/byte_out_a_8_i_i_0[4] ), .Y(
        \spi_mode_config_0/byte_out_a_8_i_i_5[4] ));
    MX2 \spi_master_0/mosi_q/U0  (.A(MOSI_c), .B(
        \spi_master_0/data_q[7] ), .S(
        \spi_master_0/un1_sck_d_0_sqmuxa ), .Y(\spi_master_0/mosi_q/Y )
        );
    AOI1B \clock_div_1MHZ_10HZ_0/counter_RNO[9]  (.A(
        \clock_div_1MHZ_10HZ_0/clk_out5_13 ), .B(
        \clock_div_1MHZ_10HZ_0/clk_out5_12 ), .C(
        \clock_div_1MHZ_10HZ_0/I_26 ), .Y(
        \clock_div_1MHZ_10HZ_0/counter_3[9] ));
    DFN0 \spi_mode_config_0/config_cntr_a[5]  (.D(
        \spi_mode_config_0/I_29 ), .CLK(\spi_master_0.state_q_89 ), .Q(
        \spi_mode_config_0/config_cntr_a[5]_net_1 ));
    AX1C \spi_mode_config_0/rst_cntr_RNO[2]  (.A(
        \spi_mode_config_0/un74lto1 ), .B(\spi_mode_config_0/un74lto0 )
        , .C(\spi_mode_config_0/un74lto2 ), .Y(
        \spi_mode_config_0/N_459_i ));
    DFN1C0 \spi_mode_config_0/byte_out_b[5]/U1  (.D(
        \spi_mode_config_0/byte_out_b[5]/Y ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_1), .Q(\spi_mode_config_0_byte_out[5] ));
    DFN0 \spi_mode_config_0/byte_out_a[6]  (.D(
        \spi_mode_config_0/byte_out_a_8[6] ), .CLK(
        \spi_master_0.state_q_89 ), .Q(
        \spi_mode_config_0/byte_out_a[6]_net_1 ));
    DFN1C0 \spi_master_0/ctr_q[2]/U1  (.D(\spi_master_0/ctr_q[2]/Y ), 
        .CLK(GLA), .CLR(reset_pulse_0_RESET_2), .Q(
        \spi_master_0/ctr_q[2] ));
    OAI1 \read_buffer_0/init_stage_RNO[1]  (.A(
        \read_buffer_0/init_stage_ns_i_a2_2_tz_tz[1] ), .B(
        \read_buffer_0/init_stage_ns_i_a2_2_1[1] ), .C(
        \read_buffer_0/init_stage_ns_i_a2_0_0[1] ), .Y(
        \read_buffer_0/init_stage_RNO[1]_net_1 ));
    AXO6 \spi_mode_config_0/byte_tracker_a_RNO_5  (.A(
        \spi_mode_config_0/N_424 ), .B(\spi_mode_config_0/N_373 ), .C(
        \spi_mode_config_0/state_b[1] ), .Y(
        \spi_mode_config_0/byte_tracker_a_0_0_0_o2_3_0 ));
    AND3 \clock_div_26MHZ_1MHZ_0/un5_counter_I_31  (.A(
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[6] ), .B(
        \clock_div_26MHZ_1MHZ_0/counter[9]_net_1 ), .C(
        \clock_div_26MHZ_1MHZ_0/counter[10]_net_1 ), .Y(
        \clock_div_26MHZ_1MHZ_0/N_7 ));
    DFN1C0 \spi_mode_config_0/rst_cntr[3]/U1  (.D(
        \spi_mode_config_0/rst_cntr[3]/Y ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_0), .Q(\spi_mode_config_0/rst_cntr[3] ));
    DFN1C0 \clock_div_1MHZ_10HZ_0/counter[6]  (.D(
        \clock_div_1MHZ_10HZ_0/counter_3[6] ), .CLK(
        clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT), .CLR(
        reset_pulse_0_RESET_4), .Q(
        \clock_div_1MHZ_10HZ_0/counter[6]_net_1 ));
    NOR2A \spi_mode_config_0/config_cntr_b_RNIJ8QB_1[3]  (.A(
        \spi_mode_config_0/config_cntr_b[2] ), .B(
        \spi_mode_config_0/config_cntr_b[3] ), .Y(
        \spi_mode_config_0/N_322 ));
    OR2 \reset_pulse_0/RESET_1  (.A(BUF2_PBRST_T9_c), .B(CLK_48MHZ_c), 
        .Y(reset_pulse_0_RESET_1));
    OR3 \spi_mode_config_0/byte_out_a_RNO[4]  (.A(
        \spi_mode_config_0/byte_out_a_8_i_i_6[4] ), .B(
        \spi_mode_config_0/byte_out_a_8_i_i_5[4] ), .C(
        \spi_mode_config_0/byte_out_a_8_i_i_7[4] ), .Y(
        \spi_mode_config_0/N_121 ));
    NOR2A \clock_div_1MHZ_10HZ_0/counter_RNIFOFF[4]  (.A(
        \clock_div_1MHZ_10HZ_0/counter[4]_net_1 ), .B(
        \clock_div_1MHZ_10HZ_0/counter[3]_net_1 ), .Y(
        \clock_div_1MHZ_10HZ_0/clk_out5_7 ));
    MX2 \spi_mode_config_0/config_cntr_b[1]/U0  (.A(
        \spi_mode_config_0/config_cntr_a[1]_net_1 ), .B(
        \spi_mode_config_0/config_cntr_b[1] ), .S(
        \spi_mode_config_0/ss_a_net_1 ), .Y(
        \spi_mode_config_0/config_cntr_b[1]/Y ));
    NOR2 \spi_master_0/sck_q_RNO[0]  (.A(\spi_master_0/state_q_i_d[0] )
        , .B(\spi_master_0/sck_q[0]_net_1 ), .Y(
        \spi_master_0/sck_d[0] ));
    AX1C \clock_div_1MHZ_10HZ_0/un5_counter_I_35  (.A(
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[7] ), .B(
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[6] ), .C(
        \clock_div_1MHZ_10HZ_0/counter[12]_net_1 ), .Y(
        \clock_div_1MHZ_10HZ_0/I_35 ));
    XOR2 \clock_div_1MHZ_10HZ_0/un5_counter_I_23  (.A(
        \clock_div_1MHZ_10HZ_0/N_10 ), .B(
        \clock_div_1MHZ_10HZ_0/counter[8]_net_1 ), .Y(
        \clock_div_1MHZ_10HZ_0/I_23 ));
    AND2 \clock_div_26MHZ_1MHZ_0/un5_counter_I_38  (.A(
        \clock_div_26MHZ_1MHZ_0/counter[12]_net_1 ), .B(
        \clock_div_26MHZ_1MHZ_0/counter[13]_net_1 ), .Y(
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[8] ));
    XNOR2 \spi_mode_config_0/rst_cntr_RNO[7]  (.A(
        \spi_mode_config_0/N_400 ), .B(\spi_mode_config_0/rst_cntr[7] )
        , .Y(\spi_mode_config_0/N_486_i ));
    DFN1C0 \spi_mode_config_0/byte_out_b[0]/U1  (.D(
        \spi_mode_config_0/byte_out_b[0]/Y ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_1), .Q(\spi_mode_config_0_byte_out[0] ));
    OA1A \spi_mode_config_0/byte_out_a_RNO_17[0]  (.A(
        \spi_mode_config_0/N_373 ), .B(\spi_mode_config_0/N_364 ), .C(
        \spi_mode_config_0_byte_out[0] ), .Y(\spi_mode_config_0/N_252 )
        );
    AO1A \spi_master_0/mosi_q_RNO  (.A(\spi_master_0/N_154 ), .B(
        \spi_master_0/state_q[1]_net_1 ), .C(\spi_master_0/N_36 ), .Y(
        \spi_master_0/un1_sck_d_0_sqmuxa ));
    NOR2B \spi_mode_config_0/byte_out_b_RNI7EG5[5]  (.A(
        \spi_mode_config_0_byte_out[5] ), .B(
        \spi_mode_config_0/state_b[0] ), .Y(\spi_mode_config_0/N_664 ));
    OA1A \spi_mode_config_0/state_b_RNIE1F11[2]  (.A(
        \spi_mode_config_0/N_666 ), .B(\spi_mode_config_0/N_418 ), .C(
        \spi_mode_config_0/byte_out_a_8_1_0_a2_4_0[3] ), .Y(
        \spi_mode_config_0/N_687 ));
    NOR2B \spi_mode_config_0/byte_out_a_RNO_24[0]  (.A(
        orbit_control_0_tx_enable), .B(
        \spi_mode_config_0/byte_tracker_b ), .Y(
        \spi_mode_config_0/byte_out_a_8_1_a4_10_0_a3_1[0] ));
    NOR2B \orbit_control_0/cntr_RNISROA1[7]  (.A(
        \orbit_control_0/cntr_c6 ), .B(\orbit_control_0/cntr[7]_net_1 )
        , .Y(\orbit_control_0/cntr_c7 ));
    NOR2A \spi_mode_config_0/byte_tracker_b_RNIVC28  (.A(
        \spi_mode_config_0/byte_tracker_b ), .B(
        \spi_mode_config_0/config_cntr_b[6] ), .Y(
        \spi_mode_config_0/N_630 ));
    XOR2 \clock_div_26MHZ_1MHZ_0/un5_counter_I_20  (.A(
        \clock_div_26MHZ_1MHZ_0/N_11 ), .B(
        \clock_div_26MHZ_1MHZ_0/counter[7]_net_1 ), .Y(
        \clock_div_26MHZ_1MHZ_0/I_20_0 ));
    AND3 \clock_div_1MHZ_10HZ_0/un5_counter_I_18  (.A(
        \clock_div_1MHZ_10HZ_0/counter[3]_net_1 ), .B(
        \clock_div_1MHZ_10HZ_0/counter[4]_net_1 ), .C(
        \clock_div_1MHZ_10HZ_0/counter[5]_net_1 ), .Y(
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[2] ));
    NOR3A \spi_mode_config_0/byte_out_a_RNO_13[6]  (.A(
        \spi_mode_config_0/N_627 ), .B(\spi_mode_config_0/N_371 ), .C(
        \spi_mode_config_0/N_410 ), .Y(\spi_mode_config_0/N_536 ));
    NOR2A \spi_mode_config_0/byte_out_b_RNIJAQ7[3]  (.A(
        \spi_mode_config_0_byte_out[3] ), .B(\spi_mode_config_0/N_365 )
        , .Y(\spi_mode_config_0/N_670 ));
    AND3 \clock_div_1MHZ_10HZ_0/un5_counter_I_36  (.A(
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[6] ), .B(
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[7] ), .C(
        \clock_div_1MHZ_10HZ_0/counter[12]_net_1 ), .Y(
        \clock_div_1MHZ_10HZ_0/N_5 ));
    XOR2 \spi_mode_config_0/rst_cntr_RNO[1]  (.A(
        \spi_mode_config_0/un74lto0 ), .B(\spi_mode_config_0/un74lto1 )
        , .Y(\spi_mode_config_0/N_458_i ));
    NOR3C \spi_mode_config_0/un1_config_cntr_b_7_I_38  (.A(
        \spi_mode_config_0/config_cntr_b[2] ), .B(
        \spi_mode_config_0/config_cntr_b[3] ), .C(
        \spi_mode_config_0/DWACT_ADD_CI_0_g_array_1[0] ), .Y(
        \spi_mode_config_0/DWACT_ADD_CI_0_g_array_2[0] ));
    IOPAD_TRI \ds7_pad/U0/U0  (.D(\ds7_pad/U0/NET1 ), .E(
        \ds7_pad/U0/NET2 ), .PAD(ds7));
    DFN1C1 \clock_div_26MHZ_1MHZ_0/counter[4]  (.D(
        \clock_div_26MHZ_1MHZ_0/I_12_0 ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_3), .Q(
        \clock_div_26MHZ_1MHZ_0/counter[4]_net_1 ));
    MX2 \spi_master_0/data_q[1]/U0  (.A(\spi_master_0/data_q[1] ), .B(
        \spi_master_0/data_d[1] ), .S(
        \spi_master_0/un1_data_d_0_sqmuxa ), .Y(
        \spi_master_0/data_q[1]/Y ));
    DFN1C0 \spi_mode_config_0/begin_pass_b/U1  (.D(
        \spi_mode_config_0/begin_pass_b/Y ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_1), .Q(spi_mode_config_0_begin_pass));
    DFN1C0 \spi_mode_config_0/rst_cntr[10]/U1  (.D(
        \spi_mode_config_0/rst_cntr[10]/Y ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_2), .Q(\spi_mode_config_0/ss_b11lto10 ));
    OR2A \spi_mode_config_0/config_cntr_b_RNIJ8QB[3]  (.A(
        \spi_mode_config_0/config_cntr_b[3] ), .B(
        \spi_mode_config_0/config_cntr_b[2] ), .Y(
        \spi_mode_config_0/N_410 ));
    NOR2A \spi_mode_config_0/byte_out_a_RNO_6[4]  (.A(
        \spi_mode_config_0/config_cntr_b[2] ), .B(
        \spi_mode_config_0/config_cntr_b[5] ), .Y(
        \spi_mode_config_0/byte_out_a_8_i_i_a3_6_0[4] ));
    OR2 \spi_mode_config_0/byte_out_a_RNO_5[6]  (.A(
        \spi_mode_config_0/N_534 ), .B(\spi_mode_config_0/N_535 ), .Y(
        \spi_mode_config_0/byte_out_a_8_1_0_1[6] ));
    NOR3B \spi_mode_config_0/byte_out_a_RNO_14[0]  (.A(
        \spi_mode_config_0/config_cntr_b[4] ), .B(
        \spi_mode_config_0/byte_out_a_8_1_a4_4_1[0] ), .C(
        \spi_mode_config_0/N_371 ), .Y(\spi_mode_config_0/N_257 ));
    IOTRI_OB_EB \ds4_pad/U0/U1  (.D(ds4_c), .E(VCC), .DOUT(
        \ds4_pad/U0/NET1 ), .EOUT(\ds4_pad/U0/NET2 ));
    OR2 \spi_mode_config_0/byte_tracker_b_RNIU8TU1  (.A(
        \spi_mode_config_0/N_648 ), .B(\spi_mode_config_0/N_379 ), .Y(
        \spi_mode_config_0/N_415 ));
    DFN1C0 \spi_mode_config_0/rst_cntr[1]/U1  (.D(
        \spi_mode_config_0/rst_cntr[1]/Y ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_0), .Q(\spi_mode_config_0/un74lto1 ));
    DFN1C0 \orbit_control_0/cntr[11]  (.D(\orbit_control_0/cntr_n11 ), 
        .CLK(clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_3), .Q(\orbit_control_0/cntr[11]_net_1 ));
    OR3B \spi_mode_config_0/rst_cntr_RNI40I9[6]  (.A(
        \spi_mode_config_0/rst_cntr[5] ), .B(
        \spi_mode_config_0/ss_b11lto6 ), .C(\spi_mode_config_0/N_383 ), 
        .Y(\spi_mode_config_0/N_400 ));
    NOR2A \spi_mode_config_0/byte_out_a_RNO_15[5]  (.A(
        \spi_mode_config_0/config_cntr_b[1] ), .B(
        \spi_mode_config_0/N_375 ), .Y(
        \spi_mode_config_0/byte_out_a_8_i_i_a3_3_0[5] ));
    NOR2B \orbit_control_0/cntr_RNIM9NQ[4]  (.A(
        \orbit_control_0/cntr[4]_net_1 ), .B(\orbit_control_0/cntr_c3 )
        , .Y(\orbit_control_0/cntr_c4 ));
    DFN1C0 \spi_mode_config_0/state_b[1]/U1  (.D(
        \spi_mode_config_0/state_b[1]/Y ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_0), .Q(\spi_mode_config_0/state_b[1] ));
    NOR3B \spi_mode_config_0/byte_out_a_RNO_4[6]  (.A(
        \spi_mode_config_0_byte_out[6] ), .B(\spi_mode_config_0/N_415 )
        , .C(\spi_mode_config_0/N_365 ), .Y(\spi_mode_config_0/N_530 ));
    DFN1C0 \read_buffer_0/init_wait[0]/U1  (.D(
        \read_buffer_0/init_wait[0]/Y ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_2), .Q(
        \read_buffer_0/init_wait_c0 ));
    MX2 \spi_master_0/data_out_q[5]/U0  (.A(ds5_c), .B(
        \spi_master_0/data_q[5] ), .S(
        \spi_master_0/new_data_d_2_sqmuxa ), .Y(
        \spi_master_0/data_out_q[5]/Y ));
    AND2 \clock_div_1MHZ_10HZ_0/un5_counter_I_44  (.A(
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[7] ), .B(
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[9] ), .Y(
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[10] ));
    OA1 \spi_mode_config_0/byte_tracker_a_RNO_2  (.A(ds7_c), .B(
        \spi_mode_config_0/byte_tracker_a_0_0_0_o2_3_0 ), .C(
        \spi_mode_config_0/byte_tracker_b_0 ), .Y(
        \spi_mode_config_0/N_513 ));
    IOPAD_TRI \ds3_pad/U0/U0  (.D(\ds3_pad/U0/NET1 ), .E(
        \ds3_pad/U0/NET2 ), .PAD(ds3));
    AOI1B \clock_div_1MHZ_10HZ_0/counter_RNO[8]  (.A(
        \clock_div_1MHZ_10HZ_0/clk_out5_13 ), .B(
        \clock_div_1MHZ_10HZ_0/clk_out5_12 ), .C(
        \clock_div_1MHZ_10HZ_0/I_23 ), .Y(
        \clock_div_1MHZ_10HZ_0/counter_3[8] ));
    OR3 \spi_mode_config_0/byte_out_a_RNO_2[7]  (.A(
        \spi_mode_config_0/N_524 ), .B(\spi_mode_config_0/N_523 ), .C(
        \spi_mode_config_0/byte_out_a_8_1_0_2[7] ), .Y(
        \spi_mode_config_0/byte_out_a_8_1_0_5[7] ));
    AO1A \spi_mode_config_0/byte_out_a_RNO_7[5]  (.A(
        \spi_mode_config_0/N_416 ), .B(
        \spi_mode_config_0/byte_out_a_8_i_i_a3_7_0[5] ), .C(
        \spi_mode_config_0/N_542 ), .Y(
        \spi_mode_config_0/byte_out_a_8_i_i_3[5] ));
    AND3 \clock_div_26MHZ_1MHZ_0/un5_counter_I_10  (.A(
        \clock_div_26MHZ_1MHZ_0/counter[0]_net_1 ), .B(
        \clock_div_26MHZ_1MHZ_0/counter[1]_net_1 ), .C(
        \clock_div_26MHZ_1MHZ_0/counter[2]_net_1 ), .Y(
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[0] ));
    NOR3 \read_buffer_0/init_wait_RNILLA21[4]  (.A(
        \read_buffer_0/init_wait[5] ), .B(\read_buffer_0/init_wait[6] )
        , .C(\read_buffer_0/init_wait[4] ), .Y(
        \read_buffer_0/un1_init_waitlt8 ));
    OR2A \spi_mode_config_0/config_cntr_b_RNIUUE31[5]  (.A(
        \spi_mode_config_0/N_376 ), .B(\spi_mode_config_0/N_644 ), .Y(
        \spi_mode_config_0/N_432 ));
    MX2 \spi_master_0/data_q[6]/U0  (.A(\spi_master_0/data_q[6] ), .B(
        \spi_master_0/data_d[6] ), .S(
        \spi_master_0/un1_data_d_0_sqmuxa ), .Y(
        \spi_master_0/data_q[6]/Y ));
    MX2 \spi_mode_config_0/rst_cntr[6]/U0  (.A(
        \spi_mode_config_0/N_477_i ), .B(
        \spi_mode_config_0/ss_b11lto6 ), .S(\spi_mode_config_0/N_397 ), 
        .Y(\spi_mode_config_0/rst_cntr[6]/Y ));
    OA1B \spi_mode_config_0/byte_tracker_a_RNO_3  (.A(
        \spi_mode_config_0/N_671 ), .B(
        \spi_mode_config_0/byte_tracker_a_0_0_0_o2_2_0 ), .C(
        \spi_mode_config_0/N_449 ), .Y(\spi_mode_config_0/N_514 ));
    DFN1C0 \spi_master_0/data_q[6]/U1  (.D(\spi_master_0/data_q[6]/Y ), 
        .CLK(GLA), .CLR(reset_pulse_0_RESET_2), .Q(
        \spi_master_0/data_q[6] ));
    MX2 \read_buffer_0/byte_out[1]/U0  (.A(\read_buffer_0.byte_out[1] )
        , .B(\read_buffer_0/position_i[0] ), .S(
        \read_buffer_0/init_stage_177_d ), .Y(
        \read_buffer_0/byte_out[1]/Y ));
    XOR2 \clock_div_1MHZ_10HZ_0/un5_counter_I_32  (.A(
        \clock_div_1MHZ_10HZ_0/N_7 ), .B(
        \clock_div_1MHZ_10HZ_0/counter[11]_net_1 ), .Y(
        \clock_div_1MHZ_10HZ_0/I_32 ));
    NOR2B \spi_master_0/state_q_RNIBF4F1[1]  (.A(\spi_master_0/N_50 ), 
        .B(\spi_master_0/state_q[1]_net_1 ), .Y(
        \spi_master_0/new_data_d_2_sqmuxa ));
    AO1A \spi_mode_config_0/byte_out_a_RNO_5[4]  (.A(
        \spi_mode_config_0/config_cntr_b[2] ), .B(
        \spi_mode_config_0/N_645 ), .C(\spi_mode_config_0/N_555 ), .Y(
        \spi_mode_config_0/byte_out_a_8_i_i_2[4] ));
    OR2 \spi_mode_config_0/config_cntr_b_RNI409G[0]  (.A(
        \spi_mode_config_0/N_370 ), .B(\spi_mode_config_0/N_367 ), .Y(
        \spi_mode_config_0/N_371 ));
    NOR3B \spi_mode_config_0/byte_out_a_RNO_5[7]  (.A(
        \spi_mode_config_0/config_cntr_b[2] ), .B(
        \spi_mode_config_0/N_300 ), .C(\spi_mode_config_0/N_376 ), .Y(
        \spi_mode_config_0/N_526 ));
    OR3 \spi_mode_config_0/byte_out_a_RNO_2[1]  (.A(
        \spi_mode_config_0/byte_out_a_8_1_0_0[1] ), .B(
        \spi_mode_config_0/N_585 ), .C(
        \spi_mode_config_0/byte_out_a_8_1_0_6[1] ), .Y(
        \spi_mode_config_0/byte_out_a_8_1_0_10[1] ));
    DFN1C0 \spi_master_0/data_out_q[5]/U1  (.D(
        \spi_master_0/data_out_q[5]/Y ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_0), .Q(ds5_c));
    IOTRI_OB_EB \ds2_pad/U0/U1  (.D(ds2_c), .E(VCC), .DOUT(
        \ds2_pad/U0/NET1 ), .EOUT(\ds2_pad/U0/NET2 ));
    DFN1C1 \clock_div_26MHZ_1MHZ_0/counter[16]  (.D(
        \clock_div_26MHZ_1MHZ_0/I_46_0 ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET), .Q(
        \clock_div_26MHZ_1MHZ_0/counter[16]_net_1 ));
    NOR2A \orbit_control_0/cntr_RNO[0]  (.A(\orbit_control_0/cntr13 ), 
        .B(\orbit_control_0/cntr[0]_net_1 ), .Y(
        \orbit_control_0/cntr_n0 ));
    NOR2B \read_buffer_0/init_wait_RNIKK6P1[4]  (.A(
        \read_buffer_0/init_wait_c3 ), .B(\read_buffer_0/init_wait[4] )
        , .Y(\read_buffer_0/init_wait_c4 ));
    AOI1B \spi_mode_config_0/byte_out_b_RNO[7]  (.A(
        \spi_mode_config_0/byte_out_b_1_sqmuxa_i_i_a3_1 ), .B(
        \spi_mode_config_0/byte_out_b_1_sqmuxa_i_i_a3_0 ), .C(
        \spi_mode_config_0/byte_out_a[7]_net_1 ), .Y(
        \spi_mode_config_0/byte_out_b_6[7] ));
    NOR2A \spi_mode_config_0/byte_out_a_RNO_25[2]  (.A(
        \spi_mode_config_0/N_420 ), .B(\spi_mode_config_0/N_375 ), .Y(
        \spi_mode_config_0/byte_out_a_8_i_a4_5_0[2] ));
    DFN1C1 \clock_div_26MHZ_1MHZ_0/counter[8]  (.D(
        \clock_div_26MHZ_1MHZ_0/I_23_0 ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_3), .Q(
        \clock_div_26MHZ_1MHZ_0/counter[8]_net_1 ));
    AO1A \spi_mode_config_0/byte_out_a_RNO_9[3]  (.A(
        \spi_mode_config_0/N_409 ), .B(\spi_mode_config_0/N_469 ), .C(
        \spi_mode_config_0/N_840 ), .Y(
        \spi_mode_config_0/byte_out_a_8_1_0_3[3] ));
    DFN1C0 \spi_mode_config_0/byte_out_b[7]/U1  (.D(
        \spi_mode_config_0/byte_out_b[7]/Y ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_1), .Q(\spi_mode_config_0_byte_out[7] ));
    OR3 \spi_mode_config_0/byte_tracker_a_RNO_1  (.A(
        \spi_mode_config_0/N_513 ), .B(\spi_mode_config_0/N_514 ), .C(
        \spi_mode_config_0/byte_tracker_a_0_0_0_0 ), .Y(
        \spi_mode_config_0/byte_tracker_a_0_0_0_3 ));
    OR3 \spi_mode_config_0/byte_out_a_RNO_8[5]  (.A(
        \spi_mode_config_0/N_546 ), .B(\spi_mode_config_0/N_549 ), .C(
        \spi_mode_config_0/byte_out_a_8_i_i_2[5] ), .Y(
        \spi_mode_config_0/byte_out_a_8_i_i_7[5] ));
    NOR2B \reset_pulse_0/CLK_OUT_48MHZ  (.A(BUF2_PBRST_T9_c), .B(
        CLK_48MHZ_c), .Y(\reset_pulse_0/CLK_OUT_48MHZ_i ));
    OR3 \spi_mode_config_0/byte_out_a_RNO_2[6]  (.A(
        \spi_mode_config_0/byte_out_a_8_1_0_1[6] ), .B(
        \spi_mode_config_0/byte_out_a_8_1_0_0[6] ), .C(
        \spi_mode_config_0/byte_out_a_8_1_0_4[6] ), .Y(
        \spi_mode_config_0/byte_out_a_8_1_0_7[6] ));
    NOR2B \spi_mode_config_0/byte_out_b_RNI29G5[0]  (.A(
        \spi_mode_config_0_byte_out[0] ), .B(
        \spi_mode_config_0/state_b[0] ), .Y(\spi_mode_config_0/N_342 ));
    XA1 \orbit_control_0/cntr_RNO[11]  (.A(\orbit_control_0/cntr_c10 ), 
        .B(\orbit_control_0/cntr[11]_net_1 ), .C(
        \orbit_control_0/cntr13 ), .Y(\orbit_control_0/cntr_n11 ));
    IOPAD_TRI \SS_pad/U0/U0  (.D(\SS_pad/U0/NET1 ), .E(
        \SS_pad/U0/NET2 ), .PAD(SS));
    NOR3B \spi_mode_config_0/state_b_RNIHQ021[0]  (.A(
        \spi_mode_config_0/N_630 ), .B(
        \spi_mode_config_0/byte_out_a_8_i_i_a2_6_1[5] ), .C(
        \spi_mode_config_0/N_403 ), .Y(\spi_mode_config_0/N_624 ));
    OR3 \spi_mode_config_0/start_a_RNO_2  (.A(
        \spi_mode_config_0/un1_mem_enable_a21_27_i_a4_0_i_1 ), .B(
        \spi_mode_config_0/un1_mem_enable_a21_27_i_a4_0_i_0 ), .C(
        \spi_mode_config_0/un1_mem_enable_a21_27_i_a4_0_i_2 ), .Y(
        \spi_mode_config_0/N_338 ));
    NOR2A \spi_mode_config_0/config_cntr_b_RNIH6QB_2[1]  (.A(
        \spi_mode_config_0/config_cntr_b[1] ), .B(
        \spi_mode_config_0/config_cntr_b[2] ), .Y(
        \spi_mode_config_0/N_233_1 ));
    XOR2 \spi_master_0/un1_sck_q_1_1_SUM1  (.A(
        \spi_master_0/sck_q[1]_net_1 ), .B(
        \spi_master_0/sck_q[0]_net_1 ), .Y(\spi_master_0/N_154 ));
    AX1C \clock_div_26MHZ_1MHZ_0/un5_counter_I_35  (.A(
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[7] ), .B(
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[6] ), .C(
        \clock_div_26MHZ_1MHZ_0/counter[12]_net_1 ), .Y(
        \clock_div_26MHZ_1MHZ_0/I_35_0 ));
    MX2 \spi_mode_config_0/config_cntr_b[2]/U0  (.A(
        \spi_mode_config_0/config_cntr_a[2]_net_1 ), .B(
        \spi_mode_config_0/config_cntr_b[2] ), .S(
        \spi_mode_config_0/ss_a_net_1 ), .Y(
        \spi_mode_config_0/config_cntr_b[2]/Y ));
    OR2B \spi_mode_config_0/config_cntr_b_RNIODQB[6]  (.A(
        \spi_mode_config_0/config_cntr_b[6] ), .B(
        \spi_mode_config_0/config_cntr_b[4] ), .Y(
        \spi_mode_config_0/N_388 ));
    DFN1C0 \spi_master_0/state_q[0]  (.D(
        \spi_master_0/state_q_RNO[0]_net_1 ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET), .Q(\spi_master_0/state_q[0]_net_1 ));
    AOI1 \orbit_control_0/cntr_RNI9L1G[6]  (.A(
        \orbit_control_0/cntr[6]_net_1 ), .B(
        \orbit_control_0/cntr[7]_net_1 ), .C(
        \orbit_control_0/cntr[8]_net_1 ), .Y(
        \orbit_control_0/un1_cntrlt9 ));
    AOI1B \clock_div_26MHZ_1MHZ_0/counter_RNO[3]  (.A(
        \clock_div_26MHZ_1MHZ_0/clk_out5_14 ), .B(
        \clock_div_26MHZ_1MHZ_0/clk_out5_13 ), .C(
        \clock_div_26MHZ_1MHZ_0/I_9_0 ), .Y(
        \clock_div_26MHZ_1MHZ_0/counter_3[3] ));
    DFN1C0 \clock_div_1MHZ_10HZ_0/counter[2]  (.D(
        \clock_div_1MHZ_10HZ_0/I_7 ), .CLK(
        clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT), .CLR(
        reset_pulse_0_RESET_4), .Q(
        \clock_div_1MHZ_10HZ_0/counter[2]_net_1 ));
    DFN1C0 \spi_mode_config_0/byte_out_b[3]/U1  (.D(
        \spi_mode_config_0/byte_out_b[3]/Y ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_1), .Q(\spi_mode_config_0_byte_out[3] ));
    NOR3B \spi_mode_config_0/byte_out_a_RNO_15[2]  (.A(
        \spi_mode_config_0/N_322 ), .B(
        \spi_mode_config_0/byte_out_a_8_i_a4_2_2[2] ), .C(
        \spi_mode_config_0/N_367 ), .Y(\spi_mode_config_0/N_227 ));
    NOR3A \spi_mode_config_0/byte_out_a_RNO_10[7]  (.A(
        \spi_mode_config_0/config_cntr_b[3] ), .B(
        \spi_mode_config_0/N_371 ), .C(
        \spi_mode_config_0/config_cntr_b[5] ), .Y(
        \spi_mode_config_0/byte_out_a_8_1_0_a3_1_2[7] ));
    NOR2B \read_buffer_0/init_wait_RNI343G2[6]  (.A(
        \read_buffer_0/init_wait_c5 ), .B(\read_buffer_0/init_wait[6] )
        , .Y(\read_buffer_0/init_wait_c6 ));
    NOR2B \spi_mode_config_0/byte_out_a_RNO_4[5]  (.A(
        \spi_mode_config_0/N_693 ), .B(\spi_mode_config_0/N_420 ), .Y(
        \spi_mode_config_0/N_539 ));
    OR3 \spi_mode_config_0/byte_out_a_RNO_2[3]  (.A(
        \spi_mode_config_0/byte_out_a_8_1_0_3[3] ), .B(
        \spi_mode_config_0/byte_out_a_8_1_0_2[3] ), .C(
        \spi_mode_config_0/byte_out_a_8_1_0_11[3] ), .Y(
        \spi_mode_config_0/byte_out_a_8_1_0_14[3] ));
    MX2 \spi_master_0/data_q[0]/U0  (.A(\spi_master_0/data_q[0] ), .B(
        \spi_master_0/data_d[0] ), .S(
        \spi_master_0/un1_data_d_0_sqmuxa ), .Y(
        \spi_master_0/data_q[0]/Y ));
    AO1 \spi_mode_config_0/config_cntr_b_RNI1TBJ[0]  (.A(
        \spi_mode_config_0/config_cntr_b[0] ), .B(
        \spi_mode_config_0/byte_tracker_b_0 ), .C(
        \spi_mode_config_0/N_663 ), .Y(\spi_mode_config_0/N_372 ));
    DFN1C0 \spi_master_0/data_q[3]/U1  (.D(\spi_master_0/data_q[3]/Y ), 
        .CLK(GLA), .CLR(reset_pulse_0_RESET_2), .Q(
        \spi_master_0/data_q[3] ));
    MX2 \spi_mode_config_0/byte_out_b[0]/U0  (.A(
        \spi_mode_config_0_byte_out[0] ), .B(
        \spi_mode_config_0/byte_out_b_6[0] ), .S(
        \spi_mode_config_0/N_145 ), .Y(
        \spi_mode_config_0/byte_out_b[0]/Y ));
    MX2 \spi_master_0/data_q[3]/U0  (.A(\spi_master_0/data_q[3] ), .B(
        \spi_master_0/data_d[3] ), .S(
        \spi_master_0/un1_data_d_0_sqmuxa ), .Y(
        \spi_master_0/data_q[3]/Y ));
    NOR3A \spi_mode_config_0/ss_b_RNO_1  (.A(
        \spi_mode_config_0/ss_b_1_sqmuxa_1_0_a3_1_1 ), .B(
        \spi_mode_config_0/N_397 ), .C(\spi_mode_config_0/ss_b11lto10 )
        , .Y(\spi_mode_config_0/N_602 ));
    NOR3B \spi_mode_config_0/byte_out_a_RNO_8[0]  (.A(
        \spi_mode_config_0/config_cntr_b[1] ), .B(
        \spi_mode_config_0/N_342 ), .C(
        \spi_mode_config_0/byte_tracker_b_0 ), .Y(
        \spi_mode_config_0/N_262 ));
    MX2 \read_buffer_0/init_wait[6]/U0  (.A(
        \read_buffer_0/init_wait_n6 ), .B(\read_buffer_0/init_wait[6] )
        , .S(\read_buffer_0/init_stage_177_d ), .Y(
        \read_buffer_0/init_wait[6]/Y ));
    DFN0 \spi_mode_config_0/config_cntr_a[6]  (.D(
        \spi_mode_config_0/config_cntr_a_86[6] ), .CLK(
        \spi_master_0.state_q_89 ), .Q(
        \spi_mode_config_0/config_cntr_a[6]_net_1 ));
    AO1A \spi_mode_config_0/state_a_RNO_0[0]  (.A(
        \spi_mode_config_0/N_418 ), .B(
        \spi_mode_config_0/state_a_7_i_0_a3_0_0[0] ), .C(
        \spi_mode_config_0/N_597 ), .Y(
        \spi_mode_config_0/state_a_7_i_0_0[0] ));
    OR2B \spi_mode_config_0/ss_b_RNO_0  (.A(
        \spi_mode_config_0/ss_a_net_1 ), .B(\spi_mode_config_0/N_397 ), 
        .Y(\spi_mode_config_0/N_824 ));
    DFN1C0 \spi_mode_config_0/byte_out_b[6]/U1  (.D(
        \spi_mode_config_0/byte_out_b[6]/Y ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_1), .Q(\spi_mode_config_0_byte_out[6] ));
    XOR2 \clock_div_1MHZ_10HZ_0/un5_counter_I_40  (.A(
        \clock_div_1MHZ_10HZ_0/N_4 ), .B(
        \clock_div_1MHZ_10HZ_0/counter[14]_net_1 ), .Y(
        \clock_div_1MHZ_10HZ_0/I_40 ));
    XOR2 \spi_mode_config_0/start_a_RNO_14  (.A(
        \spi_mode_config_0/N_373 ), .B(\spi_mode_config_0/state_b[1] ), 
        .Y(\spi_mode_config_0/N_121_i ));
    DFN1C0 \spi_master_0/data_q[1]/U1  (.D(\spi_master_0/data_q[1]/Y ), 
        .CLK(GLA), .CLR(reset_pulse_0_RESET_2), .Q(
        \spi_master_0/data_q[1] ));
    NOR3A \spi_mode_config_0/ss_b_RNO_3  (.A(\spi_mode_config_0/N_445 )
        , .B(\spi_mode_config_0/N_397 ), .C(
        \spi_mode_config_0/ss_b11lto10 ), .Y(\spi_mode_config_0/N_601 )
        );
    NOR2 \spi_mode_config_0/config_cntr_b_RNIOK021[5]  (.A(
        \spi_mode_config_0/N_382 ), .B(\spi_mode_config_0/N_375 ), .Y(
        \spi_mode_config_0/N_645 ));
    AND3B \spi_mode_config_0/config_cntr_b_RNI30OJ1[3]  (.A(
        \spi_mode_config_0/N_413 ), .B(
        \spi_mode_config_0/config_cntr_b[3] ), .C(
        \spi_mode_config_0/N_645 ), .Y(\spi_mode_config_0/N_524 ));
    DFN1C0 \spi_master_0/data_out_q[1]/U1  (.D(
        \spi_master_0/data_out_q[1]/Y ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_0), .Q(ds1_c));
    NOR2 \clock_div_26MHZ_1MHZ_0/counter_RNI42ND[1]  (.A(
        \clock_div_26MHZ_1MHZ_0/counter[1]_net_1 ), .B(
        \clock_div_26MHZ_1MHZ_0/counter[12]_net_1 ), .Y(
        \clock_div_26MHZ_1MHZ_0/clk_out5_5 ));
    NOR3B \spi_mode_config_0/state_a_RNO_1[2]  (.A(
        \spi_mode_config_0/N_648 ), .B(
        \spi_mode_config_0/state_a_7_i_0_a3_2_2[2] ), .C(
        \spi_mode_config_0/N_364 ), .Y(\spi_mode_config_0/N_596 ));
    AO1A \spi_mode_config_0/byte_out_a_RNO_5[3]  (.A(
        \spi_mode_config_0/N_476 ), .B(
        \spi_mode_config_0/byte_out_a_8_1_0_a3_6_0[3] ), .C(
        \spi_mode_config_0/N_569 ), .Y(
        \spi_mode_config_0/byte_out_a_8_1_0_8[3] ));
    NOR3C \clock_div_1MHZ_10HZ_0/counter_RNI3SFD2[1]  (.A(
        \clock_div_1MHZ_10HZ_0/clk_out5_5 ), .B(
        \clock_div_1MHZ_10HZ_0/clk_out5_4 ), .C(
        \clock_div_1MHZ_10HZ_0/clk_out5_11 ), .Y(
        \clock_div_1MHZ_10HZ_0/clk_out5_13 ));
    DFN1C0 \spi_mode_config_0/byte_out_b[2]/U1  (.D(
        \spi_mode_config_0/byte_out_b[2]/Y ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_1), .Q(\spi_mode_config_0_byte_out[2] ));
    AO1 \spi_mode_config_0/byte_out_a_RNO_14[5]  (.A(
        \spi_mode_config_0/N_664 ), .B(\spi_mode_config_0/N_372 ), .C(
        \spi_mode_config_0/N_547 ), .Y(
        \spi_mode_config_0/byte_out_a_8_i_i_2[5] ));
    NOR3B \spi_mode_config_0/byte_out_a_RNO_14[1]  (.A(
        \spi_mode_config_0/config_cntr_b[2] ), .B(
        \spi_mode_config_0/N_382 ), .C(\spi_mode_config_0/N_416 ), .Y(
        \spi_mode_config_0/N_581 ));
    NOR3B \spi_mode_config_0/state_b_RNICBAO[0]  (.A(
        \spi_mode_config_0/N_369 ), .B(
        \spi_mode_config_0/byte_out_a_8_1_a4_8_0[0] ), .C(
        \spi_mode_config_0/state_b[0] ), .Y(\spi_mode_config_0/N_622 ));
    OR2 \reset_pulse_0/RESET_0  (.A(BUF2_PBRST_T9_c), .B(CLK_48MHZ_c), 
        .Y(reset_pulse_0_RESET_0));
    NOR2A \clock_div_26MHZ_1MHZ_0/counter_RNIO87A[2]  (.A(
        \clock_div_26MHZ_1MHZ_0/counter[2]_net_1 ), .B(
        \clock_div_26MHZ_1MHZ_0/counter[6]_net_1 ), .Y(
        \clock_div_26MHZ_1MHZ_0/clk_out5_4 ));
    DFN1C0 \spi_mode_config_0/config_cntr_b[5]/U1  (.D(
        \spi_mode_config_0/config_cntr_b[5]/Y ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_1), .Q(
        \spi_mode_config_0/config_cntr_b[5] ));
    AX1C \clock_div_26MHZ_1MHZ_0/un5_counter_I_7  (.A(
        \clock_div_26MHZ_1MHZ_0/counter[1]_net_1 ), .B(
        \clock_div_26MHZ_1MHZ_0/counter[0]_net_1 ), .C(
        \clock_div_26MHZ_1MHZ_0/counter[2]_net_1 ), .Y(
        \clock_div_26MHZ_1MHZ_0/I_7_0 ));
    NOR2A \spi_mode_config_0/byte_out_a_RNO_24[3]  (.A(
        \spi_mode_config_0/config_cntr_b[3] ), .B(
        \spi_mode_config_0/N_413 ), .Y(
        \spi_mode_config_0/byte_out_a_8_1_0_a3_10_0[3] ));
    IOPAD_IN \MISO_pad/U0/U0  (.PAD(MISO), .Y(\MISO_pad/U0/NET1 ));
    NOR2 \clock_div_26MHZ_1MHZ_0/counter_RNIN27H[11]  (.A(
        \clock_div_26MHZ_1MHZ_0/counter[11]_net_1 ), .B(
        \clock_div_26MHZ_1MHZ_0/counter[14]_net_1 ), .Y(
        \clock_div_26MHZ_1MHZ_0/clk_out5_1 ));
    XOR2 \clock_div_26MHZ_1MHZ_0/un5_counter_I_32  (.A(
        \clock_div_26MHZ_1MHZ_0/N_7 ), .B(
        \clock_div_26MHZ_1MHZ_0/counter[11]_net_1 ), .Y(
        \clock_div_26MHZ_1MHZ_0/I_32_0 ));
    AO1 \spi_mode_config_0/byte_tracker_a_RNO_4  (.A(
        \spi_mode_config_0/byte_tracker_a_0_0_0_a3_3_1 ), .B(
        \spi_mode_config_0/byte_tracker_a_0_0_0_a3_3_0 ), .C(
        \spi_mode_config_0/N_678 ), .Y(
        \spi_mode_config_0/byte_tracker_a_0_0_0_0 ));
    AX1C \spi_mode_config_0/un1_config_cntr_b_7_I_29  (.A(
        \spi_mode_config_0/DWACT_ADD_CI_0_g_array_2[0] ), .B(
        \spi_mode_config_0/config_cntr_b[4] ), .C(
        \spi_mode_config_0/config_cntr_b[5] ), .Y(
        \spi_mode_config_0/I_29 ));
    NOR2B \spi_mode_config_0/byte_out_a_RNO_21[3]  (.A(
        \spi_mode_config_0/N_411 ), .B(\spi_mode_config_0_byte_out[3] )
        , .Y(\spi_mode_config_0/N_565 ));
    OR3 \spi_mode_config_0/byte_out_a_RNO_0[3]  (.A(
        \spi_mode_config_0/byte_out_a_8_1_0_1[3] ), .B(
        \spi_mode_config_0/byte_out_a_8_1_0_0[3] ), .C(
        \spi_mode_config_0/byte_out_a_8_1_0_8[3] ), .Y(
        \spi_mode_config_0/byte_out_a_8_1_0_13[3] ));
    AND3 \clock_div_1MHZ_10HZ_0/un5_counter_I_45  (.A(
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[6] ), .B(
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[10] ), .C(
        \clock_div_1MHZ_10HZ_0/counter[15]_net_1 ), .Y(
        \clock_div_1MHZ_10HZ_0/N_2 ));
    XOR2 \clock_div_1MHZ_10HZ_0/un5_counter_I_37  (.A(
        \clock_div_1MHZ_10HZ_0/N_5 ), .B(
        \clock_div_1MHZ_10HZ_0/counter[13]_net_1 ), .Y(
        \clock_div_1MHZ_10HZ_0/I_37 ));
    NOR3B \spi_mode_config_0/byte_out_a_RNO_7[3]  (.A(
        \spi_mode_config_0/config_cntr_b[4] ), .B(
        \spi_mode_config_0/N_644 ), .C(\spi_mode_config_0/N_396 ), .Y(
        \spi_mode_config_0/N_574 ));
    DFN1C1 \clock_div_26MHZ_1MHZ_0/counter[11]  (.D(
        \clock_div_26MHZ_1MHZ_0/I_32_0 ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_4), .Q(
        \clock_div_26MHZ_1MHZ_0/counter[11]_net_1 ));
    OA1 \spi_mode_config_0/byte_out_a_RNO_15[4]  (.A(
        \spi_mode_config_0/byte_out_a_8_i_i_o2_4_0[5] ), .B(
        \spi_mode_config_0/byte_out_a_8_i_i_o2_4_1[5] ), .C(
        \spi_mode_config_0_byte_out[4] ), .Y(\spi_mode_config_0/N_552 )
        );
    DFN1C0 \spi_mode_config_0/start_b/U1  (.D(
        \spi_mode_config_0/start_b/Y ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_1), .Q(spi_mode_config_0_start));
    OR2 \reset_pulse_0/RESET_3  (.A(BUF2_PBRST_T9_c), .B(CLK_48MHZ_c), 
        .Y(reset_pulse_0_RESET_3));
    DFN1C1 \clock_div_26MHZ_1MHZ_0/counter[5]  (.D(
        \clock_div_26MHZ_1MHZ_0/I_14_0 ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_3), .Q(
        \clock_div_26MHZ_1MHZ_0/counter[5]_net_1 ));
    AND3 \clock_div_1MHZ_10HZ_0/un5_counter_I_29  (.A(
        \clock_div_1MHZ_10HZ_0/counter[6]_net_1 ), .B(
        \clock_div_1MHZ_10HZ_0/counter[7]_net_1 ), .C(
        \clock_div_1MHZ_10HZ_0/counter[8]_net_1 ), .Y(
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[5] ));
    AO1 \spi_mode_config_0/byte_out_a_RNO_23[3]  (.A(
        \spi_mode_config_0/N_692 ), .B(\spi_mode_config_0/N_43 ), .C(
        \spi_mode_config_0/N_521 ), .Y(
        \spi_mode_config_0/byte_out_a_8_1_0_4[3] ));
    AND3 \clock_div_1MHZ_10HZ_0/un5_counter_I_31  (.A(
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[6] ), .B(
        \clock_div_1MHZ_10HZ_0/counter[9]_net_1 ), .C(
        \clock_div_1MHZ_10HZ_0/counter[10]_net_1 ), .Y(
        \clock_div_1MHZ_10HZ_0/N_7 ));
    DFN0 \spi_mode_config_0/state_a[1]  (.D(\spi_mode_config_0/N_29 ), 
        .CLK(\spi_master_0.state_q_89 ), .Q(
        \spi_mode_config_0/state_a[1]_net_1 ));
    OR2 \spi_mode_config_0/state_b_RNIHUI3[1]  (.A(ds7_c), .B(
        \spi_mode_config_0/state_b[1] ), .Y(\spi_mode_config_0/N_364 ));
    NOR2 \spi_mode_config_0/byte_out_a_RNO_14[3]  (.A(
        \spi_mode_config_0/N_375 ), .B(\spi_mode_config_0/N_376 ), .Y(
        \spi_mode_config_0/byte_out_a_8_1_0_a3_6_0[3] ));
    NOR3C \clock_div_1MHZ_10HZ_0/counter_RNI5OVU[6]  (.A(
        \clock_div_1MHZ_10HZ_0/counter[6]_net_1 ), .B(
        \clock_div_1MHZ_10HZ_0/counter[8]_net_1 ), .C(
        \clock_div_1MHZ_10HZ_0/clk_out5_7 ), .Y(
        \clock_div_1MHZ_10HZ_0/clk_out5_11 ));
    AO1 \spi_mode_config_0/state_b_RNO[0]  (.A(
        \spi_mode_config_0/byte_out_b_1_sqmuxa_i_i_a3_1 ), .B(
        \spi_mode_config_0/byte_out_b_1_sqmuxa_i_i_a3_0 ), .C(
        \spi_mode_config_0/state_a[0]_net_1 ), .Y(
        \spi_mode_config_0/state_b_6[0] ));
    NOR2 \spi_mode_config_0/config_cntr_b_RNI8EH7_0[0]  (.A(
        \spi_mode_config_0/config_cntr_b[0] ), .B(
        \spi_mode_config_0/byte_tracker_b_0 ), .Y(
        \spi_mode_config_0/N_667 ));
    MX2 \spi_mode_config_0/byte_out_b[5]/U0  (.A(
        \spi_mode_config_0_byte_out[5] ), .B(
        \spi_mode_config_0/byte_out_b_6[5] ), .S(
        \spi_mode_config_0/N_145 ), .Y(
        \spi_mode_config_0/byte_out_b[5]/Y ));
    XOR2 \clock_div_1MHZ_10HZ_0/un5_counter_I_5  (.A(
        \clock_div_1MHZ_10HZ_0/counter[0]_net_1 ), .B(
        \clock_div_1MHZ_10HZ_0/counter[1]_net_1 ), .Y(
        \clock_div_1MHZ_10HZ_0/I_5 ));
    MX2 \read_buffer_0/init_wait[2]/U0  (.A(
        \read_buffer_0/init_wait_n2 ), .B(\read_buffer_0/init_wait[2] )
        , .S(\read_buffer_0/init_stage_177_d ), .Y(
        \read_buffer_0/init_wait[2]/Y ));
    XOR2 \clock_div_1MHZ_10HZ_0/un5_counter_I_46  (.A(
        \clock_div_1MHZ_10HZ_0/N_2 ), .B(
        \clock_div_1MHZ_10HZ_0/counter[16]_net_1 ), .Y(
        \clock_div_1MHZ_10HZ_0/I_46 ));
    OR3 \spi_mode_config_0/byte_out_a_RNO_11[3]  (.A(
        \spi_mode_config_0/N_565 ), .B(\spi_mode_config_0/N_566 ), .C(
        \spi_mode_config_0/byte_out_a_8_1_0_4[3] ), .Y(
        \spi_mode_config_0/byte_out_a_8_1_0_11[3] ));
    MX2 \spi_mode_config_0/rst_cntr[5]/U0  (.A(
        \spi_mode_config_0/N_470_i ), .B(
        \spi_mode_config_0/rst_cntr[5] ), .S(\spi_mode_config_0/N_397 )
        , .Y(\spi_mode_config_0/rst_cntr[5]/Y ));
    OR2 \read_buffer_0/byte_out_RNO[0]  (.A(
        \read_buffer_0.byte_out[0] ), .B(
        \read_buffer_0/init_stage_177_d ), .Y(
        \read_buffer_0/byte_out_RNO[0]_net_1 ));
    NOR2A \spi_mode_config_0/config_cntr_b_RNIGGNH[1]  (.A(
        \spi_mode_config_0/config_cntr_b[1] ), .B(
        \spi_mode_config_0/N_388 ), .Y(\spi_mode_config_0/N_647 ));
    AOI1B \spi_mode_config_0/byte_out_b_RNO[0]  (.A(
        \spi_mode_config_0/byte_out_b_1_sqmuxa_i_i_a3_1 ), .B(
        \spi_mode_config_0/byte_out_b_1_sqmuxa_i_i_a3_0 ), .C(
        \spi_mode_config_0/byte_out_a[0]_net_1 ), .Y(
        \spi_mode_config_0/byte_out_b_6[0] ));
    NOR3A \spi_mode_config_0/byte_out_a_RNO_13[3]  (.A(
        \spi_mode_config_0/byte_out_a_8_1_0_a3_10_0[3] ), .B(
        \spi_mode_config_0/N_376 ), .C(\spi_mode_config_0/N_371 ), .Y(
        \spi_mode_config_0/N_572 ));
    OAI1 \spi_mode_config_0/state_a_RNO_0[2]  (.A(
        \spi_mode_config_0/N_373 ), .B(spi_mode_config_0_begin_pass), 
        .C(\spi_mode_config_0/N_397 ), .Y(
        \spi_mode_config_0/state_a_7_i_0_0[2] ));
    DFN0 \spi_mode_config_0/state_a[2]  (.D(\spi_mode_config_0/N_27 ), 
        .CLK(\spi_master_0.state_q_89 ), .Q(
        \spi_mode_config_0/state_a[2]_net_1 ));
    MX2 \read_buffer_0/init_wait[3]/U0  (.A(
        \read_buffer_0/init_wait_n3 ), .B(\read_buffer_0/init_wait[3] )
        , .S(\read_buffer_0/init_stage_177_d ), .Y(
        \read_buffer_0/init_wait[3]/Y ));
    DFN0 \spi_mode_config_0/config_cntr_a[2]  (.D(
        \spi_mode_config_0/config_cntr_a_86[2] ), .CLK(
        \spi_master_0.state_q_89 ), .Q(
        \spi_mode_config_0/config_cntr_a[2]_net_1 ));
    OR3 \spi_mode_config_0/byte_out_a_RNO_19[1]  (.A(
        \spi_mode_config_0/N_622 ), .B(\spi_mode_config_0/N_623 ), .C(
        \spi_mode_config_0/N_483 ), .Y(
        \spi_mode_config_0/byte_out_a_8_1_0_1_tz_1[1] ));
    MX2 \spi_mode_config_0/rst_cntr[7]/U0  (.A(
        \spi_mode_config_0/N_486_i ), .B(
        \spi_mode_config_0/rst_cntr[7] ), .S(\spi_mode_config_0/N_397 )
        , .Y(\spi_mode_config_0/rst_cntr[7]/Y ));
    NOR2 \orbit_control_0/cntr_RNIR5L[10]  (.A(
        \orbit_control_0/cntr[10]_net_1 ), .B(
        \orbit_control_0/cntr[11]_net_1 ), .Y(
        \orbit_control_0/un1_cntrlto11_0 ));
    NOR3C \clock_div_1MHZ_10HZ_0/counter_RNIMRO43[2]  (.A(
        \clock_div_1MHZ_10HZ_0/clk_out5_1 ), .B(
        \clock_div_1MHZ_10HZ_0/clk_out5_0 ), .C(
        \clock_div_1MHZ_10HZ_0/clk_out5_9 ), .Y(
        \clock_div_1MHZ_10HZ_0/clk_out5_12 ));
    DFN1C0 \read_buffer_0/byte_out[2]  (.D(
        \read_buffer_0/byte_out_RNO[2]_net_1 ), .CLK(
        spi_mode_config_0_next_cmd), .CLR(reset_pulse_0_RESET_4), .Q(
        \read_buffer_0/byte_out[2]_net_1 ));
    DFN1C0 \orbit_control_0/cntr[2]  (.D(\orbit_control_0/cntr_n2 ), 
        .CLK(clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_3), .Q(\orbit_control_0/cntr[2]_net_1 ));
    OA1A \orbit_control_0/cntr_RNIMJ5R[12]  (.A(
        \orbit_control_0/cntr[12]_net_1 ), .B(
        \orbit_control_0/un1_cntrlt12 ), .C(
        spi_mode_config_0_begin_pass), .Y(\orbit_control_0/cntr13 ));
    OR2A \spi_mode_config_0/config_cntr_b_RNIH6QB_1[1]  (.A(
        \spi_mode_config_0/config_cntr_b[2] ), .B(
        \spi_mode_config_0/config_cntr_b[1] ), .Y(
        \spi_mode_config_0/N_404 ));
    MX2 \spi_master_0/data_q_RNO[5]  (.A(\spi_master_0/data_q[4] ), .B(
        \spi_mode_config_0_byte_out[5] ), .S(\spi_master_0.state_q_89 )
        , .Y(\spi_master_0/data_d[5] ));
    NOR3B \spi_mode_config_0/byte_out_a_RNO_12[6]  (.A(
        \spi_mode_config_0_byte_out[6] ), .B(\spi_mode_config_0/N_643 )
        , .C(\spi_mode_config_0/N_420 ), .Y(\spi_mode_config_0/N_532 ));
    DFN1C0 \spi_mode_config_0/rst_cntr[0]  (.D(
        \spi_mode_config_0/N_460_i ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_3), .Q(\spi_mode_config_0/un74lto0 ));
    DFN1C1 \clock_div_26MHZ_1MHZ_0/counter[1]  (.D(
        \clock_div_26MHZ_1MHZ_0/counter_3[1] ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_3), .Q(
        \clock_div_26MHZ_1MHZ_0/counter[1]_net_1 ));
    NOR3B \spi_mode_config_0/byte_tracker_b_RNIHMVI  (.A(
        \spi_mode_config_0/N_665 ), .B(\spi_mode_config_0/N_672 ), .C(
        \spi_mode_config_0/N_424 ), .Y(\spi_mode_config_0/N_521 ));
    AO1B \spi_mode_config_0/byte_out_a_RNO_16[0]  (.A(
        \read_buffer_0.byte_out[0] ), .B(
        \read_buffer_0.byte_out_cl[0] ), .C(
        \spi_mode_config_0/byte_tracker_b_0 ), .Y(
        \spi_mode_config_0/N_126 ));
    NOR2B \orbit_control_0/cntr_RNIIVPL1[10]  (.A(
        \orbit_control_0/cntr_c9 ), .B(
        \orbit_control_0/cntr[10]_net_1 ), .Y(
        \orbit_control_0/cntr_c10 ));
    AO1 \spi_mode_config_0/ss_b_RNO_7  (.A(
        \spi_mode_config_0/un74lto0 ), .B(\spi_mode_config_0/un74lto1 )
        , .C(\spi_mode_config_0/un74lto2 ), .Y(
        \spi_mode_config_0/N_431 ));
    MX2 \spi_mode_config_0/state_b[2]/U0  (.A(
        \spi_mode_config_0/state_b[2] ), .B(
        \spi_mode_config_0/state_b_6[2] ), .S(
        \spi_mode_config_0/N_145 ), .Y(
        \spi_mode_config_0/state_b[2]/Y ));
    OR2 \spi_mode_config_0/byte_out_a_RNO_7[4]  (.A(
        \spi_mode_config_0/N_523 ), .B(\spi_mode_config_0/N_560 ), .Y(
        \spi_mode_config_0/byte_out_a_8_i_i_0[4] ));
    XOR2 \clock_div_26MHZ_1MHZ_0/un5_counter_I_23  (.A(
        \clock_div_26MHZ_1MHZ_0/N_10 ), .B(
        \clock_div_26MHZ_1MHZ_0/counter[8]_net_1 ), .Y(
        \clock_div_26MHZ_1MHZ_0/I_23_0 ));
    XNOR2 \spi_mode_config_0/rst_cntr_RNO[5]  (.A(
        \spi_mode_config_0/N_383 ), .B(\spi_mode_config_0/rst_cntr[5] )
        , .Y(\spi_mode_config_0/N_470_i ));
    DFN1C0 \spi_mode_config_0/config_cntr_b[2]/U1  (.D(
        \spi_mode_config_0/config_cntr_b[2]/Y ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_1), .Q(
        \spi_mode_config_0/config_cntr_b[2] ));
    AND3 \clock_div_1MHZ_10HZ_0/un5_counter_I_42  (.A(
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[6] ), .B(
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[7] ), .C(
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[9] ), .Y(
        \clock_div_1MHZ_10HZ_0/N_3 ));
    NOR2A \spi_mode_config_0/byte_tracker_a_RNO_7  (.A(
        \spi_mode_config_0/byte_tracker_b ), .B(
        \spi_mode_config_0/state_b[0] ), .Y(
        \spi_mode_config_0/byte_tracker_a_0_0_0_a3_3_1 ));
    DFN1C0 \clock_div_1MHZ_10HZ_0/counter[4]  (.D(
        \clock_div_1MHZ_10HZ_0/counter_3[4] ), .CLK(
        clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT), .CLR(
        reset_pulse_0_RESET_4), .Q(
        \clock_div_1MHZ_10HZ_0/counter[4]_net_1 ));
    NOR3B \spi_mode_config_0/byte_out_a_RNO_27[2]  (.A(
        \spi_mode_config_0/N_627 ), .B(\spi_mode_config_0/N_381 ), .C(
        \spi_mode_config_0/N_371 ), .Y(\spi_mode_config_0/N_578 ));
    MX2 \spi_mode_config_0/byte_tracker_b_0/U0  (.A(
        \spi_mode_config_0/byte_tracker_a_net_1 ), .B(
        \spi_mode_config_0/byte_tracker_b_0 ), .S(
        \spi_mode_config_0/ss_a_net_1 ), .Y(
        \spi_mode_config_0/byte_tracker_b_0/Y ));
    DFN0 \spi_mode_config_0/begin_pass_a  (.D(\spi_mode_config_0/N_14 )
        , .CLK(\spi_master_0.state_q_89 ), .Q(
        \spi_mode_config_0/begin_pass_a_net_1 ));
    MX2 \spi_master_0/data_q_RNO[0]  (.A(MISO_c), .B(
        \spi_mode_config_0_byte_out[0] ), .S(\spi_master_0.state_q_89 )
        , .Y(\spi_master_0/data_d[0] ));
    NOR2A \read_buffer_0/init_wait_RNO[0]  (.A(
        \read_buffer_0/un1_init_wait ), .B(
        \read_buffer_0/init_wait_c0 ), .Y(\read_buffer_0/N_268 ));
    DFN1P1 \clock_div_26MHZ_1MHZ_0/counter[0]  (.D(
        \clock_div_26MHZ_1MHZ_0/counter_3[0] ), .CLK(GLA), .PRE(
        reset_pulse_0_RESET_3), .Q(
        \clock_div_26MHZ_1MHZ_0/counter[0]_net_1 ));
    AO1A \spi_mode_config_0/start_a_RNO_10  (.A(
        \spi_mode_config_0/N_388 ), .B(\spi_mode_config_0/N_403 ), .C(
        \spi_mode_config_0/N_364 ), .Y(
        \spi_mode_config_0/un1_mem_enable_a21_27_i_a4_0_i_2 ));
    MX2 \spi_master_0/data_q_RNO[7]  (.A(\spi_master_0/data_q[6] ), .B(
        \spi_mode_config_0_byte_out[7] ), .S(\spi_master_0.state_q_89 )
        , .Y(\spi_master_0/data_d[7] ));
    AX1C \read_buffer_0/init_wait_RNO[8]  (.A(
        \read_buffer_0/init_wait_c6 ), .B(
        \read_buffer_0/init_wait_26_0 ), .C(\read_buffer_0/N_173 ), .Y(
        \read_buffer_0/init_wait_n8 ));
    NOR2B \spi_master_0/sck_q_RNISE6G[1]  (.A(
        \spi_master_0/sck_q[1]_net_1 ), .B(
        \spi_master_0/state_q[1]_net_1 ), .Y(\sck_q_RNISE6G[1] ));
    AOI1B \spi_mode_config_0/byte_out_b_RNO[3]  (.A(
        \spi_mode_config_0/byte_out_b_1_sqmuxa_i_i_a3_1 ), .B(
        \spi_mode_config_0/byte_out_b_1_sqmuxa_i_i_a3_0 ), .C(
        \spi_mode_config_0/byte_out_a[3]_net_1 ), .Y(
        \spi_mode_config_0/byte_out_b_6[3] ));
    AND2 \clock_div_26MHZ_1MHZ_0/un5_counter_I_21  (.A(
        \clock_div_26MHZ_1MHZ_0/counter[6]_net_1 ), .B(
        \clock_div_26MHZ_1MHZ_0/counter[7]_net_1 ), .Y(
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[3] ));
    XOR2 \clock_div_1MHZ_10HZ_0/un5_counter_I_14  (.A(
        \clock_div_1MHZ_10HZ_0/N_13 ), .B(
        \clock_div_1MHZ_10HZ_0/counter[5]_net_1 ), .Y(
        \clock_div_1MHZ_10HZ_0/I_14 ));
    AO1 \spi_mode_config_0/byte_out_a_RNO_9[4]  (.A(
        \spi_mode_config_0/byte_out_a_8_i_i_a3_1_0[4] ), .B(
        \spi_mode_config_0/N_632 ), .C(\spi_mode_config_0/N_552 ), .Y(
        \spi_mode_config_0/byte_out_a_8_i_i_3[4] ));
    DFN1C0 \spi_mode_config_0/byte_out_b[1]/U1  (.D(
        \spi_mode_config_0/byte_out_b[1]/Y ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_1), .Q(\spi_mode_config_0_byte_out[1] ));
    AO1 \spi_mode_config_0/byte_out_a_RNO_5[0]  (.A(
        \spi_mode_config_0/byte_out_a_8_1_4_0_a3_0[0] ), .B(
        \spi_mode_config_0/N_633 ), .C(\spi_mode_config_0/N_257 ), .Y(
        \spi_mode_config_0/byte_out_a_8_1_1[0] ));
    XA1 \read_buffer_0/init_wait_RNO[7]  (.A(
        \read_buffer_0/init_wait_c6 ), .B(\read_buffer_0/init_wait[7] )
        , .C(\read_buffer_0/un1_init_wait ), .Y(
        \read_buffer_0/init_wait_n7 ));
    NOR3C \spi_mode_config_0/byte_out_a_RNO_17[2]  (.A(
        \spi_mode_config_0/config_cntr_b[2] ), .B(
        \spi_mode_config_0/config_cntr_b[4] ), .C(
        \spi_mode_config_0/byte_out_a_8_i_a4_5_0[2] ), .Y(
        \spi_mode_config_0/N_230 ));
    IOPAD_TRI \SCLK_pad/U0/U0  (.D(\SCLK_pad/U0/NET1 ), .E(
        \SCLK_pad/U0/NET2 ), .PAD(SCLK));
    XNOR2 \spi_mode_config_0/rst_cntr_RNO[9]  (.A(
        \spi_mode_config_0/N_419 ), .B(\spi_mode_config_0/rst_cntr[9] )
        , .Y(\spi_mode_config_0/N_503_i ));
    DFN1C0 \orbit_control_0/tx_enable_reg  (.D(
        \orbit_control_0/cntr13 ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(reset_pulse_0_RESET), 
        .Q(orbit_control_0_tx_enable));
    NOR2B \orbit_control_0/cntr_RNI5DFL1[9]  (.A(
        \orbit_control_0/cntr_c8 ), .B(\orbit_control_0/cntr[9]_net_1 )
        , .Y(\orbit_control_0/cntr_c9 ));
    AND3 \clock_div_26MHZ_1MHZ_0/un5_counter_I_13  (.A(
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[0] ), .B(
        \clock_div_26MHZ_1MHZ_0/counter[3]_net_1 ), .C(
        \clock_div_26MHZ_1MHZ_0/counter[4]_net_1 ), .Y(
        \clock_div_26MHZ_1MHZ_0/N_13 ));
    NOR3C \spi_mode_config_0/byte_out_a_RNO_16[5]  (.A(
        \spi_mode_config_0/N_664 ), .B(\spi_mode_config_0/N_570_1 ), 
        .C(\spi_mode_config_0/N_233_1 ), .Y(\spi_mode_config_0/N_547 ));
    NOR3C \spi_mode_config_0/byte_out_a_RNO_3[4]  (.A(
        \spi_mode_config_0_byte_out[4] ), .B(
        \spi_mode_config_0/state_b[0] ), .C(\spi_mode_config_0/N_379 ), 
        .Y(\spi_mode_config_0/N_554 ));
    XOR2 \clock_div_26MHZ_1MHZ_0/un5_counter_I_28  (.A(
        \clock_div_26MHZ_1MHZ_0/N_8 ), .B(
        \clock_div_26MHZ_1MHZ_0/counter[10]_net_1 ), .Y(
        \clock_div_26MHZ_1MHZ_0/I_28_0 ));
    DFN1C0 \spi_master_0/data_out_q[0]/U1  (.D(
        \spi_master_0/data_out_q[0]/Y ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_0), .Q(ds0_c));
    MX2 \read_buffer_0/init_wait[5]/U0  (.A(
        \read_buffer_0/init_wait_n5 ), .B(\read_buffer_0/init_wait[5] )
        , .S(\read_buffer_0/init_stage_177_d ), .Y(
        \read_buffer_0/init_wait[5]/Y ));
    AND3 \clock_div_26MHZ_1MHZ_0/un5_counter_I_24  (.A(
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[0] ), .B(
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[2] ), .C(
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[3] ), .Y(
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[4] ));
    MX2 \spi_master_0/data_q[2]/U0  (.A(\spi_master_0/data_q[2] ), .B(
        \spi_master_0/data_d[2] ), .S(
        \spi_master_0/un1_data_d_0_sqmuxa ), .Y(
        \spi_master_0/data_q[2]/Y ));
    DFN0 \spi_mode_config_0/byte_out_a[5]  (.D(
        \spi_mode_config_0/byte_out_a_RNO[5]_net_1 ), .CLK(
        \spi_master_0.state_q_89 ), .Q(
        \spi_mode_config_0/byte_out_a[5]_net_1 ));
    XOR2 \spi_mode_config_0/byte_out_a_RNO_28[2]  (.A(
        \spi_mode_config_0/config_cntr_b[0] ), .B(
        \spi_mode_config_0/byte_tracker_b ), .Y(
        \spi_mode_config_0/N_457_i ));
    OR3 \spi_mode_config_0/byte_out_a_RNO[5]  (.A(
        \spi_mode_config_0/byte_out_a_8_i_i_6[5] ), .B(
        \spi_mode_config_0/byte_out_a_8_i_i_5[5] ), .C(
        \spi_mode_config_0/byte_out_a_8_i_i_10[5] ), .Y(
        \spi_mode_config_0/byte_out_a_RNO[5]_net_1 ));
    MX2 \spi_mode_config_0/next_b/U0  (.A(
        \spi_mode_config_0/next_a_net_1 ), .B(
        \spi_mode_config_0/next_b_i ), .S(
        \spi_mode_config_0/ss_a_net_1 ), .Y(
        \spi_mode_config_0/next_b/Y ));
    OA1B \spi_mode_config_0/byte_out_a_RNO_7[2]  (.A(
        \spi_mode_config_0/byte_out_a_8_i_3_0_a3_0[2] ), .B(
        \spi_mode_config_0/N_438 ), .C(\spi_mode_config_0_byte_out[2] )
        , .Y(\spi_mode_config_0/byte_out_a_8_i_0[2] ));
    IOTRI_OB_EB \ds0_pad/U0/U1  (.D(ds0_c), .E(VCC), .DOUT(
        \ds0_pad/U0/NET1 ), .EOUT(\ds0_pad/U0/NET2 ));
    NOR3B \spi_master_0/sck_q_RNI9JLG[0]  (.A(
        \spi_master_0/sck_q[0]_net_1 ), .B(
        \spi_master_0/state_q[1]_net_1 ), .C(
        \spi_master_0/sck_q[1]_net_1 ), .Y(\spi_master_0/N_42 ));
    AO1 \spi_mode_config_0/state_b_RNO[2]  (.A(
        \spi_mode_config_0/byte_out_b_1_sqmuxa_i_i_a3_1 ), .B(
        \spi_mode_config_0/byte_out_b_1_sqmuxa_i_i_a3_0 ), .C(
        \spi_mode_config_0/state_a[2]_net_1 ), .Y(
        \spi_mode_config_0/state_b_6[2] ));
    NOR3B \spi_mode_config_0/byte_out_a_RNO_19[3]  (.A(
        \spi_mode_config_0/N_451 ), .B(
        \spi_mode_config_0/config_cntr_b[4] ), .C(
        \spi_mode_config_0/N_416 ), .Y(\spi_mode_config_0/N_840 ));
    OR3 \spi_mode_config_0/rst_cntr_RNI3K34[8]  (.A(
        \spi_mode_config_0/rst_cntr[7] ), .B(
        \spi_mode_config_0/rst_cntr[8] ), .C(
        \spi_mode_config_0/rst_cntr[9] ), .Y(\spi_mode_config_0/N_385 )
        );
    OR3 \spi_mode_config_0/state_a_RNO_0[1]  (.A(
        \spi_mode_config_0/state_b[0] ), .B(\spi_mode_config_0/N_428 ), 
        .C(ds7_c), .Y(\spi_mode_config_0/N_467 ));
    CLKINT \clock_div_26MHZ_1MHZ_0/clk_out_RNIH497  (.A(
        \clock_div_26MHZ_1MHZ_0/clk_out_i ), .Y(
        clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT));
    OR2A \spi_mode_config_0/state_a_RNO_5[2]  (.A(
        \spi_mode_config_0/byte_tracker_b ), .B(
        \spi_mode_config_0/N_364 ), .Y(\spi_mode_config_0/N_446 ));
    MX2 \spi_mode_config_0/state_b[1]/U0  (.A(
        \spi_mode_config_0/state_b[1] ), .B(
        \spi_mode_config_0/state_b_6[1] ), .S(
        \spi_mode_config_0/N_145 ), .Y(
        \spi_mode_config_0/state_b[1]/Y ));
    OR3B \spi_mode_config_0/rst_cntr_RNI5N9C[8]  (.A(
        \spi_mode_config_0/rst_cntr[7] ), .B(
        \spi_mode_config_0/rst_cntr[8] ), .C(\spi_mode_config_0/N_400 )
        , .Y(\spi_mode_config_0/N_419 ));
    AND3C \spi_mode_config_0/byte_out_a_RNO_5[1]  (.A(
        \spi_mode_config_0/N_410 ), .B(\spi_mode_config_0/N_382 ), .C(
        \spi_mode_config_0/N_416 ), .Y(\spi_mode_config_0/N_589 ));
    OA1 \spi_mode_config_0/start_a_RNO_5  (.A(ds7_c), .B(
        \spi_mode_config_0/N_77 ), .C(
        \spi_mode_config_0/un1_byte_out_a_83_sqmuxa_0_a4_0 ), .Y(
        \spi_mode_config_0/N_281 ));
    MX2 \spi_mode_config_0/rst_cntr[2]/U0  (.A(
        \spi_mode_config_0/N_459_i ), .B(\spi_mode_config_0/un74lto2 ), 
        .S(\spi_mode_config_0/N_397 ), .Y(
        \spi_mode_config_0/rst_cntr[2]/Y ));
    NOR2A \spi_mode_config_0/byte_out_a_RNO_18[2]  (.A(
        \spi_mode_config_0/N_143 ), .B(\spi_mode_config_0/N_288 ), .Y(
        \spi_mode_config_0/N_224 ));
    DFN1C0 \spi_master_0/state_q[1]  (.D(\spi_master_0/N_13 ), .CLK(
        GLA), .CLR(reset_pulse_0_RESET), .Q(
        \spi_master_0/state_q[1]_net_1 ));
    NOR2B \spi_mode_config_0/byte_out_a_RNO_11[6]  (.A(
        \read_buffer_0.byte_out[6] ), .B(
        \read_buffer_0.byte_out_cl[0] ), .Y(
        \spi_mode_config_0/byte_out_a_8_1_0_a3_4_0[6] ));
    AND3 \clock_div_1MHZ_10HZ_0/un5_counter_I_33  (.A(
        \clock_div_1MHZ_10HZ_0/counter[9]_net_1 ), .B(
        \clock_div_1MHZ_10HZ_0/counter[10]_net_1 ), .C(
        \clock_div_1MHZ_10HZ_0/counter[11]_net_1 ), .Y(
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[7] ));
    NOR3C \read_buffer_0/init_wait_RNI99A21[2]  (.A(
        \read_buffer_0/init_wait[1] ), .B(\read_buffer_0/init_wait_c0 )
        , .C(\read_buffer_0/init_wait[2] ), .Y(
        \read_buffer_0/init_wait_c2 ));
    MX2C \spi_mode_config_0/start_a_RNO_17  (.A(
        \spi_mode_config_0/N_607 ), .B(\spi_mode_config_0/N_439 ), .S(
        \spi_mode_config_0/config_cntr_b[6] ), .Y(
        \spi_mode_config_0/N_117 ));
    MX2 \spi_mode_config_0/config_cntr_b[0]/U0  (.A(
        \spi_mode_config_0/config_cntr_a[0]_net_1 ), .B(
        \spi_mode_config_0/config_cntr_b[0] ), .S(
        \spi_mode_config_0/ss_a_net_1 ), .Y(
        \spi_mode_config_0/config_cntr_b[0]/Y ));
    NOR2B \read_buffer_0/init_wait_RNO_1[8]  (.A(
        \read_buffer_0/init_wait[8] ), .B(
        \read_buffer_0/un1_init_wait ), .Y(\read_buffer_0/N_173 ));
    DFN1C1 \clock_div_26MHZ_1MHZ_0/counter[3]  (.D(
        \clock_div_26MHZ_1MHZ_0/counter_3[3] ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_3), .Q(
        \clock_div_26MHZ_1MHZ_0/counter[3]_net_1 ));
    AOI1B \clock_div_1MHZ_10HZ_0/counter_RNO[6]  (.A(
        \clock_div_1MHZ_10HZ_0/clk_out5_13 ), .B(
        \clock_div_1MHZ_10HZ_0/clk_out5_12 ), .C(
        \clock_div_1MHZ_10HZ_0/I_17 ), .Y(
        \clock_div_1MHZ_10HZ_0/counter_3[6] ));
    OR2 \spi_mode_config_0/config_cntr_b_RNIK1II1[0]  (.A(
        \spi_mode_config_0/N_667 ), .B(\spi_mode_config_0/N_379 ), .Y(
        \spi_mode_config_0/N_77 ));
    MX2 \spi_master_0/data_out_q[7]/U0  (.A(ds7_c), .B(
        \spi_master_0/data_q[7] ), .S(
        \spi_master_0/new_data_d_2_sqmuxa ), .Y(
        \spi_master_0/data_out_q[7]/Y ));
    OR2A \spi_mode_config_0/start_a_RNO_9  (.A(
        \spi_mode_config_0/config_cntr_b[0] ), .B(
        \spi_mode_config_0/byte_tracker_b ), .Y(
        \spi_mode_config_0/un1_mem_enable_a21_27_i_a4_0_i_0 ));
    AND3 \clock_div_26MHZ_1MHZ_0/un5_counter_I_18  (.A(
        \clock_div_26MHZ_1MHZ_0/counter[3]_net_1 ), .B(
        \clock_div_26MHZ_1MHZ_0/counter[4]_net_1 ), .C(
        \clock_div_26MHZ_1MHZ_0/counter[5]_net_1 ), .Y(
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[2] ));
    DFN1C0 \clock_div_1MHZ_10HZ_0/counter[3]  (.D(
        \clock_div_1MHZ_10HZ_0/I_9 ), .CLK(
        clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT), .CLR(
        reset_pulse_0_RESET_4), .Q(
        \clock_div_1MHZ_10HZ_0/counter[3]_net_1 ));
    OA1C \spi_mode_config_0/start_a_RNO_13  (.A(
        \spi_mode_config_0/N_665 ), .B(\spi_mode_config_0/N_423 ), .C(
        \spi_mode_config_0/N_373 ), .Y(
        \spi_mode_config_0/un1_byte_out_a_83_sqmuxa_0_a4_0_0 ));
    XOR2 \clock_div_26MHZ_1MHZ_0/un5_counter_I_14  (.A(
        \clock_div_26MHZ_1MHZ_0/N_13 ), .B(
        \clock_div_26MHZ_1MHZ_0/counter[5]_net_1 ), .Y(
        \clock_div_26MHZ_1MHZ_0/I_14_0 ));
    AND2 \spi_mode_config_0/un1_config_cntr_b_7_I_1  (.A(
        \spi_mode_config_0/config_cntr_b[0] ), .B(
        \spi_mode_config_0/byte_tracker_b_RNI00D03_net_1 ), .Y(
        \spi_mode_config_0/DWACT_ADD_CI_0_TMP[0] ));
    DFN1C0 \orbit_control_0/cntr[12]  (.D(\orbit_control_0/cntr_n12 ), 
        .CLK(clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_3), .Q(\orbit_control_0/cntr[12]_net_1 ));
    XOR2 \clock_div_26MHZ_1MHZ_0/un5_counter_I_46  (.A(
        \clock_div_26MHZ_1MHZ_0/N_2 ), .B(
        \clock_div_26MHZ_1MHZ_0/counter[16]_net_1 ), .Y(
        \clock_div_26MHZ_1MHZ_0/I_46_0 ));
    NOR2 \spi_master_0/ctr_q_RNO[0]  (.A(\spi_master_0/ctr_q[0] ), .B(
        \spi_master_0.state_q_89 ), .Y(\spi_master_0/N_33 ));
    OR2 \reset_pulse_0/RESET_4  (.A(BUF2_PBRST_T9_c), .B(CLK_48MHZ_c), 
        .Y(reset_pulse_0_RESET_4));
    OR2A \spi_mode_config_0/byte_tracker_a_0_0_0_o2  (.A(
        orbit_control_0_tx_enable), .B(\spi_mode_config_0/N_369 ), .Y(
        \spi_mode_config_0/N_398 ));
    DFN1C0 \read_buffer_0/init_wait[7]/U1  (.D(
        \read_buffer_0/init_wait[7]/Y ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_2), .Q(
        \read_buffer_0/init_wait[7] ));
    NOR2B \spi_mode_config_0/state_b_RNIVSS5[2]  (.A(
        \spi_mode_config_0/N_364 ), .B(\spi_mode_config_0/state_b[2] ), 
        .Y(\spi_mode_config_0/N_629 ));
    OR3 \spi_mode_config_0/byte_out_a_RNO[1]  (.A(
        \spi_mode_config_0/byte_out_a_8_1_0_9[1] ), .B(
        \spi_mode_config_0/byte_out_a_8_1_0_8[1] ), .C(
        \spi_mode_config_0/byte_out_a_8_1_0_10[1] ), .Y(
        \spi_mode_config_0/byte_out_a_8[1] ));
    NOR3C \clock_div_26MHZ_1MHZ_0/counter_RNI1LGO1[1]  (.A(
        \clock_div_26MHZ_1MHZ_0/clk_out5_6 ), .B(
        \clock_div_26MHZ_1MHZ_0/clk_out5_5 ), .C(
        \clock_div_26MHZ_1MHZ_0/clk_out5_12 ), .Y(
        \clock_div_26MHZ_1MHZ_0/clk_out5_14 ));
    NOR2 \spi_mode_config_0/byte_tracker_b_RNI66E3  (.A(ds7_c), .B(
        \spi_mode_config_0/byte_tracker_b ), .Y(
        \spi_mode_config_0/N_665 ));
    AND3 \clock_div_1MHZ_10HZ_0/un5_counter_I_10  (.A(
        \clock_div_1MHZ_10HZ_0/counter[0]_net_1 ), .B(
        \clock_div_1MHZ_10HZ_0/counter[1]_net_1 ), .C(
        \clock_div_1MHZ_10HZ_0/counter[2]_net_1 ), .Y(
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[0] ));
    OA1C \spi_mode_config_0/state_b_RNICCNM[2]  (.A(
        \spi_mode_config_0/N_391 ), .B(\spi_mode_config_0/N_628 ), .C(
        \spi_mode_config_0/state_b[2] ), .Y(\spi_mode_config_0/N_641 ));
    NOR3B \spi_mode_config_0/config_cntr_b_RNI7PQD1[4]  (.A(
        \spi_mode_config_0/N_300 ), .B(\spi_mode_config_0/N_233_1 ), 
        .C(\spi_mode_config_0/config_cntr_b[4] ), .Y(
        \spi_mode_config_0/N_523 ));
    NOR3B \spi_mode_config_0/byte_out_a_RNO_25[0]  (.A(
        \spi_mode_config_0/N_369 ), .B(
        \spi_mode_config_0/byte_out_a_8_1_a4_8_2[0] ), .C(
        \spi_mode_config_0/state_b[0] ), .Y(\spi_mode_config_0/N_261 ));
    OA1B \spi_mode_config_0/start_a_RNO_11  (.A(
        \spi_mode_config_0/N_117 ), .B(\spi_mode_config_0/N_360 ), .C(
        \spi_mode_config_0/N_370 ), .Y(
        \spi_mode_config_0/un1_mem_enable_a21_27_i_a4_0 ));
    MX2 \spi_master_0/data_out_q[2]/U0  (.A(ds2_c), .B(
        \spi_master_0/data_q[2] ), .S(
        \spi_master_0/new_data_d_2_sqmuxa ), .Y(
        \spi_master_0/data_out_q[2]/Y ));
    NOR2B \spi_mode_config_0/config_cntr_b_RNIHOT71[2]  (.A(
        \spi_mode_config_0/N_645 ), .B(
        \spi_mode_config_0/config_cntr_b[2] ), .Y(
        \spi_mode_config_0/N_693 ));
    NOR3 \spi_mode_config_0/byte_out_a_RNO[2]  (.A(
        \spi_mode_config_0/byte_out_a_8_i_10[2] ), .B(
        \spi_mode_config_0/byte_out_a_8_i_9[2] ), .C(
        \spi_mode_config_0/byte_out_a_8_i_11[2] ), .Y(
        \spi_mode_config_0/N_23 ));
    XOR2 \clock_div_1MHZ_10HZ_0/un5_counter_I_28  (.A(
        \clock_div_1MHZ_10HZ_0/N_8 ), .B(
        \clock_div_1MHZ_10HZ_0/counter[10]_net_1 ), .Y(
        \clock_div_1MHZ_10HZ_0/I_28 ));
    AND3 \clock_div_1MHZ_10HZ_0/un5_counter_I_41  (.A(
        \clock_div_1MHZ_10HZ_0/counter[12]_net_1 ), .B(
        \clock_div_1MHZ_10HZ_0/counter[13]_net_1 ), .C(
        \clock_div_1MHZ_10HZ_0/counter[14]_net_1 ), .Y(
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[9] ));
    OR2 \reset_pulse_0/RESET  (.A(BUF2_PBRST_T9_c), .B(CLK_48MHZ_c), 
        .Y(reset_pulse_0_RESET));
    IOTRI_OB_EB \ds1_pad/U0/U1  (.D(ds1_c), .E(VCC), .DOUT(
        \ds1_pad/U0/NET1 ), .EOUT(\ds1_pad/U0/NET2 ));
    DFN1C0 \orbit_control_0/cntr[4]  (.D(\orbit_control_0/cntr_n4 ), 
        .CLK(clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_3), .Q(\orbit_control_0/cntr[4]_net_1 ));
    IOTRI_OB_EB \SS_pad/U0/U1  (.D(SS_c), .E(VCC), .DOUT(
        \SS_pad/U0/NET1 ), .EOUT(\SS_pad/U0/NET2 ));
    OR2B \spi_mode_config_0/config_cntr_b_RNINCQB[5]  (.A(
        \spi_mode_config_0/config_cntr_b[5] ), .B(
        \spi_mode_config_0/config_cntr_b[4] ), .Y(
        \spi_mode_config_0/N_382 ));
    DFN1C0 \spi_mode_config_0/rst_cntr[5]/U1  (.D(
        \spi_mode_config_0/rst_cntr[5]/Y ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_0), .Q(\spi_mode_config_0/rst_cntr[5] ));
    OR3 \spi_mode_config_0/byte_out_a_RNO[6]  (.A(
        \spi_mode_config_0/byte_out_a_8_1_0_3[6] ), .B(
        \spi_mode_config_0/byte_out_a_8_1_0_2[6] ), .C(
        \spi_mode_config_0/byte_out_a_8_1_0_7[6] ), .Y(
        \spi_mode_config_0/byte_out_a_8[6] ));
    DFN1C0 \spi_master_0/ctr_q[1]/U1  (.D(\spi_master_0/ctr_q[1]/Y ), 
        .CLK(GLA), .CLR(reset_pulse_0_RESET_2), .Q(
        \spi_master_0/ctr_q[1] ));
    AXO5 \spi_master_0/state_q_RNO_1[1]  (.A(spi_mode_config_0_start), 
        .B(\spi_master_0/state_q[1]_net_1 ), .C(
        \spi_master_0/state_q[0]_net_1 ), .Y(
        \spi_master_0/state_q_ns_0_i_0[1] ));
    NOR3C \clock_div_26MHZ_1MHZ_0/counter_RNI0PSM1[5]  (.A(
        \clock_div_26MHZ_1MHZ_0/clk_out5_2 ), .B(
        \clock_div_26MHZ_1MHZ_0/clk_out5_1 ), .C(
        \clock_div_26MHZ_1MHZ_0/clk_out5_10 ), .Y(
        \clock_div_26MHZ_1MHZ_0/clk_out5_13 ));
    OR2B \spi_master_0/ctr_q_RNIBS9K[1]  (.A(\spi_master_0/ctr_q[1] ), 
        .B(\spi_master_0/ctr_q[0] ), .Y(\spi_master_0/N_23 ));
    NOR2B \spi_mode_config_0/config_cntr_b_RNINCQB[6]  (.A(
        \spi_mode_config_0/config_cntr_b[6] ), .B(
        \spi_mode_config_0/config_cntr_b[3] ), .Y(
        \spi_mode_config_0/N_570_1 ));
    NOR2B \spi_mode_config_0/byte_out_a_RNO_6[3]  (.A(
        \spi_mode_config_0/N_575_1 ), .B(\spi_mode_config_0/N_633 ), 
        .Y(\spi_mode_config_0/N_575 ));
    NOR2B \spi_mode_config_0/byte_out_a_RNO_15[0]  (.A(
        \spi_mode_config_0/N_376 ), .B(
        \spi_mode_config_0/config_cntr_b[6] ), .Y(
        \spi_mode_config_0/N_617 ));
    NOR2 \spi_mode_config_0/start_a_RNO_19  (.A(
        \spi_mode_config_0/N_376 ), .B(
        \spi_mode_config_0/config_cntr_b[1] ), .Y(
        \spi_mode_config_0/N_607 ));
    DFN1C0 \read_buffer_0/byte_out_cl[0]  (.D(
        \read_buffer_0/byte_out_cl_RNO[0]_net_1 ), .CLK(
        spi_mode_config_0_next_cmd), .CLR(reset_pulse_0_RESET), .Q(
        \read_buffer_0.byte_out_cl[0] ));
    AO1 \spi_mode_config_0/byte_out_a_RNO_6[7]  (.A(
        \spi_mode_config_0/byte_out_a_8_1_0_a3_1_2[7] ), .B(
        \spi_mode_config_0/byte_out_a_8_1_0_a3_1_1[7] ), .C(
        \spi_mode_config_0/N_521 ), .Y(
        \spi_mode_config_0/byte_out_a_8_1_0_2[7] ));
    AO1B \spi_mode_config_0/byte_out_a_RNO_18[3]  (.A(
        \read_buffer_0.byte_out[3] ), .B(
        \read_buffer_0.byte_out_cl[0] ), .C(
        \spi_mode_config_0/byte_tracker_b_0 ), .Y(
        \spi_mode_config_0/N_469 ));
    OR3C \spi_mode_config_0/rst_cntr_RNIEU24[2]  (.A(
        \spi_mode_config_0/un74lto1 ), .B(\spi_mode_config_0/un74lto0 )
        , .C(\spi_mode_config_0/un74lto2 ), .Y(
        \spi_mode_config_0/N_378 ));
    DFN1C0 \spi_mode_config_0/byte_tracker_b_0/U1  (.D(
        \spi_mode_config_0/byte_tracker_b_0/Y ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_0), .Q(
        \spi_mode_config_0/byte_tracker_b_0 ));
    IOTRI_OB_EB \SCLK_pad/U0/U1  (.D(\sck_q_RNISE6G[1] ), .E(VCC), 
        .DOUT(\SCLK_pad/U0/NET1 ), .EOUT(\SCLK_pad/U0/NET2 ));
    DFN1C0 \read_buffer_0/init_wait[1]/U1  (.D(
        \read_buffer_0/init_wait[1]/Y ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_2), .Q(
        \read_buffer_0/init_wait[1] ));
    AX1C \clock_div_1MHZ_10HZ_0/clk_out_RNO  (.A(
        \clock_div_1MHZ_10HZ_0/clk_out5_12 ), .B(
        \clock_div_1MHZ_10HZ_0/clk_out5_13 ), .C(
        \clock_div_1MHZ_10HZ_0/clk_out_i ), .Y(
        \clock_div_1MHZ_10HZ_0/clk_out_RNO_net_1 ));
    XA1 \orbit_control_0/cntr_RNO[7]  (.A(
        \orbit_control_0/cntr[7]_net_1 ), .B(\orbit_control_0/cntr_c6 )
        , .C(\orbit_control_0/cntr13 ), .Y(\orbit_control_0/cntr_n7 ));
    OA1C \spi_mode_config_0/state_a_RNO[1]  (.A(
        \spi_mode_config_0/N_467 ), .B(\spi_mode_config_0/state_b[1] ), 
        .C(\spi_mode_config_0/N_611 ), .Y(\spi_mode_config_0/N_29 ));
    AND2 \clock_div_1MHZ_10HZ_0/un5_counter_I_15  (.A(
        \clock_div_1MHZ_10HZ_0/counter[3]_net_1 ), .B(
        \clock_div_1MHZ_10HZ_0/counter[4]_net_1 ), .Y(
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[1] ));
    DFN1C0 \orbit_control_0/cntr[8]  (.D(\orbit_control_0/cntr_n8 ), 
        .CLK(clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_4), .Q(\orbit_control_0/cntr[8]_net_1 ));
    MX2 \spi_mode_config_0/start_b/U0  (.A(spi_mode_config_0_start), 
        .B(\spi_mode_config_0/start_b_6 ), .S(
        \spi_mode_config_0/N_145 ), .Y(\spi_mode_config_0/start_b/Y ));
    OR2B \spi_mode_config_0/state_b_RNIQQJ4[0]  (.A(
        \spi_mode_config_0/state_b[0] ), .B(
        \spi_mode_config_0/state_b[2] ), .Y(\spi_mode_config_0/N_365 ));
    NOR3A \spi_mode_config_0/byte_tracker_b_RNI15K51  (.A(
        \spi_mode_config_0/N_630 ), .B(\spi_mode_config_0/N_376 ), .C(
        \spi_mode_config_0/N_403 ), .Y(\spi_mode_config_0/N_608 ));
    OR3 \spi_mode_config_0/byte_out_a_RNO_9[7]  (.A(
        \spi_mode_config_0/N_622 ), .B(\spi_mode_config_0/N_623 ), .C(
        \spi_mode_config_0/N_687 ), .Y(
        \spi_mode_config_0/byte_out_a_8_1_0_0_tz_1[7] ));
    IOIN_IB \MISO_pad/U0/U1  (.YIN(\MISO_pad/U0/NET1 ), .Y(MISO_c));
    IOPAD_TRI \ds1_pad/U0/U0  (.D(\ds1_pad/U0/NET1 ), .E(
        \ds1_pad/U0/NET2 ), .PAD(ds1));
    AO1B \spi_mode_config_0/rst_cntr_RNI40I9_0[6]  (.A(
        \spi_mode_config_0/ss_b_1_sqmuxa_1_0_a2_1 ), .B(
        \spi_mode_config_0/N_430 ), .C(\spi_mode_config_0/ss_b11lto6 ), 
        .Y(\spi_mode_config_0/N_492 ));
    OR2 \spi_mode_config_0/byte_tracker_b_RNI409G  (.A(
        \spi_mode_config_0/N_392 ), .B(
        \spi_mode_config_0/byte_tracker_b ), .Y(
        \spi_mode_config_0/N_396 ));
    NOR2A \spi_mode_config_0/byte_out_a_RNO_20[1]  (.A(
        \spi_mode_config_0/N_490 ), .B(
        \spi_mode_config_0/config_cntr_b[2] ), .Y(
        \spi_mode_config_0/N_685 ));
    NOR3B \spi_mode_config_0/start_a_RNO_6  (.A(
        \spi_mode_config_0/state_b[1] ), .B(
        \spi_mode_config_0/un1_byte_out_a_83_sqmuxa_0_a4_0_0 ), .C(
        spi_mode_config_0_begin_pass), .Y(\spi_mode_config_0/N_282 ));
    MX2 \spi_master_0/data_out_q[0]/U0  (.A(ds0_c), .B(
        \spi_master_0/data_q[0] ), .S(
        \spi_master_0/new_data_d_2_sqmuxa ), .Y(
        \spi_master_0/data_out_q[0]/Y ));
    DFN1P0 \clock_div_1MHZ_10HZ_0/counter[0]  (.D(
        \clock_div_1MHZ_10HZ_0/I_4 ), .CLK(
        clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT), .PRE(
        reset_pulse_0_RESET_4), .Q(
        \clock_div_1MHZ_10HZ_0/counter[0]_net_1 ));
    DFN1C0 \spi_mode_config_0/rst_cntr[2]/U1  (.D(
        \spi_mode_config_0/rst_cntr[2]/Y ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_0), .Q(\spi_mode_config_0/un74lto2 ));
    AND3 \clock_div_1MHZ_10HZ_0/un5_counter_I_8  (.A(
        \clock_div_1MHZ_10HZ_0/counter[0]_net_1 ), .B(
        \clock_div_1MHZ_10HZ_0/counter[1]_net_1 ), .C(
        \clock_div_1MHZ_10HZ_0/counter[2]_net_1 ), .Y(
        \clock_div_1MHZ_10HZ_0/N_15 ));
    MX2 \spi_master_0/data_out_q[6]/U0  (.A(ds6_c), .B(
        \spi_master_0/data_q[6] ), .S(
        \spi_master_0/new_data_d_2_sqmuxa ), .Y(
        \spi_master_0/data_out_q[6]/Y ));
    AO1 \spi_mode_config_0/next_a_RNO  (.A(spi_mode_config_0_next_cmd), 
        .B(\spi_mode_config_0/N_409 ), .C(\spi_mode_config_0/N_327 ), 
        .Y(\spi_mode_config_0/next_a_RNO_net_1 ));
    XA1 \orbit_control_0/cntr_RNO[3]  (.A(
        \orbit_control_0/cntr[3]_net_1 ), .B(\orbit_control_0/cntr_c2 )
        , .C(\orbit_control_0/cntr13 ), .Y(\orbit_control_0/cntr_n3 ));
    MX2A \spi_mode_config_0/byte_out_a_RNO_26[2]  (.A(
        \spi_mode_config_0/config_cntr_b[4] ), .B(
        \spi_mode_config_0/config_cntr_b[5] ), .S(
        \spi_mode_config_0/N_404 ), .Y(\spi_mode_config_0/N_143 ));
    AX1C \orbit_control_0/cntr_RNO[12]  (.A(\orbit_control_0/cntr_c10 )
        , .B(\orbit_control_0/cntr_25_0 ), .C(\orbit_control_0/N_55 ), 
        .Y(\orbit_control_0/cntr_n12 ));
    DFN0 \spi_mode_config_0/config_cntr_a[4]  (.D(
        \spi_mode_config_0/config_cntr_a_86[4] ), .CLK(
        \spi_master_0.state_q_89 ), .Q(
        \spi_mode_config_0/config_cntr_a[4]_net_1 ));
    AO1A \spi_mode_config_0/byte_out_a_RNO_8[2]  (.A(
        \read_buffer_0_BYTE_OUT[2] ), .B(\spi_mode_config_0/N_327 ), 
        .C(\spi_mode_config_0/N_236 ), .Y(
        \spi_mode_config_0/byte_out_a_8_i_4[2] ));
    NOR2B \orbit_control_0/cntr_RNI044G1[8]  (.A(
        \orbit_control_0/cntr_c7 ), .B(\orbit_control_0/cntr[8]_net_1 )
        , .Y(\orbit_control_0/cntr_c8 ));
    AND3 \clock_div_1MHZ_10HZ_0/un5_counter_I_16  (.A(
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[0] ), .B(
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[1] ), .C(
        \clock_div_1MHZ_10HZ_0/counter[5]_net_1 ), .Y(
        \clock_div_1MHZ_10HZ_0/N_12 ));
    NOR2B \orbit_control_0/cntr_RNIPKD51[6]  (.A(
        \orbit_control_0/cntr_c5 ), .B(\orbit_control_0/cntr[6]_net_1 )
        , .Y(\orbit_control_0/cntr_c6 ));
    DFN1C0 \spi_mode_config_0/rst_cntr[6]/U1  (.D(
        \spi_mode_config_0/rst_cntr[6]/Y ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_0), .Q(\spi_mode_config_0/ss_b11lto6 ));
    AO1A \spi_mode_config_0/byte_out_a_RNO_1[5]  (.A(
        \spi_mode_config_0/N_414 ), .B(\spi_mode_config_0/N_633 ), .C(
        \spi_mode_config_0/N_538 ), .Y(
        \spi_mode_config_0/byte_out_a_8_i_i_5[5] ));
    MX2 \spi_master_0/data_q_RNO[4]  (.A(\spi_master_0/data_q[3] ), .B(
        \spi_mode_config_0_byte_out[4] ), .S(\spi_master_0.state_q_89 )
        , .Y(\spi_master_0/data_d[4] ));
    MX2 \spi_master_0/ctr_q[2]/U0  (.A(\spi_master_0/ctr_q[2] ), .B(
        \spi_master_0/N_7 ), .S(\spi_master_0/ctr_qe ), .Y(
        \spi_master_0/ctr_q[2]/Y ));
    XA1 \orbit_control_0/cntr_RNO[6]  (.A(
        \orbit_control_0/cntr[6]_net_1 ), .B(\orbit_control_0/cntr_c5 )
        , .C(\orbit_control_0/cntr13 ), .Y(\orbit_control_0/cntr_n6 ));
    NOR2A \spi_mode_config_0/byte_out_a_RNO_6[2]  (.A(
        \spi_mode_config_0/N_692 ), .B(\spi_mode_config_0/N_410 ), .Y(
        \spi_mode_config_0/N_237 ));
    AND2 \clock_div_26MHZ_1MHZ_0/un5_counter_I_15  (.A(
        \clock_div_26MHZ_1MHZ_0/counter[3]_net_1 ), .B(
        \clock_div_26MHZ_1MHZ_0/counter[4]_net_1 ), .Y(
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[1] ));
    NOR3A \spi_mode_config_0/byte_out_a_RNO_23[0]  (.A(
        \spi_mode_config_0/byte_tracker_b_0 ), .B(
        \spi_mode_config_0/N_403 ), .C(
        \spi_mode_config_0/config_cntr_b[4] ), .Y(
        \spi_mode_config_0/byte_out_a_8_1_a4_11_2[0] ));
    XOR2 \spi_mode_config_0/un1_config_cntr_b_7_I_30  (.A(
        \spi_mode_config_0/config_cntr_b[4] ), .B(
        \spi_mode_config_0/DWACT_ADD_CI_0_g_array_2[0] ), .Y(
        \spi_mode_config_0/I_30 ));
    NOR3B \spi_mode_config_0/byte_out_a_RNO_10[1]  (.A(
        \read_buffer_0.byte_out[1] ), .B(
        \read_buffer_0.byte_out_cl[0] ), .C(\spi_mode_config_0/N_409 ), 
        .Y(\spi_mode_config_0/N_583 ));
    MX2 \spi_master_0/ctr_q[0]/U0  (.A(\spi_master_0/ctr_q[0] ), .B(
        \spi_master_0/N_33 ), .S(\spi_master_0/ctr_qe ), .Y(
        \spi_master_0/ctr_q[0]/Y ));
    DFN0 \spi_mode_config_0/byte_tracker_a  (.D(
        \spi_mode_config_0/byte_tracker_a_RNO_net_1 ), .CLK(
        \spi_master_0.state_q_89 ), .Q(
        \spi_mode_config_0/byte_tracker_a_net_1 ));
    AX1 \spi_mode_config_0/rst_cntr_RNO[4]  (.A(
        \spi_mode_config_0/N_378 ), .B(\spi_mode_config_0/rst_cntr[3] )
        , .C(\spi_mode_config_0/rst_cntr[4] ), .Y(
        \spi_mode_config_0/N_463_i ));
    OR2 \spi_mode_config_0/byte_out_a_RNO_4[3]  (.A(
        \spi_mode_config_0/N_572 ), .B(\spi_mode_config_0/N_646 ), .Y(
        \spi_mode_config_0/byte_out_a_8_1_0_0[3] ));
    DFN1C0 \read_buffer_0/init_wait[3]/U1  (.D(
        \read_buffer_0/init_wait[3]/Y ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_2), .Q(
        \read_buffer_0/init_wait[3] ));
    MX2 \spi_mode_config_0/byte_tracker_b/U0  (.A(
        \spi_mode_config_0/byte_tracker_a_net_1 ), .B(
        \spi_mode_config_0/byte_tracker_b ), .S(
        \spi_mode_config_0/ss_a_net_1 ), .Y(
        \spi_mode_config_0/byte_tracker_b/Y ));
    NOR3A \spi_mode_config_0/byte_out_a_RNO_16[2]  (.A(
        \spi_mode_config_0/byte_out_a_8_i_a4_1_0[2] ), .B(
        \spi_mode_config_0/byte_tracker_b_0 ), .C(
        \spi_mode_config_0/N_365 ), .Y(\spi_mode_config_0/N_226 ));
    NOR3B \spi_mode_config_0/byte_out_a_RNO_8[4]  (.A(
        \spi_mode_config_0/N_452 ), .B(
        \spi_mode_config_0/config_cntr_b[5] ), .C(
        \spi_mode_config_0/N_416 ), .Y(\spi_mode_config_0/N_551 ));
    OR3 \spi_mode_config_0/byte_tracker_a_RNO  (.A(
        \spi_mode_config_0/N_516 ), .B(\spi_mode_config_0/N_515 ), .C(
        \spi_mode_config_0/byte_tracker_a_0_0_0_3 ), .Y(
        \spi_mode_config_0/byte_tracker_a_RNO_net_1 ));
    XNOR2 \spi_mode_config_0/rst_cntr_RNO[3]  (.A(
        \spi_mode_config_0/N_378 ), .B(\spi_mode_config_0/rst_cntr[3] )
        , .Y(\spi_mode_config_0/N_461_i ));
    DFN1C0 \orbit_control_0/cntr[9]  (.D(\orbit_control_0/cntr_n9 ), 
        .CLK(clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_4), .Q(\orbit_control_0/cntr[9]_net_1 ));
    AND3 \clock_div_26MHZ_1MHZ_0/un5_counter_I_22  (.A(
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[0] ), .B(
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[2] ), .C(
        \clock_div_26MHZ_1MHZ_0/DWACT_FINC_E[3] ), .Y(
        \clock_div_26MHZ_1MHZ_0/N_10 ));
    MX2 \spi_mode_config_0/byte_out_b[4]/U0  (.A(
        \spi_mode_config_0_byte_out[4] ), .B(
        \spi_mode_config_0/byte_out_b_6[4] ), .S(
        \spi_mode_config_0/N_145 ), .Y(
        \spi_mode_config_0/byte_out_b[4]/Y ));
    AX1C \clock_div_1MHZ_10HZ_0/un5_counter_I_7  (.A(
        \clock_div_1MHZ_10HZ_0/counter[1]_net_1 ), .B(
        \clock_div_1MHZ_10HZ_0/counter[0]_net_1 ), .C(
        \clock_div_1MHZ_10HZ_0/counter[2]_net_1 ), .Y(
        \clock_div_1MHZ_10HZ_0/I_7 ));
    AO1 \spi_mode_config_0/start_b_RNO  (.A(
        \spi_mode_config_0/byte_out_b_1_sqmuxa_i_i_a3_1 ), .B(
        \spi_mode_config_0/byte_out_b_1_sqmuxa_i_i_a3_0 ), .C(
        \spi_mode_config_0/start_a_net_1 ), .Y(
        \spi_mode_config_0/start_b_6 ));
    NOR2A \spi_mode_config_0/byte_out_a_RNO_13[0]  (.A(
        \spi_mode_config_0/N_404 ), .B(
        \spi_mode_config_0/config_cntr_b[3] ), .Y(
        \spi_mode_config_0/byte_out_a_8_1_4_0_a3_0[0] ));
    NOR2A \spi_mode_config_0/config_cntr_b_RNIKKNH[6]  (.A(
        \spi_mode_config_0/config_cntr_b[6] ), .B(
        \spi_mode_config_0/N_376 ), .Y(\spi_mode_config_0/N_627 ));
    AO1 \spi_mode_config_0/byte_out_a_RNO_3[3]  (.A(
        \spi_mode_config_0/N_233_1 ), .B(\spi_mode_config_0/N_633 ), 
        .C(\spi_mode_config_0/N_197 ), .Y(
        \spi_mode_config_0/byte_out_a_8_1_0_1[3] ));
    IOIN_IB \BUF2_PBRST_T9_pad/U0/U1  (.YIN(
        \BUF2_PBRST_T9_pad/U0/NET1 ), .Y(BUF2_PBRST_T9_c));
    NOR2 \spi_mode_config_0/byte_out_a_RNO_14[4]  (.A(
        \spi_mode_config_0/N_233_1 ), .B(
        \spi_mode_config_0/config_cntr_b[3] ), .Y(
        \spi_mode_config_0/byte_out_a_8_i_i_a3_1_0[4] ));
    AND3 \clock_div_26MHZ_1MHZ_0/un5_counter_I_8  (.A(
        \clock_div_26MHZ_1MHZ_0/counter[0]_net_1 ), .B(
        \clock_div_26MHZ_1MHZ_0/counter[1]_net_1 ), .C(
        \clock_div_26MHZ_1MHZ_0/counter[2]_net_1 ), .Y(
        \clock_div_26MHZ_1MHZ_0/N_15 ));
    OR2 \read_buffer_0/byte_out_RNO[2]  (.A(
        \read_buffer_0/byte_out[2]_net_1 ), .B(
        \read_buffer_0/init_stage_177_d ), .Y(
        \read_buffer_0/byte_out_RNO[2]_net_1 ));
    XOR2 \clock_div_26MHZ_1MHZ_0/un5_counter_I_40  (.A(
        \clock_div_26MHZ_1MHZ_0/N_4 ), .B(
        \clock_div_26MHZ_1MHZ_0/counter[14]_net_1 ), .Y(
        \clock_div_26MHZ_1MHZ_0/I_40_0 ));
    AX1C \clock_div_1MHZ_10HZ_0/un5_counter_I_12  (.A(
        \clock_div_1MHZ_10HZ_0/counter[3]_net_1 ), .B(
        \clock_div_1MHZ_10HZ_0/DWACT_FINC_E[0] ), .C(
        \clock_div_1MHZ_10HZ_0/counter[4]_net_1 ), .Y(
        \clock_div_1MHZ_10HZ_0/I_12 ));
    OR3 \read_buffer_0/init_stage_RNO_1[1]  (.A(
        \read_buffer_0/init_wait[5] ), .B(\read_buffer_0/init_wait[6] )
        , .C(\read_buffer_0/init_wait[4] ), .Y(
        \read_buffer_0/init_stage_ns_i_a2_2_1[1] ));
    MX2 \spi_master_0/data_q_RNO[1]  (.A(\spi_master_0/data_q[0] ), .B(
        \spi_mode_config_0_byte_out[1] ), .S(\spi_master_0.state_q_89 )
        , .Y(\spi_master_0/data_d[1] ));
    NOR3 \spi_mode_config_0/state_a_RNO[2]  (.A(
        \spi_mode_config_0/state_a_7_i_0_0[2] ), .B(
        \spi_mode_config_0/N_596 ), .C(
        \spi_mode_config_0/state_a_7_i_0_1[2] ), .Y(
        \spi_mode_config_0/N_27 ));
    DFN0 \spi_mode_config_0/start_a  (.D(
        \spi_mode_config_0/start_a_RNO_net_1 ), .CLK(
        \spi_master_0.state_q_89 ), .Q(
        \spi_mode_config_0/start_a_net_1 ));
    DFN0 \spi_mode_config_0/config_cntr_a[0]  (.D(
        \spi_mode_config_0/DWACT_ADD_CI_0_partial_sum[0] ), .CLK(
        \spi_master_0.state_q_89 ), .Q(
        \spi_mode_config_0/config_cntr_a[0]_net_1 ));
    NOR3A \spi_mode_config_0/byte_tracker_b_RNIGKGO  (.A(
        \spi_mode_config_0/N_630 ), .B(\spi_mode_config_0/N_376 ), .C(
        \spi_mode_config_0/N_365 ), .Y(\spi_mode_config_0/N_643 ));
    AX1C \spi_mode_config_0/un1_config_cntr_b_7_I_28  (.A(
        \spi_mode_config_0/DWACT_ADD_CI_0_g_array_2[0] ), .B(
        \spi_mode_config_0/DWACT_ADD_CI_0_pog_array_1_1[0] ), .C(
        \spi_mode_config_0/config_cntr_b[6] ), .Y(
        \spi_mode_config_0/I_28_1 ));
    NOR3A \clock_div_1MHZ_10HZ_0/counter_RNIIUN61[2]  (.A(
        \clock_div_1MHZ_10HZ_0/clk_out5_3 ), .B(
        \clock_div_1MHZ_10HZ_0/counter[2]_net_1 ), .C(
        \clock_div_1MHZ_10HZ_0/counter[7]_net_1 ), .Y(
        \clock_div_1MHZ_10HZ_0/clk_out5_9 ));
    DFN1C0 \clock_div_1MHZ_10HZ_0/counter[8]  (.D(
        \clock_div_1MHZ_10HZ_0/counter_3[8] ), .CLK(
        clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT), .CLR(
        reset_pulse_0_RESET_4), .Q(
        \clock_div_1MHZ_10HZ_0/counter[8]_net_1 ));
    NOR2A \spi_mode_config_0/state_b_RNI7OT6_0[1]  (.A(
        \spi_mode_config_0/state_b[1] ), .B(\spi_mode_config_0/N_373 ), 
        .Y(\spi_mode_config_0/N_672 ));
    AO1 \spi_mode_config_0/byte_out_b_RNO[5]  (.A(
        \spi_mode_config_0/byte_out_b_1_sqmuxa_i_i_a3_1 ), .B(
        \spi_mode_config_0/byte_out_b_1_sqmuxa_i_i_a3_0 ), .C(
        \spi_mode_config_0/byte_out_a[5]_net_1 ), .Y(
        \spi_mode_config_0/byte_out_b_6[5] ));
    OR2 \spi_mode_config_0/begin_pass_b_RNI4OJ8  (.A(
        \spi_mode_config_0/N_423 ), .B(spi_mode_config_0_begin_pass), 
        .Y(\spi_mode_config_0/N_424 ));
    NOR2A \spi_mode_config_0/byte_out_a_RNO_8[7]  (.A(
        \spi_mode_config_0/N_415 ), .B(\spi_mode_config_0/N_365 ), .Y(
        \spi_mode_config_0/byte_out_a_8_1_0_a3_0_0[7] ));
    NOR2B \orbit_control_0/cntr_RNIM5CL[3]  (.A(
        \orbit_control_0/cntr[3]_net_1 ), .B(\orbit_control_0/cntr_c2 )
        , .Y(\orbit_control_0/cntr_c3 ));
    DFN1C0 \read_buffer_0/init_wait[8]/U1  (.D(
        \read_buffer_0/init_wait[8]/Y ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_2), .Q(
        \read_buffer_0/init_wait[8] ));
    NOR3B \spi_mode_config_0/start_a_RNO_16  (.A(
        spi_mode_config_0_begin_pass), .B(\spi_mode_config_0/N_672 ), 
        .C(orbit_control_0_tx_enable), .Y(\spi_mode_config_0/N_283 ));
    IOPAD_TRI \ds6_pad/U0/U0  (.D(\ds6_pad/U0/NET1 ), .E(
        \ds6_pad/U0/NET2 ), .PAD(ds6));
    DFN1C0 \clock_div_1MHZ_10HZ_0/counter[1]  (.D(
        \clock_div_1MHZ_10HZ_0/I_5 ), .CLK(
        clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT), .CLR(
        reset_pulse_0_RESET_4), .Q(
        \clock_div_1MHZ_10HZ_0/counter[1]_net_1 ));
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule
