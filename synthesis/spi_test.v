`timescale 1 ns/100 ps
// Version: v11.6 11.6.0.34


module test_constants_spi(
       test_constants_spi_0_DATA,
       test_constants_spi_0_START,
       clock_div_1MHZ_1KHZ_0_CLK_1KHZ_OUT,
       RESET_c_1,
       RESET_c_0
    );
output [7:0] test_constants_spi_0_DATA;
output test_constants_spi_0_START;
input  clock_div_1MHZ_1KHZ_0_CLK_1KHZ_OUT;
input  RESET_c_1;
input  RESET_c_0;

    wire test_constants_spi_0_START_i, 
        \test_constants_spi_0_DATA_i[0] , da_c5_net_1, da_c4_net_1, 
        da_n1_net_1, da_n5_net_1, da_n6_net_1, da_n7_net_1, 
        da_c2_net_1, da_n2_net_1, da_n3_net_1, da_n4_net_1, GND, VCC;
    
    XOR2 da_n1 (.A(test_constants_spi_0_DATA[1]), .B(
        test_constants_spi_0_DATA[0]), .Y(da_n1_net_1));
    NOR3C da_c2 (.A(test_constants_spi_0_DATA[0]), .B(
        test_constants_spi_0_DATA[1]), .C(test_constants_spi_0_DATA[2])
        , .Y(da_c2_net_1));
    DFN1C1 \da[7]  (.D(da_n7_net_1), .CLK(
        clock_div_1MHZ_1KHZ_0_CLK_1KHZ_OUT), .CLR(RESET_c_0), .Q(
        test_constants_spi_0_DATA[7]));
    NOR3C da_c4 (.A(test_constants_spi_0_DATA[3]), .B(da_c2_net_1), .C(
        test_constants_spi_0_DATA[4]), .Y(da_c4_net_1));
    NOR2B da_c5 (.A(da_c4_net_1), .B(test_constants_spi_0_DATA[5]), .Y(
        da_c5_net_1));
    DFN1C1 \da[2]  (.D(da_n2_net_1), .CLK(
        clock_div_1MHZ_1KHZ_0_CLK_1KHZ_OUT), .CLR(RESET_c_0), .Q(
        test_constants_spi_0_DATA[2]));
    DFN1C1 st (.D(test_constants_spi_0_START_i), .CLK(
        clock_div_1MHZ_1KHZ_0_CLK_1KHZ_OUT), .CLR(RESET_c_1), .Q(
        test_constants_spi_0_START));
    AX1C da_n7 (.A(test_constants_spi_0_DATA[6]), .B(da_c5_net_1), .C(
        test_constants_spi_0_DATA[7]), .Y(da_n7_net_1));
    DFN1C1 \da[0]  (.D(\test_constants_spi_0_DATA_i[0] ), .CLK(
        clock_div_1MHZ_1KHZ_0_CLK_1KHZ_OUT), .CLR(RESET_c_0), .Q(
        test_constants_spi_0_DATA[0]));
    VCC VCC_i (.Y(VCC));
    XOR2 da_n6 (.A(da_c5_net_1), .B(test_constants_spi_0_DATA[6]), .Y(
        da_n6_net_1));
    DFN1C1 \da[3]  (.D(da_n3_net_1), .CLK(
        clock_div_1MHZ_1KHZ_0_CLK_1KHZ_OUT), .CLR(RESET_c_0), .Q(
        test_constants_spi_0_DATA[3]));
    DFN1C1 \da[6]  (.D(da_n6_net_1), .CLK(
        clock_div_1MHZ_1KHZ_0_CLK_1KHZ_OUT), .CLR(RESET_c_0), .Q(
        test_constants_spi_0_DATA[6]));
    GND GND_i (.Y(GND));
    DFN1C1 \da[4]  (.D(da_n4_net_1), .CLK(
        clock_div_1MHZ_1KHZ_0_CLK_1KHZ_OUT), .CLR(RESET_c_0), .Q(
        test_constants_spi_0_DATA[4]));
    DFN1C1 \da[5]  (.D(da_n5_net_1), .CLK(
        clock_div_1MHZ_1KHZ_0_CLK_1KHZ_OUT), .CLR(RESET_c_0), .Q(
        test_constants_spi_0_DATA[5]));
    DFN1C1 \da[1]  (.D(da_n1_net_1), .CLK(
        clock_div_1MHZ_1KHZ_0_CLK_1KHZ_OUT), .CLR(RESET_c_0), .Q(
        test_constants_spi_0_DATA[1]));
    INV st_RNO (.A(test_constants_spi_0_START), .Y(
        test_constants_spi_0_START_i));
    INV \da_RNO[0]  (.A(test_constants_spi_0_DATA[0]), .Y(
        \test_constants_spi_0_DATA_i[0] ));
    AX1C da_n2 (.A(test_constants_spi_0_DATA[0]), .B(
        test_constants_spi_0_DATA[1]), .C(test_constants_spi_0_DATA[2])
        , .Y(da_n2_net_1));
    AX1C da_n4 (.A(test_constants_spi_0_DATA[3]), .B(da_c2_net_1), .C(
        test_constants_spi_0_DATA[4]), .Y(da_n4_net_1));
    XOR2 da_n3 (.A(da_c2_net_1), .B(test_constants_spi_0_DATA[3]), .Y(
        da_n3_net_1));
    XOR2 da_n5 (.A(da_c4_net_1), .B(test_constants_spi_0_DATA[5]), .Y(
        da_n5_net_1));
    
endmodule


module spi_master(
       test_constants_spi_0_DATA,
       test_constants_spi_0_START,
       state_q_83_d,
       RESET_c,
       CLK_SCK_c,
       MOSI_c,
       GLA
    );
input  [7:0] test_constants_spi_0_DATA;
input  test_constants_spi_0_START;
output state_q_83_d;
input  RESET_c;
output CLK_SCK_c;
output MOSI_c;
input  GLA;

    wire \state_q_ns_i_a2_0_0[1] , N_18, \state_q_ns_i_a2_0_a2_1_0[1] , 
        N_28, \state_q_ns_i_a2_0_0[0] , \state_q[0]_net_1 , 
        \state_q[1]_net_1 , \ctr_q[2]_net_1 , N_31_1, N_152, 
        \ctr_q[0]_net_1 , \ctr_q[1]_net_1 , un1_ctr_q4_i, \sck_q_3[1] , 
        N_21, N_149, \sck_q[1]_net_1 , \sck_q[0]_net_1 , ctr_qe, N_151, 
        new_data_d_0_sqmuxa, N_26, \data_q_3[6]_net_1 , 
        \data_q[5]_net_1 , \data_q_3[5]_net_1 , \data_q[4]_net_1 , 
        \data_q_3[4]_net_1 , \data_q[3]_net_1 , N_66, 
        \data_q[6]_net_1 , un1_data_d_0_sqmuxa, N_65, N_64, 
        \data_q_1[6]_net_1 , \data_q_1[5]_net_1 , \data_q_1[4]_net_1 , 
        mosi_q_RNO_net_1, N_59, \data_q[7]_net_1 , \sck_q_3[0] , N_33, 
        N_27, \data_q_3[0]_net_1 , \data_q_3[7]_net_1 , 
        \data_q_3[3]_net_1 , \data_q[2]_net_1 , \data_q_3[2]_net_1 , 
        \data_q[1]_net_1 , \data_q_3[1]_net_1 , \data_q[0]_net_1 , 
        N_67, N_63, N_62, N_61, N_60, \state_q_nss[1] , 
        \state_q_nss[0] , \data_q_1[7]_net_1 , \data_q_1[3]_net_1 , 
        \data_q_1[2]_net_1 , \data_q_1[1]_net_1 , \data_q_1[0]_net_1 , 
        GND, VCC;
    
    MX2 \data_q_3[1]  (.A(test_constants_spi_0_DATA[1]), .B(
        \data_q[0]_net_1 ), .S(\state_q[1]_net_1 ), .Y(
        \data_q_3[1]_net_1 ));
    AO1D \state_q_RNO_0[0]  (.A(test_constants_spi_0_START), .B(
        \state_q[0]_net_1 ), .C(\state_q[1]_net_1 ), .Y(
        \state_q_ns_i_a2_0_0[0] ));
    DFN1 \data_q[4]  (.D(\data_q_1[4]_net_1 ), .CLK(GLA), .Q(
        \data_q[4]_net_1 ));
    XA1B \ctr_q_RNO[1]  (.A(\ctr_q[0]_net_1 ), .B(\ctr_q[1]_net_1 ), 
        .C(un1_ctr_q4_i), .Y(N_152));
    MX2 \data_q_0[3]  (.A(\data_q[3]_net_1 ), .B(\data_q_3[3]_net_1 ), 
        .S(un1_data_d_0_sqmuxa), .Y(N_63));
    MX2 \data_q_3[5]  (.A(test_constants_spi_0_DATA[5]), .B(
        \data_q[4]_net_1 ), .S(\state_q[1]_net_1 ), .Y(
        \data_q_3[5]_net_1 ));
    DFN1 \data_q[2]  (.D(\data_q_1[2]_net_1 ), .CLK(GLA), .Q(
        \data_q[2]_net_1 ));
    NOR2A \sck_q_RNISE6G[1]  (.A(\state_q[1]_net_1 ), .B(
        \sck_q[1]_net_1 ), .Y(CLK_SCK_c));
    OR2A \state_q_RNIIMVB1[0]  (.A(state_q_83_d), .B(RESET_c), .Y(
        un1_ctr_q4_i));
    DFN1 \data_q[3]  (.D(\data_q_1[3]_net_1 ), .CLK(GLA), .Q(
        \data_q[3]_net_1 ));
    DFN1 \data_q[0]  (.D(\data_q_1[0]_net_1 ), .CLK(GLA), .Q(
        \data_q[0]_net_1 ));
    MX2 \data_q_3[2]  (.A(test_constants_spi_0_DATA[2]), .B(
        \data_q[1]_net_1 ), .S(\state_q[1]_net_1 ), .Y(
        \data_q_3[2]_net_1 ));
    DFN1 \data_q[6]  (.D(\data_q_1[6]_net_1 ), .CLK(GLA), .Q(
        \data_q[6]_net_1 ));
    VCC VCC_i (.Y(VCC));
    AO1A \state_q_RNO_1[1]  (.A(N_18), .B(
        \state_q_ns_i_a2_0_a2_1_0[1] ), .C(N_28), .Y(
        \state_q_ns_i_a2_0_0[1] ));
    NOR2A \data_q_1[7]  (.A(N_67), .B(RESET_c), .Y(\data_q_1[7]_net_1 )
        );
    DFN1 \sck_q[1]  (.D(\sck_q_3[1] ), .CLK(GLA), .Q(\sck_q[1]_net_1 ));
    NOR3B \sck_q_RNO[1]  (.A(N_21), .B(N_149), .C(un1_ctr_q4_i), .Y(
        \sck_q_3[1] ));
    NOR2 \ctr_q_RNO[0]  (.A(\ctr_q[0]_net_1 ), .B(un1_ctr_q4_i), .Y(
        N_26));
    MX2 \data_q_3[6]  (.A(test_constants_spi_0_DATA[6]), .B(
        \data_q[5]_net_1 ), .S(\state_q[1]_net_1 ), .Y(
        \data_q_3[6]_net_1 ));
    DFN1 mosi_q (.D(mosi_q_RNO_net_1), .CLK(GLA), .Q(MOSI_c));
    DFN1 \state_q[0]  (.D(\state_q_nss[0] ), .CLK(GLA), .Q(
        \state_q[0]_net_1 ));
    DFN1E1 \ctr_q[2]  (.D(N_151), .CLK(GLA), .E(ctr_qe), .Q(
        \ctr_q[2]_net_1 ));
    DFN1 \state_q[1]  (.D(\state_q_nss[1] ), .CLK(GLA), .Q(
        \state_q[1]_net_1 ));
    XOR2 un1_sck_q_2_1_SUM1 (.A(\sck_q[1]_net_1 ), .B(\sck_q[0]_net_1 )
        , .Y(N_149));
    XA1C \ctr_q_RNO[2]  (.A(N_18), .B(\ctr_q[2]_net_1 ), .C(
        un1_ctr_q4_i), .Y(N_151));
    NOR2A mosi_q_RNO (.A(N_59), .B(RESET_c), .Y(mosi_q_RNO_net_1));
    NOR2 \sck_q_RNO[0]  (.A(un1_ctr_q4_i), .B(\sck_q[0]_net_1 ), .Y(
        \sck_q_3[0] ));
    AO1A \sck_q_RNIFNQT1[1]  (.A(state_q_83_d), .B(
        test_constants_spi_0_START), .C(N_33), .Y(un1_data_d_0_sqmuxa));
    DFN1E1 \ctr_q[0]  (.D(N_26), .CLK(GLA), .E(ctr_qe), .Q(
        \ctr_q[0]_net_1 ));
    DFN1 \data_q[7]  (.D(\data_q_1[7]_net_1 ), .CLK(GLA), .Q(
        \data_q[7]_net_1 ));
    MX2 \data_q_3[7]  (.A(test_constants_spi_0_DATA[7]), .B(
        \data_q[6]_net_1 ), .S(\state_q[1]_net_1 ), .Y(
        \data_q_3[7]_net_1 ));
    GND GND_i (.Y(GND));
    NOR2A \state_q_RNO_0[1]  (.A(N_21), .B(\state_q[1]_net_1 ), .Y(
        N_27));
    NOR2B \sck_q_RNIR9U[1]  (.A(\sck_q[1]_net_1 ), .B(\sck_q[0]_net_1 )
        , .Y(N_31_1));
    NOR2A mosi_q_RNO_1 (.A(CLK_SCK_c), .B(\sck_q[0]_net_1 ), .Y(
        new_data_d_0_sqmuxa));
    MX2 \data_q_0[7]  (.A(\data_q[7]_net_1 ), .B(\data_q_3[7]_net_1 ), 
        .S(un1_data_d_0_sqmuxa), .Y(N_67));
    MX2 \data_q_0[0]  (.A(\data_q[0]_net_1 ), .B(\data_q_3[0]_net_1 ), 
        .S(un1_data_d_0_sqmuxa), .Y(N_60));
    NOR3A \state_q_RNO[0]  (.A(N_21), .B(\state_q_ns_i_a2_0_0[0] ), .C(
        RESET_c), .Y(\state_q_nss[0] ));
    OR3B \sck_q_RNI8ILG[1]  (.A(\sck_q[0]_net_1 ), .B(
        \state_q[0]_net_1 ), .C(\sck_q[1]_net_1 ), .Y(N_21));
    DFN1 \data_q[5]  (.D(\data_q_1[5]_net_1 ), .CLK(GLA), .Q(
        \data_q[5]_net_1 ));
    NOR2A \data_q_1[6]  (.A(N_66), .B(RESET_c), .Y(\data_q_1[6]_net_1 )
        );
    NOR2A \data_q_1[0]  (.A(N_60), .B(RESET_c), .Y(\data_q_1[0]_net_1 )
        );
    MX2 \data_q_0[2]  (.A(\data_q[2]_net_1 ), .B(\data_q_3[2]_net_1 ), 
        .S(un1_data_d_0_sqmuxa), .Y(N_62));
    NOR2A \data_q_1[5]  (.A(N_65), .B(RESET_c), .Y(\data_q_1[5]_net_1 )
        );
    NOR3 \state_q_RNO[1]  (.A(N_27), .B(\state_q_ns_i_a2_0_0[1] ), .C(
        RESET_c), .Y(\state_q_nss[1] ));
    MX2 \data_q_0[6]  (.A(\data_q[6]_net_1 ), .B(\data_q_3[6]_net_1 ), 
        .S(un1_data_d_0_sqmuxa), .Y(N_66));
    NOR3B \sck_q_RNI9JLG[1]  (.A(\sck_q[0]_net_1 ), .B(
        \state_q[1]_net_1 ), .C(\sck_q[1]_net_1 ), .Y(N_33));
    DFN1 \data_q[1]  (.D(\data_q_1[1]_net_1 ), .CLK(GLA), .Q(
        \data_q[1]_net_1 ));
    NOR2A \data_q_3[0]  (.A(test_constants_spi_0_DATA[0]), .B(
        \state_q[1]_net_1 ), .Y(\data_q_3[0]_net_1 ));
    NOR2A \data_q_1[2]  (.A(N_62), .B(RESET_c), .Y(\data_q_1[2]_net_1 )
        );
    DFN1E1 \ctr_q[1]  (.D(N_152), .CLK(GLA), .E(ctr_qe), .Q(
        \ctr_q[1]_net_1 ));
    AO1A \state_q_RNIQ8LS1[0]  (.A(\state_q[0]_net_1 ), .B(N_31_1), .C(
        un1_ctr_q4_i), .Y(ctr_qe));
    DFN1 \sck_q[0]  (.D(\sck_q_3[0] ), .CLK(GLA), .Q(\sck_q[0]_net_1 ));
    NOR2A \data_q_1[4]  (.A(N_64), .B(RESET_c), .Y(\data_q_1[4]_net_1 )
        );
    MX2 \data_q_3[3]  (.A(test_constants_spi_0_DATA[3]), .B(
        \data_q[2]_net_1 ), .S(\state_q[1]_net_1 ), .Y(
        \data_q_3[3]_net_1 ));
    MX2 \data_q_0[1]  (.A(\data_q[1]_net_1 ), .B(\data_q_3[1]_net_1 ), 
        .S(un1_data_d_0_sqmuxa), .Y(N_61));
    MX2 mosi_q_RNO_0 (.A(MOSI_c), .B(\data_q[7]_net_1 ), .S(
        new_data_d_0_sqmuxa), .Y(N_59));
    MX2 \data_q_3[4]  (.A(test_constants_spi_0_DATA[4]), .B(
        \data_q[3]_net_1 ), .S(\state_q[1]_net_1 ), .Y(
        \data_q_3[4]_net_1 ));
    NOR2A \data_q_1[1]  (.A(N_61), .B(RESET_c), .Y(\data_q_1[1]_net_1 )
        );
    NOR2B \state_q_RNO_3[1]  (.A(\state_q[0]_net_1 ), .B(
        \state_q[1]_net_1 ), .Y(N_28));
    MX2 \data_q_0[5]  (.A(\data_q[5]_net_1 ), .B(\data_q_3[5]_net_1 ), 
        .S(un1_data_d_0_sqmuxa), .Y(N_65));
    NOR2A \data_q_1[3]  (.A(N_63), .B(RESET_c), .Y(\data_q_1[3]_net_1 )
        );
    MX2 \data_q_0[4]  (.A(\data_q[4]_net_1 ), .B(\data_q_3[4]_net_1 ), 
        .S(un1_data_d_0_sqmuxa), .Y(N_64));
    NOR2B \state_q_RNO_2[1]  (.A(\ctr_q[2]_net_1 ), .B(N_31_1), .Y(
        \state_q_ns_i_a2_0_a2_1_0[1] ));
    OR2 \state_q_RNIRHEV[0]  (.A(\state_q[0]_net_1 ), .B(
        \state_q[1]_net_1 ), .Y(state_q_83_d));
    OR2B \ctr_q_RNIBS9K[1]  (.A(\ctr_q[1]_net_1 ), .B(\ctr_q[0]_net_1 )
        , .Y(N_18));
    
endmodule


module clock_div_1MHZ_1KHZ(
       clock_div_1MHZ_1KHZ_0_CLK_1KHZ_OUT,
       clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT,
       RESET_c_0,
       RESET_c_1,
       RESET_c
    );
output clock_div_1MHZ_1KHZ_0_CLK_1KHZ_OUT;
input  clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT;
input  RESET_c_0;
input  RESET_c_1;
input  RESET_c;

    wire clk_out_i, N_16, \counter[1]_net_1 , \counter[0]_net_1 , N_14, 
        \counter[3]_net_1 , \DWACT_FINC_E[0] , N_9, \counter[8]_net_1 , 
        \DWACT_FINC_E[4] , N_6, \DWACT_FINC_E[7] , \DWACT_FINC_E[6] , 
        clk_out5_13, clk_out5_5, clk_out5_4, clk_out5_11, clk_out5_12, 
        clk_out5_1, clk_out5_0, clk_out5_9, \counter[6]_net_1 , 
        clk_out5_7, \counter[7]_net_1 , clk_out5_3, 
        \counter[10]_net_1 , \counter[4]_net_1 , \counter[9]_net_1 , 
        \counter[13]_net_1 , \counter[12]_net_1 , \counter[5]_net_1 , 
        \counter[2]_net_1 , \counter[14]_net_1 , \counter[11]_net_1 , 
        \counter[16]_net_1 , \counter[15]_net_1 , clk_out_RNO_net_1, 
        \counter_3[8] , I_23, \counter_3[7] , I_20, \counter_3[6] , 
        I_17, \counter_3[5] , I_14, \counter_3[4] , I_12, 
        \counter_3[2] , I_7, I_4, I_5, I_9, I_26, I_28, I_32, I_35, 
        I_37, I_40, I_43, I_46, N_2, \DWACT_FINC_E[10] , 
        \DWACT_FINC_E[9] , N_3, N_4, \DWACT_FINC_E[8] , N_5, N_7, 
        \DWACT_FINC_E[2] , \DWACT_FINC_E[5] , N_8, \DWACT_FINC_E[3] , 
        N_10, N_11, N_12, \DWACT_FINC_E[1] , N_13, N_15, GND, VCC;
    
    XOR2 un5_counter_I_5 (.A(\counter[0]_net_1 ), .B(
        \counter[1]_net_1 ), .Y(I_5));
    AND3 un5_counter_I_33 (.A(\counter[9]_net_1 ), .B(
        \counter[10]_net_1 ), .C(\counter[11]_net_1 ), .Y(
        \DWACT_FINC_E[7] ));
    XOR2 un5_counter_I_20 (.A(N_11), .B(\counter[7]_net_1 ), .Y(I_20));
    NOR2 \counter_RNIBJBA[16]  (.A(\counter[16]_net_1 ), .B(
        \counter[15]_net_1 ), .Y(clk_out5_0));
    NOR2B un5_counter_I_11 (.A(\counter[3]_net_1 ), .B(
        \DWACT_FINC_E[0] ), .Y(N_14));
    XOR2 un5_counter_I_28 (.A(N_8), .B(\counter[10]_net_1 ), .Y(I_28));
    AND3 un5_counter_I_16 (.A(\DWACT_FINC_E[0] ), .B(\DWACT_FINC_E[1] )
        , .C(\counter[5]_net_1 ), .Y(N_12));
    NOR2A \counter_RNI54FR[4]  (.A(\counter[4]_net_1 ), .B(
        \counter[3]_net_1 ), .Y(clk_out5_7));
    XOR2 un5_counter_I_17 (.A(N_12), .B(\counter[6]_net_1 ), .Y(I_17));
    CLKINT clk_out_RNIODC3 (.A(clk_out_i), .Y(
        clock_div_1MHZ_1KHZ_0_CLK_1KHZ_OUT));
    NOR3B \counter_RNIRDCE1[10]  (.A(\counter[7]_net_1 ), .B(
        clk_out5_3), .C(\counter[10]_net_1 ), .Y(clk_out5_9));
    XOR2 un5_counter_I_32 (.A(N_7), .B(\counter[11]_net_1 ), .Y(I_32));
    NOR2 \counter_RNI87FR[1]  (.A(\counter[9]_net_1 ), .B(
        \counter[1]_net_1 ), .Y(clk_out5_5));
    AND3 un5_counter_I_29 (.A(\counter[6]_net_1 ), .B(
        \counter[7]_net_1 ), .C(\counter[8]_net_1 ), .Y(
        \DWACT_FINC_E[5] ));
    DFN1C1 \counter[2]  (.D(\counter_3[2] ), .CLK(
        clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT), .CLR(RESET_c_1), .Q(
        \counter[2]_net_1 ));
    DFN1C1 \counter[7]  (.D(\counter_3[7] ), .CLK(
        clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT), .CLR(RESET_c), .Q(
        \counter[7]_net_1 ));
    XOR2 un5_counter_I_7 (.A(N_16), .B(\counter[2]_net_1 ), .Y(I_7));
    AND3 un5_counter_I_45 (.A(\DWACT_FINC_E[6] ), .B(
        \DWACT_FINC_E[10] ), .C(\counter[15]_net_1 ), .Y(N_2));
    XOR2 un5_counter_I_23 (.A(N_10), .B(\counter[8]_net_1 ), .Y(I_23));
    DFN1C1 \counter[6]  (.D(\counter_3[6] ), .CLK(
        clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT), .CLR(RESET_c), .Q(
        \counter[6]_net_1 ));
    AOI1B \counter_RNO[4]  (.A(clk_out5_13), .B(clk_out5_12), .C(I_12), 
        .Y(\counter_3[4] ));
    VCC VCC_i (.Y(VCC));
    AND2 un5_counter_I_44 (.A(\DWACT_FINC_E[7] ), .B(\DWACT_FINC_E[9] )
        , .Y(\DWACT_FINC_E[10] ));
    DFN1C1 \counter[8]  (.D(\counter_3[8] ), .CLK(
        clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT), .CLR(RESET_c), .Q(
        \counter[8]_net_1 ));
    AND3 un5_counter_I_22 (.A(\DWACT_FINC_E[0] ), .B(\DWACT_FINC_E[2] )
        , .C(\DWACT_FINC_E[3] ), .Y(N_10));
    DFN1C1 \counter[16]  (.D(I_46), .CLK(
        clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT), .CLR(RESET_c_1), .Q(
        \counter[16]_net_1 ));
    AND3 un5_counter_I_8 (.A(\counter[0]_net_1 ), .B(
        \counter[1]_net_1 ), .C(\counter[2]_net_1 ), .Y(N_15));
    AND3 un5_counter_I_31 (.A(\DWACT_FINC_E[6] ), .B(
        \counter[9]_net_1 ), .C(\counter[10]_net_1 ), .Y(N_7));
    XOR2 un5_counter_I_40 (.A(N_4), .B(\counter[14]_net_1 ), .Y(I_40));
    NOR2B \counter_RNI54FR[2]  (.A(\counter[5]_net_1 ), .B(
        \counter[2]_net_1 ), .Y(clk_out5_3));
    NOR3C \counter_RNIHFUM1[6]  (.A(\counter[6]_net_1 ), .B(
        \counter[8]_net_1 ), .C(clk_out5_7), .Y(clk_out5_11));
    DFN1C1 \counter[15]  (.D(I_43), .CLK(
        clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT), .CLR(RESET_c_1), .Q(
        \counter[15]_net_1 ));
    AND3 un5_counter_I_36 (.A(\DWACT_FINC_E[6] ), .B(\DWACT_FINC_E[7] )
        , .C(\counter[12]_net_1 ), .Y(N_5));
    XOR2 un5_counter_I_37 (.A(N_5), .B(\counter[13]_net_1 ), .Y(I_37));
    NOR2 \counter_RNI5DBA[11]  (.A(\counter[14]_net_1 ), .B(
        \counter[11]_net_1 ), .Y(clk_out5_1));
    DFN1C1 \counter[14]  (.D(I_40), .CLK(
        clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT), .CLR(RESET_c_1), .Q(
        \counter[14]_net_1 ));
    NOR2B un5_counter_I_6 (.A(\counter[1]_net_1 ), .B(
        \counter[0]_net_1 ), .Y(N_16));
    INV un5_counter_I_4 (.A(\counter[0]_net_1 ), .Y(I_4));
    AND2 un5_counter_I_15 (.A(\counter[3]_net_1 ), .B(
        \counter[4]_net_1 ), .Y(\DWACT_FINC_E[1] ));
    AOI1B \counter_RNO[8]  (.A(clk_out5_13), .B(clk_out5_12), .C(I_23), 
        .Y(\counter_3[8] ));
    XOR2 un5_counter_I_9 (.A(N_15), .B(\counter[3]_net_1 ), .Y(I_9));
    DFN1C1 \counter[4]  (.D(\counter_3[4] ), .CLK(
        clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT), .CLR(RESET_c), .Q(
        \counter[4]_net_1 ));
    AND2 un5_counter_I_21 (.A(\counter[6]_net_1 ), .B(
        \counter[7]_net_1 ), .Y(\DWACT_FINC_E[3] ));
    DFN1C1 \counter[5]  (.D(\counter_3[5] ), .CLK(
        clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT), .CLR(RESET_c), .Q(
        \counter[5]_net_1 ));
    XOR2 un5_counter_I_43 (.A(N_3), .B(\counter[15]_net_1 ), .Y(I_43));
    XOR2 un5_counter_I_14 (.A(N_13), .B(\counter[5]_net_1 ), .Y(I_14));
    AX1C clk_out_RNO (.A(clk_out5_12), .B(clk_out5_13), .C(clk_out_i), 
        .Y(clk_out_RNO_net_1));
    XOR2 un5_counter_I_26 (.A(N_9), .B(\counter[9]_net_1 ), .Y(I_26));
    AND3 un5_counter_I_27 (.A(\DWACT_FINC_E[4] ), .B(
        \counter[8]_net_1 ), .C(\counter[9]_net_1 ), .Y(N_8));
    AOI1B \counter_RNO[2]  (.A(clk_out5_13), .B(clk_out5_12), .C(I_7), 
        .Y(\counter_3[2] ));
    AND3 un5_counter_I_10 (.A(\counter[0]_net_1 ), .B(
        \counter[1]_net_1 ), .C(\counter[2]_net_1 ), .Y(
        \DWACT_FINC_E[0] ));
    GND GND_i (.Y(GND));
    AOI1B \counter_RNO[5]  (.A(clk_out5_13), .B(clk_out5_12), .C(I_14), 
        .Y(\counter_3[5] ));
    AND3 un5_counter_I_42 (.A(\DWACT_FINC_E[6] ), .B(\DWACT_FINC_E[7] )
        , .C(\DWACT_FINC_E[9] ), .Y(N_3));
    AND3 un5_counter_I_18 (.A(\counter[3]_net_1 ), .B(
        \counter[4]_net_1 ), .C(\counter[5]_net_1 ), .Y(
        \DWACT_FINC_E[2] ));
    DFN1C1 \counter[12]  (.D(I_35), .CLK(
        clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT), .CLR(RESET_c_1), .Q(
        \counter[12]_net_1 ));
    DFN1C1 \counter[1]  (.D(I_5), .CLK(
        clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT), .CLR(RESET_c_1), .Q(
        \counter[1]_net_1 ));
    DFN1C1 \counter[3]  (.D(I_9), .CLK(
        clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT), .CLR(RESET_c), .Q(
        \counter[3]_net_1 ));
    AND3 un5_counter_I_19 (.A(\DWACT_FINC_E[0] ), .B(\DWACT_FINC_E[2] )
        , .C(\counter[6]_net_1 ), .Y(N_11));
    AOI1B \counter_RNO[6]  (.A(clk_out5_13), .B(clk_out5_12), .C(I_17), 
        .Y(\counter_3[6] ));
    NOR3C \counter_RNIU3PS2[13]  (.A(clk_out5_5), .B(clk_out5_4), .C(
        clk_out5_11), .Y(clk_out5_13));
    XOR2 un5_counter_I_35 (.A(N_6), .B(\counter[12]_net_1 ), .Y(I_35));
    NOR2 \counter_RNI5DBA[13]  (.A(\counter[13]_net_1 ), .B(
        \counter[12]_net_1 ), .Y(clk_out5_4));
    AND3 un5_counter_I_13 (.A(\DWACT_FINC_E[0] ), .B(
        \counter[3]_net_1 ), .C(\counter[4]_net_1 ), .Y(N_13));
    DFN1C1 \counter[11]  (.D(I_32), .CLK(
        clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT), .CLR(RESET_c_1), .Q(
        \counter[11]_net_1 ));
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
    NOR2B un5_counter_I_25 (.A(\counter[8]_net_1 ), .B(
        \DWACT_FINC_E[4] ), .Y(N_9));
    AND3 un5_counter_I_39 (.A(\DWACT_FINC_E[6] ), .B(\DWACT_FINC_E[7] )
        , .C(\DWACT_FINC_E[8] ), .Y(N_4));
    AOI1B \counter_RNO[7]  (.A(clk_out5_13), .B(clk_out5_12), .C(I_20), 
        .Y(\counter_3[7] ));
    DFN1P1 clk_out (.D(clk_out_RNO_net_1), .CLK(
        clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT), .PRE(RESET_c_0), .Q(
        clk_out_i));
    NOR3C \counter_RNIBE332[10]  (.A(clk_out5_1), .B(clk_out5_0), .C(
        clk_out5_9), .Y(clk_out5_12));
    AND3 un5_counter_I_24 (.A(\DWACT_FINC_E[0] ), .B(\DWACT_FINC_E[2] )
        , .C(\DWACT_FINC_E[3] ), .Y(\DWACT_FINC_E[4] ));
    DFN1C1 \counter[13]  (.D(I_37), .CLK(
        clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT), .CLR(RESET_c_1), .Q(
        \counter[13]_net_1 ));
    DFN1P1 \counter[0]  (.D(I_4), .CLK(
        clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT), .PRE(RESET_c_1), .Q(
        \counter[0]_net_1 ));
    DFN1C1 \counter[10]  (.D(I_28), .CLK(
        clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT), .CLR(RESET_c_1), .Q(
        \counter[10]_net_1 ));
    DFN1C1 \counter[9]  (.D(I_26), .CLK(
        clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT), .CLR(RESET_c), .Q(
        \counter[9]_net_1 ));
    
endmodule


module clock_div_26MHZ_1MHZ(
       clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT,
       GLA,
       RESET_c_1,
       RESET_c_0
    );
output clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT;
input  GLA;
input  RESET_c_1;
input  RESET_c_0;

    wire clk_out_i, N_16, \counter[1]_net_1 , \counter[0]_net_1 , N_14, 
        \counter[3]_net_1 , \DWACT_FINC_E[0] , N_9, \counter[8]_net_1 , 
        \DWACT_FINC_E[4] , N_6, \DWACT_FINC_E[7] , \DWACT_FINC_E[6] , 
        clk_out5_14, clk_out5_6, clk_out5_5, clk_out5_12, clk_out5_13, 
        clk_out5_2, clk_out5_1, clk_out5_10, clk_out5_8, 
        \counter[9]_net_1 , clk_out5_4, \counter[5]_net_1 , 
        \counter[10]_net_1 , \counter[15]_net_1 , \counter[16]_net_1 , 
        \counter[4]_net_1 , \counter[12]_net_1 , \counter[2]_net_1 , 
        \counter[6]_net_1 , \counter[7]_net_1 , \counter[13]_net_1 , 
        \counter[11]_net_1 , \counter[14]_net_1 , clk_out_RNO_0, 
        \counter_3[0] , \counter_3[3] , I_9_0, \counter_3[2] , I_7_0, 
        \counter_3[1] , I_5_0, I_12_0, I_14_0, I_17_0, I_20_0, I_23_0, 
        I_26_0, I_28_0, I_32_0, I_35_0, I_37_0, I_40_0, I_43_0, I_46_0, 
        N_2, \DWACT_FINC_E[10] , \DWACT_FINC_E[9] , N_3, N_4, 
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
    NOR3C \counter_RNI0PSM1[5]  (.A(clk_out5_2), .B(clk_out5_1), .C(
        clk_out5_10), .Y(clk_out5_13));
    NOR2B un5_counter_I_11 (.A(\counter[3]_net_1 ), .B(
        \DWACT_FINC_E[0] ), .Y(N_14));
    XOR2 un5_counter_I_28 (.A(N_8), .B(\counter[10]_net_1 ), .Y(I_28_0)
        );
    AND3 un5_counter_I_16 (.A(\DWACT_FINC_E[0] ), .B(\DWACT_FINC_E[1] )
        , .C(\counter[5]_net_1 ), .Y(N_12));
    XOR2 un5_counter_I_17 (.A(N_12), .B(\counter[6]_net_1 ), .Y(I_17_0)
        );
    NOR3B \counter_RNI16I01[9]  (.A(\counter[3]_net_1 ), .B(clk_out5_8)
        , .C(\counter[9]_net_1 ), .Y(clk_out5_12));
    XOR2 un5_counter_I_32 (.A(N_7), .B(\counter[11]_net_1 ), .Y(I_32_0)
        );
    AND3 un5_counter_I_29 (.A(\counter[6]_net_1 ), .B(
        \counter[7]_net_1 ), .C(\counter[8]_net_1 ), .Y(
        \DWACT_FINC_E[5] ));
    NOR3A \counter_RNIUCUN[5]  (.A(clk_out5_4), .B(\counter[5]_net_1 ), 
        .C(\counter[10]_net_1 ), .Y(clk_out5_10));
    DFN1C1 \counter[2]  (.D(\counter_3[2] ), .CLK(GLA), .CLR(RESET_c_0)
        , .Q(\counter[2]_net_1 ));
    DFN1C1 \counter[7]  (.D(I_20_0), .CLK(GLA), .CLR(RESET_c_0), .Q(
        \counter[7]_net_1 ));
    XOR2 un5_counter_I_7 (.A(N_16), .B(\counter[2]_net_1 ), .Y(I_7_0));
    AND3 un5_counter_I_45 (.A(\DWACT_FINC_E[6] ), .B(
        \DWACT_FINC_E[10] ), .C(\counter[15]_net_1 ), .Y(N_2));
    XOR2 un5_counter_I_23 (.A(N_10), .B(\counter[8]_net_1 ), .Y(I_23_0)
        );
    AO1B \counter_RNO[0]  (.A(clk_out5_14), .B(clk_out5_13), .C(
        \counter[0]_net_1 ), .Y(\counter_3[0] ));
    DFN1C1 \counter[6]  (.D(I_17_0), .CLK(GLA), .CLR(RESET_c_0), .Q(
        \counter[6]_net_1 ));
    VCC VCC_i (.Y(VCC));
    AND2 un5_counter_I_44 (.A(\DWACT_FINC_E[7] ), .B(\DWACT_FINC_E[9] )
        , .Y(\DWACT_FINC_E[10] ));
    DFN1C1 \counter[8]  (.D(I_23_0), .CLK(GLA), .CLR(RESET_c_0), .Q(
        \counter[8]_net_1 ));
    NOR3A \counter_RNI5PAM[16]  (.A(\counter[0]_net_1 ), .B(
        \counter[15]_net_1 ), .C(\counter[16]_net_1 ), .Y(clk_out5_8));
    AND3 un5_counter_I_22 (.A(\DWACT_FINC_E[0] ), .B(\DWACT_FINC_E[2] )
        , .C(\DWACT_FINC_E[3] ), .Y(N_10));
    DFN1C1 \counter[16]  (.D(I_46_0), .CLK(GLA), .CLR(RESET_c_1), .Q(
        \counter[16]_net_1 ));
    AND3 un5_counter_I_8 (.A(\counter[0]_net_1 ), .B(
        \counter[1]_net_1 ), .C(\counter[2]_net_1 ), .Y(N_15));
    AND3 un5_counter_I_31 (.A(\DWACT_FINC_E[6] ), .B(
        \counter[9]_net_1 ), .C(\counter[10]_net_1 ), .Y(N_7));
    AOI1B \counter_RNO[1]  (.A(clk_out5_14), .B(clk_out5_13), .C(I_5_0)
        , .Y(\counter_3[1] ));
    XOR2 un5_counter_I_40 (.A(N_4), .B(\counter[14]_net_1 ), .Y(I_40_0)
        );
    NOR2 \counter_RNISC7A[4]  (.A(\counter[4]_net_1 ), .B(
        \counter[8]_net_1 ), .Y(clk_out5_6));
    DFN1C1 \counter[15]  (.D(I_43_0), .CLK(GLA), .CLR(RESET_c_1), .Q(
        \counter[15]_net_1 ));
    AND3 un5_counter_I_36 (.A(\DWACT_FINC_E[6] ), .B(\DWACT_FINC_E[7] )
        , .C(\counter[12]_net_1 ), .Y(N_5));
    XOR2 un5_counter_I_37 (.A(N_5), .B(\counter[13]_net_1 ), .Y(I_37_0)
        );
    DFN1C1 \counter[14]  (.D(I_40_0), .CLK(GLA), .CLR(RESET_c_1), .Q(
        \counter[14]_net_1 ));
    NOR2B un5_counter_I_6 (.A(\counter[1]_net_1 ), .B(
        \counter[0]_net_1 ), .Y(N_16));
    AND2 un5_counter_I_15 (.A(\counter[3]_net_1 ), .B(
        \counter[4]_net_1 ), .Y(\DWACT_FINC_E[1] ));
    XOR2 un5_counter_I_9 (.A(N_15), .B(\counter[3]_net_1 ), .Y(I_9_0));
    DFN1C1 \counter[4]  (.D(I_12_0), .CLK(GLA), .CLR(RESET_c_0), .Q(
        \counter[4]_net_1 ));
    NOR2A \counter_RNIO87A[2]  (.A(\counter[2]_net_1 ), .B(
        \counter[6]_net_1 ), .Y(clk_out5_4));
    AND2 un5_counter_I_21 (.A(\counter[6]_net_1 ), .B(
        \counter[7]_net_1 ), .Y(\DWACT_FINC_E[3] ));
    DFN1C1 \counter[5]  (.D(I_14_0), .CLK(GLA), .CLR(RESET_c_0), .Q(
        \counter[5]_net_1 ));
    XOR2 un5_counter_I_43 (.A(N_3), .B(\counter[15]_net_1 ), .Y(I_43_0)
        );
    XOR2 un5_counter_I_14 (.A(N_13), .B(\counter[5]_net_1 ), .Y(I_14_0)
        );
    AX1C clk_out_RNO (.A(clk_out5_13), .B(clk_out5_14), .C(clk_out_i), 
        .Y(clk_out_RNO_0));
    NOR2 \counter_RNIB9ND[7]  (.A(\counter[7]_net_1 ), .B(
        \counter[13]_net_1 ), .Y(clk_out5_2));
    XOR2 un5_counter_I_26 (.A(N_9), .B(\counter[9]_net_1 ), .Y(I_26_0));
    AND3 un5_counter_I_27 (.A(\DWACT_FINC_E[4] ), .B(
        \counter[8]_net_1 ), .C(\counter[9]_net_1 ), .Y(N_8));
    AOI1B \counter_RNO[2]  (.A(clk_out5_14), .B(clk_out5_13), .C(I_7_0)
        , .Y(\counter_3[2] ));
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
    DFN1C1 \counter[12]  (.D(I_35_0), .CLK(GLA), .CLR(RESET_c_1), .Q(
        \counter[12]_net_1 ));
    DFN1C1 \counter[1]  (.D(\counter_3[1] ), .CLK(GLA), .CLR(RESET_c_0)
        , .Q(\counter[1]_net_1 ));
    NOR3C \counter_RNI1LGO1[1]  (.A(clk_out5_6), .B(clk_out5_5), .C(
        clk_out5_12), .Y(clk_out5_14));
    DFN1C1 \counter[3]  (.D(\counter_3[3] ), .CLK(GLA), .CLR(RESET_c_0)
        , .Q(\counter[3]_net_1 ));
    AND3 un5_counter_I_19 (.A(\DWACT_FINC_E[0] ), .B(\DWACT_FINC_E[2] )
        , .C(\counter[6]_net_1 ), .Y(N_11));
    XOR2 un5_counter_I_35 (.A(N_6), .B(\counter[12]_net_1 ), .Y(I_35_0)
        );
    AND3 un5_counter_I_13 (.A(\DWACT_FINC_E[0] ), .B(
        \counter[3]_net_1 ), .C(\counter[4]_net_1 ), .Y(N_13));
    DFN1C1 \counter[11]  (.D(I_32_0), .CLK(GLA), .CLR(RESET_c_1), .Q(
        \counter[11]_net_1 ));
    NOR2B un5_counter_I_34 (.A(\DWACT_FINC_E[7] ), .B(
        \DWACT_FINC_E[6] ), .Y(N_6));
    AND3 un5_counter_I_41 (.A(\counter[12]_net_1 ), .B(
        \counter[13]_net_1 ), .C(\counter[14]_net_1 ), .Y(
        \DWACT_FINC_E[9] ));
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
    NOR2 \counter_RNIN27H[11]  (.A(\counter[11]_net_1 ), .B(
        \counter[14]_net_1 ), .Y(clk_out5_1));
    NOR2B un5_counter_I_25 (.A(\counter[8]_net_1 ), .B(
        \DWACT_FINC_E[4] ), .Y(N_9));
    AND3 un5_counter_I_39 (.A(\DWACT_FINC_E[6] ), .B(\DWACT_FINC_E[7] )
        , .C(\DWACT_FINC_E[8] ), .Y(N_4));
    DFN1P1 clk_out (.D(clk_out_RNO_0), .CLK(GLA), .PRE(RESET_c_1), .Q(
        clk_out_i));
    AND3 un5_counter_I_24 (.A(\DWACT_FINC_E[0] ), .B(\DWACT_FINC_E[2] )
        , .C(\DWACT_FINC_E[3] ), .Y(\DWACT_FINC_E[4] ));
    DFN1C1 \counter[13]  (.D(I_37_0), .CLK(GLA), .CLR(RESET_c_1), .Q(
        \counter[13]_net_1 ));
    NOR2 \counter_RNI42ND[1]  (.A(\counter[1]_net_1 ), .B(
        \counter[12]_net_1 ), .Y(clk_out5_5));
    DFN1P1 \counter[0]  (.D(\counter_3[0] ), .CLK(GLA), .PRE(RESET_c_0)
        , .Q(\counter[0]_net_1 ));
    DFN1C1 \counter[10]  (.D(I_28_0), .CLK(GLA), .CLR(RESET_c_1), .Q(
        \counter[10]_net_1 ));
    DFN1C1 \counter[9]  (.D(I_26_0), .CLK(GLA), .CLR(RESET_c_0), .Q(
        \counter[9]_net_1 ));
    
endmodule


module CLK_26MHZ(
       GLA,
       CLK_48MHZ_c
    );
output GLA;
input  CLK_48MHZ_c;

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
    PLLINT pllint1 (.A(CLK_48MHZ_c), .Y(CLKAP));
    VCC VCC_i (.Y(CLK_26MHZ_VCC));
    GND GND_i (.Y(CLK_26MHZ_GND));
    
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

    wire VCC, GLA, clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT, 
        clock_div_1MHZ_1KHZ_0_CLK_1KHZ_OUT, GND, 
        test_constants_spi_0_START, \test_constants_spi_0_DATA[0] , 
        \test_constants_spi_0_DATA[1] , \test_constants_spi_0_DATA[2] , 
        \test_constants_spi_0_DATA[3] , \test_constants_spi_0_DATA[4] , 
        \test_constants_spi_0_DATA[5] , \test_constants_spi_0_DATA[6] , 
        \test_constants_spi_0_DATA[7] , \spi_master_0.state_q_83_d , 
        CLK_48MHZ_c, RESET_c, CLK_SCK_c, MOSI_c, RESET_c_0, RESET_c_1;
    
    test_constants_spi test_constants_spi_0 (
        .test_constants_spi_0_DATA({\test_constants_spi_0_DATA[7] , 
        \test_constants_spi_0_DATA[6] , \test_constants_spi_0_DATA[5] , 
        \test_constants_spi_0_DATA[4] , \test_constants_spi_0_DATA[3] , 
        \test_constants_spi_0_DATA[2] , \test_constants_spi_0_DATA[1] , 
        \test_constants_spi_0_DATA[0] }), .test_constants_spi_0_START(
        test_constants_spi_0_START), 
        .clock_div_1MHZ_1KHZ_0_CLK_1KHZ_OUT(
        clock_div_1MHZ_1KHZ_0_CLK_1KHZ_OUT), .RESET_c_1(RESET_c_1), 
        .RESET_c_0(RESET_c_0));
    spi_master spi_master_0 (.test_constants_spi_0_DATA({
        \test_constants_spi_0_DATA[7] , \test_constants_spi_0_DATA[6] , 
        \test_constants_spi_0_DATA[5] , \test_constants_spi_0_DATA[4] , 
        \test_constants_spi_0_DATA[3] , \test_constants_spi_0_DATA[2] , 
        \test_constants_spi_0_DATA[1] , \test_constants_spi_0_DATA[0] })
        , .test_constants_spi_0_START(test_constants_spi_0_START), 
        .state_q_83_d(\spi_master_0.state_q_83_d ), .RESET_c(RESET_c), 
        .CLK_SCK_c(CLK_SCK_c), .MOSI_c(MOSI_c), .GLA(GLA));
    BUFF RESET_pad_RNIN4HC (.A(RESET_c), .Y(RESET_c_0));
    clock_div_1MHZ_1KHZ clock_div_1MHZ_1KHZ_0 (
        .clock_div_1MHZ_1KHZ_0_CLK_1KHZ_OUT(
        clock_div_1MHZ_1KHZ_0_CLK_1KHZ_OUT), 
        .clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT(
        clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT), .RESET_c_0(RESET_c_0), 
        .RESET_c_1(RESET_c_1), .RESET_c(RESET_c));
    OUTBUF CLK_SCK_pad (.D(CLK_SCK_c), .PAD(CLK_SCK));
    OUTBUF MOSI_pad (.D(MOSI_c), .PAD(MOSI));
    INBUF CLK_48MHZ_pad (.PAD(CLK_48MHZ), .Y(CLK_48MHZ_c));
    OUTBUF BUSY_pad (.D(\spi_master_0.state_q_83_d ), .PAD(BUSY));
    INBUF RESET_pad (.PAD(RESET), .Y(RESET_c));
    BUFF RESET_pad_RNIN4HC_0 (.A(RESET_c), .Y(RESET_c_1));
    VCC VCC_i (.Y(VCC));
    clock_div_26MHZ_1MHZ clock_div_26MHZ_1MHZ_0 (
        .clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT(
        clock_div_26MHZ_1MHZ_0_CLK_1MHZ_OUT), .GLA(GLA), .RESET_c_1(
        RESET_c_1), .RESET_c_0(RESET_c_0));
    CLK_26MHZ CLK_26MHZ_0 (.GLA(GLA), .CLK_48MHZ_c(CLK_48MHZ_c));
    GND GND_i (.Y(GND));
    
endmodule
