`timescale 1 ns/100 ps
// Version: v11.6 11.6.0.34


module spi_mode_config(
       byte_out_cl,
       spi_mode_config_0_byte_out,
       byte_out_0,
       byte_out_1,
       byte_out_2,
       byte_out_6,
       byte_out_3,
       GLA,
       reset_pulse_0_RESET_0,
       spi_mode_config_0_next_cmd,
       ds7_c,
       orbit_control_0_tx_enable,
       ds6_c,
       spi_mode_config_0_begin_pass,
       ds4_c,
       ds5_c,
       spi_mode_config_0_start,
       state_q_89,
       reset_pulse_0_RESET_3,
       SS_c,
       reset_pulse_0_RESET_5,
       reset_pulse_0_RESET,
       reset_pulse_0_RESET_2,
       reset_pulse_0_RESET_1,
       reset_pulse_0_RESET_4
    );
input  [0:0] byte_out_cl;
output [7:0] spi_mode_config_0_byte_out;
input  byte_out_0;
input  byte_out_1;
input  byte_out_2;
input  byte_out_6;
input  byte_out_3;
input  GLA;
input  reset_pulse_0_RESET_0;
output spi_mode_config_0_next_cmd;
input  ds7_c;
input  orbit_control_0_tx_enable;
input  ds6_c;
output spi_mode_config_0_begin_pass;
input  ds4_c;
input  ds5_c;
output spi_mode_config_0_start;
input  state_q_89;
input  reset_pulse_0_RESET_3;
output SS_c;
input  reset_pulse_0_RESET_5;
input  reset_pulse_0_RESET;
input  reset_pulse_0_RESET_2;
input  reset_pulse_0_RESET_1;
input  reset_pulse_0_RESET_4;

    wire byte_tracker_b_0_net_1, byte_tracker_a_net_1, ss_a_net_1, 
        N_150_0, \state_b[0]_net_1 , \state_b[1]_net_1 , next_b_i, 
        G_3_2_i_2, ss_b11lto10, m42_0_a7_0_1, G_3_2_i_1, 
        \state_b[2]_net_1 , N_173, N_8, ss_b11lto6, N_375, N_9, 
        m42_0_a7_1_1, ss_b_1_sqmuxa_1, N_627, N_150, 
        \DWACT_ADD_CI_0_g_array_11[0] , \DWACT_ADD_CI_0_g_array_2[0] , 
        \DWACT_ADD_CI_0_pog_array_1_1[0] , 
        \DWACT_ADD_CI_0_g_array_1[0] , \DWACT_ADD_CI_0_pog_array_1[0] , 
        \DWACT_ADD_CI_0_g_array_12[0] , \config_cntr_b[2]_net_1 , 
        \DWACT_ADD_CI_0_TMP[0] , \config_cntr_b[1]_net_1 , 
        \DWACT_ADD_CI_0_g_array_12_1[0] , \config_cntr_b[4]_net_1 , 
        \rst_cntr[3]_net_1 , \rst_cntr[4]_net_1 , N_449, N_448, N_399, 
        byte_m2_e_2, N_659, byte_m2_e_1, \byte_out_a_8_1_i_a7_9_1[0] , 
        \byte_out_a_8_1_i_a7_7_0[0] , byte_tracker_b_net_1, 
        \byte_out_a_8_1_0_14[3] , \byte_out_a_8_1_0_8[3] , 
        \byte_out_a_8_1_0_7[3] , \byte_out_a_8_1_0_11[3] , N_565, 
        N_571, \byte_out_a_8_1_0_6[3] , \byte_out_a_8_1_0_10[3] , 
        N_538, N_562, \byte_out_a_8_1_0_3[3] , \byte_out_a_8_1_0_9[3] , 
        N_560, N_561, \byte_out_a_8_1_0_1[3] , N_528, N_568, N_570, 
        N_730, N_715, N_569, N_687, \config_cntr_b[3]_net_1 , N_566, 
        \byte_out_a_8_1_0_a7_5_0[3] , N_684, N_563, N_431, N_486, 
        N_839, \byte_out_a_8_1_i_a7_10_1[0] , 
        \byte_out_a_8_1_0_a7_3_0[3] , N_655, N_170, 
        \byte_out_a_8_1_0_a7_2_0[3] , N_423, N_160, 
        \byte_out_a_8_1_i_a7_6_0[0] , \byte_out_a_8_1_0_a7_4_0[3] , 
        \byte_out_a_8_1_i_a7_2_0[0] , \byte_out_a_8_1_i_16[0] , 
        \byte_out_a_8_1_i_10[0] , \byte_out_a_8_1_i_9[0] , 
        \byte_out_a_8_1_i_13[0] , N_614, N_615, 
        \byte_out_a_8_1_i_8[0] , \byte_out_a_8_1_i_12[0] , N_599, 
        N_600, \byte_out_a_8_1_i_5[0] , \byte_out_a_8_1_i_11[0] , 
        N_602, N_601, \byte_out_a_8_1_i_4[0] , N_612, N_611, 
        \byte_out_a_8_1_i_1[0] , N_607, N_608, N_605, 
        \byte_out_a_8_1_i_a7_15_0[0] , N_658, N_606, 
        \byte_out_a_8_1_i_a7_0_0[0] , N_648, N_597, N_696, N_603, 
        N_610_1, N_609, \config_cntr_b[5]_net_1 , 
        \byte_out_a_8_1_i_a7_13_1[0] , \byte_out_a_8_1_0_o2_1_1[7] , 
        N_404, \byte_out_a_8_1_0_o2_1_0[7] , N_411, N_376, 
        byte_tracker_a_7_0_0_o2_0_1, byte_tracker_a_7_0_0_o2_0_0_net_1, 
        \state_a_7_i_0_o2_0[0] , \byte_out_a_8_1_i_a7_5_0[0] , 
        \byte_out_a_8_i_i_o7_0[2] , N_407, N_671, N_656, N_462, N_180, 
        \byte_out_a_8_i_i_a7_2_0[5] , \config_cntr_b[6]_net_1 , 
        \byte_out_a_8_1_0_a7_7_0[3] , \byte_out_a_8_1_0_a7_6_1[3] , 
        \byte_out_a_8_1_0_a7_5_1[7] , \byte_out_a_8_1_0_a7_4_0[7] , 
        N_324, \byte_out_a_8_1_0_a7_2_1[7] , N_713, N_688, 
        \byte_out_a_8_1_0_5[7] , N_523, N_516, \byte_out_a_8_1_0_2[7] , 
        \byte_out_a_8_1_0_4[7] , N_520, N_514, N_515, 
        \byte_out_a_8_1_0_3[7] , N_522, N_420, N_517, 
        \state_a_7_i_0_3[2] , N_641, \state_a_7_i_0_1[2] , N_642, 
        \byte_out_a_8_i_i_a2_0[5] , N_647, N_325, 
        \state_a_7_i_0_a7_3_1[2] , \state_a_7_i_0_a7_3_0[2] , 
        \state_a_7_i_0_a7_0_1[0] , \state_a_7_i_0_a7_0_0[0] , 
        \byte_out_a_8_1_0_a7_8_0[7] , \byte_out_a_8_1_0_a7_1[6] , 
        \byte_out_a_8_1_0_a7_1_2[6] , \byte_out_a_8_1_0_a7_1_1[6] , 
        N_454, \byte_out_a_8_1_0_a7_3_0[6] , N_419, 
        \byte_out_a_8_1_0_a7_6_0[6] , \byte_out_a_8_i_i_a7_0[5] , 
        \byte_out_a_8_i_i_a7_0_0[5] , N_466, \state_a_7_i_0_0[0] , 
        N_481, N_618, \byte_out_a_8_i_i_a7_5_0[5] , 
        \byte_out_a_8_i_i_a7_8_1[5] , \byte_out_a_8_i_i_a7_9_0[5] , 
        \byte_out_a_8_i_i_a7_2_0[4] , \byte_out_a_8_i_i_a7_4_0[4] , 
        \byte_out_a_8_i_i_a7_5_0[4] , \byte_out_a_8_i_i_a7_6_0[4] , 
        \byte_out_a_8_i_i_a7_8_1[4] , \byte_out_a_8_i_i_a7_3_0[5] , 
        N_364, \byte_out_a_8_i_i_a7_1_0[2] , 
        \byte_out_a_8_i_i_a7_3_0[2] , \byte_out_a_8_i_i_a7_5_0[2] , 
        \byte_out_a_8_i_i_a7_11_0[2] , \byte_out_a_8_i_i_a7_5_0[1] , 
        \byte_out_a_8_i_i_a7_9_0[1] , byte_tracker_a_7_0_0_a7_2_0, 
        \byte_out_a_8_i_i_a7_0[2] , N_690, 
        \byte_out_a_8_i_i_a2_5_1[2] , \byte_out_a_8_i_i_a2_5_0[2] , 
        \byte_out_a_8_1_0_7[6] , \byte_out_a_8_1_0_4[6] , 
        \byte_out_a_8_1_0_5[6] , N_530, N_529, \byte_out_a_8_1_0_0[6] , 
        \byte_out_a_8_1_0_a7_7_0[6] , N_697, N_531, 
        \byte_out_a_8_1_0_3[6] , N_483, N_524, \byte_out_a_8_1_0_2[6] , 
        N_527, \byte_out_a_8_i_i_a7_6_0[2] , \byte_out_a_8_i_i_8[1] , 
        \byte_out_a_8_i_i_1[1] , N_536, \byte_out_a_8_i_i_4[1] , 
        \byte_out_a_8_i_i_7[1] , N_590, N_594, \byte_out_a_8_i_i_2[1] , 
        \byte_out_a_8_i_i_6[1] , N_589, N_588, 
        \byte_out_a_8_i_i_1_0[1] , N_429, N_592, N_593, N_674, N_595, 
        byte_tracker_a_7_0_0_4, N_622, N_625, byte_tracker_a_7_0_0_1, 
        N_693, N_664, N_624, byte_tracker_a_7_0_0_0, N_487, 
        \byte_out_a_8_i_i_8[4] , N_452, N_546, \byte_out_a_8_i_i_5[4] , 
        \byte_out_a_8_i_i_7[4] , N_548, N_547, \byte_out_a_8_i_i_2[4] , 
        \byte_out_a_8_i_i_6[4] , N_556, N_550, \byte_out_a_8_i_i_0[4] , 
        N_714, N_555, N_728, N_557, N_551, \byte_out_a_8_i_i_10[5] , 
        \byte_out_a_8_i_i_4[5] , \byte_out_a_8_i_i_3[5] , 
        \byte_out_a_8_i_i_7[5] , N_544, N_542, \byte_out_a_8_i_i_1[5] , 
        \byte_out_a_8_i_i_6[5] , N_535, N_534, \byte_out_a_8_i_i_5[5] , 
        N_506, N_543, N_692, N_662, N_540, byte_tracker_a_7_0_0_o2_2_0, 
        \config_cntr_b[0]_net_1 , \byte_out_a_8_i_i_o2_3_1[5] , N_158, 
        N_649, byte_tracker_a_7_0_0_a7_3_0, N_410, 
        \byte_out_a_8_1_0_a2_0[7] , \byte_out_a_8_i_i_a7_6_0[1] , 
        \byte_out_a_8_i_i_a7_8_0[2] , \byte_out_a_8_i_i_14[2] , 
        \byte_out_a_8_i_i_8[2] , \byte_out_a_8_i_i_7[2] , 
        \byte_out_a_8_i_i_11[2] , N_579, N_585, 
        \byte_out_a_8_i_i_6[2] , \byte_out_a_8_i_i_10[2] , N_432, 
        N_574, \byte_out_a_8_i_i_3[2] , \byte_out_a_8_i_i_9[2] , N_577, 
        \byte_out_a_8_i_i_1[2] , N_582, N_581, N_583, N_580, N_829, 
        N_573, N_427, N_576, N_163, \rst_cntr[5]_net_1 , N_694, N_663, 
        N_453, N_691, N_672, N_172, N_9_0, N_12, byte_tracker_a_7, 
        N_621, N_18, N_15, \byte_out_a_8[6] , N_679, N_667, N_441_i, 
        N_851, N_417, N_686, N_668, N_485, N_425, N_484, 
        \rst_cntr[7]_net_1 , \rst_cntr[8]_net_1 , \rst_cntr[9]_net_1 , 
        N_665, N_179, N_712, N_638, N_402, N_643, N_30, N_147, N_637, 
        N_27, N_639, \byte_out_a_8[7] , N_654, N_653, N_149, N_502, 
        N_677, N_569_1, N_718, N_422, \byte_out_a_8[3] , N_36, 
        \byte_out_a_8_i_i_a7_0[1] , \byte_out_a_8_i_i_a7_0_0[1] , 
        N_326_tz, start_a_7_i_0_a7_0, N_473, N_725, N_34, 
        \byte_out_b_6[0] , \byte_out_a[0]_net_1 , \byte_out_b_6[1] , 
        \byte_out_a[1]_net_1 , \byte_out_b_6[2] , 
        \byte_out_a[2]_net_1 , \byte_out_b_6[3] , 
        \byte_out_a[3]_net_1 , \state_b_6[1] , \state_a[1]_net_1 , 
        \byte_out_b_6[4] , \byte_out_a[4]_net_1 , \byte_out_b_6[5] , 
        \byte_out_a[5]_net_1 , \state_b_6[0] , \state_a[0]_net_1 , 
        \state_b_6[2] , \state_a[2]_net_1 , N_682, N_450, N_719, N_650, 
        N_645, N_652, N_680, N_68, N_86, N_37, N_145, N_171, un74lto1, 
        un74lto0, un74lto2, N_323, N_651, N_409, N_412, N_661, N_33_i, 
        N_476_i, N_478_i, N_480_i, N_433, N_489_i, N_496_i, N_724, 
        \byte_out_b_6[6] , \byte_out_a[6]_net_1 , start_b_6, 
        start_a_net_1, N_460, N_509_i, N_503_i, N_477_i, N_439, N_141, 
        N_814_i, N_75, N_729, N_676, N_675, \byte_out_b_6[7] , 
        \byte_out_a[7]_net_1 , \config_cntr_a_86[6] , I_28_1, 
        \config_cntr_a_86[4] , I_30, \config_cntr_a_86[2] , I_26_1, 
        N_498, begin_pass_a_net_1, next_a_net_1, 
        \config_cntr_a[0]_net_1 , \config_cntr_a[1]_net_1 , 
        \config_cntr_a[2]_net_1 , \config_cntr_a[3]_net_1 , 
        \config_cntr_a[4]_net_1 , \config_cntr_a[5]_net_1 , 
        \config_cntr_a[6]_net_1 , \DWACT_ADD_CI_0_partial_sum[0] , 
        I_27, I_24, I_29, GND, VCC;
    
    AX1 \rst_cntr_RNO[10]  (.A(N_439), .B(\rst_cntr[9]_net_1 ), .C(
        ss_b11lto10), .Y(N_141));
    XOR2 un1_config_cntr_b_7_I_28 (.A(\config_cntr_b[6]_net_1 ), .B(
        \DWACT_ADD_CI_0_g_array_11[0] ), .Y(I_28_1));
    OR2 \config_cntr_b_RNII7QB[1]  (.A(\config_cntr_b[3]_net_1 ), .B(
        \config_cntr_b[1]_net_1 ), .Y(N_324));
    NOR2B \config_cntr_b_RNIOK021_0[6]  (.A(
        \byte_out_a_8_i_i_a7_9_0[5] ), .B(N_655), .Y(N_543));
    AO1A \byte_out_a_RNO_8[7]  (.A(N_420), .B(
        \byte_out_a_8_1_0_a7_4_0[7] ), .C(N_517), .Y(
        \byte_out_a_8_1_0_2[7] ));
    NOR2B \config_cntr_b_RNILAQB[6]  (.A(\config_cntr_b[6]_net_1 ), .B(
        \config_cntr_b[1]_net_1 ), .Y(N_677));
    OR2B \config_cntr_b_RNIK9QB[4]  (.A(\config_cntr_b[4]_net_1 ), .B(
        \config_cntr_b[2]_net_1 ), .Y(N_466));
    DFN1E1P0 ss_b (.D(ss_b_1_sqmuxa_1), .CLK(GLA), .PRE(
        reset_pulse_0_RESET_1), .E(N_75), .Q(SS_c));
    AO1B \byte_out_a_RNO_15[3]  (.A(byte_out_3), .B(byte_out_cl[0]), 
        .C(byte_tracker_b_0_net_1), .Y(N_486));
    NOR2B \state_a_RNO_2[0]  (.A(spi_mode_config_0_begin_pass), .B(
        \state_b[1]_net_1 ), .Y(N_712));
    NOR3B \byte_out_a_RNO_5[7]  (.A(\config_cntr_b[3]_net_1 ), .B(
        N_658), .C(N_170), .Y(N_522));
    AO1 \byte_out_a_RNO_4[2]  (.A(\byte_out_a_8_i_i_a7_0[2] ), .B(
        N_829), .C(N_573), .Y(\byte_out_a_8_i_i_3[2] ));
    XNOR2 \rst_cntr_RNO[9]  (.A(\rst_cntr[9]_net_1 ), .B(N_439), .Y(
        N_814_i));
    OR2 \config_cntr_b_RNIJ8QB_0[2]  (.A(\config_cntr_b[3]_net_1 ), .B(
        \config_cntr_b[2]_net_1 ), .Y(N_160));
    XNOR2 \rst_cntr_RNO[3]  (.A(N_171), .B(\rst_cntr[3]_net_1 ), .Y(
        N_478_i));
    NOR3A \byte_out_a_RNO_19[4]  (.A(spi_mode_config_0_byte_out[4]), 
        .B(\config_cntr_b[4]_net_1 ), .C(\config_cntr_b[6]_net_1 ), .Y(
        \byte_out_a_8_i_i_a7_8_1[4] ));
    AO1A \byte_out_a_RNO_8[4]  (.A(N_180), .B(
        \byte_out_a_8_i_i_a7_5_0[4] ), .C(N_551), .Y(
        \byte_out_a_8_i_i_0[4] ));
    AND2 un1_config_cntr_b_7_I_40 (.A(\config_cntr_b[2]_net_1 ), .B(
        \config_cntr_b[3]_net_1 ), .Y(\DWACT_ADD_CI_0_pog_array_1[0] ));
    AO1 \byte_out_a_RNO_5[4]  (.A(\byte_out_a_8_i_i_a7_2_0[4] ), .B(
        N_728), .C(N_557), .Y(\byte_out_a_8_i_i_2[4] ));
    NOR2B \byte_out_a_RNO_18[4]  (.A(spi_mode_config_0_byte_out[4]), 
        .B(\state_b[0]_net_1 ), .Y(\byte_out_a_8_i_i_a7_4_0[4] ));
    NOR3B \byte_out_a_RNO_29[0]  (.A(N_664), .B(N_718), .C(N_170), .Y(
        N_609));
    NOR2A \config_cntr_b_RNIBMKN[6]  (.A(N_160), .B(N_325), .Y(N_691));
    NOR2A \byte_out_a_RNO_33[0]  (.A(\config_cntr_b[5]_net_1 ), .B(
        \config_cntr_b[1]_net_1 ), .Y(\byte_out_a_8_1_i_a7_15_0[0] ));
    OR3 \byte_out_a_RNO_1[3]  (.A(N_560), .B(N_561), .C(
        \byte_out_a_8_1_0_1[3] ), .Y(\byte_out_a_8_1_0_9[3] ));
    OR3 \byte_out_a_RNO_1[2]  (.A(N_536), .B(N_577), .C(
        \byte_out_a_8_i_i_1[2] ), .Y(\byte_out_a_8_i_i_9[2] ));
    AO1A start_b_RNO (.A(N_150), .B(byte_m2_e_2), .C(start_a_net_1), 
        .Y(start_b_6));
    OA1 \config_cntr_b_RNIMFOL2[6]  (.A(N_654), .B(N_653), .C(
        \byte_out_a_8_i_i_a7_2_0[5] ), .Y(N_536));
    NOR2 \byte_out_a_RNO_10[7]  (.A(N_180), .B(
        \config_cntr_b[1]_net_1 ), .Y(\byte_out_a_8_1_0_a7_8_0[7] ));
    NOR2A \config_cntr_a_RNO[2]  (.A(I_26_1), .B(N_179), .Y(
        \config_cntr_a_86[2] ));
    AO1 \byte_out_a_RNO_6[2]  (.A(N_427), .B(
        spi_mode_config_0_byte_out[2]), .C(N_576), .Y(
        \byte_out_a_8_i_i_1[2] ));
    NOR2 \byte_out_a_RNO_11[1]  (.A(N_364), .B(N_180), .Y(
        \byte_out_a_8_i_i_a7_9_0[1] ));
    NOR2B \byte_out_a_RNO_3[5]  (.A(N_427), .B(
        spi_mode_config_0_byte_out[5]), .Y(N_535));
    DFN0C0 \byte_out_a[4]  (.D(N_12), .CLK(state_q_89), .CLR(
        reset_pulse_0_RESET_3), .Q(\byte_out_a[4]_net_1 ));
    NOR3A \rst_cntr_RNIS2IG[10]  (.A(ss_b11lto10), .B(ds7_c), .C(
        \state_b[2]_net_1 ), .Y(byte_m2_e_1));
    DFN1E0C0 \rst_cntr[6]  (.D(N_496_i), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_0), .E(N_173), .Q(ss_b11lto6));
    NOR2A \byte_out_a_RNO_18[2]  (.A(N_648), .B(N_160), .Y(
        \byte_out_a_8_i_i_a7_11_0[2] ));
    NOR2B \byte_out_a_RNO_15[1]  (.A(\byte_out_a_8_i_i_a7_5_0[1] ), .B(
        N_674), .Y(N_592));
    NOR2B \state_a_RNO_4[2]  (.A(N_684), .B(N_715), .Y(
        \state_a_7_i_0_a7_3_1[2] ));
    AO1 \byte_out_a_RNO_4[3]  (.A(\byte_out_a_8_1_0_a7_5_0[3] ), .B(
        N_684), .C(N_563), .Y(\byte_out_a_8_1_0_3[3] ));
    NOR3 \state_a_RNO[2]  (.A(N_643), .B(N_639), .C(
        \state_a_7_i_0_3[2] ), .Y(N_27));
    NOR2A byte_tracker_b_RNIRUO6 (.A(byte_tracker_b_net_1), .B(N_150), 
        .Y(N_665));
    NOR2A \config_cntr_b_RNIQMVN[0]  (.A(N_172), .B(N_150), .Y(N_652));
    NOR3C \byte_out_a_RNO_6[7]  (.A(\config_cntr_b[3]_net_1 ), .B(
        N_658), .C(\byte_out_a_8_1_0_a7_8_0[7] ), .Y(N_523));
    NOR2B \byte_out_a_RNO_6[0]  (.A(N_686), .B(N_170), .Y(N_602));
    OR2A \byte_out_a_RNO_25[0]  (.A(\config_cntr_b[2]_net_1 ), .B(
        \config_cntr_b[3]_net_1 ), .Y(N_462));
    NOR2B \byte_out_a_RNO_5[3]  (.A(N_429), .B(
        spi_mode_config_0_byte_out[3]), .Y(N_560));
    NOR3 \byte_out_a_RNO[0]  (.A(\byte_out_a_8_1_i_12[0] ), .B(
        \byte_out_a_8_1_i_11[0] ), .C(\byte_out_a_8_1_i_16[0] ), .Y(
        N_36));
    OR3C \rst_cntr_RNIEU24[2]  (.A(un74lto1), .B(un74lto0), .C(
        un74lto2), .Y(N_171));
    DFN1E0C0 \rst_cntr[9]  (.D(N_814_i), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_0), .E(N_173), .Q(\rst_cntr[9]_net_1 ));
    NOR2A \byte_out_a_RNO_10[5]  (.A(N_466), .B(N_324), .Y(
        \byte_out_a_8_i_i_a7_0_0[5] ));
    NOR2A \config_cntr_b_RNI9RQD1[5]  (.A(\byte_out_a_8_1_0_a7_3_0[6] )
        , .B(N_420), .Y(N_528));
    NOR3C \byte_out_a_RNO_12[7]  (.A(N_325), .B(N_647), .C(
        \byte_out_a_8_1_0_a7_2_1[7] ), .Y(N_517));
    OA1A \byte_out_b_RNO[0]  (.A(byte_m2_e_2), .B(N_150_0), .C(
        \byte_out_a[0]_net_1 ), .Y(\byte_out_b_6[0] ));
    NOR2B \byte_out_a_RNO_23[0]  (.A(N_687), .B(N_664), .Y(N_615));
    AO1 \byte_out_a_RNO_18[0]  (.A(N_610_1), .B(N_648), .C(N_609), .Y(
        \byte_out_a_8_1_i_1[0] ));
    NOR2A \state_a_RNO_0[1]  (.A(N_481), .B(\state_b[1]_net_1 ), .Y(
        N_637));
    NOR3C \byte_out_a_RNO_5[2]  (.A(N_655), .B(N_417), .C(N_713), .Y(
        N_577));
    DFN0C0 \state_a[2]  (.D(N_27), .CLK(state_q_89), .CLR(
        reset_pulse_0_RESET_3), .Q(\state_a[2]_net_1 ));
    AO1 \byte_out_a_RNO_7[1]  (.A(\byte_out_a_8_i_i_a7_9_0[1] ), .B(
        N_674), .C(N_595), .Y(\byte_out_a_8_i_i_1_0[1] ));
    OR3B \rst_cntr_RNI5N9C[8]  (.A(\rst_cntr[7]_net_1 ), .B(
        \rst_cntr[8]_net_1 ), .C(N_409), .Y(N_439));
    NOR2B \config_cntr_b_RNIBIT71[5]  (.A(N_719), .B(N_655), .Y(N_612));
    AO1 \byte_out_a_RNO_8[5]  (.A(\byte_out_a_8_i_i_a7_3_0[5] ), .B(
        N_696), .C(N_543), .Y(\byte_out_a_8_i_i_3[5] ));
    NOR2A \byte_out_a_RNO_22[3]  (.A(spi_mode_config_0_byte_out[3]), 
        .B(N_150), .Y(\byte_out_a_8_1_0_a7_4_0[3] ));
    XOR2 un1_config_cntr_b_7_I_29 (.A(\config_cntr_b[5]_net_1 ), .B(
        \DWACT_ADD_CI_0_g_array_12_1[0] ), .Y(I_29));
    OR2 \state_b_RNISSMO2[1]  (.A(\byte_out_a_8_1_0_o2_1_1[7] ), .B(
        \byte_out_a_8_1_0_o2_1_0[7] ), .Y(N_429));
    NOR2 \byte_out_a_RNO_22[2]  (.A(\config_cntr_b[6]_net_1 ), .B(
        \config_cntr_b[5]_net_1 ), .Y(\byte_out_a_8_i_i_a2_5_1[2] ));
    NOR2B un1_config_cntr_b_7_I_32 (.A(\DWACT_ADD_CI_0_TMP[0] ), .B(
        \config_cntr_b[1]_net_1 ), .Y(\DWACT_ADD_CI_0_g_array_1[0] ));
    XOR2 un1_config_cntr_b_7_I_30 (.A(\config_cntr_b[4]_net_1 ), .B(
        \DWACT_ADD_CI_0_g_array_2[0] ), .Y(I_30));
    NOR2A \byte_out_a_RNO_24[3]  (.A(spi_mode_config_0_byte_out[3]), 
        .B(byte_tracker_b_net_1), .Y(\byte_out_a_8_1_0_a7_6_1[3] ));
    AO1C ss_a_RNI43V91 (.A(N_150), .B(byte_m2_e_2), .C(ss_a_net_1), .Y(
        N_86));
    OR3 \byte_out_a_RNO_2[4]  (.A(N_452), .B(N_546), .C(
        \byte_out_a_8_i_i_5[4] ), .Y(\byte_out_a_8_i_i_8[4] ));
    NOR2B un1_config_cntr_b_7_I_35 (.A(\DWACT_ADD_CI_0_g_array_2[0] ), 
        .B(\DWACT_ADD_CI_0_pog_array_1_1[0] ), .Y(
        \DWACT_ADD_CI_0_g_array_11[0] ));
    AO1A \state_b_RNI5LBH1[0]  (.A(ds7_c), .B(N_412), .C(N_680), .Y(
        N_450));
    OR2A \config_cntr_b_RNIH6QB_0[1]  (.A(\config_cntr_b[1]_net_1 ), 
        .B(\config_cntr_b[2]_net_1 ), .Y(N_419));
    NOR2A \state_b_RNIFBJP[0]  (.A(N_671), .B(N_410), .Y(N_680));
    DFN0C0 \byte_out_a[0]  (.D(N_36), .CLK(state_q_89), .CLR(
        reset_pulse_0_RESET_3), .Q(\byte_out_a[0]_net_1 ));
    OA1 \rst_cntr_RNI3N7U[6]  (.A(N_375), .B(N_659), .C(byte_m2_e_1), 
        .Y(byte_m2_e_2));
    NOR3A \config_cntr_b_RNI2R3E[0]  (.A(\config_cntr_b[0]_net_1 ), .B(
        N_150), .C(N_158), .Y(N_650));
    DFN1E1C0 \byte_out_b[4]  (.D(\byte_out_b_6[4] ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_1), .E(N_86), .Q(
        spi_mode_config_0_byte_out[4]));
    NOR2B \byte_out_a_RNO_27[2]  (.A(N_180), .B(
        \config_cntr_b[3]_net_1 ), .Y(\byte_out_a_8_i_i_a7_5_0[2] ));
    XOR2 un1_config_cntr_b_7_I_26 (.A(\config_cntr_b[2]_net_1 ), .B(
        \DWACT_ADD_CI_0_g_array_1[0] ), .Y(I_26_1));
    NOR2B \byte_out_a_RNO_14[4]  (.A(\byte_out_a_8_i_i_a7_4_0[4] ), .B(
        N_691), .Y(N_551));
    NOR2A \byte_out_a_RNO_10[6]  (.A(\config_cntr_b[3]_net_1 ), .B(
        \config_cntr_b[1]_net_1 ), .Y(\byte_out_a_8_1_0_a7_1[6] ));
    DFN0C0 \config_cntr_a[2]  (.D(\config_cntr_a_86[2] ), .CLK(
        state_q_89), .CLR(reset_pulse_0_RESET_4), .Q(
        \config_cntr_a[2]_net_1 ));
    AO1A \state_b_RNO[2]  (.A(N_150_0), .B(byte_m2_e_2), .C(
        \state_a[2]_net_1 ), .Y(\state_b_6[2] ));
    NOR2A \state_b_RNICBAO[2]  (.A(N_694), .B(N_407), .Y(N_651));
    NOR3 \state_a_RNO_5[2]  (.A(byte_tracker_b_0_net_1), .B(
        \state_b[2]_net_1 ), .C(\state_b[1]_net_1 ), .Y(N_641));
    NOR3C \byte_out_a_RNO_9[4]  (.A(N_674), .B(N_485), .C(
        \config_cntr_b[5]_net_1 ), .Y(N_546));
    AO1 \byte_out_a_RNO_1[5]  (.A(\byte_out_a_8_i_i_a7_0[5] ), .B(
        N_506), .C(N_538), .Y(\byte_out_a_8_i_i_5[5] ));
    NOR3C ss_b_RNO_4 (.A(\rst_cntr[3]_net_1 ), .B(\rst_cntr[4]_net_1 ), 
        .C(N_449), .Y(m42_0_a7_0_1));
    NOR3C \byte_out_a_RNO_12[4]  (.A(\config_cntr_b[1]_net_1 ), .B(
        \config_cntr_b[5]_net_1 ), .C(N_686), .Y(N_557));
    OA1A \state_b_RNIUH6M[0]  (.A(N_454), .B(N_645), .C(
        \state_b[0]_net_1 ), .Y(N_663));
    OR2A \config_cntr_b_RNINCQB_0[5]  (.A(\config_cntr_b[5]_net_1 ), 
        .B(\config_cntr_b[4]_net_1 ), .Y(N_420));
    AX1C \rst_cntr_RNO[2]  (.A(un74lto1), .B(un74lto0), .C(un74lto2), 
        .Y(N_476_i));
    NOR3A \byte_out_a_RNO_17[0]  (.A(\byte_out_a_8_1_i_a7_13_1[0] ), 
        .B(N_163), .C(N_422), .Y(N_611));
    NOR2B \config_cntr_b_RNITE3S[5]  (.A(N_648), .B(
        \config_cntr_b[5]_net_1 ), .Y(N_728));
    NOR2A \config_cntr_b_RNIP628_0[0]  (.A(byte_tracker_b_net_1), .B(
        \config_cntr_b[0]_net_1 ), .Y(\byte_out_a_8_1_0_a2_0[7] ));
    NOR2B \byte_out_a_RNO_7[0]  (.A(N_718), .B(N_172), .Y(N_601));
    OAI1 \byte_out_a_RNO_26[0]  (.A(byte_tracker_b_0_net_1), .B(
        \state_b[2]_net_1 ), .C(orbit_control_0_tx_enable), .Y(N_498));
    NOR2A \state_b_RNIIP46[0]  (.A(N_163), .B(\state_b[0]_net_1 ), .Y(
        N_694));
    OR2A \config_cntr_b_RNINCQB_1[5]  (.A(\config_cntr_b[4]_net_1 ), 
        .B(\config_cntr_b[5]_net_1 ), .Y(N_423));
    NOR3C \byte_out_a_RNO_4[6]  (.A(N_728), .B(N_484), .C(
        \byte_out_a_8_1_0_a7_1[6] ), .Y(N_524));
    NOR2B \byte_out_a_RNO_14[2]  (.A(\byte_out_a_8_i_i_a7_3_0[2] ), .B(
        N_686), .Y(N_576));
    AO1 \byte_out_a_RNO_9[3]  (.A(N_730), .B(N_715), .C(N_569), .Y(
        \byte_out_a_8_1_0_7[3] ));
    NOR2 \byte_out_a_RNO_23[2]  (.A(\config_cntr_b[2]_net_1 ), .B(
        \config_cntr_b[1]_net_1 ), .Y(\byte_out_a_8_i_i_a2_5_0[2] ));
    DFN1E0C0 \rst_cntr[7]  (.D(N_503_i), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_0), .E(N_173), .Q(\rst_cntr[7]_net_1 ));
    NOR2A \byte_out_a_RNO_17[5]  (.A(spi_mode_config_0_byte_out[5]), 
        .B(N_160), .Y(\byte_out_a_8_i_i_a7_8_1[5] ));
    DFN1E1C0 start_b (.D(start_b_6), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_1), .E(N_86), .Q(spi_mode_config_0_start));
    OR3 \rst_cntr_RNIN734[4]  (.A(\rst_cntr[3]_net_1 ), .B(
        \rst_cntr[4]_net_1 ), .C(\rst_cntr[5]_net_1 ), .Y(N_399));
    NOR2A \config_cntr_b_RNIKG021[2]  (.A(N_648), .B(N_364), .Y(N_686));
    NOR2A \byte_out_a_RNO_11[5]  (.A(N_419), .B(N_325), .Y(N_724));
    NOR2A \byte_out_a_RNO_13[4]  (.A(N_648), .B(
        \config_cntr_b[2]_net_1 ), .Y(\byte_out_a_8_i_i_a7_5_0[4] ));
    DFN1E1C0 \state_b[1]  (.D(\state_b_6[1] ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_0), .E(N_86), .Q(\state_b[1]_net_1 ));
    NOR2A \byte_out_a_RNO_16[6]  (.A(spi_mode_config_0_byte_out[6]), 
        .B(N_324), .Y(\byte_out_a_8_1_0_a7_6_0[6] ));
    NOR3B ss_b_RNO_2 (.A(N_8), .B(ss_b11lto10), .C(m42_0_a7_1_1), .Y(
        N_9));
    GND GND_i (.Y(GND));
    OR2A \state_b_RNIPPJ4_0[0]  (.A(\state_b[0]_net_1 ), .B(
        \state_b[1]_net_1 ), .Y(N_150));
    NOR3B \config_cntr_b_RNI30OJ1[1]  (.A(N_658), .B(N_324), .C(N_180), 
        .Y(N_538));
    AO1 byte_tracker_a_RNO_6 (.A(N_693), .B(N_664), .C(N_624), .Y(
        byte_tracker_a_7_0_0_1));
    NOR2 \byte_out_b_RNIF6Q7[0]  (.A(spi_mode_config_0_byte_out[0]), 
        .B(N_150), .Y(N_718));
    DFN1E1C0 \byte_out_b[0]  (.D(\byte_out_b_6[0] ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_1), .E(N_86), .Q(
        spi_mode_config_0_byte_out[0]));
    NOR2A \byte_out_a_RNO_26[3]  (.A(spi_mode_config_0_byte_out[3]), 
        .B(N_160), .Y(\byte_out_a_8_1_0_a7_7_0[3] ));
    DFN0C0 \byte_out_a[5]  (.D(N_9_0), .CLK(state_q_89), .CLR(
        reset_pulse_0_RESET_3), .Q(\byte_out_a[5]_net_1 ));
    OR3 \byte_out_a_RNO_18[1]  (.A(N_667), .B(N_668), .C(N_692), .Y(
        N_473));
    DFN1E0C0 \rst_cntr[5]  (.D(N_489_i), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_0), .E(N_173), .Q(\rst_cntr[5]_net_1 ));
    NOR2A byte_tracker_b_0_RNI9FH7 (.A(\config_cntr_b[1]_net_1 ), .B(
        byte_tracker_b_0_net_1), .Y(N_714));
    OR3 \byte_out_a_RNO_7[2]  (.A(N_582), .B(N_581), .C(N_583), .Y(
        \byte_out_a_8_i_i_8[2] ));
    OR2 begin_pass_b_RNI1R16 (.A(ds6_c), .B(
        spi_mode_config_0_begin_pass), .Y(byte_tracker_a_7_0_0_o2_0_1));
    OR2A \config_cntr_b_RNIJ8QB[2]  (.A(\config_cntr_b[3]_net_1 ), .B(
        \config_cntr_b[2]_net_1 ), .Y(N_364));
    XAI1 \config_cntr_b_RNI1TBJ[0]  (.A(byte_tracker_b_0_net_1), .B(
        \config_cntr_b[0]_net_1 ), .C(N_454), .Y(N_172));
    OR2A \state_b_RNIQQJ4[2]  (.A(\state_b[0]_net_1 ), .B(
        \state_b[2]_net_1 ), .Y(N_402));
    DFN1C0 \rst_cntr[0]  (.D(N_477_i), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_3), .Q(un74lto0));
    OR2 \byte_out_a_RNO_6[5]  (.A(N_724), .B(N_692), .Y(N_506));
    AO1 \state_b_RNI3HE34[1]  (.A(\byte_out_a_8_i_i_a2_0[5] ), .B(
        N_719), .C(N_432), .Y(N_452));
    OR3 \byte_out_a_RNO_0[1]  (.A(N_590), .B(N_594), .C(
        \byte_out_a_8_i_i_2[1] ), .Y(\byte_out_a_8_i_i_7[1] ));
    NOR3 \state_b_RNI7PAO2[2]  (.A(N_150), .B(N_158), .C(N_453), .Y(
        N_68));
    NOR2A \byte_out_a_RNO_10[1]  (.A(\byte_out_a_8_i_i_a7_6_0[1] ), .B(
        N_431), .Y(N_593));
    OR3 \byte_out_a_RNO[5]  (.A(\byte_out_a_8_i_i_6[5] ), .B(
        \byte_out_a_8_i_i_5[5] ), .C(\byte_out_a_8_i_i_10[5] ), .Y(
        N_9_0));
    DFN1E0C0 byte_tracker_b (.D(byte_tracker_a_net_1), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_0), .E(ss_a_net_1), .Q(
        byte_tracker_b_net_1));
    NOR3A \byte_out_a_RNO_20[2]  (.A(N_658), .B(N_180), .C(N_324), .Y(
        N_585));
    NOR2B \byte_out_a_RNO_11[6]  (.A(byte_out_6), .B(byte_out_cl[0]), 
        .Y(\byte_out_a_8_1_0_a7_7_0[6] ));
    NOR2B \byte_out_a_RNO_4[5]  (.A(\byte_out_a_8_i_i_a7_0_0[5] ), .B(
        N_728), .Y(N_534));
    DFN0C0 \byte_out_a[1]  (.D(N_18), .CLK(state_q_89), .CLR(
        reset_pulse_0_RESET_3), .Q(\byte_out_a[1]_net_1 ));
    NOR2A \config_cntr_b_RNIRC3S[5]  (.A(N_647), .B(N_170), .Y(N_662));
    NOR3C \byte_out_a_RNO_4[1]  (.A(\config_cntr_b[3]_net_1 ), .B(
        N_658), .C(\config_cntr_b[5]_net_1 ), .Y(N_594));
    OR3B \byte_out_a_RNO_3[6]  (.A(N_173), .B(N_433), .C(N_376), .Y(
        N_483));
    OR2 ss_b_RNO_6 (.A(ss_b11lto6), .B(N_375), .Y(N_8));
    OA1A \state_b_RNO[1]  (.A(byte_m2_e_2), .B(N_150_0), .C(
        \state_a[1]_net_1 ), .Y(\state_b_6[1] ));
    OR3 \byte_out_a_RNO_9[0]  (.A(N_612), .B(N_611), .C(
        \byte_out_a_8_1_i_1[0] ), .Y(\byte_out_a_8_1_i_10[0] ));
    NOR2B \byte_out_a_RNO_16[1]  (.A(byte_out_1), .B(byte_out_cl[0]), 
        .Y(\byte_out_a_8_i_i_a7_6_0[1] ));
    DFN0C0 \config_cntr_a[3]  (.D(I_24), .CLK(state_q_89), .CLR(
        reset_pulse_0_RESET_4), .Q(\config_cntr_a[3]_net_1 ));
    OR3 \byte_out_a_RNO_1[4]  (.A(N_556), .B(N_550), .C(
        \byte_out_a_8_i_i_0[4] ), .Y(\byte_out_a_8_i_i_6[4] ));
    XOR2 \config_cntr_b_RNIH6QB[1]  (.A(\config_cntr_b[2]_net_1 ), .B(
        \config_cntr_b[1]_net_1 ), .Y(N_441_i));
    OR3 \byte_out_a_RNO_2[0]  (.A(\byte_out_a_8_1_i_10[0] ), .B(
        \byte_out_a_8_1_i_9[0] ), .C(\byte_out_a_8_1_i_13[0] ), .Y(
        \byte_out_a_8_1_i_16[0] ));
    NOR2B \byte_out_a_RNO_25[3]  (.A(\byte_out_a_8_1_0_a7_7_0[3] ), .B(
        N_693), .Y(N_566));
    NOR3C \byte_out_a_RNO_13[3]  (.A(\config_cntr_b[3]_net_1 ), .B(
        \config_cntr_b[6]_net_1 ), .C(\byte_out_a_8_1_0_a7_4_0[3] ), 
        .Y(N_563));
    DFN1E0C0 \rst_cntr[8]  (.D(N_509_i), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_0), .E(N_173), .Q(\rst_cntr[8]_net_1 ));
    NOR3B \byte_out_a_RNO_15[2]  (.A(\config_cntr_b[3]_net_1 ), .B(
        N_658), .C(N_420), .Y(N_582));
    OR3A \state_b_RNI7OT6[2]  (.A(\state_b[0]_net_1 ), .B(
        \state_b[2]_net_1 ), .C(\state_b[1]_net_1 ), .Y(N_173));
    DFN1E0C0 \rst_cntr[2]  (.D(N_476_i), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_0), .E(N_173), .Q(un74lto2));
    OR3 byte_tracker_b_0_RNISV3G2 (.A(N_691), .B(N_672), .C(N_172), .Y(
        N_453));
    AO1A \byte_out_a_RNO_5[1]  (.A(N_180), .B(N_658), .C(N_593), .Y(
        \byte_out_a_8_i_i_2[1] ));
    NOR2A \byte_out_a_RNO_11[4]  (.A(N_419), .B(
        \config_cntr_b[3]_net_1 ), .Y(\byte_out_a_8_i_i_a7_2_0[4] ));
    XOR2 un1_config_cntr_b_7_I_20 (.A(\config_cntr_b[0]_net_1 ), .B(
        N_68), .Y(\DWACT_ADD_CI_0_partial_sum[0] ));
    NOR3C \byte_out_a_RNO_3[3]  (.A(N_160), .B(
        \config_cntr_b[6]_net_1 ), .C(\byte_out_a_8_1_0_a7_3_0[3] ), 
        .Y(N_562));
    DFN1E0C0 \rst_cntr[10]  (.D(N_141), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_2), .E(N_173), .Q(ss_b11lto10));
    OR2 \byte_out_a_RNO_9[6]  (.A(\config_cntr_b[4]_net_1 ), .B(
        \config_cntr_b[2]_net_1 ), .Y(N_484));
    AO1 \byte_out_a_RNO_16[5]  (.A(N_692), .B(N_662), .C(N_540), .Y(
        \byte_out_a_8_i_i_1[5] ));
    DFN1E1P0 \state_b[0]  (.D(\state_b_6[0] ), .CLK(GLA), .PRE(
        reset_pulse_0_RESET_0), .E(N_86), .Q(\state_b[0]_net_1 ));
    NOR2B \byte_out_a_RNO_3[4]  (.A(N_427), .B(
        spi_mode_config_0_byte_out[4]), .Y(N_548));
    OR2B \config_cntr_b_RNIPEQB[6]  (.A(\config_cntr_b[6]_net_1 ), .B(
        \config_cntr_b[5]_net_1 ), .Y(N_454));
    NOR2A \config_cntr_b_RNILAQB_0[6]  (.A(\config_cntr_b[6]_net_1 ), 
        .B(\config_cntr_b[1]_net_1 ), .Y(\byte_out_a_8_i_i_a7_2_0[5] ));
    NOR3B \byte_out_a_RNO_7[4]  (.A(N_324), .B(N_687), .C(
        \config_cntr_b[2]_net_1 ), .Y(N_550));
    NOR2A \byte_out_a_RNO_13[5]  (.A(N_364), .B(N_170), .Y(
        \byte_out_a_8_i_i_a7_3_0[5] ));
    OAI1 \rst_cntr_RNIEU24_0[2]  (.A(un74lto1), .B(un74lto0), .C(
        un74lto2), .Y(N_448));
    DFN0C0 \state_a[1]  (.D(N_147), .CLK(state_q_89), .CLR(
        reset_pulse_0_RESET_3), .Q(\state_a[1]_net_1 ));
    NOR3B begin_pass_b_RNI498P (.A(orbit_control_0_tx_enable), .B(
        spi_mode_config_0_begin_pass), .C(N_402), .Y(N_638));
    NOR3B \byte_out_a_RNO_19[2]  (.A(\config_cntr_b[3]_net_1 ), .B(
        \byte_out_a_8_i_i_a7_6_0[2] ), .C(byte_tracker_b_0_net_1), .Y(
        N_579));
    AO1D byte_tracker_b_0_RNIBUPJ (.A(\state_b[2]_net_1 ), .B(
        byte_tracker_b_0_net_1), .C(orbit_control_0_tx_enable), .Y(
        \state_a_7_i_0_o2_0[0] ));
    NOR3A ss_b_RNO_7 (.A(N_448), .B(N_399), .C(N_375), .Y(m42_0_a7_1_1)
        );
    NOR2A \config_cntr_b_RNIKKNH_0[6]  (.A(\config_cntr_b[6]_net_1 ), 
        .B(N_170), .Y(\byte_out_a_8_i_i_a7_9_0[5] ));
    NOR2A \byte_out_a_RNO_16[4]  (.A(spi_mode_config_0_byte_out[4]), 
        .B(N_325), .Y(\byte_out_a_8_i_i_a7_6_0[4] ));
    DFN0C0 \config_cntr_a[1]  (.D(I_27), .CLK(state_q_89), .CLR(
        reset_pulse_0_RESET_3), .Q(\config_cntr_a[1]_net_1 ));
    NOR3A \byte_out_a_RNO_12[1]  (.A(N_696), .B(
        \config_cntr_b[4]_net_1 ), .C(\config_cntr_b[3]_net_1 ), .Y(
        N_595));
    NOR3 \state_b_RNITQS5[0]  (.A(\state_b[1]_net_1 ), .B(ds7_c), .C(
        \state_b[0]_net_1 ), .Y(N_671));
    DFN0C0 next_a (.D(N_145), .CLK(state_q_89), .CLR(
        reset_pulse_0_RESET), .Q(next_a_net_1));
    OR2B \config_cntr_b_RNIODQB[6]  (.A(\config_cntr_b[6]_net_1 ), .B(
        \config_cntr_b[4]_net_1 ), .Y(N_325));
    OR3 \byte_out_a_RNO_8[3]  (.A(N_528), .B(N_568), .C(N_570), .Y(
        \byte_out_a_8_1_0_8[3] ));
    OA1 byte_tracker_a_RNO_9 (.A(byte_tracker_a_7_0_0_o2_0_0_net_1), 
        .B(byte_tracker_a_7_0_0_o2_0_1), .C(
        byte_tracker_a_7_0_0_a7_2_0), .Y(N_624));
    OR2A byte_tracker_a_RNO_7 (.A(N_454), .B(\config_cntr_b[0]_net_1 ), 
        .Y(byte_tracker_a_7_0_0_o2_2_0));
    NOR3B \byte_out_a_RNO_28[2]  (.A(spi_mode_config_0_byte_out[2]), 
        .B(N_851), .C(N_160), .Y(N_580));
    OR3 \byte_out_a_RNO_11[0]  (.A(N_614), .B(N_615), .C(
        \byte_out_a_8_1_i_8[0] ), .Y(\byte_out_a_8_1_i_13[0] ));
    AO1 ss_b_RNO_9 (.A(un74lto0), .B(un74lto1), .C(un74lto2), .Y(N_449)
        );
    NOR2A \byte_out_a_RNO_11[3]  (.A(N_655), .B(N_170), .Y(
        \byte_out_a_8_1_0_a7_3_0[3] ));
    VCC VCC_i (.Y(VCC));
    AO1 \state_b_RNI0HMF2[1]  (.A(N_149), .B(\state_b[1]_net_1 ), .C(
        \byte_out_a_8_i_i_o7_0[2] ), .Y(N_432));
    OA1A \byte_out_b_RNO[6]  (.A(byte_m2_e_2), .B(N_150_0), .C(
        \byte_out_a[6]_net_1 ), .Y(\byte_out_b_6[6] ));
    NOR2A \byte_out_a_RNO_12[0]  (.A(N_655), .B(
        \config_cntr_b[1]_net_1 ), .Y(\byte_out_a_8_1_i_a7_2_0[0] ));
    AO1A \state_b_RNO[0]  (.A(N_150_0), .B(byte_m2_e_2), .C(
        \state_a[0]_net_1 ), .Y(\state_b_6[0] ));
    DFN1E1C0 \byte_out_b[5]  (.D(\byte_out_b_6[5] ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_1), .E(N_86), .Q(
        spi_mode_config_0_byte_out[5]));
    OR2B ss_b_RNO_0 (.A(ss_a_net_1), .B(N_173), .Y(N_75));
    OR3 \byte_out_a_RNO_10[3]  (.A(N_565), .B(N_571), .C(
        \byte_out_a_8_1_0_6[3] ), .Y(\byte_out_a_8_1_0_11[3] ));
    OR3 \state_b_RNIBP68[0]  (.A(\state_b[1]_net_1 ), .B(N_158), .C(
        \state_b[0]_net_1 ), .Y(N_422));
    OR2A byte_tracker_a_7_0_0_o2_0_0 (.A(ds4_c), .B(ds5_c), .Y(
        byte_tracker_a_7_0_0_o2_0_0_net_1));
    OR3 \byte_out_a_RNO_2[3]  (.A(\byte_out_a_8_1_0_8[3] ), .B(
        \byte_out_a_8_1_0_7[3] ), .C(\byte_out_a_8_1_0_11[3] ), .Y(
        \byte_out_a_8_1_0_14[3] ));
    OR3 \byte_out_a_RNO_0[0]  (.A(N_599), .B(N_600), .C(
        \byte_out_a_8_1_i_5[0] ), .Y(\byte_out_a_8_1_i_12[0] ));
    NOR2 \config_cntr_b_RNIH7EG[6]  (.A(N_325), .B(N_150), .Y(N_684));
    AO1 \byte_out_a_RNO_7[5]  (.A(\byte_out_a_8_i_i_a7_5_0[5] ), .B(
        N_674), .C(N_536), .Y(\byte_out_a_8_i_i_4[5] ));
    NOR2A \byte_out_a_RNO_14[1]  (.A(N_473), .B(N_150), .Y(
        \byte_out_a_8_i_i_a7_0_0[1] ));
    OR3 \byte_out_a_RNO_0[2]  (.A(N_432), .B(N_574), .C(
        \byte_out_a_8_i_i_3[2] ), .Y(\byte_out_a_8_i_i_10[2] ));
    DFN1E0C0 begin_pass_b (.D(begin_pass_a_net_1), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_1), .E(ss_a_net_1), .Q(
        spi_mode_config_0_begin_pass));
    AOI1B \byte_out_a_RNO_28[0]  (.A(byte_out_0), .B(byte_out_cl[0]), 
        .C(byte_tracker_b_0_net_1), .Y(\byte_out_a_8_1_i_a7_13_1[0] ));
    NOR3A \config_cntr_b_RNIBTQD1[3]  (.A(N_658), .B(N_180), .C(
        \config_cntr_b[3]_net_1 ), .Y(N_676));
    NOR2A \config_cntr_b_RNIFMT71[4]  (.A(N_686), .B(
        \config_cntr_b[4]_net_1 ), .Y(N_675));
    NOR2A \config_cntr_b_RNIHHNH[2]  (.A(\config_cntr_b[2]_net_1 ), .B(
        N_325), .Y(N_668));
    OA1A \rst_cntr_RNI40I9[6]  (.A(N_448), .B(N_399), .C(ss_b11lto6), 
        .Y(N_659));
    DFN1E0C0 \rst_cntr[3]  (.D(N_478_i), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_0), .E(N_173), .Q(\rst_cntr[3]_net_1 ));
    DFN1E1C0 \state_b[2]  (.D(\state_b_6[2] ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_0), .E(N_86), .Q(\state_b[2]_net_1 ));
    NOR2 \config_cntr_b_RNIKKNH_1[6]  (.A(N_170), .B(
        \config_cntr_b[6]_net_1 ), .Y(N_679));
    DFN1E0C0 \config_cntr_b[2]  (.D(\config_cntr_a[2]_net_1 ), .CLK(
        GLA), .CLR(reset_pulse_0_RESET_1), .E(ss_a_net_1), .Q(
        \config_cntr_b[2]_net_1 ));
    DFN0C0 start_a (.D(N_34), .CLK(state_q_89), .CLR(
        reset_pulse_0_RESET), .Q(start_a_net_1));
    DFN0C0 byte_tracker_a (.D(byte_tracker_a_7), .CLK(state_q_89), 
        .CLR(reset_pulse_0_RESET_3), .Q(byte_tracker_a_net_1));
    OR3 \byte_out_a_RNO_2[7]  (.A(N_523), .B(N_516), .C(
        \byte_out_a_8_1_0_2[7] ), .Y(\byte_out_a_8_1_0_5[7] ));
    NOR2B \state_b_RNIBGHF[1]  (.A(N_729), .B(\state_b[1]_net_1 ), .Y(
        N_730));
    NOR2A \state_a_RNO_3[2]  (.A(N_688), .B(N_160), .Y(
        \state_a_7_i_0_a7_3_0[2] ));
    OA1 \config_cntr_b_RNIIMLR2[1]  (.A(N_676), .B(N_675), .C(
        \config_cntr_b[1]_net_1 ), .Y(N_514));
    NOR2B \config_cntr_b_RNIJ8QB_1[2]  (.A(\config_cntr_b[3]_net_1 ), 
        .B(\config_cntr_b[2]_net_1 ), .Y(N_713));
    OA1 byte_tracker_a_RNO_1 (.A(N_719), .B(N_417), .C(N_650), .Y(
        N_621));
    OA1A \byte_out_b_RNO[2]  (.A(byte_m2_e_2), .B(N_150_0), .C(
        \byte_out_a[2]_net_1 ), .Y(\byte_out_b_6[2] ));
    AO1 \byte_out_a_RNO_10[4]  (.A(\byte_out_a_8_i_i_a7_6_0[4] ), .B(
        N_714), .C(N_555), .Y(\byte_out_a_8_i_i_5[4] ));
    OR3 \byte_out_a_RNO_0[7]  (.A(N_520), .B(N_514), .C(N_515), .Y(
        \byte_out_a_8_1_0_4[7] ));
    NOR3 \state_b_RNI7OT6_0[2]  (.A(\state_b[0]_net_1 ), .B(
        \state_b[2]_net_1 ), .C(\state_b[1]_net_1 ), .Y(N_661));
    NOR2B \byte_out_a_RNO_14[0]  (.A(N_498), .B(N_671), .Y(N_597));
    OR3 \byte_out_a_RNO_1[1]  (.A(N_589), .B(N_588), .C(
        \byte_out_a_8_i_i_1_0[1] ), .Y(\byte_out_a_8_i_i_6[1] ));
    NOR2A \config_cntr_b_RNIK9QB[5]  (.A(\config_cntr_b[1]_net_1 ), .B(
        \config_cntr_b[5]_net_1 ), .Y(N_688));
    AOI1 \byte_out_a_RNO_3[0]  (.A(N_433), .B(N_173), .C(
        spi_mode_config_0_byte_out[0]), .Y(N_599));
    NOR3B \state_a_RNO_1[0]  (.A(orbit_control_0_tx_enable), .B(N_712), 
        .C(\state_b[2]_net_1 ), .Y(N_618));
    OR3 \byte_out_a_RNO_0[4]  (.A(N_548), .B(N_547), .C(
        \byte_out_a_8_i_i_2[4] ), .Y(\byte_out_a_8_i_i_7[4] ));
    NOR3 begin_pass_b_RNIUI7D (.A(byte_tracker_a_7_0_0_o2_0_0_net_1), 
        .B(byte_tracker_a_7_0_0_o2_0_1), .C(N_402), .Y(N_729));
    OR3 \byte_out_a_RNO_0[5]  (.A(N_452), .B(N_535), .C(N_534), .Y(
        \byte_out_a_8_i_i_6[5] ));
    MX2A \state_b_RNIP0HD1[1]  (.A(ds7_c), .B(N_149), .S(
        \state_b[1]_net_1 ), .Y(N_433));
    DFN1E1C0 \byte_out_b[3]  (.D(\byte_out_b_6[3] ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_1), .E(N_86), .Q(
        spi_mode_config_0_byte_out[3]));
    OR3 \byte_out_a_RNO_2[5]  (.A(\byte_out_a_8_i_i_4[5] ), .B(
        \byte_out_a_8_i_i_3[5] ), .C(\byte_out_a_8_i_i_7[5] ), .Y(
        \byte_out_a_8_i_i_10[5] ));
    NOR2A \byte_out_a_RNO_27[0]  (.A(\state_b[2]_net_1 ), .B(
        spi_mode_config_0_byte_out[0]), .Y(
        \byte_out_a_8_1_i_a7_5_0[0] ));
    NOR3A \byte_out_a_RNO_19[3]  (.A(\byte_out_a_8_1_0_a7_6_1[3] ), .B(
        N_150_0), .C(N_423), .Y(N_565));
    NOR3B byte_tracker_b_0_RNINT8P (.A(N_610_1), .B(
        byte_tracker_b_0_net_1), .C(N_364), .Y(N_667));
    AO1A \byte_out_a_RNO_7[3]  (.A(N_431), .B(N_486), .C(N_839), .Y(
        \byte_out_a_8_1_0_1[3] ));
    OR3 \state_b_RNISSCN[1]  (.A(\state_b[1]_net_1 ), .B(ds7_c), .C(
        \state_a_7_i_0_o2_0[0] ), .Y(N_481));
    NOR2A \byte_out_a_RNO_24[2]  (.A(N_420), .B(
        \config_cntr_b[1]_net_1 ), .Y(\byte_out_a_8_i_i_a7_3_0[2] ));
    NOR3C \byte_out_a_RNO_3[7]  (.A(N_665), .B(N_664), .C(
        \byte_out_a_8_1_0_a7_5_1[7] ), .Y(N_520));
    NOR3C byte_tracker_a_RNO_5 (.A(byte_tracker_b_0_net_1), .B(
        \state_b[2]_net_1 ), .C(byte_tracker_a_7_0_0_a7_3_0), .Y(N_625)
        );
    OA1 begin_pass_a_RNO (.A(orbit_control_0_tx_enable), .B(N_422), .C(
        spi_mode_config_0_begin_pass), .Y(N_37));
    NOR2B byte_tracker_a_RNO_10 (.A(\state_b[1]_net_1 ), .B(
        byte_tracker_b_net_1), .Y(byte_tracker_a_7_0_0_a7_2_0));
    NOR3C \byte_out_a_RNO_17[4]  (.A(N_690), .B(N_664), .C(
        \byte_out_a_8_i_i_a7_8_1[4] ), .Y(N_555));
    NOR2A \byte_out_a_RNO_17[1]  (.A(N_851), .B(N_150), .Y(N_725));
    NOR2 \config_cntr_b_RNIBBNH[1]  (.A(N_160), .B(
        \config_cntr_b[1]_net_1 ), .Y(N_664));
    AOI1 \state_a_RNO_1[2]  (.A(N_404), .B(orbit_control_0_tx_enable), 
        .C(\state_b[2]_net_1 ), .Y(N_639));
    OR3 \rst_cntr_RNI3K34[8]  (.A(\rst_cntr[7]_net_1 ), .B(
        \rst_cntr[8]_net_1 ), .C(\rst_cntr[9]_net_1 ), .Y(N_375));
    OA1A \byte_out_b_RNO[3]  (.A(byte_m2_e_2), .B(N_150_0), .C(
        \byte_out_a[3]_net_1 ), .Y(\byte_out_b_6[3] ));
    OR2B \byte_out_a_RNO_15[4]  (.A(N_160), .B(
        \config_cntr_b[4]_net_1 ), .Y(N_485));
    NOR2B \byte_out_a_RNO_13[7]  (.A(N_713), .B(N_688), .Y(
        \byte_out_a_8_1_0_a7_2_1[7] ));
    AO1A \byte_out_b_RNO[4]  (.A(N_150_0), .B(byte_m2_e_2), .C(
        \byte_out_a[4]_net_1 ), .Y(\byte_out_b_6[4] ));
    NOR2A \byte_out_a_RNO_17[3]  (.A(N_612), .B(N_423), .Y(N_570));
    DFN1E0C0 next_b (.D(next_a_net_1), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_2), .E(ss_a_net_1), .Q(next_b_i));
    NOR2 \state_a_RNO[0]  (.A(\state_a_7_i_0_0[0] ), .B(N_179), .Y(
        N_30));
    OR3 \byte_out_a_RNO_9[5]  (.A(N_544), .B(N_542), .C(
        \byte_out_a_8_i_i_1[5] ), .Y(\byte_out_a_8_i_i_7[5] ));
    OR3 \state_b_RNIO3VD[1]  (.A(\state_b[1]_net_1 ), .B(N_158), .C(
        N_649), .Y(\byte_out_a_8_i_i_o2_3_1[5] ));
    OR3A \state_a_RNO_2[2]  (.A(N_173), .B(N_641), .C(
        \state_a_7_i_0_1[2] ), .Y(\state_a_7_i_0_3[2] ));
    AO1D ss_b_RNO (.A(G_3_2_i_2), .B(N_9), .C(N_627), .Y(
        ss_b_1_sqmuxa_1));
    NOR3C \byte_out_a_RNO_4[4]  (.A(\config_cntr_b[3]_net_1 ), .B(
        N_662), .C(N_441_i), .Y(N_547));
    OA1 \byte_out_a_RNO_8[1]  (.A(\byte_out_a_8_i_i_a7_0[1] ), .B(
        \byte_out_a_8_i_i_a7_0_0[1] ), .C(
        spi_mode_config_0_byte_out[1]), .Y(\byte_out_a_8_i_i_1[1] ));
    OR3 \byte_out_a_RNO[6]  (.A(\byte_out_a_8_1_0_3[6] ), .B(
        \byte_out_a_8_1_0_2[6] ), .C(\byte_out_a_8_1_0_7[6] ), .Y(
        \byte_out_a_8[6] ));
    DFN1E0C0 \rst_cntr[1]  (.D(N_33_i), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_0), .E(N_173), .Q(un74lto1));
    NOR2A \byte_out_a_RNO_14[6]  (.A(N_687), .B(N_364), .Y(N_529));
    OA1B \byte_out_a_RNO_13[1]  (.A(N_693), .B(N_725), .C(
        \config_cntr_b[2]_net_1 ), .Y(\byte_out_a_8_i_i_a7_0[1] ));
    OR2 \state_b_RNII8FM[2]  (.A(N_661), .B(N_730), .Y(N_412));
    NOR2B \config_cntr_b_RNIOK021[6]  (.A(N_662), .B(
        \config_cntr_b[6]_net_1 ), .Y(N_687));
    NOR2 \config_cntr_b_RNIBMKN_0[6]  (.A(N_325), .B(N_160), .Y(
        \state_a_7_i_0_a7_0_1[0] ));
    OR3 byte_tracker_a_RNO_2 (.A(N_622), .B(N_625), .C(
        byte_tracker_a_7_0_0_1), .Y(byte_tracker_a_7_0_0_4));
    NOR2A byte_tracker_b_RNIVE2U (.A(byte_tracker_b_net_1), .B(N_431), 
        .Y(N_697));
    DFN0C0 \byte_out_a[6]  (.D(\byte_out_a_8[6] ), .CLK(state_q_89), 
        .CLR(reset_pulse_0_RESET_3), .Q(\byte_out_a[6]_net_1 ));
    NOR2B \config_cntr_b_RNIJF021[5]  (.A(N_569_1), .B(N_655), .Y(
        N_654));
    NOR2B \config_cntr_b_RNIPA3S[1]  (.A(N_648), .B(
        \config_cntr_b[1]_net_1 ), .Y(N_696));
    OR2 byte_tracker_b_0_RNISNBJ (.A(N_714), .B(N_160), .Y(N_425));
    NOR2A \byte_out_a_RNO_12[5]  (.A(N_160), .B(N_180), .Y(
        \byte_out_a_8_i_i_a7_5_0[5] ));
    NOR2A \byte_out_a_RNO_31[0]  (.A(\config_cntr_b[4]_net_1 ), .B(
        spi_mode_config_0_byte_out[0]), .Y(
        \byte_out_a_8_1_i_a7_10_1[0] ));
    NOR2B \config_cntr_b_RNIP628[0]  (.A(\config_cntr_b[0]_net_1 ), .B(
        byte_tracker_b_net_1), .Y(N_645));
    NOR2B \config_cntr_b_RNIFJGO[6]  (.A(N_679), .B(N_665), .Y(N_693));
    NOR2 \byte_out_a_RNO_32[0]  (.A(spi_mode_config_0_byte_out[0]), .B(
        byte_tracker_b_net_1), .Y(\byte_out_a_8_1_i_a7_7_0[0] ));
    AO1 \byte_out_a_RNO_9[1]  (.A(N_429), .B(
        spi_mode_config_0_byte_out[1]), .C(N_592), .Y(
        \byte_out_a_8_i_i_4[1] ));
    OR2B \byte_out_a_RNO_23[3]  (.A(N_160), .B(
        \config_cntr_b[5]_net_1 ), .Y(N_502));
    AO1C \state_b_RNI8AHQ[1]  (.A(orbit_control_0_tx_enable), .B(
        \state_b[1]_net_1 ), .C(N_404), .Y(
        \byte_out_a_8_1_0_o2_1_1[7] ));
    NOR2B \byte_out_a_RNO_25[2]  (.A(byte_out_2), .B(byte_out_cl[0]), 
        .Y(\byte_out_a_8_i_i_a7_8_0[2] ));
    NOR3C \byte_out_a_RNO_17[6]  (.A(spi_mode_config_0_byte_out[6]), 
        .B(N_425), .C(N_684), .Y(N_527));
    NOR2B \byte_out_a_RNO_11[2]  (.A(N_690), .B(
        spi_mode_config_0_byte_out[2]), .Y(\byte_out_a_8_i_i_a7_0[2] ));
    DFN1E1C0 \byte_out_b[7]  (.D(\byte_out_b_6[7] ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_1), .E(N_86), .Q(
        spi_mode_config_0_byte_out[7]));
    NOR3C \byte_out_a_RNO_18[3]  (.A(N_677), .B(N_569_1), .C(N_647), 
        .Y(N_569));
    XNOR2 \rst_cntr_RNO[5]  (.A(N_323), .B(\rst_cntr[5]_net_1 ), .Y(
        N_489_i));
    OR2 byte_tracker_a_RNO_3 (.A(N_411), .B(ds7_c), .Y(N_487));
    AND2 un1_config_cntr_b_7_I_1 (.A(\config_cntr_b[0]_net_1 ), .B(
        N_68), .Y(\DWACT_ADD_CI_0_TMP[0] ));
    DFN1E1C0 \byte_out_b[1]  (.D(\byte_out_b_6[1] ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_1), .E(N_86), .Q(
        spi_mode_config_0_byte_out[1]));
    OR3 \byte_out_a_RNO[7]  (.A(\byte_out_a_8_1_0_4[7] ), .B(
        \byte_out_a_8_1_0_3[7] ), .C(\byte_out_a_8_1_0_5[7] ), .Y(
        \byte_out_a_8[7] ));
    NOR2B \byte_out_a_RNO_19[1]  (.A(N_180), .B(
        \config_cntr_b[2]_net_1 ), .Y(\byte_out_a_8_i_i_a7_5_0[1] ));
    NOR2B \byte_out_a_RNO_12[6]  (.A(\byte_out_a_8_1_0_a7_6_0[6] ), .B(
        N_693), .Y(N_531));
    OR3 \byte_out_a_RNO[2]  (.A(\byte_out_a_8_i_i_10[2] ), .B(
        \byte_out_a_8_i_i_9[2] ), .C(\byte_out_a_8_i_i_14[2] ), .Y(
        N_15));
    OR2A \state_b_RNIIVI3[2]  (.A(\state_b[2]_net_1 ), .B(ds7_c), .Y(
        N_158));
    OR2B \config_cntr_b_RNINCQB[5]  (.A(\config_cntr_b[5]_net_1 ), .B(
        \config_cntr_b[4]_net_1 ), .Y(N_180));
    XOR2 \rst_cntr_RNO[1]  (.A(un74lto0), .B(un74lto1), .Y(N_33_i));
    NOR2A \config_cntr_b_RNI186M_0[6]  (.A(N_647), .B(
        \config_cntr_b[6]_net_1 ), .Y(N_648));
    NOR2B \byte_out_a_RNO_21[0]  (.A(\byte_out_a_8_1_i_a7_7_0[0] ), .B(
        N_684), .Y(N_605));
    AO1 \byte_out_a_RNO_21[3]  (.A(N_687), .B(\config_cntr_b[3]_net_1 )
        , .C(N_566), .Y(\byte_out_a_8_1_0_6[3] ));
    NOR3C \byte_out_a_RNO_22[0]  (.A(\config_cntr_b[2]_net_1 ), .B(
        N_662), .C(N_677), .Y(N_614));
    NOR3B \byte_out_a_RNO_16[2]  (.A(N_671), .B(
        \byte_out_a_8_i_i_a7_8_0[2] ), .C(N_163), .Y(N_581));
    NOR3A \byte_out_a_RNO_20[3]  (.A(N_658), .B(N_324), .C(N_420), .Y(
        N_571));
    OR3 \byte_out_a_RNO[4]  (.A(\byte_out_a_8_i_i_7[4] ), .B(
        \byte_out_a_8_i_i_6[4] ), .C(\byte_out_a_8_i_i_8[4] ), .Y(N_12)
        );
    DFN0P0 \config_cntr_a[0]  (.D(\DWACT_ADD_CI_0_partial_sum[0] ), 
        .CLK(state_q_89), .PRE(reset_pulse_0_RESET_3), .Q(
        \config_cntr_a[0]_net_1 ));
    NOR2B un1_config_cntr_b_7_I_31 (.A(\DWACT_ADD_CI_0_g_array_1[0] ), 
        .B(\config_cntr_b[2]_net_1 ), .Y(
        \DWACT_ADD_CI_0_g_array_12[0] ));
    XOR2 un1_config_cntr_b_7_I_24 (.A(\config_cntr_b[3]_net_1 ), .B(
        \DWACT_ADD_CI_0_g_array_12[0] ), .Y(I_24));
    AO1A start_a_RNO_0 (.A(N_149), .B(\state_b[1]_net_1 ), .C(
        start_a_7_i_0_a7_0), .Y(N_326_tz));
    NOR3A \byte_out_a_RNO_9[7]  (.A(spi_mode_config_0_byte_out[7]), .B(
        \config_cntr_b[4]_net_1 ), .C(\config_cntr_b[6]_net_1 ), .Y(
        \byte_out_a_8_1_0_a7_5_1[7] ));
    NOR3A \state_a_RNO_7[2]  (.A(\state_b[1]_net_1 ), .B(
        \state_b[0]_net_1 ), .C(\state_b[2]_net_1 ), .Y(N_642));
    NOR2B \byte_out_a_RNO_5[5]  (.A(spi_mode_config_0_byte_out[5]), .B(
        \state_b[0]_net_1 ), .Y(\byte_out_a_8_i_i_a7_0[5] ));
    DFN1E0C0 \config_cntr_b[3]  (.D(\config_cntr_a[3]_net_1 ), .CLK(
        GLA), .CLR(reset_pulse_0_RESET_1), .E(ss_a_net_1), .Q(
        \config_cntr_b[3]_net_1 ));
    NOR3A \byte_out_a_RNO_34[0]  (.A(N_718), .B(
        \config_cntr_b[1]_net_1 ), .C(N_466), .Y(N_606));
    OR3 \byte_out_a_RNO_10[0]  (.A(N_607), .B(N_608), .C(N_605), .Y(
        \byte_out_a_8_1_i_9[0] ));
    OA1C start_a_RNO (.A(N_326_tz), .B(spi_mode_config_0_start), .C(
        N_179), .Y(N_34));
    AO1 \byte_out_a_RNO_7[6]  (.A(\byte_out_a_8_1_0_a7_7_0[6] ), .B(
        N_697), .C(N_531), .Y(\byte_out_a_8_1_0_4[6] ));
    XOR2 un1_config_cntr_b_7_I_27 (.A(\config_cntr_b[1]_net_1 ), .B(
        \DWACT_ADD_CI_0_TMP[0] ), .Y(I_27));
    NOR2A \config_cntr_a_RNO[6]  (.A(I_28_1), .B(N_179), .Y(
        \config_cntr_a_86[6] ));
    NOR2 \config_cntr_b_RNIFFNH[5]  (.A(N_160), .B(
        \config_cntr_b[5]_net_1 ), .Y(N_569_1));
    AX1 \rst_cntr_RNO[6]  (.A(N_323), .B(\rst_cntr[5]_net_1 ), .C(
        ss_b11lto6), .Y(N_496_i));
    NOR2A \config_cntr_b_RNIIE021[1]  (.A(N_648), .B(N_419), .Y(
        \byte_out_a_8_1_0_a7_3_0[6] ));
    AO1 \byte_out_a_RNO_8[0]  (.A(\byte_out_a_8_1_i_a7_6_0[0] ), .B(
        N_696), .C(N_603), .Y(\byte_out_a_8_1_i_4[0] ));
    DFN1E1C0 \byte_out_b[6]  (.D(\byte_out_b_6[6] ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_1), .E(N_86), .Q(
        spi_mode_config_0_byte_out[6]));
    OR2 \byte_out_a_RNO_15[6]  (.A(N_527), .B(N_528), .Y(
        \byte_out_a_8_1_0_0[6] ));
    NOR3B \config_cntr_b_RNI9RQD1[1]  (.A(\config_cntr_b[1]_net_1 ), 
        .B(N_658), .C(N_170), .Y(N_568));
    NOR2B \config_cntr_b_RNI30OJ1[5]  (.A(\state_a_7_i_0_a7_0_1[0] ), 
        .B(\state_a_7_i_0_a7_0_0[0] ), .Y(N_179));
    NOR2B byte_tracker_b_RNIE1F4 (.A(\state_b[0]_net_1 ), .B(
        byte_tracker_b_net_1), .Y(N_690));
    OR2B \config_cntr_b_RNIKKNH[6]  (.A(N_170), .B(
        \config_cntr_b[6]_net_1 ), .Y(N_417));
    DFN1E0P0 \config_cntr_b[0]  (.D(\config_cntr_a[0]_net_1 ), .CLK(
        GLA), .PRE(reset_pulse_0_RESET_1), .E(ss_a_net_1), .Q(
        \config_cntr_b[0]_net_1 ));
    NOR2 byte_tracker_b_RNI66E3 (.A(ds7_c), .B(byte_tracker_b_net_1), 
        .Y(N_715));
    AO1A \state_a_RNO_6[2]  (.A(orbit_control_0_tx_enable), .B(N_671), 
        .C(N_642), .Y(\state_a_7_i_0_1[2] ));
    DFN0C0 \byte_out_a[7]  (.D(\byte_out_a_8[7] ), .CLK(state_q_89), 
        .CLR(reset_pulse_0_RESET_3), .Q(\byte_out_a[7]_net_1 ));
    OR3B \rst_cntr_RNI40I9[5]  (.A(\rst_cntr[5]_net_1 ), .B(ss_b11lto6)
        , .C(N_323), .Y(N_409));
    DFN1E0C0 \config_cntr_b[1]  (.D(\config_cntr_a[1]_net_1 ), .CLK(
        GLA), .CLR(reset_pulse_0_RESET_1), .E(ss_a_net_1), .Q(
        \config_cntr_b[1]_net_1 ));
    NOR3C \byte_out_a_RNO_19[0]  (.A(N_665), .B(N_677), .C(
        \byte_out_a_8_1_i_a7_9_1[0] ), .Y(N_607));
    NOR3C \state_a_RNO_0[2]  (.A(\state_a_7_i_0_a7_3_0[2] ), .B(
        \config_cntr_b[0]_net_1 ), .C(\state_a_7_i_0_a7_3_1[2] ), .Y(
        N_643));
    NOR3A \state_a_RNO[1]  (.A(N_150), .B(N_637), .C(N_638), .Y(N_147));
    AO1 byte_tracker_a_RNO_0 (.A(N_487), .B(byte_tracker_b_0_net_1), 
        .C(N_589), .Y(byte_tracker_a_7_0_0_0));
    AO1B \state_b_RNIEGRD[1]  (.A(N_402), .B(\state_b[1]_net_1 ), .C(
        N_173), .Y(N_411));
    DFN0C0 \config_cntr_a[6]  (.D(\config_cntr_a_86[6] ), .CLK(
        state_q_89), .CLR(reset_pulse_0_RESET_4), .Q(
        \config_cntr_a[6]_net_1 ));
    AO1 \byte_out_a_RNO_24[0]  (.A(\byte_out_a_8_1_i_a7_15_0[0] ), .B(
        N_658), .C(N_606), .Y(\byte_out_a_8_1_i_8[0] ));
    DFN0C0 \byte_out_a[3]  (.D(\byte_out_a_8[3] ), .CLK(state_q_89), 
        .CLR(reset_pulse_0_RESET_3), .Q(\byte_out_a[3]_net_1 ));
    NOR2A \config_cntr_b_RNI7IKN[5]  (.A(N_664), .B(
        \config_cntr_b[5]_net_1 ), .Y(N_719));
    XNOR2 \rst_cntr_RNO[0]  (.A(un74lto0), .B(N_173), .Y(N_477_i));
    NOR2A byte_tracker_b_RNI409G (.A(N_650), .B(byte_tracker_b_net_1), 
        .Y(N_655));
    OR3B \rst_cntr_RNI7DQ6[4]  (.A(\rst_cntr[3]_net_1 ), .B(
        \rst_cntr[4]_net_1 ), .C(N_171), .Y(N_323));
    OA1A \byte_out_b_RNO[1]  (.A(byte_m2_e_2), .B(N_150_0), .C(
        \byte_out_a[1]_net_1 ), .Y(\byte_out_b_6[1] ));
    OR3 \byte_out_a_RNO[3]  (.A(\byte_out_a_8_1_0_10[3] ), .B(
        \byte_out_a_8_1_0_9[3] ), .C(\byte_out_a_8_1_0_14[3] ), .Y(
        \byte_out_a_8[3] ));
    AO1A \byte_out_b_RNO[5]  (.A(N_150_0), .B(byte_m2_e_2), .C(
        \byte_out_a[5]_net_1 ), .Y(\byte_out_b_6[5] ));
    OR3 ss_b_RNO_8 (.A(ss_b11lto6), .B(N_375), .C(\rst_cntr[5]_net_1 ), 
        .Y(N_460));
    NOR2B \byte_out_a_RNO_4[7]  (.A(N_429), .B(
        spi_mode_config_0_byte_out[7]), .Y(N_515));
    DFN0C0 \byte_out_a[2]  (.D(N_15), .CLK(state_q_89), .CLR(
        reset_pulse_0_RESET_3), .Q(\byte_out_a[2]_net_1 ));
    AO1A \state_a_RNO_0[0]  (.A(\state_b[0]_net_1 ), .B(N_481), .C(
        N_618), .Y(\state_a_7_i_0_0[0] ));
    AO1D ss_b_RNO_1 (.A(ss_b11lto10), .B(m42_0_a7_0_1), .C(G_3_2_i_1), 
        .Y(G_3_2_i_2));
    OR3 \byte_out_a_RNO_1[0]  (.A(N_602), .B(N_601), .C(
        \byte_out_a_8_1_i_4[0] ), .Y(\byte_out_a_8_1_i_11[0] ));
    OA1B \byte_out_a_RNO_6[1]  (.A(N_543), .B(N_682), .C(
        \config_cntr_b[2]_net_1 ), .Y(N_588));
    DFN0P0 ss_a (.D(SS_c), .CLK(state_q_89), .PRE(
        reset_pulse_0_RESET_5), .Q(ss_a_net_1));
    NOR2A \byte_out_a_RNO_6[6]  (.A(N_454), .B(N_324), .Y(
        \byte_out_a_8_1_0_a7_1_1[6] ));
    NOR2 \byte_out_a_RNO_15[0]  (.A(N_170), .B(
        \config_cntr_b[3]_net_1 ), .Y(\byte_out_a_8_1_i_a7_6_0[0] ));
    NOR3B \byte_out_a_RNO_5[6]  (.A(N_647), .B(
        \config_cntr_b[2]_net_1 ), .C(\config_cntr_b[4]_net_1 ), .Y(
        \byte_out_a_8_1_0_a7_1_2[6] ));
    NOR2B un1_config_cntr_b_7_I_38 (.A(\DWACT_ADD_CI_0_g_array_1[0] ), 
        .B(\DWACT_ADD_CI_0_pog_array_1[0] ), .Y(
        \DWACT_ADD_CI_0_g_array_2[0] ));
    DFN1E0C0 byte_tracker_b_0 (.D(byte_tracker_a_net_1), .CLK(GLA), 
        .CLR(reset_pulse_0_RESET_0), .E(ss_a_net_1), .Q(
        byte_tracker_b_0_net_1));
    NOR2B \config_cntr_b_RNIO93S[5]  (.A(N_688), .B(N_655), .Y(
        \state_a_7_i_0_a7_0_0[0] ));
    AO1A \byte_out_a_RNO_8[2]  (.A(N_423), .B(
        \byte_out_a_8_i_i_a7_11_0[2] ), .C(N_568), .Y(
        \byte_out_a_8_i_i_7[2] ));
    NOR2A \byte_out_a_RNO_14[5]  (.A(N_686), .B(N_420), .Y(N_544));
    NOR2A \byte_out_a_RNO_13[0]  (.A(N_462), .B(N_180), .Y(
        \byte_out_a_8_1_i_a7_0_0[0] ));
    DFN0C0 \config_cntr_a[4]  (.D(\config_cntr_a_86[4] ), .CLK(
        state_q_89), .CLR(reset_pulse_0_RESET_4), .Q(
        \config_cntr_a[4]_net_1 ));
    OR3 byte_tracker_a_RNO (.A(byte_tracker_a_7_0_0_0), .B(N_621), .C(
        byte_tracker_a_7_0_0_4), .Y(byte_tracker_a_7));
    OR2 \state_b_RNIT9TR[0]  (.A(N_410), .B(N_422), .Y(N_431));
    NOR2B \byte_out_a_RNO_18[5]  (.A(N_851), .B(
        spi_mode_config_0_byte_out[5]), .Y(N_540));
    NOR2B \byte_out_a_RNO_12[3]  (.A(spi_mode_config_0_byte_out[3]), 
        .B(\config_cntr_b[2]_net_1 ), .Y(\byte_out_a_8_1_0_a7_5_0[3] ));
    OA1B start_a_RNO_1 (.A(N_158), .B(N_453), .C(N_150_0), .Y(
        start_a_7_i_0_a7_0));
    NOR2A \config_cntr_b_RNI8JKN[6]  (.A(N_677), .B(N_364), .Y(N_692));
    AO1 \byte_out_a_RNO_12[2]  (.A(\byte_out_a_8_i_i_a2_5_1[2] ), .B(
        \byte_out_a_8_i_i_a2_5_0[2] ), .C(N_692), .Y(N_829));
    AX1 \rst_cntr_RNO[4]  (.A(N_171), .B(\rst_cntr[3]_net_1 ), .C(
        \rst_cntr[4]_net_1 ), .Y(N_480_i));
    NOR2A \config_cntr_b_RNISD3S[6]  (.A(N_647), .B(N_325), .Y(
        \byte_out_a_8_i_i_a2_0[5] ));
    DFN1E1C0 \byte_out_b[2]  (.D(\byte_out_b_6[2] ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_1), .E(N_86), .Q(
        spi_mode_config_0_byte_out[2]));
    NOR2A \byte_out_a_RNO_14[3]  (.A(N_423), .B(N_160), .Y(
        \byte_out_a_8_1_0_a7_2_0[3] ));
    NOR2A \byte_out_a_RNO_11[7]  (.A(N_648), .B(N_324), .Y(
        \byte_out_a_8_1_0_a7_4_0[7] ));
    OR2 \config_cntr_b_RNINCQB_2[5]  (.A(\config_cntr_b[5]_net_1 ), .B(
        \config_cntr_b[4]_net_1 ), .Y(N_170));
    DFN1E0C0 \config_cntr_b[5]  (.D(\config_cntr_a[5]_net_1 ), .CLK(
        GLA), .CLR(reset_pulse_0_RESET_1), .E(ss_a_net_1), .Q(
        \config_cntr_b[5]_net_1 ));
    NOR3C byte_tracker_b_0_RNIGC351 (.A(byte_tracker_b_0_net_1), .B(
        N_664), .C(N_679), .Y(N_672));
    NOR2B \byte_out_a_RNO_6[3]  (.A(\byte_out_a_8_1_0_a7_2_0[3] ), .B(
        N_696), .Y(N_561));
    NOR2A byte_tracker_b_RNI7QGJ1 (.A(N_450), .B(byte_tracker_b_net_1), 
        .Y(N_589));
    NOR2B \byte_out_a_RNO_4[0]  (.A(\byte_out_a_8_1_i_a7_2_0[0] ), .B(
        N_417), .Y(N_600));
    NOR2A \byte_out_a_RNO_17[2]  (.A(N_687), .B(N_419), .Y(N_583));
    CLKINT next_b_RNI28CE (.A(next_b_i), .Y(spi_mode_config_0_next_cmd)
        );
    OR2 \state_b_RNIKI5U1[1]  (.A(N_411), .B(N_376), .Y(
        \byte_out_a_8_1_0_o2_1_0[7] ));
    OR3 \byte_out_a_RNO[1]  (.A(\byte_out_a_8_i_i_7[1] ), .B(
        \byte_out_a_8_i_i_6[1] ), .C(\byte_out_a_8_i_i_8[1] ), .Y(N_18)
        );
    OR2A \state_b_RNIPPJ4[0]  (.A(\state_b[0]_net_1 ), .B(
        \state_b[1]_net_1 ), .Y(N_150_0));
    AX1 \rst_cntr_RNO[8]  (.A(N_409), .B(\rst_cntr[7]_net_1 ), .C(
        \rst_cntr[8]_net_1 ), .Y(N_509_i));
    OR3 \byte_out_a_RNO_9[2]  (.A(N_579), .B(N_585), .C(
        \byte_out_a_8_i_i_6[2] ), .Y(\byte_out_a_8_i_i_11[2] ));
    NOR2B \config_cntr_b_RNIJF021[1]  (.A(N_662), .B(
        \config_cntr_b[1]_net_1 ), .Y(N_682));
    NOR3A \config_cntr_b_RNI409G[0]  (.A(\byte_out_a_8_1_0_a2_0[7] ), 
        .B(N_150), .C(N_158), .Y(N_647));
    OA1A \byte_out_b_RNO[7]  (.A(byte_m2_e_2), .B(N_150_0), .C(
        \byte_out_a[7]_net_1 ), .Y(\byte_out_b_6[7] ));
    OR2 \state_b_RNI62AG1[2]  (.A(N_651), .B(N_652), .Y(N_376));
    AO1 \byte_out_a_RNO_5[0]  (.A(\byte_out_a_8_1_i_a7_0_0[0] ), .B(
        N_648), .C(N_597), .Y(\byte_out_a_8_1_i_5[0] ));
    AO1 \byte_out_a_RNO_21[2]  (.A(\byte_out_a_8_i_i_a7_5_0[2] ), .B(
        N_674), .C(N_580), .Y(\byte_out_a_8_i_i_6[2] ));
    NOR3B \byte_out_a_RNO_6[4]  (.A(\config_cntr_b[3]_net_1 ), .B(
        N_658), .C(\config_cntr_b[5]_net_1 ), .Y(N_556));
    NOR2A \byte_out_a_RNO_30[0]  (.A(\config_cntr_b[2]_net_1 ), .B(
        spi_mode_config_0_byte_out[0]), .Y(
        \byte_out_a_8_1_i_a7_9_1[0] ));
    OR3 \byte_out_a_RNO_2[2]  (.A(\byte_out_a_8_i_i_8[2] ), .B(
        \byte_out_a_8_i_i_7[2] ), .C(\byte_out_a_8_i_i_11[2] ), .Y(
        \byte_out_a_8_i_i_14[2] ));
    OR3A ss_b_RNO_5 (.A(\state_b[0]_net_1 ), .B(\state_b[2]_net_1 ), 
        .C(\state_b[1]_net_1 ), .Y(G_3_2_i_1));
    NOR2B \config_cntr_b_RNIELT71[2]  (.A(N_713), .B(N_662), .Y(N_653));
    NOR2B \byte_out_a_RNO_16[0]  (.A(\byte_out_a_8_1_i_a7_5_0[0] ), .B(
        N_694), .Y(N_603));
    AO1 \byte_out_a_RNO_0[6]  (.A(N_483), .B(
        spi_mode_config_0_byte_out[6]), .C(N_524), .Y(
        \byte_out_a_8_1_0_3[6] ));
    NOR2A \config_cntr_a_RNO[4]  (.A(I_30), .B(N_179), .Y(
        \config_cntr_a_86[4] ));
    AO1 byte_tracker_b_0_RNIBHE31 (.A(N_407), .B(N_671), .C(N_656), .Y(
        \byte_out_a_8_i_i_o7_0[2] ));
    AO1 \byte_out_a_RNO_1[7]  (.A(N_730), .B(N_715), .C(N_522), .Y(
        \byte_out_a_8_1_0_3[7] ));
    AO1 \byte_out_a_RNO_1[6]  (.A(\byte_out_a_8_1_0_a7_1_2[6] ), .B(
        \byte_out_a_8_1_0_a7_1_1[6] ), .C(N_514), .Y(
        \byte_out_a_8_1_0_2[6] ));
    OA1B \byte_out_a_RNO_13[2]  (.A(N_543), .B(N_682), .C(N_160), .Y(
        N_573));
    DFN1E0C0 \rst_cntr[4]  (.D(N_480_i), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_0), .E(N_173), .Q(\rst_cntr[4]_net_1 ));
    NOR2A byte_tracker_b_RNIVC28 (.A(\config_cntr_b[6]_net_1 ), .B(
        byte_tracker_b_net_1), .Y(N_851));
    OR3 \byte_out_a_RNO_8[6]  (.A(N_530), .B(N_529), .C(
        \byte_out_a_8_1_0_0[6] ), .Y(\byte_out_a_8_1_0_5[6] ));
    OR2B \state_b_RNIQH5I[2]  (.A(orbit_control_0_tx_enable), .B(
        \state_b[2]_net_1 ), .Y(N_407));
    OR3 \byte_out_a_RNO_2[1]  (.A(\byte_out_a_8_i_i_1[1] ), .B(N_536), 
        .C(\byte_out_a_8_i_i_4[1] ), .Y(\byte_out_a_8_i_i_8[1] ));
    XNOR2 \rst_cntr_RNO[7]  (.A(N_409), .B(\rst_cntr[7]_net_1 ), .Y(
        N_503_i));
    NOR3C \byte_out_a_RNO_7[7]  (.A(spi_mode_config_0_byte_out[7]), .B(
        N_425), .C(N_684), .Y(N_516));
    NOR3A ss_b_RNO_3 (.A(N_460), .B(N_173), .C(ss_b11lto10), .Y(N_627));
    OR2A byte_tracker_a_7_0_0_o2 (.A(orbit_control_0_tx_enable), .B(
        N_163), .Y(N_410));
    DFN0C0 begin_pass_a (.D(N_37), .CLK(state_q_89), .CLR(
        reset_pulse_0_RESET_3), .Q(begin_pass_a_net_1));
    AND2 un1_config_cntr_b_7_I_39 (.A(\config_cntr_b[4]_net_1 ), .B(
        \config_cntr_b[5]_net_1 ), .Y(
        \DWACT_ADD_CI_0_pog_array_1_1[0] ));
    DFN0P0 \state_a[0]  (.D(N_30), .CLK(state_q_89), .PRE(
        reset_pulse_0_RESET_3), .Q(\state_a[0]_net_1 ));
    NOR2B \config_cntr_b_RNIQB3S[2]  (.A(N_648), .B(
        \config_cntr_b[2]_net_1 ), .Y(N_658));
    NOR2A \config_cntr_b_RNIJ8QB[4]  (.A(\config_cntr_b[4]_net_1 ), .B(
        \config_cntr_b[1]_net_1 ), .Y(N_610_1));
    OR3A \byte_out_a_8_1_i_o2_4[0]  (.A(ds5_c), .B(ds4_c), .C(ds6_c), 
        .Y(N_163));
    DFN1E0C0 \config_cntr_b[6]  (.D(\config_cntr_a[6]_net_1 ), .CLK(
        GLA), .CLR(reset_pulse_0_RESET_1), .E(ss_a_net_1), .Q(
        \config_cntr_b[6]_net_1 ));
    OR2 \byte_out_a_RNO_2[6]  (.A(\byte_out_a_8_1_0_4[6] ), .B(
        \byte_out_a_8_1_0_5[6] ), .Y(\byte_out_a_8_1_0_7[6] ));
    NOR2A \byte_out_a_RNO_26[2]  (.A(spi_mode_config_0_byte_out[2]), 
        .B(N_423), .Y(\byte_out_a_8_i_i_a7_6_0[2] ));
    NOR3C \byte_out_a_RNO_15[5]  (.A(N_679), .B(N_690), .C(
        \byte_out_a_8_i_i_a7_8_1[5] ), .Y(N_542));
    MX2A begin_pass_b_RNIFPB8 (.A(ds7_c), .B(
        spi_mode_config_0_begin_pass), .S(\state_b[1]_net_1 ), .Y(
        N_404));
    NOR2A \config_cntr_b_RNI186M[6]  (.A(N_655), .B(
        \config_cntr_b[6]_net_1 ), .Y(N_674));
    NOR3C \byte_out_a_RNO_16[3]  (.A(N_674), .B(N_502), .C(
        \config_cntr_b[4]_net_1 ), .Y(N_839));
    AO1 begin_pass_b_RNI82U91 (.A(N_729), .B(N_715), .C(N_638), .Y(
        N_149));
    NOR3B \byte_out_a_RNO_3[1]  (.A(\config_cntr_b[3]_net_1 ), .B(
        N_648), .C(N_441_i), .Y(N_590));
    OR3 \byte_out_a_RNO_0[3]  (.A(N_538), .B(N_562), .C(
        \byte_out_a_8_1_0_3[3] ), .Y(\byte_out_a_8_1_0_10[3] ));
    AO1 next_a_RNO (.A(spi_mode_config_0_next_cmd), .B(N_431), .C(
        N_697), .Y(N_145));
    DFN0C0 \config_cntr_a[5]  (.D(I_29), .CLK(state_q_89), .CLR(
        reset_pulse_0_RESET_4), .Q(\config_cntr_a[5]_net_1 ));
    NOR2 \config_cntr_b_RNIP628_1[0]  (.A(\config_cntr_b[0]_net_1 ), 
        .B(byte_tracker_b_net_1), .Y(N_649));
    NOR2A byte_tracker_a_RNO_8 (.A(N_410), .B(\state_b[0]_net_1 ), .Y(
        byte_tracker_a_7_0_0_a7_3_0));
    OA1 byte_tracker_a_RNO_4 (.A(N_691), .B(
        byte_tracker_a_7_0_0_o2_2_0), .C(N_665), .Y(N_622));
    NOR3B \byte_out_a_RNO_20[0]  (.A(N_665), .B(
        \byte_out_a_8_1_i_a7_10_1[0] ), .C(N_364), .Y(N_608));
    NOR3C \byte_out_a_RNO_13[6]  (.A(\config_cntr_b[3]_net_1 ), .B(
        N_658), .C(N_688), .Y(N_530));
    NOR2B un1_config_cntr_b_7_I_36 (.A(\DWACT_ADD_CI_0_g_array_2[0] ), 
        .B(\config_cntr_b[4]_net_1 ), .Y(
        \DWACT_ADD_CI_0_g_array_12_1[0] ));
    OA1 \byte_out_a_RNO_3[2]  (.A(N_667), .B(N_668), .C(
        \byte_out_a_8_i_i_a7_1_0[2] ), .Y(N_574));
    DFN1E0C0 \config_cntr_b[4]  (.D(\config_cntr_a[4]_net_1 ), .CLK(
        GLA), .CLR(reset_pulse_0_RESET_1), .E(ss_a_net_1), .Q(
        \config_cntr_b[4]_net_1 ));
    OR3 \state_b_RNI8FAA1[0]  (.A(N_694), .B(N_663), .C(
        \byte_out_a_8_i_i_o2_3_1[5] ), .Y(N_427));
    NOR2B \byte_out_a_RNO_10[2]  (.A(spi_mode_config_0_byte_out[2]), 
        .B(\state_b[0]_net_1 ), .Y(\byte_out_a_8_i_i_a7_1_0[2] ));
    NOR3A byte_tracker_b_0_RNIK4CB (.A(N_671), .B(N_163), .C(
        byte_tracker_b_0_net_1), .Y(N_656));
    
endmodule


module orbit_control(
       spi_mode_config_0_begin_pass,
       orbit_control_0_tx_enable,
       clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT,
       reset_pulse_0_RESET,
       reset_pulse_0_RESET_4,
       reset_pulse_0_RESET_5,
       reset_pulse_0_RESET_2,
       reset_pulse_0_RESET_3
    );
input  spi_mode_config_0_begin_pass;
output orbit_control_0_tx_enable;
input  clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT;
input  reset_pulse_0_RESET;
input  reset_pulse_0_RESET_4;
input  reset_pulse_0_RESET_5;
input  reset_pulse_0_RESET_2;
input  reset_pulse_0_RESET_3;

    wire cntr_n11, cntr_c10, \cntr[11]_net_1 , cntr13, cntr_n12, 
        cntr_25_0, N_55, cntr_c9, \cntr[10]_net_1 , cntr_c8, 
        \cntr[9]_net_1 , cntr_c7, \cntr[8]_net_1 , cntr_c6, 
        \cntr[7]_net_1 , cntr_c5, \cntr[6]_net_1 , \cntr[5]_net_1 , 
        cntr_c4, \cntr[4]_net_1 , cntr_c3, \cntr[3]_net_1 , cntr_c2, 
        \cntr[0]_net_1 , \cntr[1]_net_1 , \cntr[2]_net_1 , 
        un1_cntrlto11_0, un1_cntrlt12, un1_cntrlt9, cntr_n10, cntr_n9, 
        cntr_n8, cntr_n7, cntr_n6, cntr_n5, cntr_n4, cntr_n3, cntr_n2, 
        cntr_n2_tz, cntr_n1, cntr_n0, \cntr[12]_net_1 , GND, VCC;
    
    NOR2B \cntr_RNIM9NQ[4]  (.A(\cntr[4]_net_1 ), .B(cntr_c3), .Y(
        cntr_c4));
    DFN1C0 \cntr[11]  (.D(cntr_n11), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_3), .Q(\cntr[11]_net_1 ));
    XA1 \cntr_RNO[3]  (.A(\cntr[3]_net_1 ), .B(cntr_c2), .C(cntr13), 
        .Y(cntr_n3));
    NOR2B \cntr_RNI044G1[8]  (.A(cntr_c7), .B(\cntr[8]_net_1 ), .Y(
        cntr_c8));
    NOR2B \cntr_RNIPKD51[6]  (.A(cntr_c5), .B(\cntr[6]_net_1 ), .Y(
        cntr_c6));
    XA1 \cntr_RNO[6]  (.A(\cntr[6]_net_1 ), .B(cntr_c5), .C(cntr13), 
        .Y(cntr_n6));
    DFN1C0 \cntr[10]  (.D(cntr_n10), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_2), .Q(\cntr[10]_net_1 ));
    OA1A \cntr_RNI942M[9]  (.A(\cntr[9]_net_1 ), .B(un1_cntrlt9), .C(
        un1_cntrlto11_0), .Y(un1_cntrlt12));
    DFN1C0 \cntr[6]  (.D(cntr_n6), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_4), .Q(\cntr[6]_net_1 ));
    VCC VCC_i (.Y(VCC));
    XA1 \cntr_RNO[9]  (.A(cntr_c8), .B(\cntr[9]_net_1 ), .C(cntr13), 
        .Y(cntr_n9));
    DFN1C0 tx_enable_reg (.D(cntr13), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(reset_pulse_0_RESET), 
        .Q(orbit_control_0_tx_enable));
    XA1 \cntr_RNO[7]  (.A(\cntr[7]_net_1 ), .B(cntr_c6), .C(cntr13), 
        .Y(cntr_n7));
    DFN1C0 \cntr[8]  (.D(cntr_n8), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_5), .Q(\cntr[8]_net_1 ));
    DFN1C0 \cntr[3]  (.D(cntr_n3), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_4), .Q(\cntr[3]_net_1 ));
    NOR2B \cntr_RNI5DFL1[9]  (.A(cntr_c8), .B(\cntr[9]_net_1 ), .Y(
        cntr_c9));
    AOI1 \cntr_RNI9L1G[6]  (.A(\cntr[6]_net_1 ), .B(\cntr[7]_net_1 ), 
        .C(\cntr[8]_net_1 ), .Y(un1_cntrlt9));
    DFN1C0 \cntr[2]  (.D(cntr_n2), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_4), .Q(\cntr[2]_net_1 ));
    XA1 \cntr_RNO[8]  (.A(cntr_c7), .B(\cntr[8]_net_1 ), .C(cntr13), 
        .Y(cntr_n8));
    XA1 \cntr_RNO[4]  (.A(\cntr[4]_net_1 ), .B(cntr_c3), .C(cntr13), 
        .Y(cntr_n4));
    AX1C \cntr_RNO_0[2]  (.A(\cntr[0]_net_1 ), .B(\cntr[1]_net_1 ), .C(
        \cntr[2]_net_1 ), .Y(cntr_n2_tz));
    XA1 \cntr_RNO[5]  (.A(\cntr[5]_net_1 ), .B(cntr_c4), .C(cntr13), 
        .Y(cntr_n5));
    GND GND_i (.Y(GND));
    NOR3C \cntr_RNIN21G[2]  (.A(\cntr[0]_net_1 ), .B(\cntr[1]_net_1 ), 
        .C(\cntr[2]_net_1 ), .Y(cntr_c2));
    NOR2B \cntr_RNO_0[12]  (.A(\cntr[11]_net_1 ), .B(cntr13), .Y(
        cntr_25_0));
    AX1C \cntr_RNO[12]  (.A(cntr_c10), .B(cntr_25_0), .C(N_55), .Y(
        cntr_n12));
    DFN1C0 \cntr[0]  (.D(cntr_n0), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_4), .Q(\cntr[0]_net_1 ));
    NOR2B \cntr_RNO_1[12]  (.A(\cntr[12]_net_1 ), .B(cntr13), .Y(N_55));
    DFN1C0 \cntr[12]  (.D(cntr_n12), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_3), .Q(\cntr[12]_net_1 ));
    NOR2B \cntr_RNISROA1[7]  (.A(cntr_c6), .B(\cntr[7]_net_1 ), .Y(
        cntr_c7));
    NOR2B \cntr_RNIM5CL[3]  (.A(\cntr[3]_net_1 ), .B(cntr_c2), .Y(
        cntr_c3));
    DFN1C0 \cntr[1]  (.D(cntr_n1), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_4), .Q(\cntr[1]_net_1 ));
    XA1 \cntr_RNO[11]  (.A(cntr_c10), .B(\cntr[11]_net_1 ), .C(cntr13), 
        .Y(cntr_n11));
    DFN1C0 \cntr[9]  (.D(cntr_n9), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_5), .Q(\cntr[9]_net_1 ));
    XA1 \cntr_RNO[1]  (.A(\cntr[1]_net_1 ), .B(\cntr[0]_net_1 ), .C(
        cntr13), .Y(cntr_n1));
    DFN1C0 \cntr[7]  (.D(cntr_n7), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_5), .Q(\cntr[7]_net_1 ));
    NOR2 \cntr_RNIR5L[10]  (.A(\cntr[11]_net_1 ), .B(\cntr[10]_net_1 ), 
        .Y(un1_cntrlto11_0));
    NOR2B \cntr_RNIIVPL1[10]  (.A(cntr_c9), .B(\cntr[10]_net_1 ), .Y(
        cntr_c10));
    OA1A \cntr_RNIMJ5R[12]  (.A(\cntr[12]_net_1 ), .B(un1_cntrlt12), 
        .C(spi_mode_config_0_begin_pass), .Y(cntr13));
    DFN1C0 \cntr[5]  (.D(cntr_n5), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_4), .Q(\cntr[5]_net_1 ));
    NOR2B \cntr_RNINE201[5]  (.A(\cntr[5]_net_1 ), .B(cntr_c4), .Y(
        cntr_c5));
    NOR2B \cntr_RNO[2]  (.A(cntr13), .B(cntr_n2_tz), .Y(cntr_n2));
    XA1 \cntr_RNO[10]  (.A(cntr_c9), .B(\cntr[10]_net_1 ), .C(cntr13), 
        .Y(cntr_n10));
    NOR2A \cntr_RNO[0]  (.A(cntr13), .B(\cntr[0]_net_1 ), .Y(cntr_n0));
    DFN1C0 \cntr[4]  (.D(cntr_n4), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_4), .Q(\cntr[4]_net_1 ));
    
endmodule


module clock_div_26MHZ_1MHZ(
       clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT,
       GLA,
       reset_pulse_0_RESET_5,
       reset_pulse_0_RESET_4,
       reset_pulse_0_RESET
    );
output clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT;
input  GLA;
input  reset_pulse_0_RESET_5;
input  reset_pulse_0_RESET_4;
input  reset_pulse_0_RESET;

    wire clk_out_i, N_16, \counter[1]_net_1 , \counter[0]_net_1 , N_14, 
        \counter[3]_net_1 , \DWACT_FINC_E[0] , N_9, \counter[8]_net_1 , 
        \DWACT_FINC_E[4] , N_6, \DWACT_FINC_E[7] , \DWACT_FINC_E[6] , 
        clk_out5_14, clk_out5_6, clk_out5_5, clk_out5_12, clk_out5_13, 
        clk_out5_2, clk_out5_1, clk_out5_10, clk_out5_8, clk_out5_4, 
        \counter[7]_net_1 , \counter[13]_net_1 , \counter[15]_net_1 , 
        \counter[16]_net_1 , \counter[4]_net_1 , \counter[6]_net_1 , 
        \counter[12]_net_1 , \counter[2]_net_1 , \counter[9]_net_1 , 
        \counter[5]_net_1 , \counter[10]_net_1 , \counter[14]_net_1 , 
        \counter[11]_net_1 , clk_out_RNO_0, \counter_3[0] , 
        \counter_3[3] , I_9_0, \counter_3[2] , I_7_0, \counter_3[1] , 
        I_5_0, I_12_0, I_14_0, I_17_0, I_20_0, I_23_0, I_26_0, I_28_0, 
        I_32_0, I_35_0, I_37_0, I_40_0, I_43_0, I_46_0, N_2, 
        \DWACT_FINC_E[10] , \DWACT_FINC_E[9] , N_3, N_4, 
        \DWACT_FINC_E[8] , N_5, N_7, \DWACT_FINC_E[2] , 
        \DWACT_FINC_E[5] , N_8, \DWACT_FINC_E[3] , N_10, N_11, N_12, 
        \DWACT_FINC_E[1] , N_13, N_15, GND, VCC;
    
    XOR2 un5_counter_I_5 (.A(\counter[0]_net_1 ), .B(
        \counter[1]_net_1 ), .Y(I_5_0));
    AND3 un5_counter_I_33 (.A(\counter[9]_net_1 ), .B(
        \counter[10]_net_1 ), .C(\counter[11]_net_1 ), .Y(
        \DWACT_FINC_E[7] ));
    XOR2 un5_counter_I_20 (.A(N_11), .B(\counter[7]_net_1 ), .Y(I_20_0)
        );
    NOR2B un5_counter_I_11 (.A(\counter[3]_net_1 ), .B(
        \DWACT_FINC_E[0] ), .Y(N_14));
    XOR2 un5_counter_I_28 (.A(N_8), .B(\counter[10]_net_1 ), .Y(I_28_0)
        );
    AND3 un5_counter_I_16 (.A(\DWACT_FINC_E[0] ), .B(\DWACT_FINC_E[1] )
        , .C(\counter[5]_net_1 ), .Y(N_12));
    XOR2 un5_counter_I_17 (.A(N_12), .B(\counter[6]_net_1 ), .Y(I_17_0)
        );
    XOR2 un5_counter_I_32 (.A(N_7), .B(\counter[11]_net_1 ), .Y(I_32_0)
        );
    AND3 un5_counter_I_29 (.A(\counter[6]_net_1 ), .B(
        \counter[7]_net_1 ), .C(\counter[8]_net_1 ), .Y(
        \DWACT_FINC_E[5] ));
    DFN1C0 \counter[2]  (.D(\counter_3[2] ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_4), .Q(\counter[2]_net_1 ));
    DFN1C0 \counter[7]  (.D(I_20_0), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_4), .Q(\counter[7]_net_1 ));
    XOR2 un5_counter_I_7 (.A(N_16), .B(\counter[2]_net_1 ), .Y(I_7_0));
    AND3 un5_counter_I_45 (.A(\DWACT_FINC_E[6] ), .B(
        \DWACT_FINC_E[10] ), .C(\counter[15]_net_1 ), .Y(N_2));
    XOR2 un5_counter_I_23 (.A(N_10), .B(\counter[8]_net_1 ), .Y(I_23_0)
        );
    AO1B \counter_RNO[0]  (.A(clk_out5_14), .B(clk_out5_13), .C(
        \counter[0]_net_1 ), .Y(\counter_3[0] ));
    NOR3C \counter_RNI3SSM1[5]  (.A(clk_out5_2), .B(clk_out5_1), .C(
        clk_out5_10), .Y(clk_out5_13));
    DFN1C0 \counter[6]  (.D(I_17_0), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_4), .Q(\counter[6]_net_1 ));
    VCC VCC_i (.Y(VCC));
    AND2 un5_counter_I_44 (.A(\DWACT_FINC_E[7] ), .B(\DWACT_FINC_E[9] )
        , .Y(\DWACT_FINC_E[10] ));
    DFN1C0 \counter[8]  (.D(I_23_0), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_4), .Q(\counter[8]_net_1 ));
    NOR3A \counter_RNI5PAM[16]  (.A(\counter[0]_net_1 ), .B(
        \counter[15]_net_1 ), .C(\counter[16]_net_1 ), .Y(clk_out5_8));
    AND3 un5_counter_I_22 (.A(\DWACT_FINC_E[0] ), .B(\DWACT_FINC_E[2] )
        , .C(\DWACT_FINC_E[3] ), .Y(N_10));
    DFN1C0 \counter[16]  (.D(I_46_0), .CLK(GLA), .CLR(
        reset_pulse_0_RESET), .Q(\counter[16]_net_1 ));
    AND3 un5_counter_I_8 (.A(\counter[0]_net_1 ), .B(
        \counter[1]_net_1 ), .C(\counter[2]_net_1 ), .Y(N_15));
    AND3 un5_counter_I_31 (.A(\DWACT_FINC_E[6] ), .B(
        \counter[9]_net_1 ), .C(\counter[10]_net_1 ), .Y(N_7));
    AOI1B \counter_RNO[1]  (.A(clk_out5_14), .B(clk_out5_13), .C(I_5_0)
        , .Y(\counter_3[1] ));
    XOR2 un5_counter_I_40 (.A(N_4), .B(\counter[14]_net_1 ), .Y(I_40_0)
        );
    NOR3B \counter_RNI05I01[8]  (.A(\counter[3]_net_1 ), .B(clk_out5_8)
        , .C(\counter[8]_net_1 ), .Y(clk_out5_12));
    DFN1C0 \counter[15]  (.D(I_43_0), .CLK(GLA), .CLR(
        reset_pulse_0_RESET), .Q(\counter[15]_net_1 ));
    AND3 un5_counter_I_36 (.A(\DWACT_FINC_E[6] ), .B(\DWACT_FINC_E[7] )
        , .C(\counter[12]_net_1 ), .Y(N_5));
    XOR2 un5_counter_I_37 (.A(N_5), .B(\counter[13]_net_1 ), .Y(I_37_0)
        );
    DFN1C0 \counter[14]  (.D(I_40_0), .CLK(GLA), .CLR(
        reset_pulse_0_RESET), .Q(\counter[14]_net_1 ));
    NOR2B un5_counter_I_6 (.A(\counter[1]_net_1 ), .B(
        \counter[0]_net_1 ), .Y(N_16));
    AND2 un5_counter_I_15 (.A(\counter[3]_net_1 ), .B(
        \counter[4]_net_1 ), .Y(\DWACT_FINC_E[1] ));
    XOR2 un5_counter_I_9 (.A(N_15), .B(\counter[3]_net_1 ), .Y(I_9_0));
    DFN1C0 \counter[4]  (.D(I_12_0), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_4), .Q(\counter[4]_net_1 ));
    AND2 un5_counter_I_21 (.A(\counter[6]_net_1 ), .B(
        \counter[7]_net_1 ), .Y(\DWACT_FINC_E[3] ));
    DFN1C0 \counter[5]  (.D(I_14_0), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_4), .Q(\counter[5]_net_1 ));
    XOR2 un5_counter_I_43 (.A(N_3), .B(\counter[15]_net_1 ), .Y(I_43_0)
        );
    XOR2 un5_counter_I_14 (.A(N_13), .B(\counter[5]_net_1 ), .Y(I_14_0)
        );
    AX1C clk_out_RNO (.A(clk_out5_13), .B(clk_out5_14), .C(clk_out_i), 
        .Y(clk_out_RNO_0));
    XOR2 un5_counter_I_26 (.A(N_9), .B(\counter[9]_net_1 ), .Y(I_26_0));
    AND3 un5_counter_I_27 (.A(\DWACT_FINC_E[4] ), .B(
        \counter[8]_net_1 ), .C(\counter[9]_net_1 ), .Y(N_8));
    AOI1B \counter_RNO[2]  (.A(clk_out5_14), .B(clk_out5_13), .C(I_7_0)
        , .Y(\counter_3[2] ));
    NOR3A \counter_RNI6LUN[7]  (.A(clk_out5_4), .B(\counter[7]_net_1 ), 
        .C(\counter[13]_net_1 ), .Y(clk_out5_10));
    AND3 un5_counter_I_10 (.A(\counter[0]_net_1 ), .B(
        \counter[1]_net_1 ), .C(\counter[2]_net_1 ), .Y(
        \DWACT_FINC_E[0] ));
    GND GND_i (.Y(GND));
    AOI1B \counter_RNO[3]  (.A(clk_out5_14), .B(clk_out5_13), .C(I_9_0)
        , .Y(\counter_3[3] ));
    AND3 un5_counter_I_42 (.A(\DWACT_FINC_E[6] ), .B(\DWACT_FINC_E[7] )
        , .C(\DWACT_FINC_E[9] ), .Y(N_3));
    AND3 un5_counter_I_18 (.A(\counter[3]_net_1 ), .B(
        \counter[4]_net_1 ), .C(\counter[5]_net_1 ), .Y(
        \DWACT_FINC_E[2] ));
    DFN1C0 \counter[12]  (.D(I_35_0), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_5), .Q(\counter[12]_net_1 ));
    DFN1C0 \counter[1]  (.D(\counter_3[1] ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_4), .Q(\counter[1]_net_1 ));
    DFN1C0 \counter[3]  (.D(\counter_3[3] ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_4), .Q(\counter[3]_net_1 ));
    AND3 un5_counter_I_19 (.A(\DWACT_FINC_E[0] ), .B(\DWACT_FINC_E[2] )
        , .C(\counter[6]_net_1 ), .Y(N_11));
    NOR2A \counter_RNIRB7A[2]  (.A(\counter[2]_net_1 ), .B(
        \counter[9]_net_1 ), .Y(clk_out5_4));
    XOR2 un5_counter_I_35 (.A(N_6), .B(\counter[12]_net_1 ), .Y(I_35_0)
        );
    AND3 un5_counter_I_13 (.A(\DWACT_FINC_E[0] ), .B(
        \counter[3]_net_1 ), .C(\counter[4]_net_1 ), .Y(N_13));
    DFN1C0 \counter[11]  (.D(I_32_0), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_5), .Q(\counter[11]_net_1 ));
    NOR2B un5_counter_I_34 (.A(\DWACT_FINC_E[7] ), .B(
        \DWACT_FINC_E[6] ), .Y(N_6));
    AND3 un5_counter_I_41 (.A(\counter[12]_net_1 ), .B(
        \counter[13]_net_1 ), .C(\counter[14]_net_1 ), .Y(
        \DWACT_FINC_E[9] ));
    NOR2 \counter_RNI64ND[5]  (.A(\counter[5]_net_1 ), .B(
        \counter[10]_net_1 ), .Y(clk_out5_2));
    XOR2 un5_counter_I_46 (.A(N_2), .B(\counter[16]_net_1 ), .Y(I_46_0)
        );
    XOR2 un5_counter_I_12 (.A(N_14), .B(\counter[4]_net_1 ), .Y(I_12_0)
        );
    CLKINT clk_out_RNIH497 (.A(clk_out_i), .Y(
        clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT));
    AND3 un5_counter_I_30 (.A(\DWACT_FINC_E[0] ), .B(\DWACT_FINC_E[2] )
        , .C(\DWACT_FINC_E[5] ), .Y(\DWACT_FINC_E[6] ));
    AND2 un5_counter_I_38 (.A(\counter[12]_net_1 ), .B(
        \counter[13]_net_1 ), .Y(\DWACT_FINC_E[8] ));
    NOR2 \counter_RNIL57A[1]  (.A(\counter[1]_net_1 ), .B(
        \counter[4]_net_1 ), .Y(clk_out5_6));
    NOR2 \counter_RNIN27H[11]  (.A(\counter[14]_net_1 ), .B(
        \counter[11]_net_1 ), .Y(clk_out5_1));
    NOR2B un5_counter_I_25 (.A(\counter[8]_net_1 ), .B(
        \DWACT_FINC_E[4] ), .Y(N_9));
    AND3 un5_counter_I_39 (.A(\DWACT_FINC_E[6] ), .B(\DWACT_FINC_E[7] )
        , .C(\DWACT_FINC_E[8] ), .Y(N_4));
    DFN1P0 clk_out (.D(clk_out_RNO_0), .CLK(GLA), .PRE(
        reset_pulse_0_RESET_5), .Q(clk_out_i));
    AND3 un5_counter_I_24 (.A(\DWACT_FINC_E[0] ), .B(\DWACT_FINC_E[2] )
        , .C(\DWACT_FINC_E[3] ), .Y(\DWACT_FINC_E[4] ));
    DFN1C0 \counter[13]  (.D(I_37_0), .CLK(GLA), .CLR(
        reset_pulse_0_RESET), .Q(\counter[13]_net_1 ));
    NOR3C \counter_RNIUHGO1[1]  (.A(clk_out5_6), .B(clk_out5_5), .C(
        clk_out5_12), .Y(clk_out5_14));
    DFN1P0 \counter[0]  (.D(\counter_3[0] ), .CLK(GLA), .PRE(
        reset_pulse_0_RESET_4), .Q(\counter[0]_net_1 ));
    DFN1C0 \counter[10]  (.D(I_28_0), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_5), .Q(\counter[10]_net_1 ));
    NOR2 \counter_RNI97ND[6]  (.A(\counter[6]_net_1 ), .B(
        \counter[12]_net_1 ), .Y(clk_out5_5));
    DFN1C0 \counter[9]  (.D(I_26_0), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_4), .Q(\counter[9]_net_1 ));
    
endmodule


module read_buffer(
       byte_out_cl,
       byte_out_2,
       byte_out_0,
       byte_out_6,
       byte_out_3,
       byte_out_1,
       spi_mode_config_0_next_cmd,
       reset_pulse_0_RESET_5,
       reset_pulse_0_RESET_1,
       reset_pulse_0_RESET,
       reset_pulse_0_CLK_OUT_48MHZ,
       reset_pulse_0_RESET_2,
       reset_pulse_0_RESET_3
    );
output [0:0] byte_out_cl;
output byte_out_2;
output byte_out_0;
output byte_out_6;
output byte_out_3;
output byte_out_1;
input  spi_mode_config_0_next_cmd;
input  reset_pulse_0_RESET_5;
input  reset_pulse_0_RESET_1;
input  reset_pulse_0_RESET;
input  reset_pulse_0_CLK_OUT_48MHZ;
input  reset_pulse_0_RESET_2;
input  reset_pulse_0_RESET_3;

    wire \position_i[0] , \position[0]_net_1 , init_wait_26_0, 
        \init_wait[7]_net_1 , un1_init_wait, un1_init_waitlto8_0, 
        \init_wait[8]_net_1 , \init_stage_ns_i_a2_0_0[1] , 
        \init_stage[0]_net_1 , \init_stage[1]_net_1 , 
        \init_stage_ns_i_a2_1_tz[1] , \init_stage_ns_i_a2_2_1[1] , 
        \init_wait[4]_net_1 , \init_wait[6]_net_1 , 
        \init_wait[5]_net_1 , \init_stage_RNO[1]_net_1 , 
        \init_stage_ns_i_a2_2_tz_tz[1] , un1_init_waitlt8, 
        init_wait_n2, init_wait_n2_tz, init_wait_c0, 
        \init_wait[1]_net_1 , \init_wait[2]_net_1 , init_wait_n3, 
        init_wait_c2, \init_wait[3]_net_1 , init_wait_n4, init_wait_c3, 
        init_wait_n5, init_wait_c4, init_wait_n6, init_wait_c5, 
        init_wait_n7, init_wait_c6, init_stage_177_d, N_173, N_268, 
        init_wait_n1, init_wait_n8, \byte_out_RNO[2]_net_1 , 
        \byte_out_RNO[0]_net_1 , \byte_out_RNO[6]_net_1 , 
        \byte_out_cl_RNO[0]_net_1 , read_buffer_GND, 
        \DWACT_ADD_CI_0_partial_sum[0] , VCC;
    
    DFN1E0C0 \init_wait[7]  (.D(init_wait_n7), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_2), .E(
        init_stage_177_d), .Q(\init_wait[7]_net_1 ));
    OR2 \byte_out_RNO[6]  (.A(byte_out_6), .B(init_stage_177_d), .Y(
        \byte_out_RNO[6]_net_1 ));
    XOR2 un1_position_2_I_8 (.A(\position[0]_net_1 ), .B(
        init_stage_177_d), .Y(\DWACT_ADD_CI_0_partial_sum[0] ));
    NOR2 \init_stage_RNI3HC6[0]  (.A(\init_stage[1]_net_1 ), .B(
        \init_stage[0]_net_1 ), .Y(init_stage_177_d));
    NOR2B \init_wait_RNIEEOD1[3]  (.A(init_wait_c2), .B(
        \init_wait[3]_net_1 ), .Y(init_wait_c3));
    DFN1E0C0 \init_wait[6]  (.D(init_wait_n6), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_2), .E(
        init_stage_177_d), .Q(\init_wait[6]_net_1 ));
    OR2 \byte_out_cl_RNO[0]  (.A(byte_out_cl[0]), .B(init_stage_177_d), 
        .Y(\byte_out_cl_RNO[0]_net_1 ));
    DFN1E0C0 \init_wait[5]  (.D(init_wait_n5), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_2), .E(
        init_stage_177_d), .Q(\init_wait[5]_net_1 ));
    NOR3C \init_wait_RNI99A21[2]  (.A(init_wait_c0), .B(
        \init_wait[1]_net_1 ), .C(\init_wait[2]_net_1 ), .Y(
        init_wait_c2));
    XA1 \init_wait_RNO[4]  (.A(init_wait_c3), .B(\init_wait[4]_net_1 ), 
        .C(un1_init_wait), .Y(init_wait_n4));
    NOR2B \init_wait_RNI343G2[6]  (.A(init_wait_c5), .B(
        \init_wait[6]_net_1 ), .Y(init_wait_c6));
    OR2B \init_wait_RNIJJSM[8]  (.A(\init_wait[8]_net_1 ), .B(
        \init_wait[7]_net_1 ), .Y(un1_init_waitlto8_0));
    NOR2B \init_stage_RNO_3[1]  (.A(\init_wait[8]_net_1 ), .B(
        \init_wait[7]_net_1 ), .Y(\init_stage_ns_i_a2_1_tz[1] ));
    DFN1E0C0 \init_wait[8]  (.D(init_wait_n8), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_2), .E(
        init_stage_177_d), .Q(\init_wait[8]_net_1 ));
    VCC VCC_i (.Y(VCC));
    NOR2B \init_wait_RNO_1[8]  (.A(\init_wait[8]_net_1 ), .B(
        un1_init_wait), .Y(N_173));
    NOR2B \init_wait_RNO_0[8]  (.A(\init_wait[7]_net_1 ), .B(
        un1_init_wait), .Y(init_wait_26_0));
    DFN1C0 \position[0]  (.D(\DWACT_ADD_CI_0_partial_sum[0] ), .CLK(
        spi_mode_config_0_next_cmd), .CLR(reset_pulse_0_RESET), .Q(
        \position[0]_net_1 ));
    DFN1E1C0 \byte_out[1]  (.D(\position_i[0] ), .CLK(
        spi_mode_config_0_next_cmd), .CLR(reset_pulse_0_RESET_1), .E(
        init_stage_177_d), .Q(byte_out_1));
    XA1 \init_wait_RNO[1]  (.A(\init_wait[1]_net_1 ), .B(init_wait_c0), 
        .C(un1_init_wait), .Y(init_wait_n1));
    NOR2A \init_wait_RNO[0]  (.A(un1_init_wait), .B(init_wait_c0), .Y(
        N_268));
    DFN1E0C0 \init_wait[1]  (.D(init_wait_n1), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_2), .E(
        init_stage_177_d), .Q(\init_wait[1]_net_1 ));
    DFN1C0 \byte_out[6]  (.D(\byte_out_RNO[6]_net_1 ), .CLK(
        spi_mode_config_0_next_cmd), .CLR(reset_pulse_0_RESET_5), .Q(
        byte_out_6));
    NOR2B \init_wait_RNIKK6P1[4]  (.A(init_wait_c3), .B(
        \init_wait[4]_net_1 ), .Y(init_wait_c4));
    OR2 \init_wait_RNI897P1[4]  (.A(un1_init_waitlto8_0), .B(
        un1_init_waitlt8), .Y(un1_init_wait));
    AX1C \init_wait_RNO_0[2]  (.A(init_wait_c0), .B(
        \init_wait[1]_net_1 ), .C(\init_wait[2]_net_1 ), .Y(
        init_wait_n2_tz));
    DFN1E0C0 \init_wait[0]  (.D(N_268), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_2), .E(
        init_stage_177_d), .Q(init_wait_c0));
    OR2 \byte_out_RNO[0]  (.A(byte_out_0), .B(init_stage_177_d), .Y(
        \byte_out_RNO[0]_net_1 ));
    NOR2B \init_wait_RNIRRK42[5]  (.A(init_wait_c4), .B(
        \init_wait[5]_net_1 ), .Y(init_wait_c5));
    DFN1E0C0 \init_wait[2]  (.D(init_wait_n2), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_2), .E(
        init_stage_177_d), .Q(\init_wait[2]_net_1 ));
    GND GND_i (.Y(read_buffer_GND));
    XA1 \init_wait_RNO[5]  (.A(init_wait_c4), .B(\init_wait[5]_net_1 ), 
        .C(un1_init_wait), .Y(init_wait_n5));
    NOR3 \init_wait_RNILLA21[4]  (.A(\init_wait[5]_net_1 ), .B(
        \init_wait[6]_net_1 ), .C(\init_wait[4]_net_1 ), .Y(
        un1_init_waitlt8));
    XA1 \init_wait_RNO[6]  (.A(init_wait_c5), .B(\init_wait[6]_net_1 ), 
        .C(un1_init_wait), .Y(init_wait_n6));
    OAI1 \init_stage_RNO[1]  (.A(\init_stage_ns_i_a2_2_tz_tz[1] ), .B(
        \init_stage_ns_i_a2_2_1[1] ), .C(\init_stage_ns_i_a2_0_0[1] ), 
        .Y(\init_stage_RNO[1]_net_1 ));
    AX1C \init_wait_RNO[8]  (.A(init_wait_c6), .B(init_wait_26_0), .C(
        N_173), .Y(init_wait_n8));
    OR3 \init_stage_RNO_1[1]  (.A(\init_wait[4]_net_1 ), .B(
        \init_wait[6]_net_1 ), .C(\init_wait[5]_net_1 ), .Y(
        \init_stage_ns_i_a2_2_1[1] ));
    XA1 \init_wait_RNO[7]  (.A(init_wait_c6), .B(\init_wait[7]_net_1 ), 
        .C(un1_init_wait), .Y(init_wait_n7));
    XA1 \init_wait_RNO[3]  (.A(init_wait_c2), .B(\init_wait[3]_net_1 ), 
        .C(un1_init_wait), .Y(init_wait_n3));
    XO1A \init_stage_RNO_2[1]  (.A(\init_stage[0]_net_1 ), .B(
        \init_stage[1]_net_1 ), .C(\init_stage_ns_i_a2_1_tz[1] ), .Y(
        \init_stage_ns_i_a2_0_0[1] ));
    DFN1C0 \byte_out[2]  (.D(\byte_out_RNO[2]_net_1 ), .CLK(
        spi_mode_config_0_next_cmd), .CLR(reset_pulse_0_RESET_5), .Q(
        byte_out_2));
    NOR2B \init_wait_RNO[2]  (.A(un1_init_wait), .B(init_wait_n2_tz), 
        .Y(init_wait_n2));
    DFN1C0 \byte_out[0]  (.D(\byte_out_RNO[0]_net_1 ), .CLK(
        spi_mode_config_0_next_cmd), .CLR(reset_pulse_0_RESET_5), .Q(
        byte_out_0));
    INV \byte_out_RNO[1]  (.A(\position[0]_net_1 ), .Y(\position_i[0] )
        );
    DFN1P0 \init_stage[0]  (.D(read_buffer_GND), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .PRE(reset_pulse_0_RESET_3), .Q(
        \init_stage[0]_net_1 ));
    DFN1E0C0 \init_wait[3]  (.D(init_wait_n3), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_2), .E(
        init_stage_177_d), .Q(\init_wait[3]_net_1 ));
    DFN1E0C0 \init_wait[4]  (.D(init_wait_n4), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_2), .E(
        init_stage_177_d), .Q(\init_wait[4]_net_1 ));
    XNOR2 \init_stage_RNO_0[1]  (.A(\init_stage[0]_net_1 ), .B(
        \init_stage[1]_net_1 ), .Y(\init_stage_ns_i_a2_2_tz_tz[1] ));
    DFN1E1C0 \byte_out[3]  (.D(\position[0]_net_1 ), .CLK(
        spi_mode_config_0_next_cmd), .CLR(reset_pulse_0_RESET_1), .E(
        init_stage_177_d), .Q(byte_out_3));
    DFN1C0 \byte_out_cl[0]  (.D(\byte_out_cl_RNO[0]_net_1 ), .CLK(
        spi_mode_config_0_next_cmd), .CLR(reset_pulse_0_RESET), .Q(
        byte_out_cl[0]));
    DFN1C0 \init_stage[1]  (.D(\init_stage_RNO[1]_net_1 ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_3), .Q(
        \init_stage[1]_net_1 ));
    OR2 \byte_out_RNO[2]  (.A(byte_out_2), .B(init_stage_177_d), .Y(
        \byte_out_RNO[2]_net_1 ));
    
endmodule


module reset_pulse(
       reset_pulse_0_RESET_5,
       BUF2_PBRST_T9_c,
       CLK_48MHZ_c,
       reset_pulse_0_RESET_4,
       reset_pulse_0_RESET_3,
       reset_pulse_0_RESET_2,
       reset_pulse_0_RESET_1,
       reset_pulse_0_RESET_0,
       reset_pulse_0_CLK_OUT_48MHZ,
       reset_pulse_0_RESET
    );
output reset_pulse_0_RESET_5;
input  BUF2_PBRST_T9_c;
input  CLK_48MHZ_c;
output reset_pulse_0_RESET_4;
output reset_pulse_0_RESET_3;
output reset_pulse_0_RESET_2;
output reset_pulse_0_RESET_1;
output reset_pulse_0_RESET_0;
output reset_pulse_0_CLK_OUT_48MHZ;
output reset_pulse_0_RESET;

    wire CLK_OUT_48MHZ_i, GND, VCC;
    
    OR2 RESET_3 (.A(BUF2_PBRST_T9_c), .B(CLK_48MHZ_c), .Y(
        reset_pulse_0_RESET_3));
    OR2 RESET_1 (.A(BUF2_PBRST_T9_c), .B(CLK_48MHZ_c), .Y(
        reset_pulse_0_RESET_1));
    OR2 RESET_2 (.A(BUF2_PBRST_T9_c), .B(CLK_48MHZ_c), .Y(
        reset_pulse_0_RESET_2));
    OR2 RESET (.A(BUF2_PBRST_T9_c), .B(CLK_48MHZ_c), .Y(
        reset_pulse_0_RESET));
    OR2 RESET_0 (.A(BUF2_PBRST_T9_c), .B(CLK_48MHZ_c), .Y(
        reset_pulse_0_RESET_0));
    NOR2B CLK_OUT_48MHZ (.A(BUF2_PBRST_T9_c), .B(CLK_48MHZ_c), .Y(
        CLK_OUT_48MHZ_i));
    OR2 RESET_5 (.A(BUF2_PBRST_T9_c), .B(CLK_48MHZ_c), .Y(
        reset_pulse_0_RESET_5));
    VCC VCC_i (.Y(VCC));
    GND GND_i (.Y(GND));
    OR2 RESET_4 (.A(BUF2_PBRST_T9_c), .B(CLK_48MHZ_c), .Y(
        reset_pulse_0_RESET_4));
    CLKINT CLK_OUT_48MHZ_inferred_clock (.A(CLK_OUT_48MHZ_i), .Y(
        reset_pulse_0_CLK_OUT_48MHZ));
    
endmodule


module clock_div_1MHZ_10HZ(
       clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT,
       clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT,
       reset_pulse_0_RESET_5,
       reset_pulse_0_RESET
    );
output clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT;
input  clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT;
input  reset_pulse_0_RESET_5;
input  reset_pulse_0_RESET;

    wire clk_out_i, N_16, \counter[1]_net_1 , \counter[0]_net_1 , N_14, 
        \counter[3]_net_1 , \DWACT_FINC_E[0] , N_9, \counter[8]_net_1 , 
        \DWACT_FINC_E[4] , N_6, \DWACT_FINC_E[7] , \DWACT_FINC_E[6] , 
        clk_out5_13, clk_out5_5, clk_out5_4, clk_out5_11, clk_out5_12, 
        clk_out5_1, clk_out5_0, clk_out5_9, \counter[6]_net_1 , 
        clk_out5_7, clk_out5_3, \counter[2]_net_1 , \counter[7]_net_1 , 
        \counter[4]_net_1 , \counter[9]_net_1 , \counter[10]_net_1 , 
        \counter[12]_net_1 , \counter[13]_net_1 , \counter[5]_net_1 , 
        \counter[15]_net_1 , \counter[14]_net_1 , \counter[16]_net_1 , 
        \counter[11]_net_1 , clk_out_RNO_net_1, \counter_3[15] , I_43, 
        \counter_3[14] , I_40, \counter_3[9] , I_26, \counter_3[8] , 
        I_23, \counter_3[6] , I_17, \counter_3[4] , I_12, I_4, I_5, 
        I_7, I_9, I_14, I_20, I_28, I_32, I_35, I_37, I_46, N_2, 
        \DWACT_FINC_E[10] , \DWACT_FINC_E[9] , N_3, N_4, 
        \DWACT_FINC_E[8] , N_5, N_7, \DWACT_FINC_E[2] , 
        \DWACT_FINC_E[5] , N_8, \DWACT_FINC_E[3] , N_10, N_11, N_12, 
        \DWACT_FINC_E[1] , N_13, N_15, GND, VCC;
    
    XOR2 un5_counter_I_5 (.A(\counter[0]_net_1 ), .B(
        \counter[1]_net_1 ), .Y(I_5));
    AND3 un5_counter_I_33 (.A(\counter[9]_net_1 ), .B(
        \counter[10]_net_1 ), .C(\counter[11]_net_1 ), .Y(
        \DWACT_FINC_E[7] ));
    XOR2 un5_counter_I_20 (.A(N_11), .B(\counter[7]_net_1 ), .Y(I_20));
    NOR2B un5_counter_I_11 (.A(\counter[3]_net_1 ), .B(
        \DWACT_FINC_E[0] ), .Y(N_14));
    XOR2 un5_counter_I_28 (.A(N_8), .B(\counter[10]_net_1 ), .Y(I_28));
    AND3 un5_counter_I_16 (.A(\DWACT_FINC_E[0] ), .B(\DWACT_FINC_E[1] )
        , .C(\counter[5]_net_1 ), .Y(N_12));
    XOR2 un5_counter_I_17 (.A(N_12), .B(\counter[6]_net_1 ), .Y(I_17));
    NOR2 \counter_RNI148N[5]  (.A(\counter[13]_net_1 ), .B(
        \counter[5]_net_1 ), .Y(clk_out5_3));
    XOR2 un5_counter_I_32 (.A(N_7), .B(\counter[11]_net_1 ), .Y(I_32));
    AND3 un5_counter_I_29 (.A(\counter[6]_net_1 ), .B(
        \counter[7]_net_1 ), .C(\counter[8]_net_1 ), .Y(
        \DWACT_FINC_E[5] ));
    DFN1C0 \counter[2]  (.D(I_7), .CLK(
        clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT), .CLR(
        reset_pulse_0_RESET_5), .Q(\counter[2]_net_1 ));
    DFN1C0 \counter[7]  (.D(I_20), .CLK(
        clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT), .CLR(
        reset_pulse_0_RESET_5), .Q(\counter[7]_net_1 ));
    XOR2 un5_counter_I_7 (.A(N_16), .B(\counter[2]_net_1 ), .Y(I_7));
    NOR2 \counter_RNIHD0V[16]  (.A(\counter[16]_net_1 ), .B(
        \counter[11]_net_1 ), .Y(clk_out5_0));
    AND3 un5_counter_I_45 (.A(\DWACT_FINC_E[6] ), .B(
        \DWACT_FINC_E[10] ), .C(\counter[15]_net_1 ), .Y(N_2));
    XOR2 un5_counter_I_23 (.A(N_10), .B(\counter[8]_net_1 ), .Y(I_23));
    DFN1C0 \counter[6]  (.D(\counter_3[6] ), .CLK(
        clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT), .CLR(
        reset_pulse_0_RESET_5), .Q(\counter[6]_net_1 ));
    AOI1B \counter_RNO[4]  (.A(clk_out5_13), .B(clk_out5_12), .C(I_12), 
        .Y(\counter_3[4] ));
    VCC VCC_i (.Y(VCC));
    AND2 un5_counter_I_44 (.A(\DWACT_FINC_E[7] ), .B(\DWACT_FINC_E[9] )
        , .Y(\DWACT_FINC_E[10] ));
    DFN1C0 \counter[8]  (.D(\counter_3[8] ), .CLK(
        clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT), .CLR(
        reset_pulse_0_RESET_5), .Q(\counter[8]_net_1 ));
    AND3 un5_counter_I_22 (.A(\DWACT_FINC_E[0] ), .B(\DWACT_FINC_E[2] )
        , .C(\DWACT_FINC_E[3] ), .Y(N_10));
    DFN1C0 \counter[16]  (.D(I_46), .CLK(
        clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT), .CLR(reset_pulse_0_RESET)
        , .Q(\counter[16]_net_1 ));
    NOR2A \counter_RNIFOFF[4]  (.A(\counter[4]_net_1 ), .B(
        \counter[3]_net_1 ), .Y(clk_out5_7));
    AND3 un5_counter_I_8 (.A(\counter[0]_net_1 ), .B(
        \counter[1]_net_1 ), .C(\counter[2]_net_1 ), .Y(N_15));
    AND3 un5_counter_I_31 (.A(\DWACT_FINC_E[6] ), .B(
        \counter[9]_net_1 ), .C(\counter[10]_net_1 ), .Y(N_7));
    XOR2 un5_counter_I_40 (.A(N_4), .B(\counter[14]_net_1 ), .Y(I_40));
    NOR3C \counter_RNIMRO43[2]  (.A(clk_out5_1), .B(clk_out5_0), .C(
        clk_out5_9), .Y(clk_out5_12));
    NOR3C \counter_RNI3SFD2[1]  (.A(clk_out5_5), .B(clk_out5_4), .C(
        clk_out5_11), .Y(clk_out5_13));
    DFN1C0 \counter[15]  (.D(\counter_3[15] ), .CLK(
        clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT), .CLR(reset_pulse_0_RESET)
        , .Q(\counter[15]_net_1 ));
    AND3 un5_counter_I_36 (.A(\DWACT_FINC_E[6] ), .B(\DWACT_FINC_E[7] )
        , .C(\counter[12]_net_1 ), .Y(N_5));
    XOR2 un5_counter_I_37 (.A(N_5), .B(\counter[13]_net_1 ), .Y(I_37));
    NOR3C \counter_RNI5OVU[6]  (.A(\counter[6]_net_1 ), .B(
        \counter[8]_net_1 ), .C(clk_out5_7), .Y(clk_out5_11));
    DFN1C0 \counter[14]  (.D(\counter_3[14] ), .CLK(
        clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT), .CLR(reset_pulse_0_RESET)
        , .Q(\counter[14]_net_1 ));
    NOR2B un5_counter_I_6 (.A(\counter[1]_net_1 ), .B(
        \counter[0]_net_1 ), .Y(N_16));
    INV un5_counter_I_4 (.A(\counter[0]_net_1 ), .Y(I_4));
    CLKINT clk_out_RNIT8C7 (.A(clk_out_i), .Y(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT));
    AND2 un5_counter_I_15 (.A(\counter[3]_net_1 ), .B(
        \counter[4]_net_1 ), .Y(\DWACT_FINC_E[1] ));
    AOI1B \counter_RNO[8]  (.A(clk_out5_13), .B(clk_out5_12), .C(I_23), 
        .Y(\counter_3[8] ));
    XOR2 un5_counter_I_9 (.A(N_15), .B(\counter[3]_net_1 ), .Y(I_9));
    AOI1B \counter_RNO[14]  (.A(clk_out5_13), .B(clk_out5_12), .C(I_40)
        , .Y(\counter_3[14] ));
    DFN1C0 \counter[4]  (.D(\counter_3[4] ), .CLK(
        clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT), .CLR(
        reset_pulse_0_RESET_5), .Q(\counter[4]_net_1 ));
    AND2 un5_counter_I_21 (.A(\counter[6]_net_1 ), .B(
        \counter[7]_net_1 ), .Y(\DWACT_FINC_E[3] ));
    DFN1C0 \counter[5]  (.D(I_14), .CLK(
        clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT), .CLR(
        reset_pulse_0_RESET_5), .Q(\counter[5]_net_1 ));
    XOR2 un5_counter_I_43 (.A(N_3), .B(\counter[15]_net_1 ), .Y(I_43));
    XOR2 un5_counter_I_14 (.A(N_13), .B(\counter[5]_net_1 ), .Y(I_14));
    NOR2 \counter_RNIC80V[10]  (.A(\counter[10]_net_1 ), .B(
        \counter[12]_net_1 ), .Y(clk_out5_4));
    AX1C clk_out_RNO (.A(clk_out5_12), .B(clk_out5_13), .C(clk_out_i), 
        .Y(clk_out_RNO_net_1));
    XOR2 un5_counter_I_26 (.A(N_9), .B(\counter[9]_net_1 ), .Y(I_26));
    AND3 un5_counter_I_27 (.A(\DWACT_FINC_E[4] ), .B(
        \counter[8]_net_1 ), .C(\counter[9]_net_1 ), .Y(N_8));
    AND3 un5_counter_I_10 (.A(\counter[0]_net_1 ), .B(
        \counter[1]_net_1 ), .C(\counter[2]_net_1 ), .Y(
        \DWACT_FINC_E[0] ));
    GND GND_i (.Y(GND));
    AND3 un5_counter_I_42 (.A(\DWACT_FINC_E[6] ), .B(\DWACT_FINC_E[7] )
        , .C(\DWACT_FINC_E[9] ), .Y(N_3));
    AND3 un5_counter_I_18 (.A(\counter[3]_net_1 ), .B(
        \counter[4]_net_1 ), .C(\counter[5]_net_1 ), .Y(
        \DWACT_FINC_E[2] ));
    DFN1C0 \counter[12]  (.D(I_35), .CLK(
        clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT), .CLR(reset_pulse_0_RESET)
        , .Q(\counter[12]_net_1 ));
    DFN1C0 \counter[1]  (.D(I_5), .CLK(
        clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT), .CLR(
        reset_pulse_0_RESET_5), .Q(\counter[1]_net_1 ));
    NOR2B \counter_RNIJF0V[14]  (.A(\counter[15]_net_1 ), .B(
        \counter[14]_net_1 ), .Y(clk_out5_1));
    DFN1C0 \counter[3]  (.D(I_9), .CLK(
        clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT), .CLR(
        reset_pulse_0_RESET_5), .Q(\counter[3]_net_1 ));
    AND3 un5_counter_I_19 (.A(\DWACT_FINC_E[0] ), .B(\DWACT_FINC_E[2] )
        , .C(\counter[6]_net_1 ), .Y(N_11));
    AOI1B \counter_RNO[6]  (.A(clk_out5_13), .B(clk_out5_12), .C(I_17), 
        .Y(\counter_3[6] ));
    NOR3A \counter_RNIIUN61[2]  (.A(clk_out5_3), .B(\counter[2]_net_1 )
        , .C(\counter[7]_net_1 ), .Y(clk_out5_9));
    XOR2 un5_counter_I_35 (.A(N_6), .B(\counter[12]_net_1 ), .Y(I_35));
    AOI1B \counter_RNO[9]  (.A(clk_out5_13), .B(clk_out5_12), .C(I_26), 
        .Y(\counter_3[9] ));
    AND3 un5_counter_I_13 (.A(\DWACT_FINC_E[0] ), .B(
        \counter[3]_net_1 ), .C(\counter[4]_net_1 ), .Y(N_13));
    DFN1C0 \counter[11]  (.D(I_32), .CLK(
        clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT), .CLR(reset_pulse_0_RESET)
        , .Q(\counter[11]_net_1 ));
    NOR2B un5_counter_I_34 (.A(\DWACT_FINC_E[7] ), .B(
        \DWACT_FINC_E[6] ), .Y(N_6));
    AND3 un5_counter_I_41 (.A(\counter[12]_net_1 ), .B(
        \counter[13]_net_1 ), .C(\counter[14]_net_1 ), .Y(
        \DWACT_FINC_E[9] ));
    XOR2 un5_counter_I_46 (.A(N_2), .B(\counter[16]_net_1 ), .Y(I_46));
    XOR2 un5_counter_I_12 (.A(N_14), .B(\counter[4]_net_1 ), .Y(I_12));
    AND3 un5_counter_I_30 (.A(\DWACT_FINC_E[0] ), .B(\DWACT_FINC_E[2] )
        , .C(\DWACT_FINC_E[5] ), .Y(\DWACT_FINC_E[6] ));
    AND2 un5_counter_I_38 (.A(\counter[12]_net_1 ), .B(
        \counter[13]_net_1 ), .Y(\DWACT_FINC_E[8] ));
    AOI1B \counter_RNO[15]  (.A(clk_out5_13), .B(clk_out5_12), .C(I_43)
        , .Y(\counter_3[15] ));
    NOR2A \counter_RNIIRFF[1]  (.A(\counter[9]_net_1 ), .B(
        \counter[1]_net_1 ), .Y(clk_out5_5));
    NOR2B un5_counter_I_25 (.A(\counter[8]_net_1 ), .B(
        \DWACT_FINC_E[4] ), .Y(N_9));
    AND3 un5_counter_I_39 (.A(\DWACT_FINC_E[6] ), .B(\DWACT_FINC_E[7] )
        , .C(\DWACT_FINC_E[8] ), .Y(N_4));
    DFN1P0 clk_out (.D(clk_out_RNO_net_1), .CLK(
        clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT), .PRE(
        reset_pulse_0_RESET_5), .Q(clk_out_i));
    AND3 un5_counter_I_24 (.A(\DWACT_FINC_E[0] ), .B(\DWACT_FINC_E[2] )
        , .C(\DWACT_FINC_E[3] ), .Y(\DWACT_FINC_E[4] ));
    DFN1C0 \counter[13]  (.D(I_37), .CLK(
        clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT), .CLR(reset_pulse_0_RESET)
        , .Q(\counter[13]_net_1 ));
    DFN1P0 \counter[0]  (.D(I_4), .CLK(
        clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT), .PRE(
        reset_pulse_0_RESET_5), .Q(\counter[0]_net_1 ));
    DFN1C0 \counter[10]  (.D(I_28), .CLK(
        clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT), .CLR(reset_pulse_0_RESET)
        , .Q(\counter[10]_net_1 ));
    DFN1C0 \counter[9]  (.D(\counter_3[9] ), .CLK(
        clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT), .CLR(
        reset_pulse_0_RESET_5), .Q(\counter[9]_net_1 ));
    
endmodule


module spi_master(
       sck_q_RNISE6G,
       spi_mode_config_0_byte_out,
       state_q_89,
       spi_mode_config_0_start,
       MISO_c,
       GLA,
       reset_pulse_0_RESET_1,
       reset_pulse_0_RESET_2,
       MOSI_c,
       reset_pulse_0_RESET,
       ds0_c,
       reset_pulse_0_RESET_0,
       ds1_c,
       ds2_c,
       ds3_c,
       ds4_c,
       ds5_c,
       ds6_c,
       ds7_c,
       reset_pulse_0_RESET_3
    );
output [1:1] sck_q_RNISE6G;
input  [7:0] spi_mode_config_0_byte_out;
output state_q_89;
input  spi_mode_config_0_start;
input  MISO_c;
input  GLA;
input  reset_pulse_0_RESET_1;
input  reset_pulse_0_RESET_2;
output MOSI_c;
input  reset_pulse_0_RESET;
output ds0_c;
input  reset_pulse_0_RESET_0;
output ds1_c;
output ds2_c;
output ds3_c;
output ds4_c;
output ds5_c;
output ds6_c;
output ds7_c;
input  reset_pulse_0_RESET_3;

    wire \state_q_i_d[0] , \sck_d_i_0[1] , N_154, N_36, 
        \state_q_ns_0_i_0[1] , \state_q[1]_net_1 , \state_q[0]_net_1 , 
        \state_q_RNO[0]_net_1 , N_13, N_34, N_50, N_9, 
        \ctr_q[0]_net_1 , \ctr_q[1]_net_1 , N_7, N_23, 
        \ctr_q[2]_net_1 , N_19, N_22, new_data_d_2_sqmuxa, N_33, 
        \sck_q[0]_net_1 , \sck_q[1]_net_1 , N_42, N_43, N_45, ctr_qe, 
        un1_data_d_0_sqmuxa, un1_sck_d_0_sqmuxa, \data_d[7] , 
        \data_q[6]_net_1 , \data_d[6] , \data_q[5]_net_1 , \data_d[5] , 
        \data_q[4]_net_1 , \data_d[4] , \data_q[3]_net_1 , \data_d[3] , 
        \data_q[2]_net_1 , \data_d[2] , \data_q[1]_net_1 , \data_d[1] , 
        \data_q[0]_net_1 , \data_d[0] , \sck_d[0] , \data_q[7]_net_1 , 
        GND, VCC;
    
    MX2 \data_q_RNO[3]  (.A(\data_q[2]_net_1 ), .B(
        spi_mode_config_0_byte_out[3]), .S(state_q_89), .Y(\data_d[3] )
        );
    DFN1E1C0 \data_out_q[7]  (.D(\data_q[7]_net_1 ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_0), .E(new_data_d_2_sqmuxa), .Q(ds7_c));
    DFN1E1C0 \data_q[4]  (.D(\data_d[4] ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_2), .E(un1_data_d_0_sqmuxa), .Q(
        \data_q[4]_net_1 ));
    XA1B \ctr_q_RNO[1]  (.A(\ctr_q[0]_net_1 ), .B(\ctr_q[1]_net_1 ), 
        .C(state_q_89), .Y(N_9));
    AO1A \state_q_RNIHDRV1[0]  (.A(\state_q[0]_net_1 ), .B(N_22), .C(
        state_q_89), .Y(ctr_qe));
    DFN1E1C0 \data_q[2]  (.D(\data_d[2] ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_2), .E(un1_data_d_0_sqmuxa), .Q(
        \data_q[2]_net_1 ));
    NOR2B \sck_q_RNISE6G[1]  (.A(\sck_q[1]_net_1 ), .B(
        \state_q[1]_net_1 ), .Y(sck_q_RNISE6G[1]));
    MX2 \data_q_RNO[1]  (.A(\data_q[0]_net_1 ), .B(
        spi_mode_config_0_byte_out[1]), .S(state_q_89), .Y(\data_d[1] )
        );
    XOR2 un1_sck_q_1_1_SUM1 (.A(\sck_q[0]_net_1 ), .B(\sck_q[1]_net_1 )
        , .Y(N_154));
    DFN1E1C0 \data_q[3]  (.D(\data_d[3] ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_2), .E(un1_data_d_0_sqmuxa), .Q(
        \data_q[3]_net_1 ));
    DFN1E1C0 \data_q[0]  (.D(\data_d[0] ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_2), .E(un1_data_d_0_sqmuxa), .Q(
        \data_q[0]_net_1 ));
    OR2A \state_q_RNI9JLG[1]  (.A(\state_q[1]_net_1 ), .B(N_45), .Y(
        N_22));
    DFN1E1C0 \data_q[6]  (.D(\data_d[6] ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_2), .E(un1_data_d_0_sqmuxa), .Q(
        \data_q[6]_net_1 ));
    DFN1E1C0 \data_out_q[4]  (.D(\data_q[4]_net_1 ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_0), .E(new_data_d_2_sqmuxa), .Q(ds4_c));
    VCC VCC_i (.Y(VCC));
    MX2 \data_q_RNO[6]  (.A(\data_q[5]_net_1 ), .B(
        spi_mode_config_0_byte_out[6]), .S(state_q_89), .Y(\data_d[6] )
        );
    DFN1E1C0 \data_out_q[3]  (.D(\data_q[3]_net_1 ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_0), .E(new_data_d_2_sqmuxa), .Q(ds3_c));
    AXO5 \state_q_RNO_1[1]  (.A(spi_mode_config_0_start), .B(
        \state_q[1]_net_1 ), .C(\state_q[0]_net_1 ), .Y(
        \state_q_ns_0_i_0[1] ));
    DFN1C0 \sck_q[1]  (.D(N_19), .CLK(GLA), .CLR(reset_pulse_0_RESET_3)
        , .Q(\sck_q[1]_net_1 ));
    OA1C \sck_q_RNO[1]  (.A(N_22), .B(\state_q[0]_net_1 ), .C(
        \sck_d_i_0[1] ), .Y(N_19));
    NOR2 \ctr_q_RNO[0]  (.A(\ctr_q[0]_net_1 ), .B(state_q_89), .Y(N_33)
        );
    NOR2B \ctr_q_RNIT5DV[2]  (.A(N_45), .B(N_43), .Y(N_50));
    MX2 \data_q_RNO[7]  (.A(\data_q[6]_net_1 ), .B(
        spi_mode_config_0_byte_out[7]), .S(state_q_89), .Y(\data_d[7] )
        );
    DFN1E1C0 mosi_q (.D(\data_q[7]_net_1 ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_1), .E(un1_sck_d_0_sqmuxa), .Q(MOSI_c));
    DFN1E1C0 \data_out_q[6]  (.D(\data_q[6]_net_1 ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_0), .E(new_data_d_2_sqmuxa), .Q(ds6_c));
    DFN1C0 \state_q[0]  (.D(\state_q_RNO[0]_net_1 ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET), .Q(\state_q[0]_net_1 ));
    DFN1E1C0 \data_out_q[1]  (.D(\data_q[1]_net_1 ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_0), .E(new_data_d_2_sqmuxa), .Q(ds1_c));
    DFN1E1C0 \ctr_q[2]  (.D(N_7), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_2), .E(ctr_qe), .Q(\ctr_q[2]_net_1 ));
    NOR3B \sck_q_RNI8ILG[0]  (.A(\sck_q[0]_net_1 ), .B(
        \state_q[0]_net_1 ), .C(\sck_q[1]_net_1 ), .Y(N_36));
    DFN1C0 \state_q[1]  (.D(N_13), .CLK(GLA), .CLR(reset_pulse_0_RESET)
        , .Q(\state_q[1]_net_1 ));
    XA1C \ctr_q_RNO[2]  (.A(N_23), .B(\ctr_q[2]_net_1 ), .C(state_q_89)
        , .Y(N_7));
    NOR2A \ctr_q_RNI2SEU[2]  (.A(\ctr_q[2]_net_1 ), .B(N_23), .Y(N_43));
    CLKINT \state_q_RNIRHEV_0[0]  (.A(\state_q_i_d[0] ), .Y(state_q_89)
        );
    AO1A mosi_q_RNO (.A(N_154), .B(\state_q[1]_net_1 ), .C(N_36), .Y(
        un1_sck_d_0_sqmuxa));
    OR2A \sck_q_RNO_0[1]  (.A(N_154), .B(N_36), .Y(\sck_d_i_0[1] ));
    OA1C \sck_q_RNO[0]  (.A(N_22), .B(\state_q[0]_net_1 ), .C(
        \sck_q[0]_net_1 ), .Y(\sck_d[0] ));
    DFN1E1C0 \ctr_q[0]  (.D(N_33), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_1), .E(ctr_qe), .Q(\ctr_q[0]_net_1 ));
    MX2 \data_q_RNO[5]  (.A(\data_q[4]_net_1 ), .B(
        spi_mode_config_0_byte_out[5]), .S(state_q_89), .Y(\data_d[5] )
        );
    DFN1E1C0 \data_q[7]  (.D(\data_d[7] ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_2), .E(un1_data_d_0_sqmuxa), .Q(
        \data_q[7]_net_1 ));
    AO1 \sck_q_RNIL00Q1[0]  (.A(spi_mode_config_0_start), .B(
        state_q_89), .C(N_42), .Y(un1_data_d_0_sqmuxa));
    GND GND_i (.Y(GND));
    MX2 \data_q_RNO[2]  (.A(\data_q[1]_net_1 ), .B(
        spi_mode_config_0_byte_out[2]), .S(state_q_89), .Y(\data_d[2] )
        );
    OA1A \state_q_RNO_0[1]  (.A(\sck_q[0]_net_1 ), .B(\sck_q[1]_net_1 )
        , .C(\state_q[0]_net_1 ), .Y(N_34));
    NOR3A \state_q_RNO[0]  (.A(spi_mode_config_0_start), .B(
        \state_q[1]_net_1 ), .C(N_36), .Y(\state_q_RNO[0]_net_1 ));
    NOR2B \state_q_RNIBF4F1[1]  (.A(N_50), .B(\state_q[1]_net_1 ), .Y(
        new_data_d_2_sqmuxa));
    DFN1E1C0 \data_q[5]  (.D(\data_d[5] ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_2), .E(un1_data_d_0_sqmuxa), .Q(
        \data_q[5]_net_1 ));
    NOR3B \sck_q_RNI9JLG[0]  (.A(\sck_q[0]_net_1 ), .B(
        \state_q[1]_net_1 ), .C(\sck_q[1]_net_1 ), .Y(N_42));
    MX2 \data_q_RNO[4]  (.A(\data_q[3]_net_1 ), .B(
        spi_mode_config_0_byte_out[4]), .S(state_q_89), .Y(\data_d[4] )
        );
    NOR3 \state_q_RNO[1]  (.A(N_34), .B(\state_q_ns_0_i_0[1] ), .C(
        N_50), .Y(N_13));
    DFN1E1C0 \data_q[1]  (.D(\data_d[1] ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_2), .E(un1_data_d_0_sqmuxa), .Q(
        \data_q[1]_net_1 ));
    DFN1E1C0 \ctr_q[1]  (.D(N_9), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_2), .E(ctr_qe), .Q(\ctr_q[1]_net_1 ));
    DFN1P0 \sck_q[0]  (.D(\sck_d[0] ), .CLK(GLA), .PRE(
        reset_pulse_0_RESET_3), .Q(\sck_q[0]_net_1 ));
    DFN1E1C0 \data_out_q[0]  (.D(\data_q[0]_net_1 ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_0), .E(new_data_d_2_sqmuxa), .Q(ds0_c));
    DFN1E1C0 \data_out_q[2]  (.D(\data_q[2]_net_1 ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_0), .E(new_data_d_2_sqmuxa), .Q(ds2_c));
    MX2 \data_q_RNO[0]  (.A(MISO_c), .B(spi_mode_config_0_byte_out[0]), 
        .S(state_q_89), .Y(\data_d[0] ));
    DFN1E1C0 \data_out_q[5]  (.D(\data_q[5]_net_1 ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_0), .E(new_data_d_2_sqmuxa), .Q(ds5_c));
    NOR2 \state_q_RNIRHEV[0]  (.A(\state_q[0]_net_1 ), .B(
        \state_q[1]_net_1 ), .Y(\state_q_i_d[0] ));
    NOR2B \sck_q_RNIR9U[0]  (.A(\sck_q[0]_net_1 ), .B(\sck_q[1]_net_1 )
        , .Y(N_45));
    OR2B \ctr_q_RNIBS9K[1]  (.A(\ctr_q[1]_net_1 ), .B(\ctr_q[0]_net_1 )
        , .Y(N_23));
    
endmodule


module CLK_26MHZ(
       GLA,
       reset_pulse_0_CLK_OUT_48MHZ
    );
output GLA;
input  reset_pulse_0_CLK_OUT_48MHZ;

    wire CLKAP, Core_GLB, Core_GLC, LOCK, Core_YB, Core_YC, 
        CLK_26MHZ_GND, CLK_26MHZ_VCC;
    
    PLL #( .VCOFREQUENCY(208.000000) )  Core (.CLKA(CLKAP), .EXTFB(
        CLK_26MHZ_GND), .POWERDOWN(CLK_26MHZ_VCC), .GLA(GLA), .LOCK(
        LOCK), .GLB(Core_GLB), .YB(Core_YB), .GLC(Core_GLC), .YC(
        Core_YC), .OADIV0(CLK_26MHZ_VCC), .OADIV1(CLK_26MHZ_VCC), 
        .OADIV2(CLK_26MHZ_VCC), .OADIV3(CLK_26MHZ_GND), .OADIV4(
        CLK_26MHZ_GND), .OAMUX0(CLK_26MHZ_GND), .OAMUX1(CLK_26MHZ_GND), 
        .OAMUX2(CLK_26MHZ_VCC), .DLYGLA0(CLK_26MHZ_GND), .DLYGLA1(
        CLK_26MHZ_GND), .DLYGLA2(CLK_26MHZ_GND), .DLYGLA3(
        CLK_26MHZ_GND), .DLYGLA4(CLK_26MHZ_GND), .OBDIV0(CLK_26MHZ_GND)
        , .OBDIV1(CLK_26MHZ_GND), .OBDIV2(CLK_26MHZ_GND), .OBDIV3(
        CLK_26MHZ_GND), .OBDIV4(CLK_26MHZ_GND), .OBMUX0(CLK_26MHZ_GND), 
        .OBMUX1(CLK_26MHZ_GND), .OBMUX2(CLK_26MHZ_GND), .DLYYB0(
        CLK_26MHZ_GND), .DLYYB1(CLK_26MHZ_GND), .DLYYB2(CLK_26MHZ_GND), 
        .DLYYB3(CLK_26MHZ_GND), .DLYYB4(CLK_26MHZ_GND), .DLYGLB0(
        CLK_26MHZ_GND), .DLYGLB1(CLK_26MHZ_GND), .DLYGLB2(
        CLK_26MHZ_GND), .DLYGLB3(CLK_26MHZ_GND), .DLYGLB4(
        CLK_26MHZ_GND), .OCDIV0(CLK_26MHZ_GND), .OCDIV1(CLK_26MHZ_GND), 
        .OCDIV2(CLK_26MHZ_GND), .OCDIV3(CLK_26MHZ_GND), .OCDIV4(
        CLK_26MHZ_GND), .OCMUX0(CLK_26MHZ_GND), .OCMUX1(CLK_26MHZ_GND), 
        .OCMUX2(CLK_26MHZ_GND), .DLYYC0(CLK_26MHZ_GND), .DLYYC1(
        CLK_26MHZ_GND), .DLYYC2(CLK_26MHZ_GND), .DLYYC3(CLK_26MHZ_GND), 
        .DLYYC4(CLK_26MHZ_GND), .DLYGLC0(CLK_26MHZ_GND), .DLYGLC1(
        CLK_26MHZ_GND), .DLYGLC2(CLK_26MHZ_GND), .DLYGLC3(
        CLK_26MHZ_GND), .DLYGLC4(CLK_26MHZ_GND), .FINDIV0(
        CLK_26MHZ_GND), .FINDIV1(CLK_26MHZ_GND), .FINDIV2(
        CLK_26MHZ_GND), .FINDIV3(CLK_26MHZ_VCC), .FINDIV4(
        CLK_26MHZ_GND), .FINDIV5(CLK_26MHZ_GND), .FINDIV6(
        CLK_26MHZ_GND), .FBDIV0(CLK_26MHZ_GND), .FBDIV1(CLK_26MHZ_VCC), 
        .FBDIV2(CLK_26MHZ_VCC), .FBDIV3(CLK_26MHZ_GND), .FBDIV4(
        CLK_26MHZ_GND), .FBDIV5(CLK_26MHZ_VCC), .FBDIV6(CLK_26MHZ_GND), 
        .FBDLY0(CLK_26MHZ_GND), .FBDLY1(CLK_26MHZ_GND), .FBDLY2(
        CLK_26MHZ_GND), .FBDLY3(CLK_26MHZ_GND), .FBDLY4(CLK_26MHZ_GND), 
        .FBSEL0(CLK_26MHZ_VCC), .FBSEL1(CLK_26MHZ_GND), .XDLYSEL(
        CLK_26MHZ_GND), .VCOSEL0(CLK_26MHZ_GND), .VCOSEL1(
        CLK_26MHZ_VCC), .VCOSEL2(CLK_26MHZ_VCC));
    PLLINT pllint1 (.A(reset_pulse_0_CLK_OUT_48MHZ), .Y(CLKAP));
    VCC VCC_i (.Y(CLK_26MHZ_VCC));
    GND GND_i (.Y(CLK_26MHZ_GND));
    
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

    wire VCC, reset_pulse_0_CLK_OUT_48MHZ, GLA, 
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
        \spi_mode_config_0_byte_out[7] , GND, 
        \spi_master_0.state_q_89 , \sck_q_RNISE6G[1] , 
        \read_buffer_0.byte_out[0] , \read_buffer_0.byte_out_cl[0] , 
        \read_buffer_0.byte_out[1] , \read_buffer_0.byte_out[2] , 
        \read_buffer_0.byte_out[3] , \read_buffer_0.byte_out[6] , 
        BUF2_PBRST_T9_c, CLK_48MHZ_c, MISO_c, MOSI_c, SS_c, ds0_c, 
        ds1_c, ds2_c, ds3_c, ds4_c, ds5_c, ds6_c, ds7_c, 
        reset_pulse_0_RESET_0, reset_pulse_0_RESET_1, 
        reset_pulse_0_RESET_2, reset_pulse_0_RESET_3, 
        reset_pulse_0_RESET_4, reset_pulse_0_RESET_5;
    
    OUTBUF ds2_pad (.D(ds2_c), .PAD(ds2));
    spi_mode_config spi_mode_config_0 (.byte_out_cl({
        \read_buffer_0.byte_out_cl[0] }), .spi_mode_config_0_byte_out({
        \spi_mode_config_0_byte_out[7] , 
        \spi_mode_config_0_byte_out[6] , 
        \spi_mode_config_0_byte_out[5] , 
        \spi_mode_config_0_byte_out[4] , 
        \spi_mode_config_0_byte_out[3] , 
        \spi_mode_config_0_byte_out[2] , 
        \spi_mode_config_0_byte_out[1] , 
        \spi_mode_config_0_byte_out[0] }), .byte_out_0(
        \read_buffer_0.byte_out[0] ), .byte_out_1(
        \read_buffer_0.byte_out[1] ), .byte_out_2(
        \read_buffer_0.byte_out[2] ), .byte_out_6(
        \read_buffer_0.byte_out[6] ), .byte_out_3(
        \read_buffer_0.byte_out[3] ), .GLA(GLA), 
        .reset_pulse_0_RESET_0(reset_pulse_0_RESET_0), 
        .spi_mode_config_0_next_cmd(spi_mode_config_0_next_cmd), 
        .ds7_c(ds7_c), .orbit_control_0_tx_enable(
        orbit_control_0_tx_enable), .ds6_c(ds6_c), 
        .spi_mode_config_0_begin_pass(spi_mode_config_0_begin_pass), 
        .ds4_c(ds4_c), .ds5_c(ds5_c), .spi_mode_config_0_start(
        spi_mode_config_0_start), .state_q_89(
        \spi_master_0.state_q_89 ), .reset_pulse_0_RESET_3(
        reset_pulse_0_RESET_3), .SS_c(SS_c), .reset_pulse_0_RESET_5(
        reset_pulse_0_RESET_5), .reset_pulse_0_RESET(
        reset_pulse_0_RESET), .reset_pulse_0_RESET_2(
        reset_pulse_0_RESET_2), .reset_pulse_0_RESET_1(
        reset_pulse_0_RESET_1), .reset_pulse_0_RESET_4(
        reset_pulse_0_RESET_4));
    INBUF MISO_pad (.PAD(MISO), .Y(MISO_c));
    OUTBUF ds7_pad (.D(ds7_c), .PAD(ds7));
    OUTBUF SS_pad (.D(SS_c), .PAD(SS));
    orbit_control orbit_control_0 (.spi_mode_config_0_begin_pass(
        spi_mode_config_0_begin_pass), .orbit_control_0_tx_enable(
        orbit_control_0_tx_enable), 
        .clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .reset_pulse_0_RESET(
        reset_pulse_0_RESET), .reset_pulse_0_RESET_4(
        reset_pulse_0_RESET_4), .reset_pulse_0_RESET_5(
        reset_pulse_0_RESET_5), .reset_pulse_0_RESET_2(
        reset_pulse_0_RESET_2), .reset_pulse_0_RESET_3(
        reset_pulse_0_RESET_3));
    clock_div_26MHZ_1MHZ clock_div_26MHZ_1MHZ_0 (
        .clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT(
        clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT), .GLA(GLA), 
        .reset_pulse_0_RESET_5(reset_pulse_0_RESET_5), 
        .reset_pulse_0_RESET_4(reset_pulse_0_RESET_4), 
        .reset_pulse_0_RESET(reset_pulse_0_RESET));
    VCC VCC_i (.Y(VCC));
    read_buffer read_buffer_0 (.byte_out_cl({
        \read_buffer_0.byte_out_cl[0] }), .byte_out_2(
        \read_buffer_0.byte_out[2] ), .byte_out_0(
        \read_buffer_0.byte_out[0] ), .byte_out_6(
        \read_buffer_0.byte_out[6] ), .byte_out_3(
        \read_buffer_0.byte_out[3] ), .byte_out_1(
        \read_buffer_0.byte_out[1] ), .spi_mode_config_0_next_cmd(
        spi_mode_config_0_next_cmd), .reset_pulse_0_RESET_5(
        reset_pulse_0_RESET_5), .reset_pulse_0_RESET_1(
        reset_pulse_0_RESET_1), .reset_pulse_0_RESET(
        reset_pulse_0_RESET), .reset_pulse_0_CLK_OUT_48MHZ(
        reset_pulse_0_CLK_OUT_48MHZ), .reset_pulse_0_RESET_2(
        reset_pulse_0_RESET_2), .reset_pulse_0_RESET_3(
        reset_pulse_0_RESET_3));
    OUTBUF ds4_pad (.D(ds4_c), .PAD(ds4));
    reset_pulse reset_pulse_0 (.reset_pulse_0_RESET_5(
        reset_pulse_0_RESET_5), .BUF2_PBRST_T9_c(BUF2_PBRST_T9_c), 
        .CLK_48MHZ_c(CLK_48MHZ_c), .reset_pulse_0_RESET_4(
        reset_pulse_0_RESET_4), .reset_pulse_0_RESET_3(
        reset_pulse_0_RESET_3), .reset_pulse_0_RESET_2(
        reset_pulse_0_RESET_2), .reset_pulse_0_RESET_1(
        reset_pulse_0_RESET_1), .reset_pulse_0_RESET_0(
        reset_pulse_0_RESET_0), .reset_pulse_0_CLK_OUT_48MHZ(
        reset_pulse_0_CLK_OUT_48MHZ), .reset_pulse_0_RESET(
        reset_pulse_0_RESET));
    GND GND_i (.Y(GND));
    clock_div_1MHZ_10HZ clock_div_1MHZ_10HZ_0 (
        .clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), 
        .clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT(
        clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT), .reset_pulse_0_RESET_5(
        reset_pulse_0_RESET_5), .reset_pulse_0_RESET(
        reset_pulse_0_RESET));
    INBUF CLK_48MHZ_pad (.PAD(CLK_48MHZ), .Y(CLK_48MHZ_c));
    OUTBUF ds3_pad (.D(ds3_c), .PAD(ds3));
    INBUF BUF2_PBRST_T9_pad (.PAD(BUF2_PBRST_T9), .Y(BUF2_PBRST_T9_c));
    OUTBUF ds1_pad (.D(ds1_c), .PAD(ds1));
    spi_master spi_master_0 (.sck_q_RNISE6G({\sck_q_RNISE6G[1] }), 
        .spi_mode_config_0_byte_out({\spi_mode_config_0_byte_out[7] , 
        \spi_mode_config_0_byte_out[6] , 
        \spi_mode_config_0_byte_out[5] , 
        \spi_mode_config_0_byte_out[4] , 
        \spi_mode_config_0_byte_out[3] , 
        \spi_mode_config_0_byte_out[2] , 
        \spi_mode_config_0_byte_out[1] , 
        \spi_mode_config_0_byte_out[0] }), .state_q_89(
        \spi_master_0.state_q_89 ), .spi_mode_config_0_start(
        spi_mode_config_0_start), .MISO_c(MISO_c), .GLA(GLA), 
        .reset_pulse_0_RESET_1(reset_pulse_0_RESET_1), 
        .reset_pulse_0_RESET_2(reset_pulse_0_RESET_2), .MOSI_c(MOSI_c), 
        .reset_pulse_0_RESET(reset_pulse_0_RESET), .ds0_c(ds0_c), 
        .reset_pulse_0_RESET_0(reset_pulse_0_RESET_0), .ds1_c(ds1_c), 
        .ds2_c(ds2_c), .ds3_c(ds3_c), .ds4_c(ds4_c), .ds5_c(ds5_c), 
        .ds6_c(ds6_c), .ds7_c(ds7_c), .reset_pulse_0_RESET_3(
        reset_pulse_0_RESET_3));
    OUTBUF MOSI_pad (.D(MOSI_c), .PAD(MOSI));
    CLK_26MHZ CLK_26MHZ_0 (.GLA(GLA), .reset_pulse_0_CLK_OUT_48MHZ(
        reset_pulse_0_CLK_OUT_48MHZ));
    OUTBUF ds6_pad (.D(ds6_c), .PAD(ds6));
    OUTBUF ds5_pad (.D(ds5_c), .PAD(ds5));
    OUTBUF ds0_pad (.D(ds0_c), .PAD(ds0));
    OUTBUF SCLK_pad (.D(\sck_q_RNISE6G[1] ), .PAD(SCLK));
    
endmodule
