`timescale 1 ns/100 ps
// Version: v11.6 11.6.0.34
// File used only for Simulation


module clock_div_26MHZ_1MHZ(
       CLK_26MHZ_IN,
       RESET,
       CLK_1MHZ_OUT
    );
input  CLK_26MHZ_IN;
input  RESET;
output CLK_1MHZ_OUT;

    wire I_5, I_7, I_9, I_12, I_14, I_17, I_20, I_23, I_26, I_28, I_32, 
        I_35, I_37, I_40, I_43, I_46, \counter[14]_net_1 , 
        \counter[16]_net_1 , \counter[11]_net_1 , \counter[15]_net_1 , 
        \counter[6]_net_1 , \counter[5]_net_1 , \counter[9]_net_1 , 
        \counter[8]_net_1 , \counter[10]_net_1 , \counter[4]_net_1 , 
        \counter[13]_net_1 , \counter[12]_net_1 , \counter[7]_net_1 , 
        \counter[1]_net_1 , \counter[0]_net_1 , \counter[2]_net_1 , 
        \counter[3]_net_1 , \counter_3[0] , \counter_3[1] , 
        \counter_3[2] , \counter_3[3] , clk_out_RNO_net_1, 
        \un5_counter.U1.DWACT_FINC_E[0] , 
        \un5_counter.U1.DWACT_FINC_E[1] , 
        \un5_counter.U1.DWACT_FINC_E[2] , 
        \un5_counter.U1.DWACT_FINC_E[3] , 
        \un5_counter.U1.DWACT_FINC_E[4] , 
        \un5_counter.U1.DWACT_FINC_E[5] , 
        \un5_counter.U1.DWACT_FINC_E[6] , 
        \un5_counter.U1.DWACT_FINC_E[7] , 
        \un5_counter.U1.DWACT_FINC_E[8] , 
        \un5_counter.U1.DWACT_FINC_E[9] , 
        \un5_counter.U1.DWACT_FINC_E[10] , \un5_counter.N_2 , 
        \un5_counter.N_3 , \un5_counter.N_4 , \un5_counter.N_5 , 
        \un5_counter.N_7 , \un5_counter.N_8 , \un5_counter.N_10 , 
        \un5_counter.N_11 , \un5_counter.N_12 , \un5_counter.N_13 , 
        \un5_counter.N_15 , CLK_26MHZ_IN_c, RESET_c, CLK_1MHZ_OUT_c, 
        clk_out5_1, clk_out5_2, clk_out5_4, clk_out5_5, clk_out5_6, 
        clk_out5_8, clk_out5_10, clk_out5_12, clk_out5_13, clk_out5_14, 
        GND, VCC, \CLK_26MHZ_IN_pad/U0/NET1 , 
        \CLK_1MHZ_OUT_pad/U0/NET1 , \CLK_1MHZ_OUT_pad/U0/NET2 , 
        \RESET_pad/U0/NET1 , AFLSDF_VCC, AFLSDF_GND;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign GND = GND_power_net1;
    assign AFLSDF_GND = GND_power_net1;
    assign VCC = VCC_power_net1;
    assign AFLSDF_VCC = VCC_power_net1;
    
    XOR2 un5_counter_I_5 (.A(\counter[0]_net_1 ), .B(
        \counter[1]_net_1 ), .Y(I_5));
    AND3 un5_counter_I_33 (.A(\counter[9]_net_1 ), .B(
        \counter[10]_net_1 ), .C(\counter[11]_net_1 ), .Y(
        \un5_counter.U1.DWACT_FINC_E[7] ));
    XOR2 un5_counter_I_20 (.A(\un5_counter.N_11 ), .B(
        \counter[7]_net_1 ), .Y(I_20));
    XOR2 un5_counter_I_28 (.A(\un5_counter.N_8 ), .B(
        \counter[10]_net_1 ), .Y(I_28));
    AND3 un5_counter_I_16 (.A(\un5_counter.U1.DWACT_FINC_E[0] ), .B(
        \un5_counter.U1.DWACT_FINC_E[1] ), .C(\counter[5]_net_1 ), .Y(
        \un5_counter.N_12 ));
    XOR2 un5_counter_I_17 (.A(\un5_counter.N_12 ), .B(
        \counter[6]_net_1 ), .Y(I_17));
    XOR2 un5_counter_I_32 (.A(\un5_counter.N_7 ), .B(
        \counter[11]_net_1 ), .Y(I_32));
    AND3 un5_counter_I_29 (.A(\counter[6]_net_1 ), .B(
        \counter[7]_net_1 ), .C(\counter[8]_net_1 ), .Y(
        \un5_counter.U1.DWACT_FINC_E[5] ));
    DFN1C1 \counter[2]  (.D(\counter_3[2] ), .CLK(CLK_26MHZ_IN_c), 
        .CLR(RESET_c), .Q(\counter[2]_net_1 ));
    DFN1C1 \counter[7]  (.D(I_20), .CLK(CLK_26MHZ_IN_c), .CLR(RESET_c), 
        .Q(\counter[7]_net_1 ));
    AX1C un5_counter_I_7 (.A(\counter[1]_net_1 ), .B(
        \counter[0]_net_1 ), .C(\counter[2]_net_1 ), .Y(I_7));
    AND3 un5_counter_I_45 (.A(\un5_counter.U1.DWACT_FINC_E[6] ), .B(
        \un5_counter.U1.DWACT_FINC_E[10] ), .C(\counter[15]_net_1 ), 
        .Y(\un5_counter.N_2 ));
    XOR2 un5_counter_I_23 (.A(\un5_counter.N_10 ), .B(
        \counter[8]_net_1 ), .Y(I_23));
    AO1B \counter_RNO[0]  (.A(clk_out5_14), .B(clk_out5_13), .C(
        \counter[0]_net_1 ), .Y(\counter_3[0] ));
    DFN1C1 \counter[6]  (.D(I_17), .CLK(CLK_26MHZ_IN_c), .CLR(RESET_c), 
        .Q(\counter[6]_net_1 ));
    AND2 un5_counter_I_44 (.A(\un5_counter.U1.DWACT_FINC_E[7] ), .B(
        \un5_counter.U1.DWACT_FINC_E[9] ), .Y(
        \un5_counter.U1.DWACT_FINC_E[10] ));
    DFN1C1 \counter[8]  (.D(I_23), .CLK(CLK_26MHZ_IN_c), .CLR(RESET_c), 
        .Q(\counter[8]_net_1 ));
    AND3 un5_counter_I_22 (.A(\un5_counter.U1.DWACT_FINC_E[0] ), .B(
        \un5_counter.U1.DWACT_FINC_E[2] ), .C(
        \un5_counter.U1.DWACT_FINC_E[3] ), .Y(\un5_counter.N_10 ));
    DFN1C1 \counter[16]  (.D(I_46), .CLK(CLK_26MHZ_IN_c), .CLR(RESET_c)
        , .Q(\counter[16]_net_1 ));
    AND3 un5_counter_I_8 (.A(\counter[0]_net_1 ), .B(
        \counter[1]_net_1 ), .C(\counter[2]_net_1 ), .Y(
        \un5_counter.N_15 ));
    AND3 un5_counter_I_31 (.A(\un5_counter.U1.DWACT_FINC_E[6] ), .B(
        \counter[9]_net_1 ), .C(\counter[10]_net_1 ), .Y(
        \un5_counter.N_7 ));
    AOI1B \counter_RNO[1]  (.A(clk_out5_14), .B(clk_out5_13), .C(I_5), 
        .Y(\counter_3[1] ));
    XOR2 un5_counter_I_40 (.A(\un5_counter.N_4 ), .B(
        \counter[14]_net_1 ), .Y(I_40));
    DFN1C1 \counter[15]  (.D(I_43), .CLK(CLK_26MHZ_IN_c), .CLR(RESET_c)
        , .Q(\counter[15]_net_1 ));
    AND3 un5_counter_I_36 (.A(\un5_counter.U1.DWACT_FINC_E[6] ), .B(
        \un5_counter.U1.DWACT_FINC_E[7] ), .C(\counter[12]_net_1 ), .Y(
        \un5_counter.N_5 ));
    XOR2 un5_counter_I_37 (.A(\un5_counter.N_5 ), .B(
        \counter[13]_net_1 ), .Y(I_37));
    IOPAD_TRI \CLK_1MHZ_OUT_pad/U0/U0  (.D(\CLK_1MHZ_OUT_pad/U0/NET1 ), 
        .E(\CLK_1MHZ_OUT_pad/U0/NET2 ), .PAD(CLK_1MHZ_OUT));
    NOR3C \counter_RNI1QSP1[1]  (.A(clk_out5_6), .B(clk_out5_5), .C(
        clk_out5_12), .Y(clk_out5_14));
    DFN1C1 \counter[14]  (.D(I_40), .CLK(CLK_26MHZ_IN_c), .CLR(RESET_c)
        , .Q(\counter[14]_net_1 ));
    AND2 un5_counter_I_15 (.A(\counter[3]_net_1 ), .B(
        \counter[4]_net_1 ), .Y(\un5_counter.U1.DWACT_FINC_E[1] ));
    XOR2 un5_counter_I_9 (.A(\un5_counter.N_15 ), .B(
        \counter[3]_net_1 ), .Y(I_9));
    NOR2A \counter_RNIO2J6[2]  (.A(\counter[2]_net_1 ), .B(
        \counter[6]_net_1 ), .Y(clk_out5_4));
    DFN1C1 \counter[4]  (.D(I_12), .CLK(CLK_26MHZ_IN_c), .CLR(RESET_c), 
        .Q(\counter[4]_net_1 ));
    AND2 un5_counter_I_21 (.A(\counter[6]_net_1 ), .B(
        \counter[7]_net_1 ), .Y(\un5_counter.U1.DWACT_FINC_E[3] ));
    DFN1C1 \counter[5]  (.D(I_14), .CLK(CLK_26MHZ_IN_c), .CLR(RESET_c), 
        .Q(\counter[5]_net_1 ));
    XOR2 un5_counter_I_43 (.A(\un5_counter.N_3 ), .B(
        \counter[15]_net_1 ), .Y(I_43));
    XOR2 un5_counter_I_14 (.A(\un5_counter.N_13 ), .B(
        \counter[5]_net_1 ), .Y(I_14));
    NOR3C \counter_RNI01002[5]  (.A(clk_out5_2), .B(clk_out5_1), .C(
        clk_out5_10), .Y(clk_out5_13));
    AX1C clk_out_RNO (.A(clk_out5_13), .B(clk_out5_14), .C(
        CLK_1MHZ_OUT_c), .Y(clk_out_RNO_net_1));
    AX1C un5_counter_I_26 (.A(\counter[8]_net_1 ), .B(
        \un5_counter.U1.DWACT_FINC_E[4] ), .C(\counter[9]_net_1 ), .Y(
        I_26));
    AND3 un5_counter_I_27 (.A(\un5_counter.U1.DWACT_FINC_E[4] ), .B(
        \counter[8]_net_1 ), .C(\counter[9]_net_1 ), .Y(
        \un5_counter.N_8 ));
    IOIN_IB \RESET_pad/U0/U1  (.YIN(\RESET_pad/U0/NET1 ), .Y(RESET_c));
    AOI1B \counter_RNO[2]  (.A(clk_out5_14), .B(clk_out5_13), .C(I_7), 
        .Y(\counter_3[2] ));
    AND3 un5_counter_I_10 (.A(\counter[0]_net_1 ), .B(
        \counter[1]_net_1 ), .C(\counter[2]_net_1 ), .Y(
        \un5_counter.U1.DWACT_FINC_E[0] ));
    AOI1B \counter_RNO[3]  (.A(clk_out5_14), .B(clk_out5_13), .C(I_9), 
        .Y(\counter_3[3] ));
    NOR2 \counter_RNIB30G[7]  (.A(\counter[7]_net_1 ), .B(
        \counter[13]_net_1 ), .Y(clk_out5_2));
    AND3 un5_counter_I_42 (.A(\un5_counter.U1.DWACT_FINC_E[6] ), .B(
        \un5_counter.U1.DWACT_FINC_E[7] ), .C(
        \un5_counter.U1.DWACT_FINC_E[9] ), .Y(\un5_counter.N_3 ));
    AND3 un5_counter_I_18 (.A(\counter[3]_net_1 ), .B(
        \counter[4]_net_1 ), .C(\counter[5]_net_1 ), .Y(
        \un5_counter.U1.DWACT_FINC_E[2] ));
    DFN1C1 \counter[12]  (.D(I_35), .CLK(CLK_26MHZ_IN_c), .CLR(RESET_c)
        , .Q(\counter[12]_net_1 ));
    NOR2 \counter_RNIS6J6[4]  (.A(\counter[4]_net_1 ), .B(
        \counter[8]_net_1 ), .Y(clk_out5_6));
    NOR2 \counter_RNINSCP[11]  (.A(\counter[11]_net_1 ), .B(
        \counter[14]_net_1 ), .Y(clk_out5_1));
    DFN1C1 \counter[1]  (.D(\counter_3[1] ), .CLK(CLK_26MHZ_IN_c), 
        .CLR(RESET_c), .Q(\counter[1]_net_1 ));
    IOPAD_IN \RESET_pad/U0/U0  (.PAD(RESET), .Y(\RESET_pad/U0/NET1 ));
    DFN1C1 \counter[3]  (.D(\counter_3[3] ), .CLK(CLK_26MHZ_IN_c), 
        .CLR(RESET_c), .Q(\counter[3]_net_1 ));
    AND3 un5_counter_I_19 (.A(\un5_counter.U1.DWACT_FINC_E[0] ), .B(
        \un5_counter.U1.DWACT_FINC_E[2] ), .C(\counter[6]_net_1 ), .Y(
        \un5_counter.N_11 ));
    ULSICC_INT INT_ULSICC_INSTANCE_0 (.USTDBY(GND), .LPENA(GND));
    NOR3B \counter_RNI1N931[9]  (.A(\counter[3]_net_1 ), .B(clk_out5_8)
        , .C(\counter[9]_net_1 ), .Y(clk_out5_12));
    AX1C un5_counter_I_35 (.A(\un5_counter.U1.DWACT_FINC_E[7] ), .B(
        \un5_counter.U1.DWACT_FINC_E[6] ), .C(\counter[12]_net_1 ), .Y(
        I_35));
    AND3 un5_counter_I_13 (.A(\un5_counter.U1.DWACT_FINC_E[0] ), .B(
        \counter[3]_net_1 ), .C(\counter[4]_net_1 ), .Y(
        \un5_counter.N_13 ));
    DFN1C1 \counter[11]  (.D(I_32), .CLK(CLK_26MHZ_IN_c), .CLR(RESET_c)
        , .Q(\counter[11]_net_1 ));
    AND3 un5_counter_I_41 (.A(\counter[12]_net_1 ), .B(
        \counter[13]_net_1 ), .C(\counter[14]_net_1 ), .Y(
        \un5_counter.U1.DWACT_FINC_E[9] ));
    XOR2 un5_counter_I_46 (.A(\un5_counter.N_2 ), .B(
        \counter[16]_net_1 ), .Y(I_46));
    AX1C un5_counter_I_12 (.A(\counter[3]_net_1 ), .B(
        \un5_counter.U1.DWACT_FINC_E[0] ), .C(\counter[4]_net_1 ), .Y(
        I_12));
    AND3 un5_counter_I_30 (.A(\un5_counter.U1.DWACT_FINC_E[0] ), .B(
        \un5_counter.U1.DWACT_FINC_E[2] ), .C(
        \un5_counter.U1.DWACT_FINC_E[5] ), .Y(
        \un5_counter.U1.DWACT_FINC_E[6] ));
    AND2 un5_counter_I_38 (.A(\counter[12]_net_1 ), .B(
        \counter[13]_net_1 ), .Y(\un5_counter.U1.DWACT_FINC_E[8] ));
    NOR3A \counter_RNI5GMS[16]  (.A(\counter[0]_net_1 ), .B(
        \counter[15]_net_1 ), .C(\counter[16]_net_1 ), .Y(clk_out5_8));
    NOR3A \counter_RNIU0JM[5]  (.A(clk_out5_4), .B(\counter[5]_net_1 ), 
        .C(\counter[10]_net_1 ), .Y(clk_out5_10));
    CLKIO \CLK_26MHZ_IN_pad/U0/U1  (.A(\CLK_26MHZ_IN_pad/U0/NET1 ), .Y(
        CLK_26MHZ_IN_c));
    IOPAD_IN \CLK_26MHZ_IN_pad/U0/U0  (.PAD(CLK_26MHZ_IN), .Y(
        \CLK_26MHZ_IN_pad/U0/NET1 ));
    AND3 un5_counter_I_39 (.A(\un5_counter.U1.DWACT_FINC_E[6] ), .B(
        \un5_counter.U1.DWACT_FINC_E[7] ), .C(
        \un5_counter.U1.DWACT_FINC_E[8] ), .Y(\un5_counter.N_4 ));
    DFN1P1 clk_out (.D(clk_out_RNO_net_1), .CLK(CLK_26MHZ_IN_c), .PRE(
        RESET_c), .Q(CLK_1MHZ_OUT_c));
    AND3 un5_counter_I_24 (.A(\un5_counter.U1.DWACT_FINC_E[0] ), .B(
        \un5_counter.U1.DWACT_FINC_E[2] ), .C(
        \un5_counter.U1.DWACT_FINC_E[3] ), .Y(
        \un5_counter.U1.DWACT_FINC_E[4] ));
    IOTRI_OB_EB \CLK_1MHZ_OUT_pad/U0/U1  (.D(CLK_1MHZ_OUT_c), .E(VCC), 
        .DOUT(\CLK_1MHZ_OUT_pad/U0/NET1 ), .EOUT(
        \CLK_1MHZ_OUT_pad/U0/NET2 ));
    DFN1C1 \counter[13]  (.D(I_37), .CLK(CLK_26MHZ_IN_c), .CLR(RESET_c)
        , .Q(\counter[13]_net_1 ));
    DFN1P1 \counter[0]  (.D(\counter_3[0] ), .CLK(CLK_26MHZ_IN_c), 
        .PRE(RESET_c), .Q(\counter[0]_net_1 ));
    DFN1C1 \counter[10]  (.D(I_28), .CLK(CLK_26MHZ_IN_c), .CLR(RESET_c)
        , .Q(\counter[10]_net_1 ));
    NOR2 \counter_RNI4SVF[1]  (.A(\counter[1]_net_1 ), .B(
        \counter[12]_net_1 ), .Y(clk_out5_5));
    DFN1C1 \counter[9]  (.D(I_26), .CLK(CLK_26MHZ_IN_c), .CLR(RESET_c), 
        .Q(\counter[9]_net_1 ));
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule
