`timescale 1 ns/100 ps
// Version: v11.6 11.6.0.34


module clock_div_1MHZ_100KHZ(
       clock_div_1MHZ_100KHZ_0_CLK_100KHZ_OUT,
       GLA,
       reset_pulse_0_RESET_6,
       reset_pulse_0_RESET_7
    );
output clock_div_1MHZ_100KHZ_0_CLK_100KHZ_OUT;
input  GLA;
input  reset_pulse_0_RESET_6;
input  reset_pulse_0_RESET_7;

    wire clk_out_i, N_16, \counter[1]_net_1 , \counter[0]_net_1 , N_14, 
        \counter[3]_net_1 , \DWACT_FINC_E[0] , N_9, \counter[8]_net_1 , 
        \DWACT_FINC_E[4] , N_6, \DWACT_FINC_E[7] , \DWACT_FINC_E[6] , 
        clk_out5_14, clk_out5_6, clk_out5_5, clk_out5_12, clk_out5_13, 
        clk_out5_2, clk_out5_1, clk_out5_10, clk_out5_8, 
        \counter[12]_net_1 , clk_out5_4, \counter[7]_net_1 , 
        \counter[10]_net_1 , \counter[15]_net_1 , \counter[16]_net_1 , 
        \counter[9]_net_1 , \counter[4]_net_1 , \counter[13]_net_1 , 
        \counter[6]_net_1 , \counter[2]_net_1 , \counter[5]_net_1 , 
        \counter[11]_net_1 , \counter[14]_net_1 , clk_out_RNO_0, 
        \counter_3[0] , \counter_3[2] , I_7_0, \counter_3[1] , I_5_0, 
        I_9_0, I_12_0, I_14_0, I_17_0, I_20_0, I_23_0, I_26_0, I_28_0, 
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
    NOR3 \counter_RNITBM91[16]  (.A(\counter[15]_net_1 ), .B(
        \counter[16]_net_1 ), .C(\counter[3]_net_1 ), .Y(clk_out5_8));
    XOR2 un5_counter_I_32 (.A(N_7), .B(\counter[11]_net_1 ), .Y(I_32_0)
        );
    AND3 un5_counter_I_29 (.A(\counter[6]_net_1 ), .B(
        \counter[7]_net_1 ), .C(\counter[8]_net_1 ), .Y(
        \DWACT_FINC_E[5] ));
    DFN1C0 \counter[2]  (.D(\counter_3[2] ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_7), .Q(\counter[2]_net_1 ));
    DFN1C0 \counter[7]  (.D(I_20_0), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_7), .Q(\counter[7]_net_1 ));
    XOR2 un5_counter_I_7 (.A(N_16), .B(\counter[2]_net_1 ), .Y(I_7_0));
    AND3 un5_counter_I_45 (.A(\DWACT_FINC_E[6] ), .B(
        \DWACT_FINC_E[10] ), .C(\counter[15]_net_1 ), .Y(N_2));
    XOR2 un5_counter_I_23 (.A(N_10), .B(\counter[8]_net_1 ), .Y(I_23_0)
        );
    AO1B \counter_RNO[0]  (.A(clk_out5_14), .B(clk_out5_13), .C(
        \counter[0]_net_1 ), .Y(\counter_3[0] ));
    DFN1C0 \counter[6]  (.D(I_17_0), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_7), .Q(\counter[6]_net_1 ));
    NOR3C \counter_RNI0FHT3[12]  (.A(clk_out5_6), .B(clk_out5_5), .C(
        clk_out5_12), .Y(clk_out5_14));
    VCC VCC_i (.Y(VCC));
    AND2 un5_counter_I_44 (.A(\DWACT_FINC_E[7] ), .B(\DWACT_FINC_E[9] )
        , .Y(\DWACT_FINC_E[10] ));
    DFN1C0 \counter[8]  (.D(I_23_0), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_7), .Q(\counter[8]_net_1 ));
    AND3 un5_counter_I_22 (.A(\DWACT_FINC_E[0] ), .B(\DWACT_FINC_E[2] )
        , .C(\DWACT_FINC_E[3] ), .Y(N_10));
    DFN1C0 \counter[16]  (.D(I_46_0), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_7), .Q(\counter[16]_net_1 ));
    AND3 un5_counter_I_8 (.A(\counter[0]_net_1 ), .B(
        \counter[1]_net_1 ), .C(\counter[2]_net_1 ), .Y(N_15));
    AND3 un5_counter_I_31 (.A(\DWACT_FINC_E[6] ), .B(
        \counter[9]_net_1 ), .C(\counter[10]_net_1 ), .Y(N_7));
    AOI1B \counter_RNO[1]  (.A(clk_out5_14), .B(clk_out5_13), .C(I_5_0)
        , .Y(\counter_3[1] ));
    XOR2 un5_counter_I_40 (.A(N_4), .B(\counter[14]_net_1 ), .Y(I_40_0)
        );
    DFN1C0 \counter[15]  (.D(I_43_0), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_7), .Q(\counter[15]_net_1 ));
    AND3 un5_counter_I_36 (.A(\DWACT_FINC_E[6] ), .B(\DWACT_FINC_E[7] )
        , .C(\counter[12]_net_1 ), .Y(N_5));
    NOR2 \counter_RNIO5RR[13]  (.A(\counter[13]_net_1 ), .B(
        \counter[6]_net_1 ), .Y(clk_out5_4));
    XOR2 un5_counter_I_37 (.A(N_5), .B(\counter[13]_net_1 ), .Y(I_37_0)
        );
    NOR3A \counter_RNIE9MN1[10]  (.A(clk_out5_4), .B(
        \counter[7]_net_1 ), .C(\counter[10]_net_1 ), .Y(clk_out5_10));
    DFN1C0 \counter[14]  (.D(I_40_0), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_7), .Q(\counter[14]_net_1 ));
    NOR2B un5_counter_I_6 (.A(\counter[1]_net_1 ), .B(
        \counter[0]_net_1 ), .Y(N_16));
    AND2 un5_counter_I_15 (.A(\counter[3]_net_1 ), .B(
        \counter[4]_net_1 ), .Y(\DWACT_FINC_E[1] ));
    NOR2 \counter_RNIF80S[8]  (.A(\counter[9]_net_1 ), .B(
        \counter[8]_net_1 ), .Y(clk_out5_6));
    XOR2 un5_counter_I_9 (.A(N_15), .B(\counter[3]_net_1 ), .Y(I_9_0));
    DFN1C0 \counter[4]  (.D(I_12_0), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_7), .Q(\counter[4]_net_1 ));
    AND2 un5_counter_I_21 (.A(\counter[6]_net_1 ), .B(
        \counter[7]_net_1 ), .Y(\DWACT_FINC_E[3] ));
    DFN1C0 \counter[5]  (.D(I_14_0), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_7), .Q(\counter[5]_net_1 ));
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
    AND3 un5_counter_I_10 (.A(\counter[0]_net_1 ), .B(
        \counter[1]_net_1 ), .C(\counter[2]_net_1 ), .Y(
        \DWACT_FINC_E[0] ));
    GND GND_i (.Y(GND));
    AND3 un5_counter_I_42 (.A(\DWACT_FINC_E[6] ), .B(\DWACT_FINC_E[7] )
        , .C(\DWACT_FINC_E[9] ), .Y(N_3));
    AND3 un5_counter_I_18 (.A(\counter[3]_net_1 ), .B(
        \counter[4]_net_1 ), .C(\counter[5]_net_1 ), .Y(
        \DWACT_FINC_E[2] ));
    NOR3C \counter_RNIOECF3[10]  (.A(clk_out5_2), .B(clk_out5_1), .C(
        clk_out5_10), .Y(clk_out5_13));
    DFN1C0 \counter[12]  (.D(I_35_0), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_7), .Q(\counter[12]_net_1 ));
    DFN1C0 \counter[1]  (.D(\counter_3[1] ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_7), .Q(\counter[1]_net_1 ));
    DFN1C0 \counter[3]  (.D(I_9_0), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_7), .Q(\counter[3]_net_1 ));
    AND3 un5_counter_I_19 (.A(\DWACT_FINC_E[0] ), .B(\DWACT_FINC_E[2] )
        , .C(\counter[6]_net_1 ), .Y(N_11));
    NOR2 \counter_RNI3SVR[1]  (.A(\counter[1]_net_1 ), .B(
        \counter[4]_net_1 ), .Y(clk_out5_5));
    XOR2 un5_counter_I_35 (.A(N_6), .B(\counter[12]_net_1 ), .Y(I_35_0)
        );
    AND3 un5_counter_I_13 (.A(\DWACT_FINC_E[0] ), .B(
        \counter[3]_net_1 ), .C(\counter[4]_net_1 ), .Y(N_13));
    NOR3B \counter_RNIEAH52[12]  (.A(\counter[0]_net_1 ), .B(
        clk_out5_8), .C(\counter[12]_net_1 ), .Y(clk_out5_12));
    NOR2A \counter_RNI5UVR[2]  (.A(\counter[2]_net_1 ), .B(
        \counter[5]_net_1 ), .Y(clk_out5_2));
    DFN1C0 \counter[11]  (.D(I_32_0), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_7), .Q(\counter[11]_net_1 ));
    NOR2B un5_counter_I_34 (.A(\DWACT_FINC_E[7] ), .B(
        \DWACT_FINC_E[6] ), .Y(N_6));
    AND3 un5_counter_I_41 (.A(\counter[12]_net_1 ), .B(
        \counter[13]_net_1 ), .C(\counter[14]_net_1 ), .Y(
        \DWACT_FINC_E[9] ));
    CLKINT clk_out_RNIOQD8 (.A(clk_out_i), .Y(
        clock_div_1MHZ_100KHZ_0_CLK_100KHZ_OUT));
    XOR2 un5_counter_I_46 (.A(N_2), .B(\counter[16]_net_1 ), .Y(I_46_0)
        );
    XOR2 un5_counter_I_12 (.A(N_14), .B(\counter[4]_net_1 ), .Y(I_12_0)
        );
    AND3 un5_counter_I_30 (.A(\DWACT_FINC_E[0] ), .B(\DWACT_FINC_E[2] )
        , .C(\DWACT_FINC_E[5] ), .Y(\DWACT_FINC_E[6] ));
    AND2 un5_counter_I_38 (.A(\counter[12]_net_1 ), .B(
        \counter[13]_net_1 ), .Y(\DWACT_FINC_E[8] ));
    NOR2 \counter_RNI57MR[11]  (.A(\counter[11]_net_1 ), .B(
        \counter[14]_net_1 ), .Y(clk_out5_1));
    NOR2B un5_counter_I_25 (.A(\counter[8]_net_1 ), .B(
        \DWACT_FINC_E[4] ), .Y(N_9));
    AND3 un5_counter_I_39 (.A(\DWACT_FINC_E[6] ), .B(\DWACT_FINC_E[7] )
        , .C(\DWACT_FINC_E[8] ), .Y(N_4));
    DFN1P0 clk_out (.D(clk_out_RNO_0), .CLK(GLA), .PRE(
        reset_pulse_0_RESET_6), .Q(clk_out_i));
    AND3 un5_counter_I_24 (.A(\DWACT_FINC_E[0] ), .B(\DWACT_FINC_E[2] )
        , .C(\DWACT_FINC_E[3] ), .Y(\DWACT_FINC_E[4] ));
    DFN1C0 \counter[13]  (.D(I_37_0), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_7), .Q(\counter[13]_net_1 ));
    DFN1P0 \counter[0]  (.D(\counter_3[0] ), .CLK(GLA), .PRE(
        reset_pulse_0_RESET_7), .Q(\counter[0]_net_1 ));
    DFN1C0 \counter[10]  (.D(I_28_0), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_7), .Q(\counter[10]_net_1 ));
    DFN1C0 \counter[9]  (.D(I_26_0), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_7), .Q(\counter[9]_net_1 ));
    
endmodule


module reset_pulse(
       reset_pulse_0_RESET_7,
       BUF2_PBRST_N_T9_c,
       CLK_48MHZ_c,
       reset_pulse_0_RESET_6,
       reset_pulse_0_RESET_5,
       reset_pulse_0_RESET_4,
       reset_pulse_0_RESET_3,
       reset_pulse_0_RESET_2,
       reset_pulse_0_RESET_1,
       reset_pulse_0_RESET_0,
       reset_pulse_0_CLK_OUT_48MHZ,
       reset_pulse_0_RESET
    );
output reset_pulse_0_RESET_7;
input  BUF2_PBRST_N_T9_c;
input  CLK_48MHZ_c;
output reset_pulse_0_RESET_6;
output reset_pulse_0_RESET_5;
output reset_pulse_0_RESET_4;
output reset_pulse_0_RESET_3;
output reset_pulse_0_RESET_2;
output reset_pulse_0_RESET_1;
output reset_pulse_0_RESET_0;
output reset_pulse_0_CLK_OUT_48MHZ;
output reset_pulse_0_RESET;

    wire GND, VCC;
    
    OR2 RESET_3 (.A(BUF2_PBRST_N_T9_c), .B(CLK_48MHZ_c), .Y(
        reset_pulse_0_RESET_3));
    OR2 RESET_1 (.A(BUF2_PBRST_N_T9_c), .B(CLK_48MHZ_c), .Y(
        reset_pulse_0_RESET_1));
    OR2 RESET_2 (.A(BUF2_PBRST_N_T9_c), .B(CLK_48MHZ_c), .Y(
        reset_pulse_0_RESET_2));
    OR2 RESET (.A(BUF2_PBRST_N_T9_c), .B(CLK_48MHZ_c), .Y(
        reset_pulse_0_RESET));
    OR2 RESET_7 (.A(BUF2_PBRST_N_T9_c), .B(CLK_48MHZ_c), .Y(
        reset_pulse_0_RESET_7));
    OR2 RESET_0 (.A(BUF2_PBRST_N_T9_c), .B(CLK_48MHZ_c), .Y(
        reset_pulse_0_RESET_0));
    NOR2B CLK_OUT_48MHZ (.A(BUF2_PBRST_N_T9_c), .B(CLK_48MHZ_c), .Y(
        reset_pulse_0_CLK_OUT_48MHZ));
    OR2 RESET_5 (.A(BUF2_PBRST_N_T9_c), .B(CLK_48MHZ_c), .Y(
        reset_pulse_0_RESET_5));
    VCC VCC_i (.Y(VCC));
    OR2 RESET_6 (.A(BUF2_PBRST_N_T9_c), .B(CLK_48MHZ_c), .Y(
        reset_pulse_0_RESET_6));
    GND GND_i (.Y(GND));
    OR2 RESET_4 (.A(BUF2_PBRST_N_T9_c), .B(CLK_48MHZ_c), .Y(
        reset_pulse_0_RESET_4));
    
endmodule


module test_harness_geiger_stack(
       geig_data_handling_0_G_DATA_STACK_40,
       geig_data_handling_0_G_DATA_STACK_0,
       geig_data_handling_0_G_DATA_STACK_32,
       geig_data_handling_0_G_DATA_STACK_46,
       geig_data_handling_0_G_DATA_STACK_36,
       geig_data_handling_0_G_DATA_STACK_38,
       geig_data_handling_0_G_DATA_STACK_39,
       geig_data_handling_0_G_DATA_STACK_33,
       geig_data_handling_0_G_DATA_STACK_11,
       geig_data_handling_0_G_DATA_STACK_9,
       geig_data_handling_0_G_DATA_STACK_7,
       geig_data_handling_0_G_DATA_STACK_17,
       geig_data_handling_0_G_DATA_STACK_15,
       geig_data_handling_0_G_DATA_STACK_21,
       geig_data_handling_0_G_DATA_STACK_25,
       geig_data_handling_0_G_DATA_STACK_29,
       geig_data_handling_0_G_DATA_STACK_43,
       geig_data_handling_0_G_DATA_STACK_44,
       geig_data_handling_0_G_DATA_STACK_45,
       geig_data_handling_0_G_DATA_STACK_19,
       geig_data_handling_0_G_DATA_STACK_31,
       geig_data_handling_0_G_DATA_STACK_34,
       geig_data_handling_0_G_DATA_STACK_35,
       geig_data_handling_0_G_DATA_STACK_20,
       geig_data_handling_0_G_DATA_STACK_22,
       geig_data_handling_0_G_DATA_STACK_23,
       geig_data_handling_0_G_DATA_STACK_24,
       geig_data_handling_0_G_DATA_STACK_26,
       geig_data_handling_0_G_DATA_STACK_27,
       geig_data_handling_0_G_DATA_STACK_28,
       geig_data_handling_0_G_DATA_STACK_30,
       geig_data_handling_0_G_DATA_STACK_37,
       geig_data_handling_0_G_DATA_STACK_41,
       geig_data_handling_0_G_DATA_STACK_42,
       geig_data_handling_0_G_DATA_STACK_18,
       geig_data_handling_0_G_DATA_STACK_16,
       geig_data_handling_0_G_DATA_STACK_14,
       geig_data_handling_0_G_DATA_STACK_13,
       geig_data_handling_0_G_DATA_STACK_12,
       geig_data_handling_0_G_DATA_STACK_10,
       geig_data_handling_0_G_DATA_STACK_8,
       reset_pulse_0_RESET_0,
       GLA,
       reset_pulse_0_RESET,
       reset_pulse_0_RESET_2,
       D0_OUT_c,
       D1_OUT_c,
       D2_OUT_c,
       D3_OUT_c,
       D4_OUT_c,
       D5_OUT_c,
       D6_OUT_c,
       reset_pulse_0_RESET_3,
       D7_OUT_c,
       reset_pulse_0_RESET_4,
       reset_pulse_0_RESET_5,
       reset_pulse_0_RESET_6
    );
input  geig_data_handling_0_G_DATA_STACK_40;
input  geig_data_handling_0_G_DATA_STACK_0;
input  geig_data_handling_0_G_DATA_STACK_32;
input  geig_data_handling_0_G_DATA_STACK_46;
input  geig_data_handling_0_G_DATA_STACK_36;
input  geig_data_handling_0_G_DATA_STACK_38;
input  geig_data_handling_0_G_DATA_STACK_39;
input  geig_data_handling_0_G_DATA_STACK_33;
input  geig_data_handling_0_G_DATA_STACK_11;
input  geig_data_handling_0_G_DATA_STACK_9;
input  geig_data_handling_0_G_DATA_STACK_7;
input  geig_data_handling_0_G_DATA_STACK_17;
input  geig_data_handling_0_G_DATA_STACK_15;
input  geig_data_handling_0_G_DATA_STACK_21;
input  geig_data_handling_0_G_DATA_STACK_25;
input  geig_data_handling_0_G_DATA_STACK_29;
input  geig_data_handling_0_G_DATA_STACK_43;
input  geig_data_handling_0_G_DATA_STACK_44;
input  geig_data_handling_0_G_DATA_STACK_45;
input  geig_data_handling_0_G_DATA_STACK_19;
input  geig_data_handling_0_G_DATA_STACK_31;
input  geig_data_handling_0_G_DATA_STACK_34;
input  geig_data_handling_0_G_DATA_STACK_35;
input  geig_data_handling_0_G_DATA_STACK_20;
input  geig_data_handling_0_G_DATA_STACK_22;
input  geig_data_handling_0_G_DATA_STACK_23;
input  geig_data_handling_0_G_DATA_STACK_24;
input  geig_data_handling_0_G_DATA_STACK_26;
input  geig_data_handling_0_G_DATA_STACK_27;
input  geig_data_handling_0_G_DATA_STACK_28;
input  geig_data_handling_0_G_DATA_STACK_30;
input  geig_data_handling_0_G_DATA_STACK_37;
input  geig_data_handling_0_G_DATA_STACK_41;
input  geig_data_handling_0_G_DATA_STACK_42;
input  geig_data_handling_0_G_DATA_STACK_18;
input  geig_data_handling_0_G_DATA_STACK_16;
input  geig_data_handling_0_G_DATA_STACK_14;
input  geig_data_handling_0_G_DATA_STACK_13;
input  geig_data_handling_0_G_DATA_STACK_12;
input  geig_data_handling_0_G_DATA_STACK_10;
input  geig_data_handling_0_G_DATA_STACK_8;
input  reset_pulse_0_RESET_0;
input  GLA;
input  reset_pulse_0_RESET;
input  reset_pulse_0_RESET_2;
output D0_OUT_c;
output D1_OUT_c;
output D2_OUT_c;
output D3_OUT_c;
output D4_OUT_c;
output D5_OUT_c;
output D6_OUT_c;
input  reset_pulse_0_RESET_3;
output D7_OUT_c;
input  reset_pulse_0_RESET_4;
input  reset_pulse_0_RESET_5;
input  reset_pulse_0_RESET_6;

    wire un1_counter18_0, \un1_TEST_DATA_2[0] , set_1_net_1, 
        data_chunk8, set_0_sqmuxa, set_0_net_1, un1_TEST_DATA_NE_41, 
        un1_TEST_DATA_NE_35, un1_TEST_DATA_NE_34, un1_TEST_DATA_NE_38, 
        un1_TEST_DATA_NE_40, un1_TEST_DATA_NE_29, un1_TEST_DATA_NE_28, 
        un1_TEST_DATA_NE_37, un1_TEST_DATA_NE_23, un1_TEST_DATA_NE_22, 
        un1_TEST_DATA_NE_32, un1_TEST_DATA_NE_19, un1_TEST_DATA_NE_18, 
        un1_TEST_DATA_NE_30, un1_TEST_DATA_NE_9, un1_TEST_DATA_NE_8, 
        un1_TEST_DATA_NE_27, un1_TEST_DATA_NE_7, un1_TEST_DATA_NE_6, 
        un1_TEST_DATA_NE_24, un1_TEST_DATA_42, un1_TEST_DATA_43, 
        un1_TEST_DATA_NE_21, un1_TEST_DATA_1_0, un1_TEST_DATA_20, 
        un1_TEST_DATA_NE_17, un1_TEST_DATA_32, un1_TEST_DATA_28, 
        un1_TEST_DATA_NE_11, un1_TEST_DATA_11, un1_TEST_DATA_36, 
        un1_TEST_DATA_NE_5, un1_TEST_DATA_9, un1_TEST_DATA_38, 
        un1_TEST_DATA_NE_3, un1_TEST_DATA_31, un1_TEST_DATA_0, 
        un1_TEST_DATA_NE_1, \data_prev[41]_net_1 , un1_TEST_DATA_40, 
        \data_prev[2]_net_1 , \data_prev[6]_net_1 , 
        \data_prev[33]_net_1 , un1_TEST_DATA_34, \data_prev[47]_net_1 , 
        un1_TEST_DATA_12, \data_prev[37]_net_1 , un1_TEST_DATA_10, 
        \data_prev[39]_net_1 , un1_TEST_DATA_8, un1_TEST_DATA_NE, 
        set_0_RNI7I0G9_0_net_1, \data_prev[40]_net_1 , un1_counterlto2, 
        \data_prev[34]_net_1 , \data_prev[12]_net_1 , 
        \data_prev[10]_net_1 , \data_prev[8]_net_1 , 
        \data_prev[0]_net_1 , \DWACT_ADD_CI_0_g_array_1[0] , 
        \DWACT_ADD_CI_0_TMP[0] , \counter[1]_net_1 , counter14_0_net_1, 
        \counter_3[1] , \DWACT_ADD_CI_0_partial_sum[0] , 
        un1_TEST_DATA_23, un1_TEST_DATA_24, un1_TEST_DATA_NE_15, 
        un1_TEST_DATA_27, un1_TEST_DATA_35, un1_TEST_DATA_NE_13, 
        \data_prev[18]_net_1 , un1_TEST_DATA_19, \data_prev[16]_net_1 , 
        un1_TEST_DATA_17, \data_prev[22]_net_1 , un1_TEST_DATA_21, 
        \data_prev[26]_net_1 , un1_TEST_DATA_25, \data_prev[30]_net_1 , 
        un1_TEST_DATA_29, \data_prev[44]_net_1 , un1_TEST_DATA_15, 
        \data_prev[45]_net_1 , un1_TEST_DATA_14, \data_prev[46]_net_1 , 
        un1_TEST_DATA_13, \counter_3[2] , \counter[2]_net_1 , 
        \data_buffer_5[3] , \data_buffer[11]_net_1 , set_net_1, 
        \data_buffer_5[4] , \data_buffer[12]_net_1 , 
        \data_buffer_5[5] , \data_buffer[13]_net_1 , 
        \data_buffer_5[7] , \data_buffer[15]_net_1 , 
        \data_buffer_5[20] , \data_buffer[28]_net_1 , 
        \data_buffer_5[32] , \data_buffer[40]_net_1 , 
        \data_buffer_5[33] , \data_buffer[41]_net_1 , 
        \data_buffer_5[35] , \data_buffer[43]_net_1 , 
        \data_buffer_5[36] , \data_buffer[44]_net_1 , 
        \data_buffer_5[44] , \data_buffer_5[45] , 
        \data_prev[20]_net_1 , \data_prev[21]_net_1 , 
        \data_prev[23]_net_1 , \data_prev[24]_net_1 , 
        \data_prev[25]_net_1 , \data_prev[27]_net_1 , 
        \data_prev[28]_net_1 , \data_prev[29]_net_1 , 
        \data_prev[31]_net_1 , \data_prev[36]_net_1 , 
        \data_prev[38]_net_1 , \data_prev[42]_net_1 , 
        \data_prev[43]_net_1 , data_chunk7, \data_buffer_5[43] , 
        \counter_4[1] , \counter_4[2] , \data_prev[35]_net_1 , 
        \data_prev[32]_net_1 , \data_prev[19]_net_1 , 
        \data_prev[17]_net_1 , \data_prev[15]_net_1 , 
        \data_prev[14]_net_1 , \data_prev[13]_net_1 , 
        \data_prev[11]_net_1 , \data_prev[9]_net_1 , 
        \data_prev[1]_net_1 , \data_buffer_5[47] , \data_buffer_5[46] , 
        \data_buffer_5[42] , \data_buffer_5[41] , \data_buffer_5[40] , 
        \data_buffer_5[39] , \data_buffer[47]_net_1 , 
        \data_buffer_5[38] , \data_buffer[46]_net_1 , 
        \data_buffer_5[37] , \data_buffer[45]_net_1 , 
        \data_buffer_5[34] , \data_buffer[42]_net_1 , 
        \data_buffer_5[31] , \data_buffer[39]_net_1 , 
        \data_buffer_5[30] , \data_buffer[38]_net_1 , 
        \data_buffer_5[29] , \data_buffer[37]_net_1 , 
        \data_buffer_5[28] , \data_buffer[36]_net_1 , 
        \data_buffer_5[27] , \data_buffer[35]_net_1 , 
        \data_buffer_5[26] , \data_buffer[34]_net_1 , 
        \data_buffer_5[25] , \data_buffer[33]_net_1 , 
        \data_buffer_5[24] , \data_buffer[32]_net_1 , 
        \data_buffer_5[23] , \data_buffer[31]_net_1 , 
        \data_buffer_5[22] , \data_buffer[30]_net_1 , 
        \data_buffer_5[21] , \data_buffer[29]_net_1 , 
        \data_buffer_5[19] , \data_buffer[27]_net_1 , 
        \data_buffer_5[18] , \data_buffer[26]_net_1 , 
        \data_buffer_5[17] , \data_buffer[25]_net_1 , 
        \data_buffer_5[16] , \data_buffer[24]_net_1 , 
        \data_buffer_5[15] , \data_buffer[23]_net_1 , 
        \data_buffer_5[14] , \data_buffer[22]_net_1 , 
        \data_buffer_5[13] , \data_buffer[21]_net_1 , 
        \data_buffer_5[12] , \data_buffer[20]_net_1 , 
        \data_buffer_5[11] , \data_buffer[19]_net_1 , 
        \data_buffer_5[10] , \data_buffer[18]_net_1 , 
        \data_buffer_5[9] , \data_buffer[17]_net_1 , 
        \data_buffer_5[8] , \data_buffer[16]_net_1 , 
        \data_buffer_5[6] , \data_buffer[14]_net_1 , 
        \data_buffer_5[2] , \data_buffer[10]_net_1 , 
        \data_buffer_5[1] , \data_buffer[9]_net_1 , \data_buffer_5[0] , 
        \data_buffer[8]_net_1 , \data_buffer[0]_net_1 , 
        \data_buffer[1]_net_1 , \data_buffer[2]_net_1 , 
        \data_buffer[3]_net_1 , \data_buffer[4]_net_1 , 
        \data_buffer[5]_net_1 , \data_buffer[6]_net_1 , 
        \data_buffer[7]_net_1 , \counter[0]_net_1 , GND, VCC;
    
    DFN1E0 \data_buffer[17]  (.D(\data_buffer_5[17] ), .CLK(GLA), .E(
        un1_counter18_0), .Q(\data_buffer[17]_net_1 ));
    DFN1E1 \data_prev[38]  (.D(geig_data_handling_0_G_DATA_STACK_37), 
        .CLK(GLA), .E(reset_pulse_0_RESET_5), .Q(\data_prev[38]_net_1 )
        );
    XOR2 \data_prev_RNI6VE6[25]  (.A(\data_prev[25]_net_1 ), .B(
        geig_data_handling_0_G_DATA_STACK_24), .Y(un1_TEST_DATA_25));
    XO1 \data_prev_RNIC00D[47]  (.A(
        geig_data_handling_0_G_DATA_STACK_46), .B(
        \data_prev[47]_net_1 ), .C(un1_TEST_DATA_12), .Y(
        un1_TEST_DATA_NE_5));
    DFN1E0 \data_buffer[7]  (.D(\data_buffer_5[7] ), .CLK(GLA), .E(
        set_0_RNI7I0G9_0_net_1), .Q(\data_buffer[7]_net_1 ));
    DFN1E0 \data_buffer[20]  (.D(\data_buffer_5[20] ), .CLK(GLA), .E(
        un1_counter18_0), .Q(\data_buffer[20]_net_1 ));
    XOR2 \data_prev_RNI0RG6[31]  (.A(\data_prev[31]_net_1 ), .B(
        geig_data_handling_0_G_DATA_STACK_30), .Y(un1_TEST_DATA_31));
    DFN1E0 \data_buffer[44]  (.D(\data_buffer_5[44] ), .CLK(GLA), .E(
        set_0_RNI7I0G9_0_net_1), .Q(\data_buffer[44]_net_1 ));
    NOR2A counter14_0 (.A(\counter_3[1] ), .B(
        \DWACT_ADD_CI_0_partial_sum[0] ), .Y(counter14_0_net_1));
    XO1 \data_prev_RNIM4QC[18]  (.A(\data_prev[18]_net_1 ), .B(
        geig_data_handling_0_G_DATA_STACK_17), .C(un1_TEST_DATA_19), 
        .Y(un1_TEST_DATA_NE_19));
    MX2 \data_buffer_RNO[37]  (.A(geig_data_handling_0_G_DATA_STACK_36)
        , .B(\data_buffer[45]_net_1 ), .S(set_1_net_1), .Y(
        \data_buffer_5[37] ));
    DFN1E0 \data_buffer[29]  (.D(\data_buffer_5[29] ), .CLK(GLA), .E(
        un1_counter18_0), .Q(\data_buffer[29]_net_1 ));
    XO1 \data_prev_RNIC00D[44]  (.A(
        geig_data_handling_0_G_DATA_STACK_43), .B(
        \data_prev[44]_net_1 ), .C(un1_TEST_DATA_15), .Y(
        un1_TEST_DATA_NE_8));
    MX2 \data_buffer_RNO[11]  (.A(geig_data_handling_0_G_DATA_STACK_10)
        , .B(\data_buffer[19]_net_1 ), .S(set_0_net_1), .Y(
        \data_buffer_5[11] ));
    DFN1E0 \data_buffer[36]  (.D(\data_buffer_5[36] ), .CLK(GLA), .E(
        set_0_RNI7I0G9_0_net_1), .Q(\data_buffer[36]_net_1 ));
    XO1 \data_prev_RNIA02D[33]  (.A(\data_prev[33]_net_1 ), .B(
        geig_data_handling_0_G_DATA_STACK_32), .C(un1_TEST_DATA_34), 
        .Y(un1_TEST_DATA_NE_11));
    XOR2 \data_prev_RNI8VC6[17]  (.A(
        geig_data_handling_0_G_DATA_STACK_16), .B(
        \data_prev[17]_net_1 ), .Y(un1_TEST_DATA_17));
    DFN1E1 \data_prev[42]  (.D(geig_data_handling_0_G_DATA_STACK_41), 
        .CLK(GLA), .E(reset_pulse_0_RESET_5), .Q(\data_prev[42]_net_1 )
        );
    MX2 \data_buffer_RNO[19]  (.A(geig_data_handling_0_G_DATA_STACK_18)
        , .B(\data_buffer[27]_net_1 ), .S(set_0_net_1), .Y(
        \data_buffer_5[19] ));
    DFN1E1 \data_prev[18]  (.D(geig_data_handling_0_G_DATA_STACK_17), 
        .CLK(GLA), .E(reset_pulse_0_RESET_4), .Q(\data_prev[18]_net_1 )
        );
    MX2 \data_buffer_RNO[25]  (.A(geig_data_handling_0_G_DATA_STACK_24)
        , .B(\data_buffer[33]_net_1 ), .S(set_0_net_1), .Y(
        \data_buffer_5[25] ));
    XO1 \data_prev_RNIE0UC[26]  (.A(
        geig_data_handling_0_G_DATA_STACK_25), .B(
        \data_prev[26]_net_1 ), .C(un1_TEST_DATA_25), .Y(
        un1_TEST_DATA_NE_13));
    MX2 \data_buffer_RNO[38]  (.A(geig_data_handling_0_G_DATA_STACK_37)
        , .B(\data_buffer[46]_net_1 ), .S(set_1_net_1), .Y(
        \data_buffer_5[38] ));
    OR3 \data_prev_RNIQE2A2[0]  (.A(un1_TEST_DATA_NE_23), .B(
        un1_TEST_DATA_NE_22), .C(un1_TEST_DATA_NE_32), .Y(
        un1_TEST_DATA_NE_38));
    DFN1E0 \data_buffer[24]  (.D(\data_buffer_5[24] ), .CLK(GLA), .E(
        un1_counter18_0), .Q(\data_buffer[24]_net_1 ));
    OR3 \data_prev_RNI48RP[22]  (.A(un1_TEST_DATA_23), .B(
        un1_TEST_DATA_24), .C(un1_TEST_DATA_NE_15), .Y(
        un1_TEST_DATA_NE_29));
    DFN1E0 \data_buffer[11]  (.D(\data_buffer_5[11] ), .CLK(GLA), .E(
        un1_counter18_0), .Q(\data_buffer[11]_net_1 ));
    DFN1E1C0 \data_chunk[2]  (.D(\data_buffer[2]_net_1 ), .CLK(GLA), 
        .CLR(reset_pulse_0_RESET_2), .E(data_chunk7), .Q(D2_OUT_c));
    DFN1C0 \counter[2]  (.D(\counter_4[2] ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_4), .Q(\counter[2]_net_1 ));
    NOR2A \data_buffer_RNO[45]  (.A(
        geig_data_handling_0_G_DATA_STACK_44), .B(set_net_1), .Y(
        \data_buffer_5[45] ));
    DFN1E1 \data_prev[2]  (.D(geig_data_handling_0_G_DATA_STACK_0), 
        .CLK(GLA), .E(reset_pulse_0_RESET_4), .Q(\data_prev[2]_net_1 ));
    DFN1E1 \data_prev[22]  (.D(geig_data_handling_0_G_DATA_STACK_21), 
        .CLK(GLA), .E(reset_pulse_0_RESET_4), .Q(\data_prev[22]_net_1 )
        );
    DFN1E1 \data_prev[46]  (.D(geig_data_handling_0_G_DATA_STACK_45), 
        .CLK(GLA), .E(reset_pulse_0_RESET_6), .Q(\data_prev[46]_net_1 )
        );
    AOI1B \counter_RNI429G[2]  (.A(\counter[1]_net_1 ), .B(
        \counter[2]_net_1 ), .C(set_net_1), .Y(data_chunk7));
    XOR2 \data_prev_RNISIC6[11]  (.A(
        geig_data_handling_0_G_DATA_STACK_10), .B(
        \data_prev[11]_net_1 ), .Y(un1_TEST_DATA_11));
    DFN1E1 \data_prev[9]  (.D(geig_data_handling_0_G_DATA_STACK_8), 
        .CLK(GLA), .E(reset_pulse_0_RESET_4), .Q(\data_prev[9]_net_1 ));
    DFN1E0 \data_buffer[18]  (.D(\data_buffer_5[18] ), .CLK(GLA), .E(
        un1_counter18_0), .Q(\data_buffer[18]_net_1 ));
    MX2 \data_buffer_RNO[24]  (.A(geig_data_handling_0_G_DATA_STACK_23)
        , .B(\data_buffer[32]_net_1 ), .S(set_0_net_1), .Y(
        \data_buffer_5[24] ));
    DFN1E0 \data_buffer[13]  (.D(\data_buffer_5[13] ), .CLK(GLA), .E(
        un1_counter18_0), .Q(\data_buffer[13]_net_1 ));
    OR3 \data_prev_RNIC0CQ[41]  (.A(un1_TEST_DATA_42), .B(
        un1_TEST_DATA_43), .C(un1_TEST_DATA_NE_21), .Y(
        un1_TEST_DATA_NE_32));
    MX2 \data_buffer_RNO[9]  (.A(geig_data_handling_0_G_DATA_STACK_8), 
        .B(\data_buffer[17]_net_1 ), .S(set_net_1), .Y(
        \data_buffer_5[9] ));
    XOR2 \data_prev_RNI2TG6[32]  (.A(
        geig_data_handling_0_G_DATA_STACK_31), .B(
        \data_prev[32]_net_1 ), .Y(un1_TEST_DATA_32));
    OA1A \counter_RNO[1]  (.A(\counter_3[2] ), .B(
        \DWACT_ADD_CI_0_partial_sum[0] ), .C(\counter_3[1] ), .Y(
        \counter_4[1] ));
    MX2 \data_buffer_RNO[16]  (.A(geig_data_handling_0_G_DATA_STACK_15)
        , .B(\data_buffer[24]_net_1 ), .S(set_0_net_1), .Y(
        \data_buffer_5[16] ));
    XO1 \data_prev_RNIO7JB[39]  (.A(
        geig_data_handling_0_G_DATA_STACK_38), .B(
        \data_prev[39]_net_1 ), .C(un1_TEST_DATA_8), .Y(
        un1_TEST_DATA_NE_1));
    XO1 \data_prev_RNIESPC[16]  (.A(\data_prev[16]_net_1 ), .B(
        geig_data_handling_0_G_DATA_STACK_15), .C(un1_TEST_DATA_17), 
        .Y(un1_TEST_DATA_NE_18));
    DFN1E1 \data_prev[32]  (.D(geig_data_handling_0_G_DATA_STACK_31), 
        .CLK(GLA), .E(reset_pulse_0_RESET_5), .Q(\data_prev[32]_net_1 )
        );
    NOR2B \data_buffer_RNO[7]  (.A(\data_buffer[15]_net_1 ), .B(
        set_net_1), .Y(\data_buffer_5[7] ));
    DFN1E1 \data_prev[26]  (.D(geig_data_handling_0_G_DATA_STACK_25), 
        .CLK(GLA), .E(reset_pulse_0_RESET_5), .Q(\data_prev[26]_net_1 )
        );
    NOR2A \data_buffer_RNO[44]  (.A(
        geig_data_handling_0_G_DATA_STACK_43), .B(set_net_1), .Y(
        \data_buffer_5[44] ));
    MX2 \data_buffer_RNO[30]  (.A(geig_data_handling_0_G_DATA_STACK_29)
        , .B(\data_buffer[38]_net_1 ), .S(set_1_net_1), .Y(
        \data_buffer_5[30] ));
    GND GND_i (.Y(GND));
    DFN1E0 \data_buffer[37]  (.D(\data_buffer_5[37] ), .CLK(GLA), .E(
        set_0_RNI7I0G9_0_net_1), .Q(\data_buffer[37]_net_1 ));
    DFN1E0 \data_buffer[15]  (.D(\data_buffer_5[15] ), .CLK(GLA), .E(
        un1_counter18_0), .Q(\data_buffer[15]_net_1 ));
    OR3 \data_prev_RNIIKF23[16]  (.A(un1_TEST_DATA_NE_29), .B(
        un1_TEST_DATA_NE_28), .C(un1_TEST_DATA_NE_37), .Y(
        un1_TEST_DATA_NE_40));
    XOR2 \data_prev_RNIAU15[9]  (.A(
        geig_data_handling_0_G_DATA_STACK_8), .B(\data_prev[9]_net_1 ), 
        .Y(un1_TEST_DATA_9));
    MX2 \data_buffer_RNO[1]  (.A(geig_data_handling_0_G_DATA_STACK_0), 
        .B(\data_buffer[9]_net_1 ), .S(set_1_net_1), .Y(
        \data_buffer_5[1] ));
    OR3 \data_prev_RNIIOTP[11]  (.A(un1_TEST_DATA_11), .B(
        un1_TEST_DATA_36), .C(un1_TEST_DATA_NE_5), .Y(
        un1_TEST_DATA_NE_24));
    DFN1E0 \data_buffer[10]  (.D(\data_buffer_5[10] ), .CLK(GLA), .E(
        un1_counter18_0), .Q(\data_buffer[10]_net_1 ));
    DFN1E1 \data_prev[29]  (.D(geig_data_handling_0_G_DATA_STACK_28), 
        .CLK(GLA), .E(reset_pulse_0_RESET_5), .Q(\data_prev[29]_net_1 )
        );
    MX2 \data_buffer_RNO[2]  (.A(geig_data_handling_0_G_DATA_STACK_0), 
        .B(\data_buffer[10]_net_1 ), .S(set_1_net_1), .Y(
        \data_buffer_5[2] ));
    DFN1E1C0 \data_chunk[6]  (.D(\data_buffer[6]_net_1 ), .CLK(GLA), 
        .CLR(reset_pulse_0_RESET_3), .E(data_chunk7), .Q(D6_OUT_c));
    XOR2 \data_prev_RNIA3F6[27]  (.A(\data_prev[27]_net_1 ), .B(
        geig_data_handling_0_G_DATA_STACK_26), .Y(un1_TEST_DATA_27));
    DFN1E1 \data_prev[36]  (.D(geig_data_handling_0_G_DATA_STACK_35), 
        .CLK(GLA), .E(reset_pulse_0_RESET_5), .Q(\data_prev[36]_net_1 )
        );
    XOR2 \data_prev_RNIC5F6[28]  (.A(\data_prev[28]_net_1 ), .B(
        geig_data_handling_0_G_DATA_STACK_27), .Y(un1_TEST_DATA_28));
    MX2 \data_buffer_RNO[17]  (.A(geig_data_handling_0_G_DATA_STACK_16)
        , .B(\data_buffer[25]_net_1 ), .S(set_0_net_1), .Y(
        \data_buffer_5[17] ));
    DFN1E1 \data_prev[40]  (.D(geig_data_handling_0_G_DATA_STACK_39), 
        .CLK(GLA), .E(reset_pulse_0_RESET_5), .Q(\data_prev[40]_net_1 )
        );
    MX2 \data_buffer_RNO[32]  (.A(geig_data_handling_0_G_DATA_STACK_31)
        , .B(\data_buffer[40]_net_1 ), .S(set_1_net_1), .Y(
        \data_buffer_5[32] ));
    DFN1E1 \data_prev[12]  (.D(geig_data_handling_0_G_DATA_STACK_11), 
        .CLK(GLA), .E(reset_pulse_0_RESET_4), .Q(\data_prev[12]_net_1 )
        );
    DFN1E0 \data_buffer[19]  (.D(\data_buffer_5[19] ), .CLK(GLA), .E(
        un1_counter18_0), .Q(\data_buffer[19]_net_1 ));
    DFN1E1 \data_prev[39]  (.D(geig_data_handling_0_G_DATA_STACK_38), 
        .CLK(GLA), .E(reset_pulse_0_RESET_5), .Q(\data_prev[39]_net_1 )
        );
    DFN1E0 \data_buffer[42]  (.D(\data_buffer_5[42] ), .CLK(GLA), .E(
        set_0_RNI7I0G9_0_net_1), .Q(\data_buffer[42]_net_1 ));
    XOR2 \data_prev_RNI4RC6[15]  (.A(
        geig_data_handling_0_G_DATA_STACK_14), .B(
        \data_prev[15]_net_1 ), .Y(un1_TEST_DATA_15));
    VCC VCC_i (.Y(VCC));
    DFN1E0C0 set (.D(data_chunk8), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_2), .E(set_0_sqmuxa), .Q(set_net_1));
    MX2 \data_buffer_RNO[33]  (.A(geig_data_handling_0_G_DATA_STACK_32)
        , .B(\data_buffer[41]_net_1 ), .S(set_1_net_1), .Y(
        \data_buffer_5[33] ));
    DFN1C0 \counter[1]  (.D(\counter_4[1] ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_4), .Q(\counter[1]_net_1 ));
    DFN1E1 \data_prev[20]  (.D(geig_data_handling_0_G_DATA_STACK_19), 
        .CLK(GLA), .E(reset_pulse_0_RESET_4), .Q(\data_prev[20]_net_1 )
        );
    DFN1E1 \data_prev[1]  (.D(geig_data_handling_0_G_DATA_STACK_0), 
        .CLK(GLA), .E(reset_pulse_0_RESET_4), .Q(\data_prev[1]_net_1 ));
    XO1 \data_prev_RNIC00D[30]  (.A(
        geig_data_handling_0_G_DATA_STACK_29), .B(
        \data_prev[30]_net_1 ), .C(un1_TEST_DATA_29), .Y(
        un1_TEST_DATA_NE_9));
    DFN1E0 \data_buffer[31]  (.D(\data_buffer_5[31] ), .CLK(GLA), .E(
        un1_counter18_0), .Q(\data_buffer[31]_net_1 ));
    MX2 \data_buffer_RNO[18]  (.A(geig_data_handling_0_G_DATA_STACK_17)
        , .B(\data_buffer[26]_net_1 ), .S(set_0_net_1), .Y(
        \data_buffer_5[18] ));
    DFN1E0 \data_buffer[14]  (.D(\data_buffer_5[14] ), .CLK(GLA), .E(
        un1_counter18_0), .Q(\data_buffer[14]_net_1 ));
    XOR2 \data_prev_RNI8S15[8]  (.A(
        geig_data_handling_0_G_DATA_STACK_7), .B(\data_prev[8]_net_1 ), 
        .Y(un1_TEST_DATA_8));
    DFN1E1 \data_prev[41]  (.D(geig_data_handling_0_G_DATA_STACK_40), 
        .CLK(GLA), .E(reset_pulse_0_RESET_5), .Q(\data_prev[41]_net_1 )
        );
    DFN1E1 \data_prev[16]  (.D(geig_data_handling_0_G_DATA_STACK_15), 
        .CLK(GLA), .E(reset_pulse_0_RESET_4), .Q(\data_prev[16]_net_1 )
        );
    MX2 \data_buffer_RNO[21]  (.A(geig_data_handling_0_G_DATA_STACK_20)
        , .B(\data_buffer[29]_net_1 ), .S(set_0_net_1), .Y(
        \data_buffer_5[21] ));
    OR3 \data_prev_RNIA42L[1]  (.A(un1_TEST_DATA_1_0), .B(
        un1_TEST_DATA_20), .C(un1_TEST_DATA_NE_17), .Y(
        un1_TEST_DATA_NE_30));
    AOI1 set_RNIJ9R8B (.A(counter14_0_net_1), .B(\counter_3[2] ), .C(
        data_chunk8), .Y(set_0_sqmuxa));
    MX2 \data_buffer_RNO[29]  (.A(geig_data_handling_0_G_DATA_STACK_28)
        , .B(\data_buffer[37]_net_1 ), .S(set_1_net_1), .Y(
        \data_buffer_5[29] ));
    DFN1E0 \data_buffer[38]  (.D(\data_buffer_5[38] ), .CLK(GLA), .E(
        set_0_RNI7I0G9_0_net_1), .Q(\data_buffer[38]_net_1 ));
    DFN1E0 \data_buffer[33]  (.D(\data_buffer_5[33] ), .CLK(GLA), .E(
        un1_counter18_0), .Q(\data_buffer[33]_net_1 ));
    NOR2A set_RNI9F8R8 (.A(un1_TEST_DATA_NE), .B(set_net_1), .Y(
        data_chunk8));
    DFN1E1 \data_prev[30]  (.D(geig_data_handling_0_G_DATA_STACK_29), 
        .CLK(GLA), .E(reset_pulse_0_RESET_5), .Q(\data_prev[30]_net_1 )
        );
    DFN1E1 \data_prev[19]  (.D(geig_data_handling_0_G_DATA_STACK_18), 
        .CLK(GLA), .E(reset_pulse_0_RESET_4), .Q(\data_prev[19]_net_1 )
        );
    NOR2A \data_buffer_RNO[41]  (.A(
        geig_data_handling_0_G_DATA_STACK_40), .B(set_net_1), .Y(
        \data_buffer_5[41] ));
    OR3 \data_prev_RNIG32K1[30]  (.A(un1_TEST_DATA_NE_9), .B(
        un1_TEST_DATA_NE_8), .C(un1_TEST_DATA_NE_27), .Y(
        un1_TEST_DATA_NE_35));
    DFN1E0 \data_buffer[8]  (.D(\data_buffer_5[8] ), .CLK(GLA), .E(
        set_0_RNI7I0G9_0_net_1), .Q(\data_buffer[8]_net_1 ));
    DFN1E0 \data_buffer[22]  (.D(\data_buffer_5[22] ), .CLK(GLA), .E(
        un1_counter18_0), .Q(\data_buffer[22]_net_1 ));
    DFN1E1 \data_prev[21]  (.D(geig_data_handling_0_G_DATA_STACK_20), 
        .CLK(GLA), .E(reset_pulse_0_RESET_4), .Q(\data_prev[21]_net_1 )
        );
    DFN1E1C0 \data_chunk[1]  (.D(\data_buffer[1]_net_1 ), .CLK(GLA), 
        .CLR(reset_pulse_0_RESET_2), .E(data_chunk7), .Q(D1_OUT_c));
    DFN1E0 \data_buffer[1]  (.D(\data_buffer_5[1] ), .CLK(GLA), .E(
        set_0_RNI7I0G9_0_net_1), .Q(\data_buffer[1]_net_1 ));
    DFN1E0 \data_buffer[35]  (.D(\data_buffer_5[35] ), .CLK(GLA), .E(
        set_0_RNI7I0G9_0_net_1), .Q(\data_buffer[35]_net_1 ));
    DFN1E0 \data_buffer[46]  (.D(\data_buffer_5[46] ), .CLK(GLA), .E(
        set_0_RNI7I0G9_0_net_1), .Q(\data_buffer[46]_net_1 ));
    MX2 \data_buffer_RNO[10]  (.A(geig_data_handling_0_G_DATA_STACK_9), 
        .B(\data_buffer[18]_net_1 ), .S(set_0_net_1), .Y(
        \data_buffer_5[10] ));
    OR3 \data_prev_RNIKB2I5[30]  (.A(un1_TEST_DATA_NE_35), .B(
        un1_TEST_DATA_NE_34), .C(un1_TEST_DATA_NE_38), .Y(
        un1_TEST_DATA_NE_41));
    NOR2B counter_3_I_15 (.A(\DWACT_ADD_CI_0_TMP[0] ), .B(
        \counter[1]_net_1 ), .Y(\DWACT_ADD_CI_0_g_array_1[0] ));
    DFN1E1 \data_prev[45]  (.D(geig_data_handling_0_G_DATA_STACK_44), 
        .CLK(GLA), .E(reset_pulse_0_RESET_6), .Q(\data_prev[45]_net_1 )
        );
    DFN1E0 \data_buffer[30]  (.D(\data_buffer_5[30] ), .CLK(GLA), .E(
        un1_counter18_0), .Q(\data_buffer[30]_net_1 ));
    XO1 \data_prev_RNIUFTC[22]  (.A(
        geig_data_handling_0_G_DATA_STACK_21), .B(
        \data_prev[22]_net_1 ), .C(un1_TEST_DATA_21), .Y(
        un1_TEST_DATA_NE_15));
    XO1 \data_prev_RNI2S5D[41]  (.A(
        geig_data_handling_0_G_DATA_STACK_40), .B(
        \data_prev[41]_net_1 ), .C(un1_TEST_DATA_40), .Y(
        un1_TEST_DATA_NE_21));
    OR2 \data_prev_RNI60IK8[16]  (.A(un1_TEST_DATA_NE_41), .B(
        un1_TEST_DATA_NE_40), .Y(un1_TEST_DATA_NE));
    DFN1E1 \data_prev[31]  (.D(geig_data_handling_0_G_DATA_STACK_30), 
        .CLK(GLA), .E(reset_pulse_0_RESET_5), .Q(\data_prev[31]_net_1 )
        );
    MX2 \data_buffer_RNO[26]  (.A(geig_data_handling_0_G_DATA_STACK_25)
        , .B(\data_buffer[34]_net_1 ), .S(set_1_net_1), .Y(
        \data_buffer_5[26] ));
    OR3 \data_prev_RNIAPTJ1[45]  (.A(un1_TEST_DATA_NE_7), .B(
        un1_TEST_DATA_NE_6), .C(un1_TEST_DATA_NE_24), .Y(
        un1_TEST_DATA_NE_34));
    MX2 \data_buffer_RNO[8]  (.A(geig_data_handling_0_G_DATA_STACK_7), 
        .B(\data_buffer[16]_net_1 ), .S(set_net_1), .Y(
        \data_buffer_5[8] ));
    DFN1E0 \data_buffer[2]  (.D(\data_buffer_5[2] ), .CLK(GLA), .E(
        set_0_RNI7I0G9_0_net_1), .Q(\data_buffer[2]_net_1 ));
    XOR2 \data_prev_RNI2PC6[14]  (.A(
        geig_data_handling_0_G_DATA_STACK_13), .B(
        \data_prev[14]_net_1 ), .Y(un1_TEST_DATA_14));
    XOR2 \data_prev_RNI2RE6[23]  (.A(\data_prev[23]_net_1 ), .B(
        geig_data_handling_0_G_DATA_STACK_22), .Y(un1_TEST_DATA_23));
    DFN1E1 \data_prev[47]  (.D(geig_data_handling_0_G_DATA_STACK_46), 
        .CLK(GLA), .E(reset_pulse_0_RESET_6), .Q(\data_prev[47]_net_1 )
        );
    DFN1E1 \data_prev[10]  (.D(geig_data_handling_0_G_DATA_STACK_9), 
        .CLK(GLA), .E(reset_pulse_0_RESET_4), .Q(\data_prev[10]_net_1 )
        );
    MX2 \data_buffer_RNO[35]  (.A(geig_data_handling_0_G_DATA_STACK_34)
        , .B(\data_buffer[43]_net_1 ), .S(set_1_net_1), .Y(
        \data_buffer_5[35] ));
    DFN1E1 \data_prev[44]  (.D(geig_data_handling_0_G_DATA_STACK_43), 
        .CLK(GLA), .E(reset_pulse_0_RESET_5), .Q(\data_prev[44]_net_1 )
        );
    XOR2 \data_prev_RNIUME6[21]  (.A(\data_prev[21]_net_1 ), .B(
        geig_data_handling_0_G_DATA_STACK_20), .Y(un1_TEST_DATA_21));
    XOR2 \data_prev_RNI0TI6[40]  (.A(\data_prev[40]_net_1 ), .B(
        geig_data_handling_0_G_DATA_STACK_39), .Y(un1_TEST_DATA_40));
    DFN1E1 \data_prev[0]  (.D(geig_data_handling_0_G_DATA_STACK_0), 
        .CLK(GLA), .E(reset_pulse_0_RESET_4), .Q(\data_prev[0]_net_1 ));
    NOR2A \data_buffer_RNO[46]  (.A(
        geig_data_handling_0_G_DATA_STACK_45), .B(set_net_1), .Y(
        \data_buffer_5[46] ));
    DFN1E0 \data_buffer[39]  (.D(\data_buffer_5[39] ), .CLK(GLA), .E(
        set_0_RNI7I0G9_0_net_1), .Q(\data_buffer[39]_net_1 ));
    DFN1E1 \data_prev[25]  (.D(geig_data_handling_0_G_DATA_STACK_24), 
        .CLK(GLA), .E(reset_pulse_0_RESET_5), .Q(\data_prev[25]_net_1 )
        );
    MX2 \data_buffer_RNO[12]  (.A(geig_data_handling_0_G_DATA_STACK_11)
        , .B(\data_buffer[20]_net_1 ), .S(set_0_net_1), .Y(
        \data_buffer_5[12] ));
    AND2 counter_3_I_1 (.A(\counter[0]_net_1 ), .B(data_chunk7), .Y(
        \DWACT_ADD_CI_0_TMP[0] ));
    DFN1E0 \data_buffer[0]  (.D(\data_buffer_5[0] ), .CLK(GLA), .E(
        set_0_RNI7I0G9_0_net_1), .Q(\data_buffer[0]_net_1 ));
    DFN1E0 \data_buffer[26]  (.D(\data_buffer_5[26] ), .CLK(GLA), .E(
        un1_counter18_0), .Q(\data_buffer[26]_net_1 ));
    DFN1E1 \data_prev[27]  (.D(geig_data_handling_0_G_DATA_STACK_26), 
        .CLK(GLA), .E(reset_pulse_0_RESET_5), .Q(\data_prev[27]_net_1 )
        );
    DFN1E1C0 \data_chunk[4]  (.D(\data_buffer[4]_net_1 ), .CLK(GLA), 
        .CLR(reset_pulse_0_RESET_2), .E(data_chunk7), .Q(D4_OUT_c));
    XOR2 \data_prev_RNI63J6[43]  (.A(\data_prev[43]_net_1 ), .B(
        geig_data_handling_0_G_DATA_STACK_42), .Y(un1_TEST_DATA_43));
    DFN1E1 \data_prev[24]  (.D(geig_data_handling_0_G_DATA_STACK_23), 
        .CLK(GLA), .E(reset_pulse_0_RESET_5), .Q(\data_prev[24]_net_1 )
        );
    XOR2 \data_prev_RNI0NC6[13]  (.A(
        geig_data_handling_0_G_DATA_STACK_12), .B(
        \data_prev[13]_net_1 ), .Y(un1_TEST_DATA_13));
    NOR2B \data_buffer_RNO[5]  (.A(\data_buffer[13]_net_1 ), .B(
        set_net_1), .Y(\data_buffer_5[5] ));
    MX2 \data_buffer_RNO[34]  (.A(geig_data_handling_0_G_DATA_STACK_33)
        , .B(\data_buffer[42]_net_1 ), .S(set_1_net_1), .Y(
        \data_buffer_5[34] ));
    MX2 \data_buffer_RNO[27]  (.A(geig_data_handling_0_G_DATA_STACK_26)
        , .B(\data_buffer[35]_net_1 ), .S(set_1_net_1), .Y(
        \data_buffer_5[27] ));
    MX2 \data_buffer_RNO[13]  (.A(geig_data_handling_0_G_DATA_STACK_12)
        , .B(\data_buffer[21]_net_1 ), .S(set_0_net_1), .Y(
        \data_buffer_5[13] ));
    DFN1E0 \data_buffer[34]  (.D(\data_buffer_5[34] ), .CLK(GLA), .E(
        set_0_RNI7I0G9_0_net_1), .Q(\data_buffer[34]_net_1 ));
    DFN1E1 \data_prev[11]  (.D(geig_data_handling_0_G_DATA_STACK_10), 
        .CLK(GLA), .E(reset_pulse_0_RESET_4), .Q(\data_prev[11]_net_1 )
        );
    DFN1E0C0 set_1 (.D(data_chunk8), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_0), .E(set_0_sqmuxa), .Q(set_1_net_1));
    DFN1E1C0 \data_chunk[0]  (.D(\data_buffer[0]_net_1 ), .CLK(GLA), 
        .CLR(reset_pulse_0_RESET_2), .E(data_chunk7), .Q(D0_OUT_c));
    DFN1E0 \data_buffer[47]  (.D(\data_buffer_5[47] ), .CLK(GLA), .E(
        set_0_RNI7I0G9_0_net_1), .Q(\data_buffer[47]_net_1 ));
    DFN1E1 \data_prev[35]  (.D(geig_data_handling_0_G_DATA_STACK_34), 
        .CLK(GLA), .E(reset_pulse_0_RESET_5), .Q(\data_prev[35]_net_1 )
        );
    XOR2 \data_prev_RNIE7F6[29]  (.A(\data_prev[29]_net_1 ), .B(
        geig_data_handling_0_G_DATA_STACK_28), .Y(un1_TEST_DATA_29));
    DFN1E1 \data_prev[43]  (.D(geig_data_handling_0_G_DATA_STACK_42), 
        .CLK(GLA), .E(reset_pulse_0_RESET_5), .Q(\data_prev[43]_net_1 )
        );
    DFN1E1 \data_prev[37]  (.D(geig_data_handling_0_G_DATA_STACK_36), 
        .CLK(GLA), .E(reset_pulse_0_RESET_5), .Q(\data_prev[37]_net_1 )
        );
    NOR2A \data_buffer_RNO[47]  (.A(
        geig_data_handling_0_G_DATA_STACK_46), .B(set_net_1), .Y(
        \data_buffer_5[47] ));
    XOR2 counter_3_I_12 (.A(\counter[1]_net_1 ), .B(
        \DWACT_ADD_CI_0_TMP[0] ), .Y(\counter_3[1] ));
    OR2B set_0_RNI7I0G9_0 (.A(\un1_TEST_DATA_2[0] ), .B(
        reset_pulse_0_RESET), .Y(set_0_RNI7I0G9_0_net_1));
    DFN1E1 \data_prev[34]  (.D(geig_data_handling_0_G_DATA_STACK_33), 
        .CLK(GLA), .E(reset_pulse_0_RESET_5), .Q(\data_prev[34]_net_1 )
        );
    DFN1E1 \data_prev[8]  (.D(geig_data_handling_0_G_DATA_STACK_7), 
        .CLK(GLA), .E(reset_pulse_0_RESET_4), .Q(\data_prev[8]_net_1 ));
    XOR2 \data_prev_RNI41J6[42]  (.A(\data_prev[42]_net_1 ), .B(
        geig_data_handling_0_G_DATA_STACK_41), .Y(un1_TEST_DATA_42));
    MX2 \data_buffer_RNO[28]  (.A(geig_data_handling_0_G_DATA_STACK_27)
        , .B(\data_buffer[36]_net_1 ), .S(set_1_net_1), .Y(
        \data_buffer_5[28] ));
    DFN1E1 \data_prev[23]  (.D(geig_data_handling_0_G_DATA_STACK_22), 
        .CLK(GLA), .E(reset_pulse_0_RESET_5), .Q(\data_prev[23]_net_1 )
        );
    DFN1E0 \data_buffer[12]  (.D(\data_buffer_5[12] ), .CLK(GLA), .E(
        un1_counter18_0), .Q(\data_buffer[12]_net_1 ));
    XOR2 \data_prev_RNIE9H6[38]  (.A(\data_prev[38]_net_1 ), .B(
        geig_data_handling_0_G_DATA_STACK_37), .Y(un1_TEST_DATA_38));
    DFN1E1C0 \data_chunk[7]  (.D(\data_buffer[7]_net_1 ), .CLK(GLA), 
        .CLR(reset_pulse_0_RESET_3), .E(data_chunk7), .Q(D7_OUT_c));
    NOR2B \data_buffer_RNO[3]  (.A(\data_buffer[11]_net_1 ), .B(
        set_net_1), .Y(\data_buffer_5[3] ));
    DFN1E1 \data_prev[15]  (.D(geig_data_handling_0_G_DATA_STACK_14), 
        .CLK(GLA), .E(reset_pulse_0_RESET_4), .Q(\data_prev[15]_net_1 )
        );
    DFN1E0 \data_buffer[27]  (.D(\data_buffer_5[27] ), .CLK(GLA), .E(
        un1_counter18_0), .Q(\data_buffer[27]_net_1 ));
    DFN1E0 \data_buffer[5]  (.D(\data_buffer_5[5] ), .CLK(GLA), .E(
        set_0_RNI7I0G9_0_net_1), .Q(\data_buffer[5]_net_1 ));
    DFN1E1 \data_prev[17]  (.D(geig_data_handling_0_G_DATA_STACK_16), 
        .CLK(GLA), .E(reset_pulse_0_RESET_4), .Q(\data_prev[17]_net_1 )
        );
    OR3 \data_prev_RNI07UP[26]  (.A(un1_TEST_DATA_27), .B(
        un1_TEST_DATA_35), .C(un1_TEST_DATA_NE_13), .Y(
        un1_TEST_DATA_NE_28));
    OR2B \counter_RNI1JI9[2]  (.A(\counter[1]_net_1 ), .B(
        \counter[2]_net_1 ), .Y(un1_counterlto2));
    DFN1E1 \data_prev[33]  (.D(geig_data_handling_0_G_DATA_STACK_32), 
        .CLK(GLA), .E(reset_pulse_0_RESET_5), .Q(\data_prev[33]_net_1 )
        );
    DFN1E0 \data_buffer[41]  (.D(\data_buffer_5[41] ), .CLK(GLA), .E(
        set_0_RNI7I0G9_0_net_1), .Q(\data_buffer[41]_net_1 ));
    MX2 \data_buffer_RNO[0]  (.A(geig_data_handling_0_G_DATA_STACK_0), 
        .B(\data_buffer[8]_net_1 ), .S(set_1_net_1), .Y(
        \data_buffer_5[0] ));
    OR3 \data_prev_RNIE5ME1[16]  (.A(un1_TEST_DATA_NE_19), .B(
        un1_TEST_DATA_NE_18), .C(un1_TEST_DATA_NE_30), .Y(
        un1_TEST_DATA_NE_37));
    DFN1E1 \data_prev[14]  (.D(geig_data_handling_0_G_DATA_STACK_13), 
        .CLK(GLA), .E(reset_pulse_0_RESET_4), .Q(\data_prev[14]_net_1 )
        );
    MX2 set_0_RNIPBV09 (.A(un1_TEST_DATA_NE), .B(un1_counterlto2), .S(
        set_0_net_1), .Y(\un1_TEST_DATA_2[0] ));
    DFN1E0 \data_buffer[6]  (.D(\data_buffer_5[6] ), .CLK(GLA), .E(
        set_0_RNI7I0G9_0_net_1), .Q(\data_buffer[6]_net_1 ));
    MX2 \data_buffer_RNO[15]  (.A(geig_data_handling_0_G_DATA_STACK_14)
        , .B(\data_buffer[23]_net_1 ), .S(set_0_net_1), .Y(
        \data_buffer_5[15] ));
    MX2 \data_buffer_RNO[6]  (.A(geig_data_handling_0_G_DATA_STACK_0), 
        .B(\data_buffer[14]_net_1 ), .S(set_net_1), .Y(
        \data_buffer_5[6] ));
    XO1 \data_prev_RNIC00D[46]  (.A(
        geig_data_handling_0_G_DATA_STACK_45), .B(
        \data_prev[46]_net_1 ), .C(un1_TEST_DATA_13), .Y(
        un1_TEST_DATA_NE_6));
    MX2 \data_buffer_RNO[20]  (.A(geig_data_handling_0_G_DATA_STACK_19)
        , .B(\data_buffer[28]_net_1 ), .S(set_0_net_1), .Y(
        \data_buffer_5[20] ));
    XOR2 \data_prev_RNI83H6[35]  (.A(
        geig_data_handling_0_G_DATA_STACK_34), .B(
        \data_prev[35]_net_1 ), .Y(un1_TEST_DATA_35));
    DFN1E0 \data_buffer[43]  (.D(\data_buffer_5[43] ), .CLK(GLA), .E(
        set_0_RNI7I0G9_0_net_1), .Q(\data_buffer[43]_net_1 ));
    MX2 \data_buffer_RNO[31]  (.A(geig_data_handling_0_G_DATA_STACK_30)
        , .B(\data_buffer[39]_net_1 ), .S(set_1_net_1), .Y(
        \data_buffer_5[31] ));
    DFN1E1C0 \data_chunk[5]  (.D(\data_buffer[5]_net_1 ), .CLK(GLA), 
        .CLR(reset_pulse_0_RESET_2), .E(data_chunk7), .Q(D5_OUT_c));
    XOR2 \data_prev_RNIUKC6[12]  (.A(
        geig_data_handling_0_G_DATA_STACK_11), .B(
        \data_prev[12]_net_1 ), .Y(un1_TEST_DATA_12));
    DFN1E0 \data_buffer[9]  (.D(\data_buffer_5[9] ), .CLK(GLA), .E(
        set_0_RNI7I0G9_0_net_1), .Q(\data_buffer[9]_net_1 ));
    NOR2A \data_buffer_RNO[40]  (.A(
        geig_data_handling_0_G_DATA_STACK_39), .B(set_net_1), .Y(
        \data_buffer_5[40] ));
    OR3 \data_prev_RNIO22Q[28]  (.A(un1_TEST_DATA_32), .B(
        un1_TEST_DATA_28), .C(un1_TEST_DATA_NE_11), .Y(
        un1_TEST_DATA_NE_27));
    MX2 \data_buffer_RNO[39]  (.A(geig_data_handling_0_G_DATA_STACK_38)
        , .B(\data_buffer[47]_net_1 ), .S(set_1_net_1), .Y(
        \data_buffer_5[39] ));
    DFN1E0 \data_buffer[16]  (.D(\data_buffer_5[16] ), .CLK(GLA), .E(
        un1_counter18_0), .Q(\data_buffer[16]_net_1 ));
    XOR2 \data_prev_RNIQGC6[10]  (.A(
        geig_data_handling_0_G_DATA_STACK_9), .B(\data_prev[10]_net_1 )
        , .Y(un1_TEST_DATA_10));
    OR3 \data_prev_RNIGE5N[0]  (.A(un1_TEST_DATA_31), .B(
        un1_TEST_DATA_0), .C(un1_TEST_DATA_NE_1), .Y(
        un1_TEST_DATA_NE_22));
    XOR2 \data_prev_RNIOB15[0]  (.A(
        geig_data_handling_0_G_DATA_STACK_0), .B(\data_prev[0]_net_1 ), 
        .Y(un1_TEST_DATA_0));
    XOR2 \data_prev_RNIPC15[1]  (.A(
        geig_data_handling_0_G_DATA_STACK_0), .B(\data_prev[1]_net_1 ), 
        .Y(un1_TEST_DATA_1_0));
    DFN1E0 \data_buffer[45]  (.D(\data_buffer_5[45] ), .CLK(GLA), .E(
        set_0_RNI7I0G9_0_net_1), .Q(\data_buffer[45]_net_1 ));
    XOR2 \data_prev_RNI61H6[34]  (.A(
        geig_data_handling_0_G_DATA_STACK_33), .B(
        \data_prev[34]_net_1 ), .Y(un1_TEST_DATA_34));
    DFN1E1 \data_prev[13]  (.D(geig_data_handling_0_G_DATA_STACK_12), 
        .CLK(GLA), .E(reset_pulse_0_RESET_4), .Q(\data_prev[13]_net_1 )
        );
    MX2 \data_buffer_RNO[14]  (.A(geig_data_handling_0_G_DATA_STACK_13)
        , .B(\data_buffer[22]_net_1 ), .S(set_0_net_1), .Y(
        \data_buffer_5[14] ));
    XOR2 counter_3_I_14 (.A(\counter[2]_net_1 ), .B(
        \DWACT_ADD_CI_0_g_array_1[0] ), .Y(\counter_3[2] ));
    DFN1E0 \data_buffer[21]  (.D(\data_buffer_5[21] ), .CLK(GLA), .E(
        un1_counter18_0), .Q(\data_buffer[21]_net_1 ));
    XOR2 \data_prev_RNIC3D6[19]  (.A(
        geig_data_handling_0_G_DATA_STACK_18), .B(
        \data_prev[19]_net_1 ), .Y(un1_TEST_DATA_19));
    MX2 \data_buffer_RNO[22]  (.A(geig_data_handling_0_G_DATA_STACK_21)
        , .B(\data_buffer[30]_net_1 ), .S(set_0_net_1), .Y(
        \data_buffer_5[22] ));
    OA1A \counter_RNO[2]  (.A(\counter_3[1] ), .B(
        \DWACT_ADD_CI_0_partial_sum[0] ), .C(\counter_3[2] ), .Y(
        \counter_4[2] ));
    DFN1E0 \data_buffer[40]  (.D(\data_buffer_5[40] ), .CLK(GLA), .E(
        set_0_RNI7I0G9_0_net_1), .Q(\data_buffer[40]_net_1 ));
    XOR2 \data_prev_RNISKE6[20]  (.A(\data_prev[20]_net_1 ), .B(
        geig_data_handling_0_G_DATA_STACK_19), .Y(un1_TEST_DATA_20));
    ZOR3I \data_prev_RNIL2I9[2]  (.A(\data_prev[2]_net_1 ), .B(
        \data_prev[6]_net_1 ), .C(geig_data_handling_0_G_DATA_STACK_0), 
        .Y(un1_TEST_DATA_NE_17));
    XO1 \data_prev_RNI6OTC[37]  (.A(
        geig_data_handling_0_G_DATA_STACK_36), .B(
        \data_prev[37]_net_1 ), .C(un1_TEST_DATA_10), .Y(
        un1_TEST_DATA_NE_3));
    DFN1E1 \data_prev[6]  (.D(geig_data_handling_0_G_DATA_STACK_0), 
        .CLK(GLA), .E(reset_pulse_0_RESET_4), .Q(\data_prev[6]_net_1 ));
    DFN1E0C0 set_0 (.D(data_chunk8), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_0), .E(set_0_sqmuxa), .Q(set_0_net_1));
    XOR2 counter_3_I_9 (.A(\counter[0]_net_1 ), .B(data_chunk7), .Y(
        \DWACT_ADD_CI_0_partial_sum[0] ));
    XOR2 \data_prev_RNIA5H6[36]  (.A(\data_prev[36]_net_1 ), .B(
        geig_data_handling_0_G_DATA_STACK_35), .Y(un1_TEST_DATA_36));
    DFN1E0 \data_buffer[28]  (.D(\data_buffer_5[28] ), .CLK(GLA), .E(
        un1_counter18_0), .Q(\data_buffer[28]_net_1 ));
    OR3 \data_prev_RNIUVGO[9]  (.A(un1_TEST_DATA_9), .B(
        un1_TEST_DATA_38), .C(un1_TEST_DATA_NE_3), .Y(
        un1_TEST_DATA_NE_23));
    DFN1E0 \data_buffer[23]  (.D(\data_buffer_5[23] ), .CLK(GLA), .E(
        un1_counter18_0), .Q(\data_buffer[23]_net_1 ));
    NOR2A \data_buffer_RNO[42]  (.A(
        geig_data_handling_0_G_DATA_STACK_41), .B(set_net_1), .Y(
        \data_buffer_5[42] ));
    XO1 \data_prev_RNIC00D[45]  (.A(
        geig_data_handling_0_G_DATA_STACK_44), .B(
        \data_prev[45]_net_1 ), .C(un1_TEST_DATA_14), .Y(
        un1_TEST_DATA_NE_7));
    MX2 \data_buffer_RNO[23]  (.A(geig_data_handling_0_G_DATA_STACK_22)
        , .B(\data_buffer[31]_net_1 ), .S(set_0_net_1), .Y(
        \data_buffer_5[23] ));
    OR2B set_0_RNI7I0G9 (.A(\un1_TEST_DATA_2[0] ), .B(
        reset_pulse_0_RESET_0), .Y(un1_counter18_0));
    DFN1E1 \data_prev[28]  (.D(geig_data_handling_0_G_DATA_STACK_27), 
        .CLK(GLA), .E(reset_pulse_0_RESET_5), .Q(\data_prev[28]_net_1 )
        );
    XOR2 \data_prev_RNI4TE6[24]  (.A(\data_prev[24]_net_1 ), .B(
        geig_data_handling_0_G_DATA_STACK_23), .Y(un1_TEST_DATA_24));
    MX2 \data_buffer_RNO[36]  (.A(geig_data_handling_0_G_DATA_STACK_35)
        , .B(\data_buffer[44]_net_1 ), .S(set_1_net_1), .Y(
        \data_buffer_5[36] ));
    DFN1E0 \data_buffer[32]  (.D(\data_buffer_5[32] ), .CLK(GLA), .E(
        un1_counter18_0), .Q(\data_buffer[32]_net_1 ));
    NOR2B \data_buffer_RNO[4]  (.A(\data_buffer[12]_net_1 ), .B(
        set_net_1), .Y(\data_buffer_5[4] ));
    DFN1E1C0 \data_chunk[3]  (.D(\data_buffer[3]_net_1 ), .CLK(GLA), 
        .CLR(reset_pulse_0_RESET_2), .E(data_chunk7), .Q(D3_OUT_c));
    DFN1E0 \data_buffer[3]  (.D(\data_buffer_5[3] ), .CLK(GLA), .E(
        set_0_RNI7I0G9_0_net_1), .Q(\data_buffer[3]_net_1 ));
    DFN1C0 \counter[0]  (.D(\DWACT_ADD_CI_0_partial_sum[0] ), .CLK(GLA)
        , .CLR(reset_pulse_0_RESET_4), .Q(\counter[0]_net_1 ));
    DFN1E0 \data_buffer[4]  (.D(\data_buffer_5[4] ), .CLK(GLA), .E(
        set_0_RNI7I0G9_0_net_1), .Q(\data_buffer[4]_net_1 ));
    NOR2A \data_buffer_RNO[43]  (.A(
        geig_data_handling_0_G_DATA_STACK_42), .B(set_net_1), .Y(
        \data_buffer_5[43] ));
    DFN1E0 \data_buffer[25]  (.D(\data_buffer_5[25] ), .CLK(GLA), .E(
        un1_counter18_0), .Q(\data_buffer[25]_net_1 ));
    
endmodule


module clock_div_1MHZ_10HZ(
       clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT,
       GLA,
       reset_pulse_0_RESET_6,
       reset_pulse_0_RESET
    );
output clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT;
input  GLA;
input  reset_pulse_0_RESET_6;
input  reset_pulse_0_RESET;

    wire clk_out_i, N_16, \counter[1]_net_1 , \counter[0]_net_1 , N_14, 
        \counter[3]_net_1 , \DWACT_FINC_E[0] , N_9, \counter[8]_net_1 , 
        \DWACT_FINC_E[4] , N_6, \DWACT_FINC_E[7] , \DWACT_FINC_E[6] , 
        clk_out4_14, clk_out4_6, clk_out4_5, clk_out4_12, clk_out4_13, 
        clk_out4_2, clk_out4_1, clk_out4_10, clk_out4_8, 
        \counter[12]_net_1 , clk_out4_4, \counter[7]_net_1 , 
        \counter[2]_net_1 , \counter[14]_net_1 , \counter[16]_net_1 , 
        \counter[9]_net_1 , \counter[6]_net_1 , \counter[4]_net_1 , 
        \counter[10]_net_1 , \counter[5]_net_1 , \counter[13]_net_1 , 
        \counter[15]_net_1 , \counter[11]_net_1 , clk_out_RNO_net_1, 
        \counter_3[15] , I_43, \counter_3[14] , I_40, \counter_3[9] , 
        I_26, \counter_3[8] , I_23, \counter_3[6] , I_17, 
        \counter_3[4] , I_12, I_4, I_5, I_7, I_9, I_14, I_20, I_28, 
        I_32, I_35, I_37, I_46, N_2, \DWACT_FINC_E[10] , 
        \DWACT_FINC_E[9] , N_3, N_4, \DWACT_FINC_E[8] , N_5, N_7, 
        \DWACT_FINC_E[2] , \DWACT_FINC_E[5] , N_8, \DWACT_FINC_E[3] , 
        N_10, N_11, N_12, \DWACT_FINC_E[1] , N_13, N_15, GND, VCC;
    
    AND3 un4_counter_1_I_19 (.A(\DWACT_FINC_E[0] ), .B(
        \DWACT_FINC_E[2] ), .C(\counter[6]_net_1 ), .Y(N_11));
    XOR2 un4_counter_1_I_12 (.A(N_14), .B(\counter[4]_net_1 ), .Y(I_12)
        );
    NOR2 \counter_RNI148N[5]  (.A(\counter[5]_net_1 ), .B(
        \counter[13]_net_1 ), .Y(clk_out4_2));
    AND2 un4_counter_1_I_38 (.A(\counter[12]_net_1 ), .B(
        \counter[13]_net_1 ), .Y(\DWACT_FINC_E[8] ));
    DFN1C0 \counter[2]  (.D(I_7), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_6), .Q(\counter[2]_net_1 ));
    AND3 un4_counter_1_I_41 (.A(\counter[12]_net_1 ), .B(
        \counter[13]_net_1 ), .C(\counter[14]_net_1 ), .Y(
        \DWACT_FINC_E[9] ));
    DFN1C0 \counter[7]  (.D(I_20), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_6), .Q(\counter[7]_net_1 ));
    AND3 un4_counter_1_I_30 (.A(\DWACT_FINC_E[0] ), .B(
        \DWACT_FINC_E[2] ), .C(\DWACT_FINC_E[5] ), .Y(
        \DWACT_FINC_E[6] ));
    NOR3C \counter_RNIVA0T2[2]  (.A(clk_out4_2), .B(clk_out4_1), .C(
        clk_out4_10), .Y(clk_out4_13));
    AND3 un4_counter_1_I_18 (.A(\counter[3]_net_1 ), .B(
        \counter[4]_net_1 ), .C(\counter[5]_net_1 ), .Y(
        \DWACT_FINC_E[2] ));
    NOR2B un4_counter_1_I_25 (.A(\counter[8]_net_1 ), .B(
        \DWACT_FINC_E[4] ), .Y(N_9));
    DFN1C0 \counter[6]  (.D(\counter_3[6] ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_6), .Q(\counter[6]_net_1 ));
    AND3 un4_counter_1_I_42 (.A(\DWACT_FINC_E[6] ), .B(
        \DWACT_FINC_E[7] ), .C(\DWACT_FINC_E[9] ), .Y(N_3));
    AOI1B \counter_RNO[4]  (.A(clk_out4_14), .B(clk_out4_13), .C(I_12), 
        .Y(\counter_3[4] ));
    NOR2B \counter_RNIMVFF[6]  (.A(\counter[6]_net_1 ), .B(
        \counter[8]_net_1 ), .Y(clk_out4_5));
    VCC VCC_i (.Y(VCC));
    AND3 un4_counter_1_I_33 (.A(\counter[9]_net_1 ), .B(
        \counter[10]_net_1 ), .C(\counter[11]_net_1 ), .Y(
        \DWACT_FINC_E[7] ));
    AND3 un4_counter_1_I_10 (.A(\counter[0]_net_1 ), .B(
        \counter[1]_net_1 ), .C(\counter[2]_net_1 ), .Y(
        \DWACT_FINC_E[0] ));
    NOR3A \counter_RNIEQN61[2]  (.A(clk_out4_4), .B(\counter[7]_net_1 )
        , .C(\counter[2]_net_1 ), .Y(clk_out4_10));
    DFN1C0 \counter[8]  (.D(\counter_3[8] ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_6), .Q(\counter[8]_net_1 ));
    NOR2B un4_counter_1_I_34 (.A(\DWACT_FINC_E[7] ), .B(
        \DWACT_FINC_E[6] ), .Y(N_6));
    DFN1C0 \counter[16]  (.D(I_46), .CLK(GLA), .CLR(
        reset_pulse_0_RESET), .Q(\counter[16]_net_1 ));
    XOR2 un4_counter_1_I_37 (.A(N_5), .B(\counter[13]_net_1 ), .Y(I_37)
        );
    AND3 un4_counter_1_I_36 (.A(\DWACT_FINC_E[6] ), .B(
        \DWACT_FINC_E[7] ), .C(\counter[12]_net_1 ), .Y(N_5));
    AND3 un4_counter_1_I_13 (.A(\DWACT_FINC_E[0] ), .B(
        \counter[3]_net_1 ), .C(\counter[4]_net_1 ), .Y(N_13));
    DFN1C0 \counter[15]  (.D(\counter_3[15] ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET), .Q(\counter[15]_net_1 ));
    NOR2A \counter_RNIGC0V[11]  (.A(\counter[15]_net_1 ), .B(
        \counter[11]_net_1 ), .Y(clk_out4_1));
    XOR2 un4_counter_1_I_14 (.A(N_13), .B(\counter[5]_net_1 ), .Y(I_14)
        );
    XOR2 un4_counter_1_I_17 (.A(N_12), .B(\counter[6]_net_1 ), .Y(I_17)
        );
    AND3 un4_counter_1_I_16 (.A(\DWACT_FINC_E[0] ), .B(
        \DWACT_FINC_E[1] ), .C(\counter[5]_net_1 ), .Y(N_12));
    XOR2 un4_counter_1_I_40 (.A(N_4), .B(\counter[14]_net_1 ), .Y(I_40)
        );
    NOR3A \counter_RNI89O61[16]  (.A(\counter[14]_net_1 ), .B(
        \counter[16]_net_1 ), .C(\counter[0]_net_1 ), .Y(clk_out4_8));
    DFN1C0 \counter[14]  (.D(\counter_3[14] ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET), .Q(\counter[14]_net_1 ));
    CLKINT clk_out_RNIT8C7 (.A(clk_out_i), .Y(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT));
    AOI1B \counter_RNO[8]  (.A(clk_out4_14), .B(clk_out4_13), .C(I_23), 
        .Y(\counter_3[8] ));
    AOI1B \counter_RNO[14]  (.A(clk_out4_14), .B(clk_out4_13), .C(I_40)
        , .Y(\counter_3[14] ));
    XOR2 un4_counter_1_I_9 (.A(N_15), .B(\counter[3]_net_1 ), .Y(I_9));
    XOR2 un4_counter_1_I_43 (.A(N_3), .B(\counter[15]_net_1 ), .Y(I_43)
        );
    DFN1C0 \counter[4]  (.D(\counter_3[4] ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_6), .Q(\counter[4]_net_1 ));
    DFN1C0 \counter[5]  (.D(I_14), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_6), .Q(\counter[5]_net_1 ));
    AX1C clk_out_RNO (.A(clk_out4_13), .B(clk_out4_14), .C(clk_out_i), 
        .Y(clk_out_RNO_net_1));
    AND2 un4_counter_1_I_44 (.A(\DWACT_FINC_E[7] ), .B(
        \DWACT_FINC_E[9] ), .Y(\DWACT_FINC_E[10] ));
    XOR2 un4_counter_1_I_5 (.A(\counter[0]_net_1 ), .B(
        \counter[1]_net_1 ), .Y(I_5));
    XOR2 un4_counter_1_I_46 (.A(N_2), .B(\counter[16]_net_1 ), .Y(I_46)
        );
    XOR2 un4_counter_1_I_35 (.A(N_6), .B(\counter[12]_net_1 ), .Y(I_35)
        );
    NOR2A \counter_RNITV7N[10]  (.A(\counter[4]_net_1 ), .B(
        \counter[10]_net_1 ), .Y(clk_out4_4));
    GND GND_i (.Y(GND));
    AND2 un4_counter_1_I_21 (.A(\counter[6]_net_1 ), .B(
        \counter[7]_net_1 ), .Y(\DWACT_FINC_E[3] ));
    DFN1C0 \counter[12]  (.D(I_35), .CLK(GLA), .CLR(
        reset_pulse_0_RESET), .Q(\counter[12]_net_1 ));
    NOR3A \counter_RNI6A0U1[12]  (.A(clk_out4_8), .B(
        \counter[3]_net_1 ), .C(\counter[12]_net_1 ), .Y(clk_out4_12));
    AND3 un4_counter_1_I_8 (.A(\counter[0]_net_1 ), .B(
        \counter[1]_net_1 ), .C(\counter[2]_net_1 ), .Y(N_15));
    DFN1C0 \counter[1]  (.D(I_5), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_6), .Q(\counter[1]_net_1 ));
    AND2 un4_counter_1_I_15 (.A(\counter[3]_net_1 ), .B(
        \counter[4]_net_1 ), .Y(\DWACT_FINC_E[1] ));
    DFN1C0 \counter[3]  (.D(I_9), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_6), .Q(\counter[3]_net_1 ));
    AND3 un4_counter_1_I_29 (.A(\counter[6]_net_1 ), .B(
        \counter[7]_net_1 ), .C(\counter[8]_net_1 ), .Y(
        \DWACT_FINC_E[5] ));
    AND3 un4_counter_1_I_22 (.A(\DWACT_FINC_E[0] ), .B(
        \DWACT_FINC_E[2] ), .C(\DWACT_FINC_E[3] ), .Y(N_10));
    AOI1B \counter_RNO[6]  (.A(clk_out4_14), .B(clk_out4_13), .C(I_17), 
        .Y(\counter_3[6] ));
    NOR2B un4_counter_1_I_6 (.A(\counter[1]_net_1 ), .B(
        \counter[0]_net_1 ), .Y(N_16));
    AOI1B \counter_RNO[9]  (.A(clk_out4_14), .B(clk_out4_13), .C(I_26), 
        .Y(\counter_3[9] ));
    AND3 un4_counter_1_I_45 (.A(\DWACT_FINC_E[6] ), .B(
        \DWACT_FINC_E[10] ), .C(\counter[15]_net_1 ), .Y(N_2));
    XOR2 un4_counter_1_I_28 (.A(N_8), .B(\counter[10]_net_1 ), .Y(I_28)
        );
    DFN1C0 \counter[11]  (.D(I_32), .CLK(GLA), .CLR(
        reset_pulse_0_RESET), .Q(\counter[11]_net_1 ));
    NOR3C \counter_RNIE50T2[1]  (.A(clk_out4_6), .B(clk_out4_5), .C(
        clk_out4_12), .Y(clk_out4_14));
    XOR2 un4_counter_1_I_20 (.A(N_11), .B(\counter[7]_net_1 ), .Y(I_20)
        );
    AOI1B \counter_RNO[15]  (.A(clk_out4_14), .B(clk_out4_13), .C(I_43)
        , .Y(\counter_3[15] ));
    NOR2A \counter_RNIIRFF[1]  (.A(\counter[9]_net_1 ), .B(
        \counter[1]_net_1 ), .Y(clk_out4_6));
    AND3 un4_counter_1_I_31 (.A(\DWACT_FINC_E[6] ), .B(
        \counter[9]_net_1 ), .C(\counter[10]_net_1 ), .Y(N_7));
    XOR2 un4_counter_1_I_23 (.A(N_10), .B(\counter[8]_net_1 ), .Y(I_23)
        );
    XOR2 un4_counter_1_I_7 (.A(N_16), .B(\counter[2]_net_1 ), .Y(I_7));
    DFN1P0 clk_out (.D(clk_out_RNO_net_1), .CLK(GLA), .PRE(
        reset_pulse_0_RESET_6), .Q(clk_out_i));
    AND3 un4_counter_1_I_24 (.A(\DWACT_FINC_E[0] ), .B(
        \DWACT_FINC_E[2] ), .C(\DWACT_FINC_E[3] ), .Y(
        \DWACT_FINC_E[4] ));
    INV un4_counter_1_I_4 (.A(\counter[0]_net_1 ), .Y(I_4));
    AND3 un4_counter_1_I_27 (.A(\DWACT_FINC_E[4] ), .B(
        \counter[8]_net_1 ), .C(\counter[9]_net_1 ), .Y(N_8));
    XOR2 un4_counter_1_I_26 (.A(N_9), .B(\counter[9]_net_1 ), .Y(I_26));
    AND3 un4_counter_1_I_39 (.A(\DWACT_FINC_E[6] ), .B(
        \DWACT_FINC_E[7] ), .C(\DWACT_FINC_E[8] ), .Y(N_4));
    XOR2 un4_counter_1_I_32 (.A(N_7), .B(\counter[11]_net_1 ), .Y(I_32)
        );
    DFN1C0 \counter[13]  (.D(I_37), .CLK(GLA), .CLR(
        reset_pulse_0_RESET), .Q(\counter[13]_net_1 ));
    NOR2B un4_counter_1_I_11 (.A(\counter[3]_net_1 ), .B(
        \DWACT_FINC_E[0] ), .Y(N_14));
    DFN1P0 \counter[0]  (.D(I_4), .CLK(GLA), .PRE(
        reset_pulse_0_RESET_6), .Q(\counter[0]_net_1 ));
    DFN1C0 \counter[10]  (.D(I_28), .CLK(GLA), .CLR(
        reset_pulse_0_RESET), .Q(\counter[10]_net_1 ));
    DFN1C0 \counter[9]  (.D(\counter_3[9] ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_6), .Q(\counter[9]_net_1 ));
    
endmodule


module CLK_1MHZ(
       GLA,
       reset_pulse_0_CLK_OUT_48MHZ
    );
output GLA;
input  reset_pulse_0_CLK_OUT_48MHZ;

    wire CLKAP, Core_GLB, Core_GLC, LOCK, Core_YB, Core_YC, 
        CLK_1MHZ_GND, CLK_1MHZ_VCC;
    
    PLL #( .VCOFREQUENCY(32.000000) )  Core (.CLKA(CLKAP), .EXTFB(
        CLK_1MHZ_GND), .POWERDOWN(CLK_1MHZ_VCC), .GLA(GLA), .LOCK(LOCK)
        , .GLB(Core_GLB), .YB(Core_YB), .GLC(Core_GLC), .YC(Core_YC), 
        .OADIV0(CLK_1MHZ_VCC), .OADIV1(CLK_1MHZ_VCC), .OADIV2(
        CLK_1MHZ_VCC), .OADIV3(CLK_1MHZ_VCC), .OADIV4(CLK_1MHZ_VCC), 
        .OAMUX0(CLK_1MHZ_GND), .OAMUX1(CLK_1MHZ_GND), .OAMUX2(
        CLK_1MHZ_VCC), .DLYGLA0(CLK_1MHZ_GND), .DLYGLA1(CLK_1MHZ_GND), 
        .DLYGLA2(CLK_1MHZ_GND), .DLYGLA3(CLK_1MHZ_GND), .DLYGLA4(
        CLK_1MHZ_GND), .OBDIV0(CLK_1MHZ_GND), .OBDIV1(CLK_1MHZ_GND), 
        .OBDIV2(CLK_1MHZ_GND), .OBDIV3(CLK_1MHZ_GND), .OBDIV4(
        CLK_1MHZ_GND), .OBMUX0(CLK_1MHZ_GND), .OBMUX1(CLK_1MHZ_GND), 
        .OBMUX2(CLK_1MHZ_GND), .DLYYB0(CLK_1MHZ_GND), .DLYYB1(
        CLK_1MHZ_GND), .DLYYB2(CLK_1MHZ_GND), .DLYYB3(CLK_1MHZ_GND), 
        .DLYYB4(CLK_1MHZ_GND), .DLYGLB0(CLK_1MHZ_GND), .DLYGLB1(
        CLK_1MHZ_GND), .DLYGLB2(CLK_1MHZ_GND), .DLYGLB3(CLK_1MHZ_GND), 
        .DLYGLB4(CLK_1MHZ_GND), .OCDIV0(CLK_1MHZ_GND), .OCDIV1(
        CLK_1MHZ_GND), .OCDIV2(CLK_1MHZ_GND), .OCDIV3(CLK_1MHZ_GND), 
        .OCDIV4(CLK_1MHZ_GND), .OCMUX0(CLK_1MHZ_GND), .OCMUX1(
        CLK_1MHZ_GND), .OCMUX2(CLK_1MHZ_GND), .DLYYC0(CLK_1MHZ_GND), 
        .DLYYC1(CLK_1MHZ_GND), .DLYYC2(CLK_1MHZ_GND), .DLYYC3(
        CLK_1MHZ_GND), .DLYYC4(CLK_1MHZ_GND), .DLYGLC0(CLK_1MHZ_GND), 
        .DLYGLC1(CLK_1MHZ_GND), .DLYGLC2(CLK_1MHZ_GND), .DLYGLC3(
        CLK_1MHZ_GND), .DLYGLC4(CLK_1MHZ_GND), .FINDIV0(CLK_1MHZ_GND), 
        .FINDIV1(CLK_1MHZ_GND), .FINDIV2(CLK_1MHZ_GND), .FINDIV3(
        CLK_1MHZ_VCC), .FINDIV4(CLK_1MHZ_GND), .FINDIV5(CLK_1MHZ_GND), 
        .FINDIV6(CLK_1MHZ_GND), .FBDIV0(CLK_1MHZ_VCC), .FBDIV1(
        CLK_1MHZ_GND), .FBDIV2(CLK_1MHZ_VCC), .FBDIV3(CLK_1MHZ_GND), 
        .FBDIV4(CLK_1MHZ_GND), .FBDIV5(CLK_1MHZ_GND), .FBDIV6(
        CLK_1MHZ_GND), .FBDLY0(CLK_1MHZ_GND), .FBDLY1(CLK_1MHZ_GND), 
        .FBDLY2(CLK_1MHZ_GND), .FBDLY3(CLK_1MHZ_GND), .FBDLY4(
        CLK_1MHZ_GND), .FBSEL0(CLK_1MHZ_VCC), .FBSEL1(CLK_1MHZ_GND), 
        .XDLYSEL(CLK_1MHZ_GND), .VCOSEL0(CLK_1MHZ_GND), .VCOSEL1(
        CLK_1MHZ_GND), .VCOSEL2(CLK_1MHZ_GND));
    PLLINT pllint1 (.A(reset_pulse_0_CLK_OUT_48MHZ), .Y(CLKAP));
    VCC VCC_i (.Y(CLK_1MHZ_VCC));
    GND GND_i (.Y(CLK_1MHZ_GND));
    
endmodule


module timestamp(
       timestamp_0_TIMESTAMP,
       clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT,
       reset_pulse_0_RESET_3,
       reset_pulse_0_RESET_7,
       reset_pulse_0_RESET
    );
output [23:0] timestamp_0_TIMESTAMP;
input  clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT;
input  reset_pulse_0_RESET_3;
input  reset_pulse_0_RESET_7;
input  reset_pulse_0_RESET;

    wire TIMESTAMP_m6_0_a2_6_net_1, TIMESTAMP_m6_0_a2_4_net_1, 
        TIMESTAMP_m6_0_a2_5_net_1, TIMESTAMP_m6_0_a2_2_net_1, 
        TIMESTAMP_c13, TIMESTAMP_c4_net_1, TIMESTAMP_c2_net_1, 
        TIMESTAMP_c6_net_1, TIMESTAMP_c8_net_1, TIMESTAMP_c10_net_1, 
        TIMESTAMP_c11_net_1, TIMESTAMP_c15_net_1, TIMESTAMP_c17_net_1, 
        TIMESTAMP_c19_net_1, TIMESTAMP_n12_net_1, TIMESTAMP_n13_net_1, 
        TIMESTAMP_n19_net_1, TIMESTAMP_n20_net_1, TIMESTAMP_n21_net_1, 
        TIMESTAMP_n22_net_1, TIMESTAMP_c21_0_net_1, 
        \timestamp_0_TIMESTAMP_i[0] , TIMESTAMP_m5_0_a2_6_net_1, 
        TIMESTAMP_m5_0_a2_1_net_1, TIMESTAMP_m5_0_a2_0_net_1, 
        TIMESTAMP_m5_0_a2_5_net_1, TIMESTAMP_m5_0_a2_3_net_1, 
        TIMESTAMP_N_12_mux_0, TIMESTAMP_n23, TIMESTAMP_n1_net_1, 
        TIMESTAMP_n2_net_1, TIMESTAMP_n3_net_1, TIMESTAMP_n4_net_1, 
        TIMESTAMP_n5_net_1, TIMESTAMP_n6_net_1, TIMESTAMP_n7_net_1, 
        TIMESTAMP_n8_net_1, TIMESTAMP_n9_net_1, TIMESTAMP_n10_net_1, 
        TIMESTAMP_n11_net_1, TIMESTAMP_n14_net_1, TIMESTAMP_n15_net_1, 
        TIMESTAMP_n16_net_1, TIMESTAMP_n17_net_1, TIMESTAMP_n18_net_1, 
        GND, VCC;
    
    DFN1C0 \TIMESTAMP[20]  (.D(TIMESTAMP_n20_net_1), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(reset_pulse_0_RESET), 
        .Q(timestamp_0_TIMESTAMP[20]));
    AX1C TIMESTAMP_n21 (.A(timestamp_0_TIMESTAMP[20]), .B(
        TIMESTAMP_c19_net_1), .C(timestamp_0_TIMESTAMP[21]), .Y(
        TIMESTAMP_n21_net_1));
    DFN1C0 \TIMESTAMP[16]  (.D(TIMESTAMP_n16_net_1), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(reset_pulse_0_RESET), 
        .Q(timestamp_0_TIMESTAMP[16]));
    XOR2 TIMESTAMP_n18 (.A(TIMESTAMP_c17_net_1), .B(
        timestamp_0_TIMESTAMP[18]), .Y(TIMESTAMP_n18_net_1));
    NOR3C TIMESTAMP_c15 (.A(timestamp_0_TIMESTAMP[14]), .B(
        TIMESTAMP_c13), .C(timestamp_0_TIMESTAMP[15]), .Y(
        TIMESTAMP_c15_net_1));
    DFN1C0 \TIMESTAMP[22]  (.D(TIMESTAMP_n22_net_1), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(reset_pulse_0_RESET), 
        .Q(timestamp_0_TIMESTAMP[22]));
    NOR3C TIMESTAMP_m6_0_a2_4 (.A(timestamp_0_TIMESTAMP[9]), .B(
        timestamp_0_TIMESTAMP[13]), .C(timestamp_0_TIMESTAMP[12]), .Y(
        TIMESTAMP_m6_0_a2_4_net_1));
    DFN1C0 \TIMESTAMP[4]  (.D(TIMESTAMP_n4_net_1), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_3), .Q(timestamp_0_TIMESTAMP[4]));
    NOR2B TIMESTAMP_c11 (.A(TIMESTAMP_c10_net_1), .B(
        timestamp_0_TIMESTAMP[11]), .Y(TIMESTAMP_c11_net_1));
    NOR3C TIMESTAMP_c2 (.A(timestamp_0_TIMESTAMP[1]), .B(
        timestamp_0_TIMESTAMP[0]), .C(timestamp_0_TIMESTAMP[2]), .Y(
        TIMESTAMP_c2_net_1));
    NOR2B TIMESTAMP_m5_0_a2_0 (.A(timestamp_0_TIMESTAMP[22]), .B(
        timestamp_0_TIMESTAMP[19]), .Y(TIMESTAMP_m5_0_a2_0_net_1));
    AX1C TIMESTAMP_n10 (.A(timestamp_0_TIMESTAMP[9]), .B(
        TIMESTAMP_c8_net_1), .C(timestamp_0_TIMESTAMP[10]), .Y(
        TIMESTAMP_n10_net_1));
    DFN1C0 \TIMESTAMP[13]  (.D(TIMESTAMP_n13_net_1), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(reset_pulse_0_RESET), 
        .Q(timestamp_0_TIMESTAMP[13]));
    NOR3C TIMESTAMP_c4 (.A(timestamp_0_TIMESTAMP[3]), .B(
        TIMESTAMP_c2_net_1), .C(timestamp_0_TIMESTAMP[4]), .Y(
        TIMESTAMP_c4_net_1));
    NOR3C TIMESTAMP_c17 (.A(timestamp_0_TIMESTAMP[16]), .B(
        TIMESTAMP_c15_net_1), .C(timestamp_0_TIMESTAMP[17]), .Y(
        TIMESTAMP_c17_net_1));
    DFN1C0 \TIMESTAMP[11]  (.D(TIMESTAMP_n11_net_1), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_7), .Q(timestamp_0_TIMESTAMP[11]));
    NOR3C TIMESTAMP_m6_0_a2_6 (.A(timestamp_0_TIMESTAMP[11]), .B(
        timestamp_0_TIMESTAMP[10]), .C(TIMESTAMP_m6_0_a2_4_net_1), .Y(
        TIMESTAMP_m6_0_a2_6_net_1));
    NOR2B TIMESTAMP_m5_0_a2_1 (.A(timestamp_0_TIMESTAMP[21]), .B(
        timestamp_0_TIMESTAMP[15]), .Y(TIMESTAMP_m5_0_a2_1_net_1));
    VCC VCC_i (.Y(VCC));
    NOR3C TIMESTAMP_c10 (.A(timestamp_0_TIMESTAMP[9]), .B(
        TIMESTAMP_c8_net_1), .C(timestamp_0_TIMESTAMP[10]), .Y(
        TIMESTAMP_c10_net_1));
    AX1C TIMESTAMP_n2 (.A(timestamp_0_TIMESTAMP[1]), .B(
        timestamp_0_TIMESTAMP[0]), .C(timestamp_0_TIMESTAMP[2]), .Y(
        TIMESTAMP_n2_net_1));
    NOR2B TIMESTAMP_m6_0_a2_2 (.A(timestamp_0_TIMESTAMP[7]), .B(
        timestamp_0_TIMESTAMP[8]), .Y(TIMESTAMP_m6_0_a2_2_net_1));
    NOR3C TIMESTAMP_m5_0_a2_5 (.A(timestamp_0_TIMESTAMP[17]), .B(
        timestamp_0_TIMESTAMP[16]), .C(TIMESTAMP_m5_0_a2_3_net_1), .Y(
        TIMESTAMP_m5_0_a2_5_net_1));
    DFN1C0 \TIMESTAMP[19]  (.D(TIMESTAMP_n19_net_1), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(reset_pulse_0_RESET), 
        .Q(timestamp_0_TIMESTAMP[19]));
    XOR2 TIMESTAMP_n7 (.A(TIMESTAMP_c6_net_1), .B(
        timestamp_0_TIMESTAMP[7]), .Y(TIMESTAMP_n7_net_1));
    XOR2 TIMESTAMP_n16 (.A(TIMESTAMP_c15_net_1), .B(
        timestamp_0_TIMESTAMP[16]), .Y(TIMESTAMP_n16_net_1));
    XOR2 TIMESTAMP_n3 (.A(TIMESTAMP_c2_net_1), .B(
        timestamp_0_TIMESTAMP[3]), .Y(TIMESTAMP_n3_net_1));
    AX1C TIMESTAMP_n15 (.A(timestamp_0_TIMESTAMP[14]), .B(
        TIMESTAMP_c13), .C(timestamp_0_TIMESTAMP[15]), .Y(
        TIMESTAMP_n15_net_1));
    DFN1C0 \TIMESTAMP[7]  (.D(TIMESTAMP_n7_net_1), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_3), .Q(timestamp_0_TIMESTAMP[7]));
    AX1C TIMESTAMP_n4 (.A(timestamp_0_TIMESTAMP[3]), .B(
        TIMESTAMP_c2_net_1), .C(timestamp_0_TIMESTAMP[4]), .Y(
        TIMESTAMP_n4_net_1));
    NOR3C TIMESTAMP_m5_0_a2 (.A(timestamp_0_TIMESTAMP[14]), .B(
        TIMESTAMP_c13), .C(TIMESTAMP_m5_0_a2_6_net_1), .Y(
        TIMESTAMP_N_12_mux_0));
    DFN1C0 \TIMESTAMP[8]  (.D(TIMESTAMP_n8_net_1), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_3), .Q(timestamp_0_TIMESTAMP[8]));
    NOR3C TIMESTAMP_m6_0_a2 (.A(TIMESTAMP_m6_0_a2_6_net_1), .B(
        TIMESTAMP_m6_0_a2_5_net_1), .C(TIMESTAMP_c4_net_1), .Y(
        TIMESTAMP_c13));
    XOR2 TIMESTAMP_n5 (.A(TIMESTAMP_c4_net_1), .B(
        timestamp_0_TIMESTAMP[5]), .Y(TIMESTAMP_n5_net_1));
    DFN1C0 \TIMESTAMP[2]  (.D(TIMESTAMP_n2_net_1), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_3), .Q(timestamp_0_TIMESTAMP[2]));
    XOR2 TIMESTAMP_n11 (.A(TIMESTAMP_c10_net_1), .B(
        timestamp_0_TIMESTAMP[11]), .Y(TIMESTAMP_n11_net_1));
    DFN1C0 \TIMESTAMP[18]  (.D(TIMESTAMP_n18_net_1), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(reset_pulse_0_RESET), 
        .Q(timestamp_0_TIMESTAMP[18]));
    NOR3C TIMESTAMP_c8 (.A(timestamp_0_TIMESTAMP[7]), .B(
        TIMESTAMP_c6_net_1), .C(timestamp_0_TIMESTAMP[8]), .Y(
        TIMESTAMP_c8_net_1));
    DFN1C0 \TIMESTAMP[17]  (.D(TIMESTAMP_n17_net_1), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(reset_pulse_0_RESET), 
        .Q(timestamp_0_TIMESTAMP[17]));
    DFN1C0 \TIMESTAMP[15]  (.D(TIMESTAMP_n15_net_1), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(reset_pulse_0_RESET), 
        .Q(timestamp_0_TIMESTAMP[15]));
    DFN1C0 \TIMESTAMP[0]  (.D(\timestamp_0_TIMESTAMP_i[0] ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_3), .Q(timestamp_0_TIMESTAMP[0]));
    AX1C TIMESTAMP_n13 (.A(timestamp_0_TIMESTAMP[12]), .B(
        TIMESTAMP_c11_net_1), .C(timestamp_0_TIMESTAMP[13]), .Y(
        TIMESTAMP_n13_net_1));
    NOR2B TIMESTAMP_m5_0_a2_3 (.A(timestamp_0_TIMESTAMP[18]), .B(
        timestamp_0_TIMESTAMP[20]), .Y(TIMESTAMP_m5_0_a2_3_net_1));
    DFN1C0 \TIMESTAMP[5]  (.D(TIMESTAMP_n5_net_1), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_3), .Q(timestamp_0_TIMESTAMP[5]));
    AX1C TIMESTAMP_n8 (.A(timestamp_0_TIMESTAMP[7]), .B(
        TIMESTAMP_c6_net_1), .C(timestamp_0_TIMESTAMP[8]), .Y(
        TIMESTAMP_n8_net_1));
    AX1C TIMESTAMP_n22 (.A(TIMESTAMP_c19_net_1), .B(
        TIMESTAMP_c21_0_net_1), .C(timestamp_0_TIMESTAMP[22]), .Y(
        TIMESTAMP_n22_net_1));
    GND GND_i (.Y(GND));
    NOR3C TIMESTAMP_c6 (.A(timestamp_0_TIMESTAMP[5]), .B(
        TIMESTAMP_c4_net_1), .C(timestamp_0_TIMESTAMP[6]), .Y(
        TIMESTAMP_c6_net_1));
    NOR2B TIMESTAMP_c21_0 (.A(timestamp_0_TIMESTAMP[21]), .B(
        timestamp_0_TIMESTAMP[20]), .Y(TIMESTAMP_c21_0_net_1));
    DFN1C0 \TIMESTAMP[10]  (.D(TIMESTAMP_n10_net_1), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_7), .Q(timestamp_0_TIMESTAMP[10]));
    XOR2 TIMESTAMP_n14 (.A(TIMESTAMP_c13), .B(
        timestamp_0_TIMESTAMP[14]), .Y(TIMESTAMP_n14_net_1));
    NOR3C TIMESTAMP_m5_0_a2_6 (.A(TIMESTAMP_m5_0_a2_1_net_1), .B(
        TIMESTAMP_m5_0_a2_0_net_1), .C(TIMESTAMP_m5_0_a2_5_net_1), .Y(
        TIMESTAMP_m5_0_a2_6_net_1));
    XOR2 TIMESTAMP_n1 (.A(timestamp_0_TIMESTAMP[0]), .B(
        timestamp_0_TIMESTAMP[1]), .Y(TIMESTAMP_n1_net_1));
    DFN1C0 \TIMESTAMP[23]  (.D(TIMESTAMP_n23), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(reset_pulse_0_RESET), 
        .Q(timestamp_0_TIMESTAMP[23]));
    DFN1C0 \TIMESTAMP[12]  (.D(TIMESTAMP_n12_net_1), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(reset_pulse_0_RESET), 
        .Q(timestamp_0_TIMESTAMP[12]));
    DFN1C0 \TIMESTAMP[21]  (.D(TIMESTAMP_n21_net_1), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(reset_pulse_0_RESET), 
        .Q(timestamp_0_TIMESTAMP[21]));
    AX1C TIMESTAMP_n6 (.A(timestamp_0_TIMESTAMP[5]), .B(
        TIMESTAMP_c4_net_1), .C(timestamp_0_TIMESTAMP[6]), .Y(
        TIMESTAMP_n6_net_1));
    DFN1C0 \TIMESTAMP[3]  (.D(TIMESTAMP_n3_net_1), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_3), .Q(timestamp_0_TIMESTAMP[3]));
    DFN1C0 \TIMESTAMP[1]  (.D(TIMESTAMP_n1_net_1), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_3), .Q(timestamp_0_TIMESTAMP[1]));
    AX1C TIMESTAMP_n17 (.A(timestamp_0_TIMESTAMP[16]), .B(
        TIMESTAMP_c15_net_1), .C(timestamp_0_TIMESTAMP[17]), .Y(
        TIMESTAMP_n17_net_1));
    XOR2 TIMESTAMP_n9 (.A(TIMESTAMP_c8_net_1), .B(
        timestamp_0_TIMESTAMP[9]), .Y(TIMESTAMP_n9_net_1));
    NOR3C TIMESTAMP_c19 (.A(timestamp_0_TIMESTAMP[18]), .B(
        TIMESTAMP_c17_net_1), .C(timestamp_0_TIMESTAMP[19]), .Y(
        TIMESTAMP_c19_net_1));
    XOR2 TIMESTAMP_n20 (.A(TIMESTAMP_c19_net_1), .B(
        timestamp_0_TIMESTAMP[20]), .Y(TIMESTAMP_n20_net_1));
    DFN1C0 \TIMESTAMP[14]  (.D(TIMESTAMP_n14_net_1), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(reset_pulse_0_RESET), 
        .Q(timestamp_0_TIMESTAMP[14]));
    NOR3C TIMESTAMP_m6_0_a2_5 (.A(timestamp_0_TIMESTAMP[6]), .B(
        timestamp_0_TIMESTAMP[5]), .C(TIMESTAMP_m6_0_a2_2_net_1), .Y(
        TIMESTAMP_m6_0_a2_5_net_1));
    AX1C TIMESTAMP_n19 (.A(timestamp_0_TIMESTAMP[18]), .B(
        TIMESTAMP_c17_net_1), .C(timestamp_0_TIMESTAMP[19]), .Y(
        TIMESTAMP_n19_net_1));
    XOR2 TIMESTAMP_n12 (.A(TIMESTAMP_c11_net_1), .B(
        timestamp_0_TIMESTAMP[12]), .Y(TIMESTAMP_n12_net_1));
    DFN1C0 \TIMESTAMP[9]  (.D(TIMESTAMP_n9_net_1), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_3), .Q(timestamp_0_TIMESTAMP[9]));
    INV \TIMESTAMP_RNO[0]  (.A(timestamp_0_TIMESTAMP[0]), .Y(
        \timestamp_0_TIMESTAMP_i[0] ));
    DFN1C0 \TIMESTAMP[6]  (.D(TIMESTAMP_n6_net_1), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_3), .Q(timestamp_0_TIMESTAMP[6]));
    XOR2 TIMESTAMP_m6 (.A(timestamp_0_TIMESTAMP[23]), .B(
        TIMESTAMP_N_12_mux_0), .Y(TIMESTAMP_n23));
    
endmodule


module geig_data_handling(
       timestamp_0_TIMESTAMP,
       geig_data_handling_0_G_DATA_STACK_0,
       geig_data_handling_0_G_DATA_STACK_7,
       geig_data_handling_0_G_DATA_STACK_8,
       geig_data_handling_0_G_DATA_STACK_9,
       geig_data_handling_0_G_DATA_STACK_10,
       geig_data_handling_0_G_DATA_STACK_11,
       geig_data_handling_0_G_DATA_STACK_12,
       geig_data_handling_0_G_DATA_STACK_13,
       geig_data_handling_0_G_DATA_STACK_14,
       geig_data_handling_0_G_DATA_STACK_15,
       geig_data_handling_0_G_DATA_STACK_16,
       geig_data_handling_0_G_DATA_STACK_17,
       geig_data_handling_0_G_DATA_STACK_18,
       geig_data_handling_0_G_DATA_STACK_19,
       geig_data_handling_0_G_DATA_STACK_20,
       geig_data_handling_0_G_DATA_STACK_21,
       geig_data_handling_0_G_DATA_STACK_22,
       geig_data_handling_0_G_DATA_STACK_23,
       geig_data_handling_0_G_DATA_STACK_24,
       geig_data_handling_0_G_DATA_STACK_25,
       geig_data_handling_0_G_DATA_STACK_26,
       geig_data_handling_0_G_DATA_STACK_27,
       geig_data_handling_0_G_DATA_STACK_28,
       geig_data_handling_0_G_DATA_STACK_29,
       geig_data_handling_0_G_DATA_STACK_30,
       geig_data_handling_0_G_DATA_STACK_31,
       geig_data_handling_0_G_DATA_STACK_32,
       geig_data_handling_0_G_DATA_STACK_33,
       geig_data_handling_0_G_DATA_STACK_34,
       geig_data_handling_0_G_DATA_STACK_35,
       geig_data_handling_0_G_DATA_STACK_36,
       geig_data_handling_0_G_DATA_STACK_37,
       geig_data_handling_0_G_DATA_STACK_38,
       geig_data_handling_0_G_DATA_STACK_39,
       geig_data_handling_0_G_DATA_STACK_40,
       geig_data_handling_0_G_DATA_STACK_41,
       geig_data_handling_0_G_DATA_STACK_42,
       geig_data_handling_0_G_DATA_STACK_43,
       geig_data_handling_0_G_DATA_STACK_44,
       geig_data_handling_0_G_DATA_STACK_45,
       geig_data_handling_0_G_DATA_STACK_46,
       G_STREAM_c,
       clock_div_1MHZ_100KHZ_0_CLK_100KHZ_OUT,
       reset_pulse_0_RESET_1,
       reset_pulse_0_RESET_2,
       clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT,
       reset_pulse_0_RESET_3,
       reset_pulse_0_RESET_0,
       reset_pulse_0_RESET_6,
       reset_pulse_0_RESET_7
    );
input  [23:0] timestamp_0_TIMESTAMP;
output geig_data_handling_0_G_DATA_STACK_0;
output geig_data_handling_0_G_DATA_STACK_7;
output geig_data_handling_0_G_DATA_STACK_8;
output geig_data_handling_0_G_DATA_STACK_9;
output geig_data_handling_0_G_DATA_STACK_10;
output geig_data_handling_0_G_DATA_STACK_11;
output geig_data_handling_0_G_DATA_STACK_12;
output geig_data_handling_0_G_DATA_STACK_13;
output geig_data_handling_0_G_DATA_STACK_14;
output geig_data_handling_0_G_DATA_STACK_15;
output geig_data_handling_0_G_DATA_STACK_16;
output geig_data_handling_0_G_DATA_STACK_17;
output geig_data_handling_0_G_DATA_STACK_18;
output geig_data_handling_0_G_DATA_STACK_19;
output geig_data_handling_0_G_DATA_STACK_20;
output geig_data_handling_0_G_DATA_STACK_21;
output geig_data_handling_0_G_DATA_STACK_22;
output geig_data_handling_0_G_DATA_STACK_23;
output geig_data_handling_0_G_DATA_STACK_24;
output geig_data_handling_0_G_DATA_STACK_25;
output geig_data_handling_0_G_DATA_STACK_26;
output geig_data_handling_0_G_DATA_STACK_27;
output geig_data_handling_0_G_DATA_STACK_28;
output geig_data_handling_0_G_DATA_STACK_29;
output geig_data_handling_0_G_DATA_STACK_30;
output geig_data_handling_0_G_DATA_STACK_31;
output geig_data_handling_0_G_DATA_STACK_32;
output geig_data_handling_0_G_DATA_STACK_33;
output geig_data_handling_0_G_DATA_STACK_34;
output geig_data_handling_0_G_DATA_STACK_35;
output geig_data_handling_0_G_DATA_STACK_36;
output geig_data_handling_0_G_DATA_STACK_37;
output geig_data_handling_0_G_DATA_STACK_38;
output geig_data_handling_0_G_DATA_STACK_39;
output geig_data_handling_0_G_DATA_STACK_40;
output geig_data_handling_0_G_DATA_STACK_41;
output geig_data_handling_0_G_DATA_STACK_42;
output geig_data_handling_0_G_DATA_STACK_43;
output geig_data_handling_0_G_DATA_STACK_44;
output geig_data_handling_0_G_DATA_STACK_45;
output geig_data_handling_0_G_DATA_STACK_46;
input  G_STREAM_c;
input  clock_div_1MHZ_100KHZ_0_CLK_100KHZ_OUT;
input  reset_pulse_0_RESET_1;
input  reset_pulse_0_RESET_2;
input  clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT;
input  reset_pulse_0_RESET_3;
input  reset_pulse_0_RESET_0;
input  reset_pulse_0_RESET_6;
input  reset_pulse_0_RESET_7;

    wire N_46_1, G_DATA_STACK6_6, G_DATA_STACK6_5, N_46_0, N_78, 
        geig_counts_c8, geig_counts_c11_1, geig_counts_31_1, 
        geig_counts_n14, geig_counts_c13, \geig_counts[14]_net_1 , 
        N_46, geig_counts_n13, geig_counts_c12, 
        \geig_counts[13]_net_1 , geig_counts_n11, geig_counts_c10, 
        \geig_counts[11]_net_1 , geig_counts_n12, geig_counts_n12_tz, 
        \geig_counts[12]_net_1 , geig_counts_n10, geig_counts_c9, 
        \geig_counts[10]_net_1 , geig_counts_n15, 
        \geig_counts[15]_net_1 , geig_counts_c13_out, geig_counts_c4, 
        \geig_counts[3]_net_1 , geig_counts_c2, \geig_counts[4]_net_1 , 
        \geig_counts[0]_net_1 , \geig_counts[1]_net_1 , 
        \geig_counts[2]_net_1 , \geig_counts[9]_net_1 , geig_counts_c7, 
        \geig_counts[8]_net_1 , geig_counts_c6, \geig_counts[7]_net_1 , 
        geig_counts_c5, \geig_counts[6]_net_1 , \geig_counts[5]_net_1 , 
        N_9, \min_counter[1]_net_1 , \min_counter[0]_net_1 , N_7, 
        \min_counter[3]_net_1 , \DWACT_FINC_E[0] , N_2, 
        \min_counter[8]_net_1 , \DWACT_FINC_E[4] , \shift_reg_i[7] , 
        \shift_reg[7]_net_1 , \min_counter[4]_net_1 , G_DATA_STACK6_4, 
        \min_counter[6]_net_1 , G_DATA_STACK6_2, 
        \min_counter[9]_net_1 , \min_counter[7]_net_1 , 
        \min_counter[2]_net_1 , \min_counter[5]_net_1 , 
        geig_counts10_7, geig_counts10_1, geig_counts10_0, 
        geig_counts10_4, geig_counts10_6, \shift_reg[3]_net_1 , 
        \shift_reg[2]_net_1 , geig_counts10_3, \shift_reg[6]_net_1 , 
        \shift_reg[4]_net_1 , \shift_reg[5]_net_1 , 
        \shift_reg[0]_net_1 , \shift_reg[1]_net_1 , \shift_reg_i_0[8] , 
        geig_counts_n3, geig_counts_n3_tz, geig_counts_n2, 
        geig_counts_n2_tz, geig_counts_n4, geig_counts_n4_tz, 
        geig_counts_n9, geig_counts_n8, geig_counts_n7, geig_counts_n6, 
        geig_counts_n5, geig_counts_n1, N_187, \min_counter_3[6] , 
        I_17_1, \min_counter_3[9] , I_26_1, \min_counter_3[3] , I_9_1, 
        \min_counter_3[4] , I_12_1, \G_DATA_STACK_1_RNO[0]_net_1 , 
        geig_countse, I_4_0, I_5_1, I_7_1, I_14_1, I_20_1, I_23_1, 
        \DWACT_FINC_E[2] , \DWACT_FINC_E[3] , N_3, N_4, N_5, 
        \DWACT_FINC_E[1] , N_6, N_8, GND, VCC;
    
    DFN1E1C0 \G_DATA_STACK_1[30]  (.D(timestamp_0_TIMESTAMP[22]), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_1), .E(N_46_1), .Q(
        geig_data_handling_0_G_DATA_STACK_29));
    DFN1E1C0 \geig_counts[6]  (.D(geig_counts_n6), .CLK(
        clock_div_1MHZ_100KHZ_0_CLK_100KHZ_OUT), .CLR(
        reset_pulse_0_RESET_2), .E(geig_countse), .Q(
        \geig_counts[6]_net_1 ));
    DFN1E1C0 \G_DATA_STACK_1[18]  (.D(timestamp_0_TIMESTAMP[10]), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_0), .E(N_46_0), .Q(
        geig_data_handling_0_G_DATA_STACK_17));
    DFN1E1C0 \G_DATA_STACK_1[45]  (.D(\geig_counts[13]_net_1 ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_1), .E(N_46_1), .Q(
        geig_data_handling_0_G_DATA_STACK_44));
    NOR2B un5_min_counter_I_25 (.A(\min_counter[8]_net_1 ), .B(
        \DWACT_FINC_E[4] ), .Y(N_2));
    DFN1E1C0 \G_DATA_STACK_1[17]  (.D(timestamp_0_TIMESTAMP[9]), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_0), .E(N_46_0), .Q(
        geig_data_handling_0_G_DATA_STACK_16));
    DFN1E1C0 \geig_counts[8]  (.D(geig_counts_n8), .CLK(
        clock_div_1MHZ_100KHZ_0_CLK_100KHZ_OUT), .CLR(
        reset_pulse_0_RESET_2), .E(geig_countse), .Q(
        \geig_counts[8]_net_1 ));
    DFN1E1C0 \G_DATA_STACK_1[43]  (.D(\geig_counts[11]_net_1 ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_1), .E(N_46_1), .Q(
        geig_data_handling_0_G_DATA_STACK_42));
    XA1B \geig_counts_RNO[14]  (.A(geig_counts_c13), .B(
        \geig_counts[14]_net_1 ), .C(N_46), .Y(geig_counts_n14));
    DFN1E1C0 \G_DATA_STACK_1[21]  (.D(timestamp_0_TIMESTAMP[13]), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_0), .E(N_46_0), .Q(
        geig_data_handling_0_G_DATA_STACK_20));
    NOR3C \geig_counts_RNIB9BJ[11]  (.A(\geig_counts[10]_net_1 ), .B(
        \geig_counts[11]_net_1 ), .C(\geig_counts[9]_net_1 ), .Y(
        geig_counts_c11_1));
    NOR2B \min_counter_RNIMHVQ2_1[1]  (.A(G_DATA_STACK6_6), .B(
        G_DATA_STACK6_5), .Y(N_46_0));
    DFN1C0 \shift_reg[0]  (.D(G_STREAM_c), .CLK(
        clock_div_1MHZ_100KHZ_0_CLK_100KHZ_OUT), .CLR(
        reset_pulse_0_RESET_3), .Q(\shift_reg[0]_net_1 ));
    DFN1E1C0 \G_DATA_STACK_1[39]  (.D(\geig_counts[7]_net_1 ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_1), .E(N_46_1), .Q(
        geig_data_handling_0_G_DATA_STACK_38));
    XOR2 un5_min_counter_I_5 (.A(\min_counter[0]_net_1 ), .B(
        \min_counter[1]_net_1 ), .Y(I_5_1));
    DFN1E1C0 \G_DATA_STACK_1[12]  (.D(timestamp_0_TIMESTAMP[4]), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_0), .E(N_46_0), .Q(
        geig_data_handling_0_G_DATA_STACK_11));
    DFN1C0 \min_counter[6]  (.D(\min_counter_3[6] ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_6), .Q(\min_counter[6]_net_1 ));
    DFN1C0 \min_counter[1]  (.D(I_5_1), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_6), .Q(\min_counter[1]_net_1 ));
    AX1 \geig_counts_RNO[15]  (.A(N_46), .B(\geig_counts[15]_net_1 ), 
        .C(N_78), .Y(geig_counts_n15));
    XOR2 un5_min_counter_I_14 (.A(N_6), .B(\min_counter[5]_net_1 ), .Y(
        I_14_1));
    NOR2B \geig_counts_RNO_0[11]  (.A(geig_counts_c9), .B(
        \geig_counts[10]_net_1 ), .Y(geig_counts_c10));
    OR2 \G_DATA_STACK_1_RNO[0]  (.A(
        geig_data_handling_0_G_DATA_STACK_0), .B(N_46), .Y(
        \G_DATA_STACK_1_RNO[0]_net_1 ));
    AND3 un5_min_counter_I_24 (.A(\DWACT_FINC_E[0] ), .B(
        \DWACT_FINC_E[2] ), .C(\DWACT_FINC_E[3] ), .Y(
        \DWACT_FINC_E[4] ));
    DFN1E1C0 \G_DATA_STACK_1[46]  (.D(\geig_counts[14]_net_1 ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_1), .E(N_46_1), .Q(
        geig_data_handling_0_G_DATA_STACK_45));
    DFN1E1C0 \geig_counts[1]  (.D(geig_counts_n1), .CLK(
        clock_div_1MHZ_100KHZ_0_CLK_100KHZ_OUT), .CLR(
        reset_pulse_0_RESET_2), .E(geig_countse), .Q(
        \geig_counts[1]_net_1 ));
    NOR2 \shift_reg_RNIVOL2[6]  (.A(\shift_reg[6]_net_1 ), .B(
        \shift_reg[7]_net_1 ), .Y(geig_counts10_4));
    NOR3B \min_counter_RNIMKAU[9]  (.A(\min_counter[9]_net_1 ), .B(
        \min_counter[3]_net_1 ), .C(\min_counter[7]_net_1 ), .Y(
        G_DATA_STACK6_4));
    XA1B \geig_counts_RNO[6]  (.A(\geig_counts[6]_net_1 ), .B(
        geig_counts_c5), .C(N_46), .Y(geig_counts_n6));
    DFN1C0 \shift_reg[7]  (.D(\shift_reg[6]_net_1 ), .CLK(
        clock_div_1MHZ_100KHZ_0_CLK_100KHZ_OUT), .CLR(
        reset_pulse_0_RESET_3), .Q(\shift_reg[7]_net_1 ));
    NOR3C \shift_reg_RNII5B5[2]  (.A(\shift_reg[3]_net_1 ), .B(
        \shift_reg[2]_net_1 ), .C(geig_counts10_3), .Y(geig_counts10_6)
        );
    DFN1E1C0 \G_DATA_STACK_1[40]  (.D(\geig_counts[8]_net_1 ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_1), .E(N_46_1), .Q(
        geig_data_handling_0_G_DATA_STACK_39));
    DFN1E1C0 \geig_counts[4]  (.D(geig_counts_n4), .CLK(
        clock_div_1MHZ_100KHZ_0_CLK_100KHZ_OUT), .CLR(
        reset_pulse_0_RESET_2), .E(geig_countse), .Q(
        \geig_counts[4]_net_1 ));
    DFN1E1C0 \G_DATA_STACK_1[14]  (.D(timestamp_0_TIMESTAMP[6]), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_0), .E(N_46_0), .Q(
        geig_data_handling_0_G_DATA_STACK_13));
    INV un5_min_counter_I_4 (.A(\min_counter[0]_net_1 ), .Y(I_4_0));
    DFN1C0 \shift_reg[2]  (.D(\shift_reg[1]_net_1 ), .CLK(
        clock_div_1MHZ_100KHZ_0_CLK_100KHZ_OUT), .CLR(
        reset_pulse_0_RESET_3), .Q(\shift_reg[2]_net_1 ));
    GND GND_i (.Y(GND));
    DFN1E1C0 \G_DATA_STACK_1[38]  (.D(\geig_counts[6]_net_1 ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_1), .E(N_46_1), .Q(
        geig_data_handling_0_G_DATA_STACK_37));
    DFN1C0 \min_counter[3]  (.D(\min_counter_3[3] ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_6), .Q(\min_counter[3]_net_1 ));
    NOR2B \min_counter_RNIMHVQ2[1]  (.A(G_DATA_STACK6_6), .B(
        G_DATA_STACK6_5), .Y(N_46));
    AND3 un5_min_counter_I_10 (.A(\min_counter[0]_net_1 ), .B(
        \min_counter[1]_net_1 ), .C(\min_counter[2]_net_1 ), .Y(
        \DWACT_FINC_E[0] ));
    DFN1C0 \min_counter[4]  (.D(\min_counter_3[4] ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_6), .Q(\min_counter[4]_net_1 ));
    DFN1E1C0 \G_DATA_STACK_1[11]  (.D(timestamp_0_TIMESTAMP[3]), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_0), .E(N_46_0), .Q(
        geig_data_handling_0_G_DATA_STACK_10));
    DFN1C0 \min_counter[8]  (.D(I_23_1), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_7), .Q(\min_counter[8]_net_1 ));
    NOR3C \geig_counts_RNO_0[14]  (.A(geig_counts_c8), .B(
        geig_counts_c11_1), .C(geig_counts_c13_out), .Y(
        geig_counts_c13));
    DFN1E1C0 \G_DATA_STACK_1[37]  (.D(\geig_counts[5]_net_1 ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_1), .E(N_46_1), .Q(
        geig_data_handling_0_G_DATA_STACK_36));
    NOR2A \shift_reg_RNIRKL2[4]  (.A(\shift_reg[4]_net_1 ), .B(
        \shift_reg[5]_net_1 ), .Y(geig_counts10_3));
    NOR2B \min_counter_RNIMHVQ2_0[1]  (.A(G_DATA_STACK6_6), .B(
        G_DATA_STACK6_5), .Y(N_46_1));
    XOR2 un5_min_counter_I_20 (.A(N_4), .B(\min_counter[7]_net_1 ), .Y(
        I_20_1));
    DFN1E1C0 \geig_counts[10]  (.D(geig_counts_n10), .CLK(
        clock_div_1MHZ_100KHZ_0_CLK_100KHZ_OUT), .CLR(
        reset_pulse_0_RESET_2), .E(geig_countse), .Q(
        \geig_counts[10]_net_1 ));
    DFN1E1C0 \geig_counts[15]  (.D(geig_counts_n15), .CLK(
        clock_div_1MHZ_100KHZ_0_CLK_100KHZ_OUT), .CLR(
        reset_pulse_0_RESET_2), .E(geig_countse), .Q(
        \geig_counts[15]_net_1 ));
    DFN1C0 \min_counter[7]  (.D(I_20_1), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_7), .Q(\min_counter[7]_net_1 ));
    DFN1C0 \shift_reg[6]  (.D(\shift_reg[5]_net_1 ), .CLK(
        clock_div_1MHZ_100KHZ_0_CLK_100KHZ_OUT), .CLR(
        reset_pulse_0_RESET_3), .Q(\shift_reg[6]_net_1 ));
    DFN1E1C0 \G_DATA_STACK_1[32]  (.D(\geig_counts[0]_net_1 ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_1), .E(N_46_1), .Q(
        geig_data_handling_0_G_DATA_STACK_31));
    AX1C \geig_counts_RNO_0[4]  (.A(\geig_counts[3]_net_1 ), .B(
        geig_counts_c2), .C(\geig_counts[4]_net_1 ), .Y(
        geig_counts_n4_tz));
    DFN1P0 \shift_reg[8]  (.D(\shift_reg_i[7] ), .CLK(
        clock_div_1MHZ_100KHZ_0_CLK_100KHZ_OUT), .PRE(
        reset_pulse_0_RESET_3), .Q(\shift_reg_i_0[8] ));
    DFN1E1C0 \G_DATA_STACK_1[25]  (.D(timestamp_0_TIMESTAMP[17]), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_0), .E(N_46_0), .Q(
        geig_data_handling_0_G_DATA_STACK_24));
    DFN1C0 \min_counter[9]  (.D(\min_counter_3[9] ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_7), .Q(\min_counter[9]_net_1 ));
    NOR2A \min_counter_RNO[3]  (.A(I_9_1), .B(N_46), .Y(
        \min_counter_3[3] ));
    DFN1E1C0 \G_DATA_STACK_1[23]  (.D(timestamp_0_TIMESTAMP[15]), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_0), .E(N_46_0), .Q(
        geig_data_handling_0_G_DATA_STACK_22));
    XOR2 un5_min_counter_I_12 (.A(N_7), .B(\min_counter[4]_net_1 ), .Y(
        I_12_1));
    DFN1E1C0 \geig_counts[13]  (.D(geig_counts_n13), .CLK(
        clock_div_1MHZ_100KHZ_0_CLK_100KHZ_OUT), .CLR(
        reset_pulse_0_RESET_2), .E(geig_countse), .Q(
        \geig_counts[13]_net_1 ));
    VCC VCC_i (.Y(VCC));
    AND3 un5_min_counter_I_8 (.A(\min_counter[0]_net_1 ), .B(
        \min_counter[1]_net_1 ), .C(\min_counter[2]_net_1 ), .Y(N_8));
    DFN1E1C0 \geig_counts[12]  (.D(geig_counts_n12), .CLK(
        clock_div_1MHZ_100KHZ_0_CLK_100KHZ_OUT), .CLR(
        reset_pulse_0_RESET_2), .E(geig_countse), .Q(
        \geig_counts[12]_net_1 ));
    AND3 un5_min_counter_I_22 (.A(\DWACT_FINC_E[0] ), .B(
        \DWACT_FINC_E[2] ), .C(\DWACT_FINC_E[3] ), .Y(N_3));
    XA1B \geig_counts_RNO[1]  (.A(\geig_counts[1]_net_1 ), .B(
        \geig_counts[0]_net_1 ), .C(N_46_1), .Y(geig_counts_n1));
    DFN1E1C0 \geig_counts[2]  (.D(geig_counts_n2), .CLK(
        clock_div_1MHZ_100KHZ_0_CLK_100KHZ_OUT), .CLR(
        reset_pulse_0_RESET_2), .E(geig_countse), .Q(
        \geig_counts[2]_net_1 ));
    XA1B \geig_counts_RNO[5]  (.A(\geig_counts[5]_net_1 ), .B(
        geig_counts_c4), .C(N_46_1), .Y(geig_counts_n5));
    XA1B \geig_counts_RNO[11]  (.A(geig_counts_c10), .B(
        \geig_counts[11]_net_1 ), .C(N_46), .Y(geig_counts_n11));
    XOR2 \geig_counts_RNO_0[3]  (.A(geig_counts_c2), .B(
        \geig_counts[3]_net_1 ), .Y(geig_counts_n3_tz));
    NOR2A \geig_counts_RNO[4]  (.A(geig_counts_n4_tz), .B(N_46), .Y(
        geig_counts_n4));
    DFN1E1C0 \G_DATA_STACK_1[47]  (.D(\geig_counts[15]_net_1 ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_1), .E(N_46_1), .Q(
        geig_data_handling_0_G_DATA_STACK_46));
    NOR2B \geig_counts_RNIV8MI1[9]  (.A(geig_counts_c8), .B(
        \geig_counts[9]_net_1 ), .Y(geig_counts_c9));
    XA1B \geig_counts_RNO[7]  (.A(\geig_counts[7]_net_1 ), .B(
        geig_counts_c6), .C(N_46), .Y(geig_counts_n7));
    DFN1E1C0 \G_DATA_STACK_1[34]  (.D(\geig_counts[2]_net_1 ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_1), .E(N_46_1), .Q(
        geig_data_handling_0_G_DATA_STACK_33));
    NOR2B \shift_reg_RNIJCL2[0]  (.A(\shift_reg[0]_net_1 ), .B(
        \shift_reg[1]_net_1 ), .Y(geig_counts10_1));
    DFN1E1C0 \G_DATA_STACK_1[26]  (.D(timestamp_0_TIMESTAMP[18]), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_0), .E(N_46_0), .Q(
        geig_data_handling_0_G_DATA_STACK_25));
    DFN1C0 \min_counter[5]  (.D(I_14_1), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_6), .Q(\min_counter[5]_net_1 ));
    NOR3B \min_counter_RNIP1E81[8]  (.A(\min_counter[6]_net_1 ), .B(
        G_DATA_STACK6_2), .C(\min_counter[8]_net_1 ), .Y(
        G_DATA_STACK6_5));
    AX1C \geig_counts_RNO_0[2]  (.A(\geig_counts[0]_net_1 ), .B(
        \geig_counts[1]_net_1 ), .C(\geig_counts[2]_net_1 ), .Y(
        geig_counts_n2_tz));
    AO1 \shift_reg_RNI1S3M3[2]  (.A(geig_counts10_7), .B(
        geig_counts10_6), .C(N_46), .Y(geig_countse));
    NOR2A \min_counter_RNO[6]  (.A(I_17_1), .B(N_46), .Y(
        \min_counter_3[6] ));
    NOR2B \shift_reg_RNI7VDG[8]  (.A(G_STREAM_c), .B(
        \shift_reg_i_0[8] ), .Y(geig_counts10_0));
    DFN1C0 \shift_reg[4]  (.D(\shift_reg[3]_net_1 ), .CLK(
        clock_div_1MHZ_100KHZ_0_CLK_100KHZ_OUT), .CLR(
        reset_pulse_0_RESET_3), .Q(\shift_reg[4]_net_1 ));
    DFN1E1C0 \G_DATA_STACK_1[42]  (.D(\geig_counts[10]_net_1 ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_1), .E(N_46_1), .Q(
        geig_data_handling_0_G_DATA_STACK_41));
    DFN1E1C0 \G_DATA_STACK_1[20]  (.D(timestamp_0_TIMESTAMP[12]), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_0), .E(N_46_0), .Q(
        geig_data_handling_0_G_DATA_STACK_19));
    DFN1E1C0 \geig_counts[9]  (.D(geig_counts_n9), .CLK(
        clock_div_1MHZ_100KHZ_0_CLK_100KHZ_OUT), .CLR(
        reset_pulse_0_RESET_2), .E(geig_countse), .Q(
        \geig_counts[9]_net_1 ));
    DFN1E1C0 \G_DATA_STACK_1[31]  (.D(timestamp_0_TIMESTAMP[23]), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_1), .E(N_46_1), .Q(
        geig_data_handling_0_G_DATA_STACK_30));
    AND3 un5_min_counter_I_16 (.A(\DWACT_FINC_E[0] ), .B(
        \DWACT_FINC_E[1] ), .C(\min_counter[5]_net_1 ), .Y(N_5));
    XA1B \geig_counts_RNO[10]  (.A(geig_counts_c9), .B(
        \geig_counts[10]_net_1 ), .C(N_46), .Y(geig_counts_n10));
    DFN1C0 \shift_reg[3]  (.D(\shift_reg[2]_net_1 ), .CLK(
        clock_div_1MHZ_100KHZ_0_CLK_100KHZ_OUT), .CLR(
        reset_pulse_0_RESET_3), .Q(\shift_reg[3]_net_1 ));
    AND3 un5_min_counter_I_19 (.A(\DWACT_FINC_E[0] ), .B(
        \DWACT_FINC_E[2] ), .C(\min_counter[6]_net_1 ), .Y(N_4));
    XA1B \geig_counts_RNO[9]  (.A(geig_counts_c8), .B(
        \geig_counts[9]_net_1 ), .C(N_46), .Y(geig_counts_n9));
    AND3 un5_min_counter_I_13 (.A(\DWACT_FINC_E[0] ), .B(
        \min_counter[3]_net_1 ), .C(\min_counter[4]_net_1 ), .Y(N_6));
    DFN1C0 \shift_reg[1]  (.D(\shift_reg[0]_net_1 ), .CLK(
        clock_div_1MHZ_100KHZ_0_CLK_100KHZ_OUT), .CLR(
        reset_pulse_0_RESET_3), .Q(\shift_reg[1]_net_1 ));
    DFN1E1C0 \G_DATA_STACK_1[29]  (.D(timestamp_0_TIMESTAMP[21]), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_1), .E(N_46_1), .Q(
        geig_data_handling_0_G_DATA_STACK_28));
    DFN1E1C0 \G_DATA_STACK_1[15]  (.D(timestamp_0_TIMESTAMP[7]), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_0), .E(N_46_0), .Q(
        geig_data_handling_0_G_DATA_STACK_14));
    XOR2 un5_min_counter_I_26 (.A(N_2), .B(\min_counter[9]_net_1 ), .Y(
        I_26_1));
    NOR3C \geig_counts_RNI2B6F[2]  (.A(\geig_counts[0]_net_1 ), .B(
        \geig_counts[1]_net_1 ), .C(\geig_counts[2]_net_1 ), .Y(
        geig_counts_c2));
    DFN1E1C0 \G_DATA_STACK_1[13]  (.D(timestamp_0_TIMESTAMP[5]), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_0), .E(N_46_0), .Q(
        geig_data_handling_0_G_DATA_STACK_12));
    NOR2A \geig_counts_RNO[2]  (.A(geig_counts_n2_tz), .B(N_46), .Y(
        geig_counts_n2));
    XOR2 un5_min_counter_I_23 (.A(N_3), .B(\min_counter[8]_net_1 ), .Y(
        I_23_1));
    NOR2B \geig_counts_RNIDVCU[5]  (.A(geig_counts_c4), .B(
        \geig_counts[5]_net_1 ), .Y(geig_counts_c5));
    NOR2B un5_min_counter_I_6 (.A(\min_counter[1]_net_1 ), .B(
        \min_counter[0]_net_1 ), .Y(N_9));
    DFN1E1C0 \geig_counts[5]  (.D(geig_counts_n5), .CLK(
        clock_div_1MHZ_100KHZ_0_CLK_100KHZ_OUT), .CLR(
        reset_pulse_0_RESET_2), .E(geig_countse), .Q(
        \geig_counts[5]_net_1 ));
    DFN1E1C0 \G_DATA_STACK_1[44]  (.D(\geig_counts[12]_net_1 ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_1), .E(N_46_1), .Q(
        geig_data_handling_0_G_DATA_STACK_43));
    NOR2A \geig_counts_RNO[12]  (.A(geig_counts_n12_tz), .B(N_46), .Y(
        geig_counts_n12));
    DFN1E1C0 \geig_counts[14]  (.D(geig_counts_n14), .CLK(
        clock_div_1MHZ_100KHZ_0_CLK_100KHZ_OUT), .CLR(
        reset_pulse_0_RESET_2), .E(geig_countse), .Q(
        \geig_counts[14]_net_1 ));
    DFN1E1C0 \G_DATA_STACK_1[9]  (.D(timestamp_0_TIMESTAMP[1]), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_0), .E(N_46_0), .Q(
        geig_data_handling_0_G_DATA_STACK_8));
    NOR2B \geig_counts_RNI88F31[6]  (.A(geig_counts_c5), .B(
        \geig_counts[6]_net_1 ), .Y(geig_counts_c6));
    NOR3C \geig_counts_RNIJNAP[4]  (.A(\geig_counts[3]_net_1 ), .B(
        geig_counts_c2), .C(\geig_counts[4]_net_1 ), .Y(geig_counts_c4)
        );
    DFN1E1C0 \G_DATA_STACK_1[41]  (.D(\geig_counts[9]_net_1 ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_1), .E(N_46_1), .Q(
        geig_data_handling_0_G_DATA_STACK_40));
    DFN1E1C0 \G_DATA_STACK_1[16]  (.D(timestamp_0_TIMESTAMP[8]), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_0), .E(N_46_0), .Q(
        geig_data_handling_0_G_DATA_STACK_15));
    NOR2 \min_counter_RNI9T6K[2]  (.A(\min_counter[2]_net_1 ), .B(
        \min_counter[5]_net_1 ), .Y(G_DATA_STACK6_2));
    AX1C \geig_counts_RNO_0[12]  (.A(geig_counts_c8), .B(
        geig_counts_c11_1), .C(\geig_counts[12]_net_1 ), .Y(
        geig_counts_n12_tz));
    XOR2 un5_min_counter_I_7 (.A(N_9), .B(\min_counter[2]_net_1 ), .Y(
        I_7_1));
    NOR2B un5_min_counter_I_11 (.A(\min_counter[3]_net_1 ), .B(
        \DWACT_FINC_E[0] ), .Y(N_7));
    DFN1C0 \shift_reg[5]  (.D(\shift_reg[4]_net_1 ), .CLK(
        clock_div_1MHZ_100KHZ_0_CLK_100KHZ_OUT), .CLR(
        reset_pulse_0_RESET_3), .Q(\shift_reg[5]_net_1 ));
    DFN1E1C0 \G_DATA_STACK_1[10]  (.D(timestamp_0_TIMESTAMP[2]), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_0), .E(N_46_0), .Q(
        geig_data_handling_0_G_DATA_STACK_9));
    DFN1E1C0 \geig_counts[7]  (.D(geig_counts_n7), .CLK(
        clock_div_1MHZ_100KHZ_0_CLK_100KHZ_OUT), .CLR(
        reset_pulse_0_RESET_2), .E(geig_countse), .Q(
        \geig_counts[7]_net_1 ));
    DFN1E1C0 \G_DATA_STACK_1[28]  (.D(timestamp_0_TIMESTAMP[20]), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_1), .E(N_46_0), .Q(
        geig_data_handling_0_G_DATA_STACK_27));
    NOR3C \geig_counts_RNO_0[15]  (.A(geig_counts_c8), .B(
        geig_counts_c11_1), .C(geig_counts_31_1), .Y(N_78));
    AND2 un5_min_counter_I_21 (.A(\min_counter[6]_net_1 ), .B(
        \min_counter[7]_net_1 ), .Y(\DWACT_FINC_E[3] ));
    NOR2A \min_counter_RNO[4]  (.A(I_12_1), .B(N_46), .Y(
        \min_counter_3[4] ));
    DFN1E1C0 \G_DATA_STACK_1[27]  (.D(timestamp_0_TIMESTAMP[19]), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_1), .E(N_46_0), .Q(
        geig_data_handling_0_G_DATA_STACK_26));
    XOR2 un5_min_counter_I_17 (.A(N_5), .B(\min_counter[6]_net_1 ), .Y(
        I_17_1));
    DFN1E1C0 \geig_counts[11]  (.D(geig_counts_n11), .CLK(
        clock_div_1MHZ_100KHZ_0_CLK_100KHZ_OUT), .CLR(
        reset_pulse_0_RESET_2), .E(geig_countse), .Q(
        \geig_counts[11]_net_1 ));
    DFN1E1C0 \G_DATA_STACK_1[19]  (.D(timestamp_0_TIMESTAMP[11]), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_0), .E(N_46_0), .Q(
        geig_data_handling_0_G_DATA_STACK_18));
    XA1B \geig_counts_RNO[13]  (.A(geig_counts_c12), .B(
        \geig_counts[13]_net_1 ), .C(N_46), .Y(geig_counts_n13));
    DFN1E1C0 \G_DATA_STACK_1[35]  (.D(\geig_counts[3]_net_1 ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_1), .E(N_46_1), .Q(
        geig_data_handling_0_G_DATA_STACK_34));
    NOR2B \geig_counts_RNI4IH81[7]  (.A(geig_counts_c6), .B(
        \geig_counts[7]_net_1 ), .Y(geig_counts_c7));
    DFN1E1C0 \G_DATA_STACK_1[8]  (.D(timestamp_0_TIMESTAMP[0]), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_0), .E(N_46_0), .Q(
        geig_data_handling_0_G_DATA_STACK_7));
    AND3 un5_min_counter_I_18 (.A(\min_counter[3]_net_1 ), .B(
        \min_counter[4]_net_1 ), .C(\min_counter[5]_net_1 ), .Y(
        \DWACT_FINC_E[2] ));
    DFN1E1C0 \G_DATA_STACK_1[22]  (.D(timestamp_0_TIMESTAMP[14]), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_0), .E(N_46_0), .Q(
        geig_data_handling_0_G_DATA_STACK_21));
    NOR2B \geig_counts_RNI1TJD1[8]  (.A(geig_counts_c7), .B(
        \geig_counts[8]_net_1 ), .Y(geig_counts_c8));
    XOR2 un5_min_counter_I_9 (.A(N_8), .B(\min_counter[3]_net_1 ), .Y(
        I_9_1));
    DFN1E1C0 \G_DATA_STACK_1[33]  (.D(\geig_counts[1]_net_1 ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_1), .E(N_46_1), .Q(
        geig_data_handling_0_G_DATA_STACK_32));
    NOR3B \geig_counts_RNO_1[15]  (.A(\geig_counts[14]_net_1 ), .B(
        geig_counts_c13_out), .C(N_46), .Y(geig_counts_31_1));
    NOR2B \geig_counts_RNIH19E[13]  (.A(\geig_counts[12]_net_1 ), .B(
        \geig_counts[13]_net_1 ), .Y(geig_counts_c13_out));
    DFN1E1C0 \geig_counts[3]  (.D(geig_counts_n3), .CLK(
        clock_div_1MHZ_100KHZ_0_CLK_100KHZ_OUT), .CLR(
        reset_pulse_0_RESET_2), .E(geig_countse), .Q(
        \geig_counts[3]_net_1 ));
    NOR3B \min_counter_RNITFHI1[1]  (.A(\min_counter[4]_net_1 ), .B(
        G_DATA_STACK6_4), .C(\min_counter[1]_net_1 ), .Y(
        G_DATA_STACK6_6));
    NOR2 \geig_counts_RNO[0]  (.A(\geig_counts[0]_net_1 ), .B(N_46), 
        .Y(N_187));
    NOR2A \min_counter_RNO[9]  (.A(I_26_1), .B(N_46), .Y(
        \min_counter_3[9] ));
    NOR2A \geig_counts_RNO[3]  (.A(geig_counts_n3_tz), .B(N_46), .Y(
        geig_counts_n3));
    DFN1E1C0 \geig_counts[0]  (.D(N_187), .CLK(
        clock_div_1MHZ_100KHZ_0_CLK_100KHZ_OUT), .CLR(
        reset_pulse_0_RESET_1), .E(geig_countse), .Q(
        \geig_counts[0]_net_1 ));
    DFN1C0 \min_counter[2]  (.D(I_7_1), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_6), .Q(\min_counter[2]_net_1 ));
    DFN1E1C0 \G_DATA_STACK_1[36]  (.D(\geig_counts[4]_net_1 ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_1), .E(N_46_1), .Q(
        geig_data_handling_0_G_DATA_STACK_35));
    NOR3C \shift_reg_RNIP4PL[0]  (.A(geig_counts10_1), .B(
        geig_counts10_0), .C(geig_counts10_4), .Y(geig_counts10_7));
    XA1B \geig_counts_RNO[8]  (.A(geig_counts_c7), .B(
        \geig_counts[8]_net_1 ), .C(N_46), .Y(geig_counts_n8));
    NOR3C \geig_counts_RNO_0[13]  (.A(geig_counts_c8), .B(
        geig_counts_c11_1), .C(\geig_counts[12]_net_1 ), .Y(
        geig_counts_c12));
    INV \shift_reg_RNO[8]  (.A(\shift_reg[7]_net_1 ), .Y(
        \shift_reg_i[7] ));
    DFN1C0 \min_counter[0]  (.D(I_4_0), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_6), .Q(\min_counter[0]_net_1 ));
    DFN1E1C0 \G_DATA_STACK_1[24]  (.D(timestamp_0_TIMESTAMP[16]), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_0), .E(N_46_0), .Q(
        geig_data_handling_0_G_DATA_STACK_23));
    DFN1C0 \G_DATA_STACK_1[0]  (.D(\G_DATA_STACK_1_RNO[0]_net_1 ), 
        .CLK(clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_3), .Q(geig_data_handling_0_G_DATA_STACK_0)
        );
    AND2 un5_min_counter_I_15 (.A(\min_counter[3]_net_1 ), .B(
        \min_counter[4]_net_1 ), .Y(\DWACT_FINC_E[1] ));
    
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

    wire VCC, reset_pulse_0_CLK_OUT_48MHZ, GLA, reset_pulse_0_RESET, 
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT, 
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
        \geig_data_handling_0_G_DATA_STACK[47] , GND, 
        BUF2_PBRST_N_T9_c, CLK_48MHZ_c, G_STREAM_c, D0_OUT_c, D1_OUT_c, 
        D2_OUT_c, D3_OUT_c, D4_OUT_c, D5_OUT_c, D6_OUT_c, D7_OUT_c, 
        reset_pulse_0_RESET_0, reset_pulse_0_RESET_1, 
        reset_pulse_0_RESET_2, reset_pulse_0_RESET_3, 
        reset_pulse_0_RESET_4, reset_pulse_0_RESET_5, 
        reset_pulse_0_RESET_6, reset_pulse_0_RESET_7;
    
    OUTBUF D6_OUT_pad (.D(D6_OUT_c), .PAD(D6_OUT));
    OUTBUF D4_OUT_pad (.D(D4_OUT_c), .PAD(D4_OUT));
    VCC VCC_i (.Y(VCC));
    clock_div_1MHZ_100KHZ clock_div_1MHZ_100KHZ_0 (
        .clock_div_1MHZ_100KHZ_0_CLK_100KHZ_OUT(
        clock_div_1MHZ_100KHZ_0_CLK_100KHZ_OUT), .GLA(GLA), 
        .reset_pulse_0_RESET_6(reset_pulse_0_RESET_6), 
        .reset_pulse_0_RESET_7(reset_pulse_0_RESET_7));
    INBUF BUF2_PBRST_N_T9_pad (.PAD(BUF2_PBRST_N_T9), .Y(
        BUF2_PBRST_N_T9_c));
    reset_pulse reset_pulse_0 (.reset_pulse_0_RESET_7(
        reset_pulse_0_RESET_7), .BUF2_PBRST_N_T9_c(BUF2_PBRST_N_T9_c), 
        .CLK_48MHZ_c(CLK_48MHZ_c), .reset_pulse_0_RESET_6(
        reset_pulse_0_RESET_6), .reset_pulse_0_RESET_5(
        reset_pulse_0_RESET_5), .reset_pulse_0_RESET_4(
        reset_pulse_0_RESET_4), .reset_pulse_0_RESET_3(
        reset_pulse_0_RESET_3), .reset_pulse_0_RESET_2(
        reset_pulse_0_RESET_2), .reset_pulse_0_RESET_1(
        reset_pulse_0_RESET_1), .reset_pulse_0_RESET_0(
        reset_pulse_0_RESET_0), .reset_pulse_0_CLK_OUT_48MHZ(
        reset_pulse_0_CLK_OUT_48MHZ), .reset_pulse_0_RESET(
        reset_pulse_0_RESET));
    OUTBUF D3_OUT_pad (.D(D3_OUT_c), .PAD(D3_OUT));
    OUTBUF D1_OUT_pad (.D(D1_OUT_c), .PAD(D1_OUT));
    test_harness_geiger_stack test_harness_geiger_stack_0 (
        .geig_data_handling_0_G_DATA_STACK_40(
        \geig_data_handling_0_G_DATA_STACK[41] ), 
        .geig_data_handling_0_G_DATA_STACK_0(
        \geig_data_handling_0_G_DATA_STACK[1] ), 
        .geig_data_handling_0_G_DATA_STACK_32(
        \geig_data_handling_0_G_DATA_STACK[33] ), 
        .geig_data_handling_0_G_DATA_STACK_46(
        \geig_data_handling_0_G_DATA_STACK[47] ), 
        .geig_data_handling_0_G_DATA_STACK_36(
        \geig_data_handling_0_G_DATA_STACK[37] ), 
        .geig_data_handling_0_G_DATA_STACK_38(
        \geig_data_handling_0_G_DATA_STACK[39] ), 
        .geig_data_handling_0_G_DATA_STACK_39(
        \geig_data_handling_0_G_DATA_STACK[40] ), 
        .geig_data_handling_0_G_DATA_STACK_33(
        \geig_data_handling_0_G_DATA_STACK[34] ), 
        .geig_data_handling_0_G_DATA_STACK_11(
        \geig_data_handling_0_G_DATA_STACK[12] ), 
        .geig_data_handling_0_G_DATA_STACK_9(
        \geig_data_handling_0_G_DATA_STACK[10] ), 
        .geig_data_handling_0_G_DATA_STACK_7(
        \geig_data_handling_0_G_DATA_STACK[8] ), 
        .geig_data_handling_0_G_DATA_STACK_17(
        \geig_data_handling_0_G_DATA_STACK[18] ), 
        .geig_data_handling_0_G_DATA_STACK_15(
        \geig_data_handling_0_G_DATA_STACK[16] ), 
        .geig_data_handling_0_G_DATA_STACK_21(
        \geig_data_handling_0_G_DATA_STACK[22] ), 
        .geig_data_handling_0_G_DATA_STACK_25(
        \geig_data_handling_0_G_DATA_STACK[26] ), 
        .geig_data_handling_0_G_DATA_STACK_29(
        \geig_data_handling_0_G_DATA_STACK[30] ), 
        .geig_data_handling_0_G_DATA_STACK_43(
        \geig_data_handling_0_G_DATA_STACK[44] ), 
        .geig_data_handling_0_G_DATA_STACK_44(
        \geig_data_handling_0_G_DATA_STACK[45] ), 
        .geig_data_handling_0_G_DATA_STACK_45(
        \geig_data_handling_0_G_DATA_STACK[46] ), 
        .geig_data_handling_0_G_DATA_STACK_19(
        \geig_data_handling_0_G_DATA_STACK[20] ), 
        .geig_data_handling_0_G_DATA_STACK_31(
        \geig_data_handling_0_G_DATA_STACK[32] ), 
        .geig_data_handling_0_G_DATA_STACK_34(
        \geig_data_handling_0_G_DATA_STACK[35] ), 
        .geig_data_handling_0_G_DATA_STACK_35(
        \geig_data_handling_0_G_DATA_STACK[36] ), 
        .geig_data_handling_0_G_DATA_STACK_20(
        \geig_data_handling_0_G_DATA_STACK[21] ), 
        .geig_data_handling_0_G_DATA_STACK_22(
        \geig_data_handling_0_G_DATA_STACK[23] ), 
        .geig_data_handling_0_G_DATA_STACK_23(
        \geig_data_handling_0_G_DATA_STACK[24] ), 
        .geig_data_handling_0_G_DATA_STACK_24(
        \geig_data_handling_0_G_DATA_STACK[25] ), 
        .geig_data_handling_0_G_DATA_STACK_26(
        \geig_data_handling_0_G_DATA_STACK[27] ), 
        .geig_data_handling_0_G_DATA_STACK_27(
        \geig_data_handling_0_G_DATA_STACK[28] ), 
        .geig_data_handling_0_G_DATA_STACK_28(
        \geig_data_handling_0_G_DATA_STACK[29] ), 
        .geig_data_handling_0_G_DATA_STACK_30(
        \geig_data_handling_0_G_DATA_STACK[31] ), 
        .geig_data_handling_0_G_DATA_STACK_37(
        \geig_data_handling_0_G_DATA_STACK[38] ), 
        .geig_data_handling_0_G_DATA_STACK_41(
        \geig_data_handling_0_G_DATA_STACK[42] ), 
        .geig_data_handling_0_G_DATA_STACK_42(
        \geig_data_handling_0_G_DATA_STACK[43] ), 
        .geig_data_handling_0_G_DATA_STACK_18(
        \geig_data_handling_0_G_DATA_STACK[19] ), 
        .geig_data_handling_0_G_DATA_STACK_16(
        \geig_data_handling_0_G_DATA_STACK[17] ), 
        .geig_data_handling_0_G_DATA_STACK_14(
        \geig_data_handling_0_G_DATA_STACK[15] ), 
        .geig_data_handling_0_G_DATA_STACK_13(
        \geig_data_handling_0_G_DATA_STACK[14] ), 
        .geig_data_handling_0_G_DATA_STACK_12(
        \geig_data_handling_0_G_DATA_STACK[13] ), 
        .geig_data_handling_0_G_DATA_STACK_10(
        \geig_data_handling_0_G_DATA_STACK[11] ), 
        .geig_data_handling_0_G_DATA_STACK_8(
        \geig_data_handling_0_G_DATA_STACK[9] ), 
        .reset_pulse_0_RESET_0(reset_pulse_0_RESET_0), .GLA(GLA), 
        .reset_pulse_0_RESET(reset_pulse_0_RESET), 
        .reset_pulse_0_RESET_2(reset_pulse_0_RESET_2), .D0_OUT_c(
        D0_OUT_c), .D1_OUT_c(D1_OUT_c), .D2_OUT_c(D2_OUT_c), .D3_OUT_c(
        D3_OUT_c), .D4_OUT_c(D4_OUT_c), .D5_OUT_c(D5_OUT_c), .D6_OUT_c(
        D6_OUT_c), .reset_pulse_0_RESET_3(reset_pulse_0_RESET_3), 
        .D7_OUT_c(D7_OUT_c), .reset_pulse_0_RESET_4(
        reset_pulse_0_RESET_4), .reset_pulse_0_RESET_5(
        reset_pulse_0_RESET_5), .reset_pulse_0_RESET_6(
        reset_pulse_0_RESET_6));
    GND GND_i (.Y(GND));
    OUTBUF D5_OUT_pad (.D(D5_OUT_c), .PAD(D5_OUT));
    clock_div_1MHZ_10HZ clock_div_1MHZ_10HZ_0 (
        .clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .GLA(GLA), 
        .reset_pulse_0_RESET_6(reset_pulse_0_RESET_6), 
        .reset_pulse_0_RESET(reset_pulse_0_RESET));
    INBUF CLK_48MHZ_pad (.PAD(CLK_48MHZ), .Y(CLK_48MHZ_c));
    INBUF G_STREAM_pad (.PAD(G_STREAM), .Y(G_STREAM_c));
    OUTBUF D2_OUT_pad (.D(D2_OUT_c), .PAD(D2_OUT));
    CLK_1MHZ CLK_1MHZ_0 (.GLA(GLA), .reset_pulse_0_CLK_OUT_48MHZ(
        reset_pulse_0_CLK_OUT_48MHZ));
    timestamp timestamp_0 (.timestamp_0_TIMESTAMP({
        \timestamp_0_TIMESTAMP[23] , \timestamp_0_TIMESTAMP[22] , 
        \timestamp_0_TIMESTAMP[21] , \timestamp_0_TIMESTAMP[20] , 
        \timestamp_0_TIMESTAMP[19] , \timestamp_0_TIMESTAMP[18] , 
        \timestamp_0_TIMESTAMP[17] , \timestamp_0_TIMESTAMP[16] , 
        \timestamp_0_TIMESTAMP[15] , \timestamp_0_TIMESTAMP[14] , 
        \timestamp_0_TIMESTAMP[13] , \timestamp_0_TIMESTAMP[12] , 
        \timestamp_0_TIMESTAMP[11] , \timestamp_0_TIMESTAMP[10] , 
        \timestamp_0_TIMESTAMP[9] , \timestamp_0_TIMESTAMP[8] , 
        \timestamp_0_TIMESTAMP[7] , \timestamp_0_TIMESTAMP[6] , 
        \timestamp_0_TIMESTAMP[5] , \timestamp_0_TIMESTAMP[4] , 
        \timestamp_0_TIMESTAMP[3] , \timestamp_0_TIMESTAMP[2] , 
        \timestamp_0_TIMESTAMP[1] , \timestamp_0_TIMESTAMP[0] }), 
        .clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .reset_pulse_0_RESET_3(
        reset_pulse_0_RESET_3), .reset_pulse_0_RESET_7(
        reset_pulse_0_RESET_7), .reset_pulse_0_RESET(
        reset_pulse_0_RESET));
    geig_data_handling geig_data_handling_0 (.timestamp_0_TIMESTAMP({
        \timestamp_0_TIMESTAMP[23] , \timestamp_0_TIMESTAMP[22] , 
        \timestamp_0_TIMESTAMP[21] , \timestamp_0_TIMESTAMP[20] , 
        \timestamp_0_TIMESTAMP[19] , \timestamp_0_TIMESTAMP[18] , 
        \timestamp_0_TIMESTAMP[17] , \timestamp_0_TIMESTAMP[16] , 
        \timestamp_0_TIMESTAMP[15] , \timestamp_0_TIMESTAMP[14] , 
        \timestamp_0_TIMESTAMP[13] , \timestamp_0_TIMESTAMP[12] , 
        \timestamp_0_TIMESTAMP[11] , \timestamp_0_TIMESTAMP[10] , 
        \timestamp_0_TIMESTAMP[9] , \timestamp_0_TIMESTAMP[8] , 
        \timestamp_0_TIMESTAMP[7] , \timestamp_0_TIMESTAMP[6] , 
        \timestamp_0_TIMESTAMP[5] , \timestamp_0_TIMESTAMP[4] , 
        \timestamp_0_TIMESTAMP[3] , \timestamp_0_TIMESTAMP[2] , 
        \timestamp_0_TIMESTAMP[1] , \timestamp_0_TIMESTAMP[0] }), 
        .geig_data_handling_0_G_DATA_STACK_0(
        \geig_data_handling_0_G_DATA_STACK[1] ), 
        .geig_data_handling_0_G_DATA_STACK_7(
        \geig_data_handling_0_G_DATA_STACK[8] ), 
        .geig_data_handling_0_G_DATA_STACK_8(
        \geig_data_handling_0_G_DATA_STACK[9] ), 
        .geig_data_handling_0_G_DATA_STACK_9(
        \geig_data_handling_0_G_DATA_STACK[10] ), 
        .geig_data_handling_0_G_DATA_STACK_10(
        \geig_data_handling_0_G_DATA_STACK[11] ), 
        .geig_data_handling_0_G_DATA_STACK_11(
        \geig_data_handling_0_G_DATA_STACK[12] ), 
        .geig_data_handling_0_G_DATA_STACK_12(
        \geig_data_handling_0_G_DATA_STACK[13] ), 
        .geig_data_handling_0_G_DATA_STACK_13(
        \geig_data_handling_0_G_DATA_STACK[14] ), 
        .geig_data_handling_0_G_DATA_STACK_14(
        \geig_data_handling_0_G_DATA_STACK[15] ), 
        .geig_data_handling_0_G_DATA_STACK_15(
        \geig_data_handling_0_G_DATA_STACK[16] ), 
        .geig_data_handling_0_G_DATA_STACK_16(
        \geig_data_handling_0_G_DATA_STACK[17] ), 
        .geig_data_handling_0_G_DATA_STACK_17(
        \geig_data_handling_0_G_DATA_STACK[18] ), 
        .geig_data_handling_0_G_DATA_STACK_18(
        \geig_data_handling_0_G_DATA_STACK[19] ), 
        .geig_data_handling_0_G_DATA_STACK_19(
        \geig_data_handling_0_G_DATA_STACK[20] ), 
        .geig_data_handling_0_G_DATA_STACK_20(
        \geig_data_handling_0_G_DATA_STACK[21] ), 
        .geig_data_handling_0_G_DATA_STACK_21(
        \geig_data_handling_0_G_DATA_STACK[22] ), 
        .geig_data_handling_0_G_DATA_STACK_22(
        \geig_data_handling_0_G_DATA_STACK[23] ), 
        .geig_data_handling_0_G_DATA_STACK_23(
        \geig_data_handling_0_G_DATA_STACK[24] ), 
        .geig_data_handling_0_G_DATA_STACK_24(
        \geig_data_handling_0_G_DATA_STACK[25] ), 
        .geig_data_handling_0_G_DATA_STACK_25(
        \geig_data_handling_0_G_DATA_STACK[26] ), 
        .geig_data_handling_0_G_DATA_STACK_26(
        \geig_data_handling_0_G_DATA_STACK[27] ), 
        .geig_data_handling_0_G_DATA_STACK_27(
        \geig_data_handling_0_G_DATA_STACK[28] ), 
        .geig_data_handling_0_G_DATA_STACK_28(
        \geig_data_handling_0_G_DATA_STACK[29] ), 
        .geig_data_handling_0_G_DATA_STACK_29(
        \geig_data_handling_0_G_DATA_STACK[30] ), 
        .geig_data_handling_0_G_DATA_STACK_30(
        \geig_data_handling_0_G_DATA_STACK[31] ), 
        .geig_data_handling_0_G_DATA_STACK_31(
        \geig_data_handling_0_G_DATA_STACK[32] ), 
        .geig_data_handling_0_G_DATA_STACK_32(
        \geig_data_handling_0_G_DATA_STACK[33] ), 
        .geig_data_handling_0_G_DATA_STACK_33(
        \geig_data_handling_0_G_DATA_STACK[34] ), 
        .geig_data_handling_0_G_DATA_STACK_34(
        \geig_data_handling_0_G_DATA_STACK[35] ), 
        .geig_data_handling_0_G_DATA_STACK_35(
        \geig_data_handling_0_G_DATA_STACK[36] ), 
        .geig_data_handling_0_G_DATA_STACK_36(
        \geig_data_handling_0_G_DATA_STACK[37] ), 
        .geig_data_handling_0_G_DATA_STACK_37(
        \geig_data_handling_0_G_DATA_STACK[38] ), 
        .geig_data_handling_0_G_DATA_STACK_38(
        \geig_data_handling_0_G_DATA_STACK[39] ), 
        .geig_data_handling_0_G_DATA_STACK_39(
        \geig_data_handling_0_G_DATA_STACK[40] ), 
        .geig_data_handling_0_G_DATA_STACK_40(
        \geig_data_handling_0_G_DATA_STACK[41] ), 
        .geig_data_handling_0_G_DATA_STACK_41(
        \geig_data_handling_0_G_DATA_STACK[42] ), 
        .geig_data_handling_0_G_DATA_STACK_42(
        \geig_data_handling_0_G_DATA_STACK[43] ), 
        .geig_data_handling_0_G_DATA_STACK_43(
        \geig_data_handling_0_G_DATA_STACK[44] ), 
        .geig_data_handling_0_G_DATA_STACK_44(
        \geig_data_handling_0_G_DATA_STACK[45] ), 
        .geig_data_handling_0_G_DATA_STACK_45(
        \geig_data_handling_0_G_DATA_STACK[46] ), 
        .geig_data_handling_0_G_DATA_STACK_46(
        \geig_data_handling_0_G_DATA_STACK[47] ), .G_STREAM_c(
        G_STREAM_c), .clock_div_1MHZ_100KHZ_0_CLK_100KHZ_OUT(
        clock_div_1MHZ_100KHZ_0_CLK_100KHZ_OUT), 
        .reset_pulse_0_RESET_1(reset_pulse_0_RESET_1), 
        .reset_pulse_0_RESET_2(reset_pulse_0_RESET_2), 
        .clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .reset_pulse_0_RESET_3(
        reset_pulse_0_RESET_3), .reset_pulse_0_RESET_0(
        reset_pulse_0_RESET_0), .reset_pulse_0_RESET_6(
        reset_pulse_0_RESET_6), .reset_pulse_0_RESET_7(
        reset_pulse_0_RESET_7));
    OUTBUF D0_OUT_pad (.D(D0_OUT_c), .PAD(D0_OUT));
    OUTBUF D7_OUT_pad (.D(D7_OUT_c), .PAD(D7_OUT));
    
endmodule
