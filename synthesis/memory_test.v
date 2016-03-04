`timescale 1 ns/100 ps
// Version: v11.6 11.6.0.34


module read_address_traversal(
       read_address_traversal_0_BA_READ_OUT,
       read_address_traversal_0_COL_READ_OUT,
       read_address_traversal_0_ROW_READ_OUT,
       memory_controller_0_NEXT_READ,
       reset_pulse_0_RESET_14,
       reset_pulse_0_RESET_16,
       reset_pulse_0_RESET_17
    );
output [1:0] read_address_traversal_0_BA_READ_OUT;
output [8:0] read_address_traversal_0_COL_READ_OUT;
output [12:0] read_address_traversal_0_ROW_READ_OUT;
input  memory_controller_0_NEXT_READ;
input  reset_pulse_0_RESET_14;
input  reset_pulse_0_RESET_16;
input  reset_pulse_0_RESET_17;

    wire \read_address_traversal_0_ROW_READ_OUT_i[0] , 
        current_count_c13_0_net_1, current_count_c11_0_net_1, 
        current_count_c10_out, current_count_c17_0_net_1, 
        current_m6_0_a2_8, current_m6_0_a2_5, current_m6_0_a2_4, 
        current_m6_0_a2_6, current_m6_0_a2_3, current_m6_0_a2_1, 
        current_count_c11_net_1, current_count_c8_net_1, 
        current_count_c13_net_1, current_count_c17_net_1, 
        current_count_c15, current_count_c5_net_1, 
        current_count_n23_net_1, current_count_c21_net_1, 
        current_count_n22_net_1, current_count_n21_net_1, 
        current_count_c19_net_1, current_count_n20_net_1, 
        current_count_n19_net_1, current_count_n18_net_1, 
        current_count_n17_net_1, current_count_n16_net_1, 
        current_count_n15_net_1, current_count_n14_net_1, 
        current_count_n13_net_1, current_count_n12_net_1, 
        current_count_n11_net_1, current_count_n10_net_1, 
        current_count_n9_net_1, current_count_n5_net_1, 
        current_count_c4_net_1, current_count_n4_net_1, 
        current_count_c2_net_1, current_count_n3_net_1, 
        current_count_n2_net_1, current_count_n1_net_1, 
        current_count_c6_net_1, current_count_n6_net_1, 
        current_count_n7_net_1, current_count_n8_net_1, GND, VCC;
    
    NOR3C current_count_c2 (.A(
        read_address_traversal_0_ROW_READ_OUT[1]), .B(
        read_address_traversal_0_ROW_READ_OUT[0]), .C(
        read_address_traversal_0_ROW_READ_OUT[2]), .Y(
        current_count_c2_net_1));
    DFN1C0 \current_count[22]  (.D(current_count_n22_net_1), .CLK(
        memory_controller_0_NEXT_READ), .CLR(reset_pulse_0_RESET_17), 
        .Q(read_address_traversal_0_BA_READ_OUT[0]));
    NOR2B current_count_c11 (.A(current_count_c11_0_net_1), .B(
        current_count_c8_net_1), .Y(current_count_c11_net_1));
    XOR2 current_count_n1 (.A(read_address_traversal_0_ROW_READ_OUT[0])
        , .B(read_address_traversal_0_ROW_READ_OUT[1]), .Y(
        current_count_n1_net_1));
    NOR3C current_count_c19 (.A(
        read_address_traversal_0_COL_READ_OUT[5]), .B(
        current_count_c17_net_1), .C(
        read_address_traversal_0_COL_READ_OUT[6]), .Y(
        current_count_c19_net_1));
    XOR2 current_count_n5 (.A(current_count_c4_net_1), .B(
        read_address_traversal_0_ROW_READ_OUT[5]), .Y(
        current_count_n5_net_1));
    NOR2B current_count_c13_0 (.A(
        read_address_traversal_0_COL_READ_OUT[0]), .B(
        read_address_traversal_0_ROW_READ_OUT[12]), .Y(
        current_count_c13_0_net_1));
    DFN1C0 \current_count[20]  (.D(current_count_n20_net_1), .CLK(
        memory_controller_0_NEXT_READ), .CLR(reset_pulse_0_RESET_16), 
        .Q(read_address_traversal_0_COL_READ_OUT[7]));
    XOR2 current_count_n6 (.A(current_count_c5_net_1), .B(
        read_address_traversal_0_ROW_READ_OUT[6]), .Y(
        current_count_n6_net_1));
    AX1C current_count_n13 (.A(
        read_address_traversal_0_ROW_READ_OUT[12]), .B(
        current_count_c11_net_1), .C(
        read_address_traversal_0_COL_READ_OUT[0]), .Y(
        current_count_n13_net_1));
    AX1C current_count_n8 (.A(read_address_traversal_0_ROW_READ_OUT[7])
        , .B(current_count_c6_net_1), .C(
        read_address_traversal_0_ROW_READ_OUT[8]), .Y(
        current_count_n8_net_1));
    XOR2 current_count_n20 (.A(current_count_c19_net_1), .B(
        read_address_traversal_0_COL_READ_OUT[7]), .Y(
        current_count_n20_net_1));
    XOR2 current_count_n7 (.A(current_count_c6_net_1), .B(
        read_address_traversal_0_ROW_READ_OUT[7]), .Y(
        current_count_n7_net_1));
    AX1C current_count_n21 (.A(
        read_address_traversal_0_COL_READ_OUT[7]), .B(
        current_count_c19_net_1), .C(
        read_address_traversal_0_COL_READ_OUT[8]), .Y(
        current_count_n21_net_1));
    DFN1C0 \current_count[7]  (.D(current_count_n7_net_1), .CLK(
        memory_controller_0_NEXT_READ), .CLR(reset_pulse_0_RESET_14), 
        .Q(read_address_traversal_0_ROW_READ_OUT[7]));
    VCC VCC_i (.Y(VCC));
    NOR2B \current_count_RNIN9B2[8]  (.A(
        read_address_traversal_0_ROW_READ_OUT[7]), .B(
        read_address_traversal_0_ROW_READ_OUT[8]), .Y(
        current_m6_0_a2_1));
    NOR3C current_count_c4 (.A(
        read_address_traversal_0_ROW_READ_OUT[3]), .B(
        current_count_c2_net_1), .C(
        read_address_traversal_0_ROW_READ_OUT[4]), .Y(
        current_count_c4_net_1));
    NOR2B current_count_c17_0 (.A(
        read_address_traversal_0_COL_READ_OUT[4]), .B(
        read_address_traversal_0_COL_READ_OUT[3]), .Y(
        current_count_c17_0_net_1));
    DFN1C0 \current_count[0]  (.D(
        \read_address_traversal_0_ROW_READ_OUT_i[0] ), .CLK(
        memory_controller_0_NEXT_READ), .CLR(reset_pulse_0_RESET_14), 
        .Q(read_address_traversal_0_ROW_READ_OUT[0]));
    DFN1C0 \current_count[17]  (.D(current_count_n17_net_1), .CLK(
        memory_controller_0_NEXT_READ), .CLR(reset_pulse_0_RESET_16), 
        .Q(read_address_traversal_0_COL_READ_OUT[4]));
    DFN1C0 \current_count[15]  (.D(current_count_n15_net_1), .CLK(
        memory_controller_0_NEXT_READ), .CLR(reset_pulse_0_RESET_16), 
        .Q(read_address_traversal_0_COL_READ_OUT[2]));
    DFN1C0 \current_count[6]  (.D(current_count_n6_net_1), .CLK(
        memory_controller_0_NEXT_READ), .CLR(reset_pulse_0_RESET_14), 
        .Q(read_address_traversal_0_ROW_READ_OUT[6]));
    NOR2B current_count_c17 (.A(current_count_c17_0_net_1), .B(
        current_count_c15), .Y(current_count_c17_net_1));
    AX1C current_count_n19 (.A(
        read_address_traversal_0_COL_READ_OUT[5]), .B(
        current_count_c17_net_1), .C(
        read_address_traversal_0_COL_READ_OUT[6]), .Y(
        current_count_n19_net_1));
    NOR3C \current_count_RNIGHSK[10]  (.A(
        read_address_traversal_0_COL_READ_OUT[0]), .B(
        read_address_traversal_0_ROW_READ_OUT[10]), .C(
        current_m6_0_a2_3), .Y(current_m6_0_a2_6));
    DFN1C0 \current_count[9]  (.D(current_count_n9_net_1), .CLK(
        memory_controller_0_NEXT_READ), .CLR(reset_pulse_0_RESET_14), 
        .Q(read_address_traversal_0_ROW_READ_OUT[9]));
    NOR3C \current_count_RNIRG4C1[9]  (.A(current_m6_0_a2_5), .B(
        current_m6_0_a2_4), .C(current_m6_0_a2_6), .Y(
        current_m6_0_a2_8));
    XOR2 current_count_n22 (.A(current_count_c21_net_1), .B(
        read_address_traversal_0_BA_READ_OUT[0]), .Y(
        current_count_n22_net_1));
    XOR2 current_count_n16 (.A(current_count_c15), .B(
        read_address_traversal_0_COL_READ_OUT[3]), .Y(
        current_count_n16_net_1));
    DFN1C0 \current_count[8]  (.D(current_count_n8_net_1), .CLK(
        memory_controller_0_NEXT_READ), .CLR(reset_pulse_0_RESET_14), 
        .Q(read_address_traversal_0_ROW_READ_OUT[8]));
    DFN1C0 \current_count[2]  (.D(current_count_n2_net_1), .CLK(
        memory_controller_0_NEXT_READ), .CLR(reset_pulse_0_RESET_14), 
        .Q(read_address_traversal_0_ROW_READ_OUT[2]));
    DFN1C0 \current_count[19]  (.D(current_count_n19_net_1), .CLK(
        memory_controller_0_NEXT_READ), .CLR(reset_pulse_0_RESET_16), 
        .Q(read_address_traversal_0_COL_READ_OUT[6]));
    XOR2 current_count_n9 (.A(current_count_c8_net_1), .B(
        read_address_traversal_0_ROW_READ_OUT[9]), .Y(
        current_count_n9_net_1));
    XOR2 current_count_n18 (.A(current_count_c17_net_1), .B(
        read_address_traversal_0_COL_READ_OUT[5]), .Y(
        current_count_n18_net_1));
    NOR3C current_count_c21 (.A(
        read_address_traversal_0_COL_READ_OUT[7]), .B(
        current_count_c19_net_1), .C(
        read_address_traversal_0_COL_READ_OUT[8]), .Y(
        current_count_c21_net_1));
    DFN1C0 \current_count[13]  (.D(current_count_n13_net_1), .CLK(
        memory_controller_0_NEXT_READ), .CLR(reset_pulse_0_RESET_16), 
        .Q(read_address_traversal_0_COL_READ_OUT[0]));
    AX1C current_count_n2 (.A(read_address_traversal_0_ROW_READ_OUT[1])
        , .B(read_address_traversal_0_ROW_READ_OUT[0]), .C(
        read_address_traversal_0_ROW_READ_OUT[2]), .Y(
        current_count_n2_net_1));
    GND GND_i (.Y(GND));
    NOR2B current_count_c5_RNIEPFD1 (.A(current_m6_0_a2_8), .B(
        current_count_c5_net_1), .Y(current_count_c15));
    DFN1C0 \current_count[14]  (.D(current_count_n14_net_1), .CLK(
        memory_controller_0_NEXT_READ), .CLR(reset_pulse_0_RESET_16), 
        .Q(read_address_traversal_0_COL_READ_OUT[1]));
    NOR2B current_count_c5 (.A(current_count_c4_net_1), .B(
        read_address_traversal_0_ROW_READ_OUT[5]), .Y(
        current_count_c5_net_1));
    AX1C current_count_n23 (.A(read_address_traversal_0_BA_READ_OUT[0])
        , .B(current_count_c21_net_1), .C(
        read_address_traversal_0_BA_READ_OUT[1]), .Y(
        current_count_n23_net_1));
    AX1C current_count_n17 (.A(
        read_address_traversal_0_COL_READ_OUT[3]), .B(
        current_count_c15), .C(
        read_address_traversal_0_COL_READ_OUT[4]), .Y(
        current_count_n17_net_1));
    INV \current_count_RNO[0]  (.A(
        read_address_traversal_0_ROW_READ_OUT[0]), .Y(
        \read_address_traversal_0_ROW_READ_OUT_i[0] ));
    XOR2 current_count_n14 (.A(current_count_c13_net_1), .B(
        read_address_traversal_0_COL_READ_OUT[1]), .Y(
        current_count_n14_net_1));
    NOR2B current_count_c6 (.A(current_count_c5_net_1), .B(
        read_address_traversal_0_ROW_READ_OUT[6]), .Y(
        current_count_c6_net_1));
    NOR2B \current_count_RNI3VN7[6]  (.A(
        read_address_traversal_0_COL_READ_OUT[1]), .B(
        read_address_traversal_0_ROW_READ_OUT[6]), .Y(
        current_m6_0_a2_3));
    NOR3C current_count_c8 (.A(
        read_address_traversal_0_ROW_READ_OUT[7]), .B(
        current_count_c6_net_1), .C(
        read_address_traversal_0_ROW_READ_OUT[8]), .Y(
        current_count_c8_net_1));
    DFN1C0 \current_count[1]  (.D(current_count_n1_net_1), .CLK(
        memory_controller_0_NEXT_READ), .CLR(reset_pulse_0_RESET_14), 
        .Q(read_address_traversal_0_ROW_READ_OUT[1]));
    NOR2B current_count_c13 (.A(current_count_c13_0_net_1), .B(
        current_count_c11_net_1), .Y(current_count_c13_net_1));
    NOR3C \current_count_RNI7VFF[15]  (.A(
        read_address_traversal_0_ROW_READ_OUT[11]), .B(
        read_address_traversal_0_COL_READ_OUT[2]), .C(
        current_m6_0_a2_1), .Y(current_m6_0_a2_5));
    DFN1C0 \current_count[11]  (.D(current_count_n11_net_1), .CLK(
        memory_controller_0_NEXT_READ), .CLR(reset_pulse_0_RESET_16), 
        .Q(read_address_traversal_0_ROW_READ_OUT[11]));
    AX1C current_count_n10 (.A(
        read_address_traversal_0_ROW_READ_OUT[9]), .B(
        current_count_c8_net_1), .C(
        read_address_traversal_0_ROW_READ_OUT[10]), .Y(
        current_count_n10_net_1));
    DFN1C0 \current_count[23]  (.D(current_count_n23_net_1), .CLK(
        memory_controller_0_NEXT_READ), .CLR(reset_pulse_0_RESET_17), 
        .Q(read_address_traversal_0_BA_READ_OUT[1]));
    AX1C current_count_n11 (.A(current_count_c10_out), .B(
        current_count_c8_net_1), .C(
        read_address_traversal_0_ROW_READ_OUT[11]), .Y(
        current_count_n11_net_1));
    DFN1C0 \current_count[12]  (.D(current_count_n12_net_1), .CLK(
        memory_controller_0_NEXT_READ), .CLR(reset_pulse_0_RESET_16), 
        .Q(read_address_traversal_0_ROW_READ_OUT[12]));
    NOR2B current_count_c11_0 (.A(
        read_address_traversal_0_ROW_READ_OUT[11]), .B(
        current_count_c10_out), .Y(current_count_c11_0_net_1));
    AX1C current_count_n4 (.A(read_address_traversal_0_ROW_READ_OUT[3])
        , .B(current_count_c2_net_1), .C(
        read_address_traversal_0_ROW_READ_OUT[4]), .Y(
        current_count_n4_net_1));
    NOR2B current_count_c10_s (.A(
        read_address_traversal_0_ROW_READ_OUT[9]), .B(
        read_address_traversal_0_ROW_READ_OUT[10]), .Y(
        current_count_c10_out));
    DFN1C0 \current_count[16]  (.D(current_count_n16_net_1), .CLK(
        memory_controller_0_NEXT_READ), .CLR(reset_pulse_0_RESET_16), 
        .Q(read_address_traversal_0_COL_READ_OUT[3]));
    DFN1C0 \current_count[10]  (.D(current_count_n10_net_1), .CLK(
        memory_controller_0_NEXT_READ), .CLR(reset_pulse_0_RESET_16), 
        .Q(read_address_traversal_0_ROW_READ_OUT[10]));
    AX1C current_count_n15 (.A(
        read_address_traversal_0_COL_READ_OUT[1]), .B(
        current_count_c13_net_1), .C(
        read_address_traversal_0_COL_READ_OUT[2]), .Y(
        current_count_n15_net_1));
    DFN1C0 \current_count[4]  (.D(current_count_n4_net_1), .CLK(
        memory_controller_0_NEXT_READ), .CLR(reset_pulse_0_RESET_14), 
        .Q(read_address_traversal_0_ROW_READ_OUT[4]));
    NOR2B \current_count_RNI40O7[9]  (.A(
        read_address_traversal_0_ROW_READ_OUT[9]), .B(
        read_address_traversal_0_ROW_READ_OUT[12]), .Y(
        current_m6_0_a2_4));
    DFN1C0 \current_count[18]  (.D(current_count_n18_net_1), .CLK(
        memory_controller_0_NEXT_READ), .CLR(reset_pulse_0_RESET_16), 
        .Q(read_address_traversal_0_COL_READ_OUT[5]));
    DFN1C0 \current_count[5]  (.D(current_count_n5_net_1), .CLK(
        memory_controller_0_NEXT_READ), .CLR(reset_pulse_0_RESET_14), 
        .Q(read_address_traversal_0_ROW_READ_OUT[5]));
    DFN1C0 \current_count[3]  (.D(current_count_n3_net_1), .CLK(
        memory_controller_0_NEXT_READ), .CLR(reset_pulse_0_RESET_14), 
        .Q(read_address_traversal_0_ROW_READ_OUT[3]));
    XOR2 current_count_n3 (.A(current_count_c2_net_1), .B(
        read_address_traversal_0_ROW_READ_OUT[3]), .Y(
        current_count_n3_net_1));
    XOR2 current_count_n12 (.A(current_count_c11_net_1), .B(
        read_address_traversal_0_ROW_READ_OUT[12]), .Y(
        current_count_n12_net_1));
    DFN1C0 \current_count[21]  (.D(current_count_n21_net_1), .CLK(
        memory_controller_0_NEXT_READ), .CLR(reset_pulse_0_RESET_16), 
        .Q(read_address_traversal_0_COL_READ_OUT[8]));
    
endmodule


module write_address_traversal(
       write_address_traversal_0_BA_WRITE_OUT,
       write_address_traversal_0_COL_WRITE_OUT,
       write_address_traversal_0_ROW_WRITE_OUT,
       N_22,
       memory_controller_0_NEXT_WRITE,
       reset_pulse_0_RESET_14,
       reset_pulse_0_RESET_15
    );
output [1:0] write_address_traversal_0_BA_WRITE_OUT;
output [8:0] write_address_traversal_0_COL_WRITE_OUT;
output [12:0] write_address_traversal_0_ROW_WRITE_OUT;
input  N_22;
input  memory_controller_0_NEXT_WRITE;
input  reset_pulse_0_RESET_14;
input  reset_pulse_0_RESET_15;

    wire \write_address_traversal_0_ROW_WRITE_OUT_i[0] , 
        current_count_c22_0_net_1, current_count_c13_0_net_1, 
        current_count_c20_2_net_1, current_count_c20_1_net_1, 
        current_count_c11_1_net_1, current_m6_0_a2_7, 
        current_m6_0_a2_2, current_m6_0_a2_1, current_m6_0_a2_6, 
        current_m6_0_a2_4, current_count_c11_net_1, 
        current_count_c8_net_1, current_count_c20_net_1, 
        current_count_c15_net_1, current_count_n23_net_1, 
        current_count_n22_net_1, current_count_n21_net_1, 
        current_count_n20_net_1, current_count_c18_net_1, 
        current_count_n19_net_1, current_count_n18_net_1, 
        current_count_c17_net_1, current_count_n17_net_1, 
        current_count_n16_net_1, current_count_n15_net_1, 
        current_count_c5_net_1, current_count_n14_net_1, 
        current_count_n13_net_1, current_count_n7_net_1, 
        current_count_c6_net_1, current_count_n6_net_1, 
        current_count_n5_net_1, current_count_c4_net_1, 
        current_count_n4_net_1, current_count_c2_net_1, 
        current_count_c9_net_1, current_count_n8_net_1, 
        current_count_n9_net_1, current_count_n10_net_1, 
        current_count_n11_net_1, current_count_n12_net_1, 
        current_count_n1_net_1, current_count_n2_net_1, 
        current_count_n3_net_1, GND, VCC;
    
    NOR2A current_count_c2 (.A(
        write_address_traversal_0_ROW_WRITE_OUT[2]), .B(N_22), .Y(
        current_count_c2_net_1));
    DFN1C0 \current_count[22]  (.D(current_count_n22_net_1), .CLK(
        memory_controller_0_NEXT_WRITE), .CLR(reset_pulse_0_RESET_15), 
        .Q(write_address_traversal_0_BA_WRITE_OUT[0]));
    NOR2B current_count_c11 (.A(current_count_c11_1_net_1), .B(
        current_count_c8_net_1), .Y(current_count_c11_net_1));
    XOR2 current_count_n1 (.A(
        write_address_traversal_0_ROW_WRITE_OUT[0]), .B(
        write_address_traversal_0_ROW_WRITE_OUT[1]), .Y(
        current_count_n1_net_1));
    XOR2 current_count_n5 (.A(current_count_c4_net_1), .B(
        write_address_traversal_0_ROW_WRITE_OUT[5]), .Y(
        current_count_n5_net_1));
    NOR2B current_count_c13_0 (.A(
        write_address_traversal_0_COL_WRITE_OUT[0]), .B(
        write_address_traversal_0_ROW_WRITE_OUT[12]), .Y(
        current_count_c13_0_net_1));
    DFN1C0 \current_count[20]  (.D(current_count_n20_net_1), .CLK(
        memory_controller_0_NEXT_WRITE), .CLR(reset_pulse_0_RESET_15), 
        .Q(write_address_traversal_0_COL_WRITE_OUT[7]));
    XOR2 current_count_n6 (.A(current_count_c5_net_1), .B(
        write_address_traversal_0_ROW_WRITE_OUT[6]), .Y(
        current_count_n6_net_1));
    AX1C current_count_n13 (.A(
        write_address_traversal_0_ROW_WRITE_OUT[12]), .B(
        current_count_c11_net_1), .C(
        write_address_traversal_0_COL_WRITE_OUT[0]), .Y(
        current_count_n13_net_1));
    AX1C current_count_n8 (.A(
        write_address_traversal_0_ROW_WRITE_OUT[7]), .B(
        current_count_c6_net_1), .C(
        write_address_traversal_0_ROW_WRITE_OUT[8]), .Y(
        current_count_n8_net_1));
    AX1C current_count_n20 (.A(
        write_address_traversal_0_COL_WRITE_OUT[6]), .B(
        current_count_c18_net_1), .C(
        write_address_traversal_0_COL_WRITE_OUT[7]), .Y(
        current_count_n20_net_1));
    XOR2 current_count_n7 (.A(current_count_c6_net_1), .B(
        write_address_traversal_0_ROW_WRITE_OUT[7]), .Y(
        current_count_n7_net_1));
    XOR2 current_count_n21 (.A(current_count_c20_net_1), .B(
        write_address_traversal_0_COL_WRITE_OUT[8]), .Y(
        current_count_n21_net_1));
    DFN1C0 \current_count[7]  (.D(current_count_n7_net_1), .CLK(
        memory_controller_0_NEXT_WRITE), .CLR(reset_pulse_0_RESET_14), 
        .Q(write_address_traversal_0_ROW_WRITE_OUT[7]));
    VCC VCC_i (.Y(VCC));
    NOR3C current_count_c4 (.A(
        write_address_traversal_0_ROW_WRITE_OUT[3]), .B(
        current_count_c2_net_1), .C(
        write_address_traversal_0_ROW_WRITE_OUT[4]), .Y(
        current_count_c4_net_1));
    DFN1C0 \current_count[0]  (.D(
        \write_address_traversal_0_ROW_WRITE_OUT_i[0] ), .CLK(
        memory_controller_0_NEXT_WRITE), .CLR(reset_pulse_0_RESET_14), 
        .Q(write_address_traversal_0_ROW_WRITE_OUT[0]));
    DFN1C0 \current_count[17]  (.D(current_count_n17_net_1), .CLK(
        memory_controller_0_NEXT_WRITE), .CLR(reset_pulse_0_RESET_15), 
        .Q(write_address_traversal_0_COL_WRITE_OUT[4]));
    DFN1C0 \current_count[15]  (.D(current_count_n15_net_1), .CLK(
        memory_controller_0_NEXT_WRITE), .CLR(reset_pulse_0_RESET_15), 
        .Q(write_address_traversal_0_COL_WRITE_OUT[2]));
    DFN1C0 \current_count[6]  (.D(current_count_n6_net_1), .CLK(
        memory_controller_0_NEXT_WRITE), .CLR(reset_pulse_0_RESET_14), 
        .Q(write_address_traversal_0_ROW_WRITE_OUT[6]));
    NOR3C current_count_c17 (.A(
        write_address_traversal_0_COL_WRITE_OUT[3]), .B(
        current_count_c15_net_1), .C(
        write_address_traversal_0_COL_WRITE_OUT[4]), .Y(
        current_count_c17_net_1));
    XOR2 current_count_n19 (.A(current_count_c18_net_1), .B(
        write_address_traversal_0_COL_WRITE_OUT[6]), .Y(
        current_count_n19_net_1));
    DFN1C0 \current_count[9]  (.D(current_count_n9_net_1), .CLK(
        memory_controller_0_NEXT_WRITE), .CLR(reset_pulse_0_RESET_14), 
        .Q(write_address_traversal_0_ROW_WRITE_OUT[9]));
    AX1C current_count_n22 (.A(
        write_address_traversal_0_COL_WRITE_OUT[8]), .B(
        current_count_c20_net_1), .C(
        write_address_traversal_0_BA_WRITE_OUT[0]), .Y(
        current_count_n22_net_1));
    NOR2B \current_count_RNIUNM3[6]  (.A(
        write_address_traversal_0_ROW_WRITE_OUT[11]), .B(
        write_address_traversal_0_ROW_WRITE_OUT[6]), .Y(
        current_m6_0_a2_1));
    NOR2B current_count_c18 (.A(current_count_c17_net_1), .B(
        write_address_traversal_0_COL_WRITE_OUT[5]), .Y(
        current_count_c18_net_1));
    XOR2 current_count_n16 (.A(current_count_c15_net_1), .B(
        write_address_traversal_0_COL_WRITE_OUT[3]), .Y(
        current_count_n16_net_1));
    DFN1C0 \current_count[8]  (.D(current_count_n8_net_1), .CLK(
        memory_controller_0_NEXT_WRITE), .CLR(reset_pulse_0_RESET_14), 
        .Q(write_address_traversal_0_ROW_WRITE_OUT[8]));
    DFN1C0 \current_count[2]  (.D(current_count_n2_net_1), .CLK(
        memory_controller_0_NEXT_WRITE), .CLR(reset_pulse_0_RESET_14), 
        .Q(write_address_traversal_0_ROW_WRITE_OUT[2]));
    DFN1C0 \current_count[19]  (.D(current_count_n19_net_1), .CLK(
        memory_controller_0_NEXT_WRITE), .CLR(reset_pulse_0_RESET_15), 
        .Q(write_address_traversal_0_COL_WRITE_OUT[6]));
    XOR2 current_count_n9 (.A(current_count_c8_net_1), .B(
        write_address_traversal_0_ROW_WRITE_OUT[9]), .Y(
        current_count_n9_net_1));
    XOR2 current_count_n18 (.A(current_count_c17_net_1), .B(
        write_address_traversal_0_COL_WRITE_OUT[5]), .Y(
        current_count_n18_net_1));
    DFN1C0 \current_count[13]  (.D(current_count_n13_net_1), .CLK(
        memory_controller_0_NEXT_WRITE), .CLR(reset_pulse_0_RESET_15), 
        .Q(write_address_traversal_0_COL_WRITE_OUT[0]));
    NOR3C current_count_c11_1 (.A(
        write_address_traversal_0_ROW_WRITE_OUT[10]), .B(
        write_address_traversal_0_ROW_WRITE_OUT[11]), .C(
        write_address_traversal_0_ROW_WRITE_OUT[9]), .Y(
        current_count_c11_1_net_1));
    XNOR2 current_count_n2 (.A(N_22), .B(
        write_address_traversal_0_ROW_WRITE_OUT[2]), .Y(
        current_count_n2_net_1));
    GND GND_i (.Y(GND));
    DFN1C0 \current_count[14]  (.D(current_count_n14_net_1), .CLK(
        memory_controller_0_NEXT_WRITE), .CLR(reset_pulse_0_RESET_15), 
        .Q(write_address_traversal_0_COL_WRITE_OUT[1]));
    NOR2B current_count_c5 (.A(current_count_c4_net_1), .B(
        write_address_traversal_0_ROW_WRITE_OUT[5]), .Y(
        current_count_c5_net_1));
    AX1C current_count_n23 (.A(current_count_c20_net_1), .B(
        current_count_c22_0_net_1), .C(
        write_address_traversal_0_BA_WRITE_OUT[1]), .Y(
        current_count_n23_net_1));
    NOR3C \current_count_RNI89GH[6]  (.A(current_m6_0_a2_2), .B(
        current_m6_0_a2_1), .C(current_m6_0_a2_6), .Y(
        current_m6_0_a2_7));
    AX1C current_count_n17 (.A(
        write_address_traversal_0_COL_WRITE_OUT[3]), .B(
        current_count_c15_net_1), .C(
        write_address_traversal_0_COL_WRITE_OUT[4]), .Y(
        current_count_n17_net_1));
    INV \current_count_RNO[0]  (.A(
        write_address_traversal_0_ROW_WRITE_OUT[0]), .Y(
        \write_address_traversal_0_ROW_WRITE_OUT_i[0] ));
    AX1C current_count_n14 (.A(current_count_c11_net_1), .B(
        current_count_c13_0_net_1), .C(
        write_address_traversal_0_COL_WRITE_OUT[1]), .Y(
        current_count_n14_net_1));
    NOR2B current_count_c6 (.A(current_count_c5_net_1), .B(
        write_address_traversal_0_ROW_WRITE_OUT[6]), .Y(
        current_count_c6_net_1));
    NOR3C current_count_c20 (.A(
        write_address_traversal_0_COL_WRITE_OUT[3]), .B(
        current_count_c15_net_1), .C(current_count_c20_2_net_1), .Y(
        current_count_c20_net_1));
    NOR3C current_count_c8 (.A(
        write_address_traversal_0_ROW_WRITE_OUT[7]), .B(
        current_count_c6_net_1), .C(
        write_address_traversal_0_ROW_WRITE_OUT[8]), .Y(
        current_count_c8_net_1));
    DFN1C0 \current_count[1]  (.D(current_count_n1_net_1), .CLK(
        memory_controller_0_NEXT_WRITE), .CLR(reset_pulse_0_RESET_14), 
        .Q(write_address_traversal_0_ROW_WRITE_OUT[1]));
    NOR2B current_count_c20_1 (.A(
        write_address_traversal_0_COL_WRITE_OUT[5]), .B(
        write_address_traversal_0_COL_WRITE_OUT[4]), .Y(
        current_count_c20_1_net_1));
    NOR3C current_count_c20_2 (.A(
        write_address_traversal_0_COL_WRITE_OUT[6]), .B(
        write_address_traversal_0_COL_WRITE_OUT[7]), .C(
        current_count_c20_1_net_1), .Y(current_count_c20_2_net_1));
    DFN1C0 \current_count[11]  (.D(current_count_n11_net_1), .CLK(
        memory_controller_0_NEXT_WRITE), .CLR(reset_pulse_0_RESET_15), 
        .Q(write_address_traversal_0_ROW_WRITE_OUT[11]));
    XOR2 current_count_n10 (.A(current_count_c9_net_1), .B(
        write_address_traversal_0_ROW_WRITE_OUT[10]), .Y(
        current_count_n10_net_1));
    NOR3C \current_count_RNIL0V7[14]  (.A(
        write_address_traversal_0_COL_WRITE_OUT[0]), .B(
        write_address_traversal_0_COL_WRITE_OUT[1]), .C(
        write_address_traversal_0_ROW_WRITE_OUT[12]), .Y(
        current_m6_0_a2_4));
    NOR2B current_count_c22_0 (.A(
        write_address_traversal_0_BA_WRITE_OUT[0]), .B(
        write_address_traversal_0_COL_WRITE_OUT[8]), .Y(
        current_count_c22_0_net_1));
    DFN1C0 \current_count[23]  (.D(current_count_n23_net_1), .CLK(
        memory_controller_0_NEXT_WRITE), .CLR(reset_pulse_0_RESET_15), 
        .Q(write_address_traversal_0_BA_WRITE_OUT[1]));
    AX1C current_count_n11 (.A(
        write_address_traversal_0_ROW_WRITE_OUT[10]), .B(
        current_count_c9_net_1), .C(
        write_address_traversal_0_ROW_WRITE_OUT[11]), .Y(
        current_count_n11_net_1));
    NOR3C current_count_c15 (.A(current_count_c5_net_1), .B(
        current_m6_0_a2_7), .C(
        write_address_traversal_0_COL_WRITE_OUT[2]), .Y(
        current_count_c15_net_1));
    DFN1C0 \current_count[12]  (.D(current_count_n12_net_1), .CLK(
        memory_controller_0_NEXT_WRITE), .CLR(reset_pulse_0_RESET_15), 
        .Q(write_address_traversal_0_ROW_WRITE_OUT[12]));
    AX1C current_count_n4 (.A(
        write_address_traversal_0_ROW_WRITE_OUT[3]), .B(
        current_count_c2_net_1), .C(
        write_address_traversal_0_ROW_WRITE_OUT[4]), .Y(
        current_count_n4_net_1));
    DFN1C0 \current_count[16]  (.D(current_count_n16_net_1), .CLK(
        memory_controller_0_NEXT_WRITE), .CLR(reset_pulse_0_RESET_15), 
        .Q(write_address_traversal_0_COL_WRITE_OUT[3]));
    NOR3C \current_count_RNILQLB[9]  (.A(
        write_address_traversal_0_ROW_WRITE_OUT[9]), .B(
        write_address_traversal_0_ROW_WRITE_OUT[10]), .C(
        current_m6_0_a2_4), .Y(current_m6_0_a2_6));
    DFN1C0 \current_count[10]  (.D(current_count_n10_net_1), .CLK(
        memory_controller_0_NEXT_WRITE), .CLR(reset_pulse_0_RESET_15), 
        .Q(write_address_traversal_0_ROW_WRITE_OUT[10]));
    AX1C current_count_n15 (.A(current_count_c5_net_1), .B(
        current_m6_0_a2_7), .C(
        write_address_traversal_0_COL_WRITE_OUT[2]), .Y(
        current_count_n15_net_1));
    DFN1C0 \current_count[4]  (.D(current_count_n4_net_1), .CLK(
        memory_controller_0_NEXT_WRITE), .CLR(reset_pulse_0_RESET_14), 
        .Q(write_address_traversal_0_ROW_WRITE_OUT[4]));
    DFN1C0 \current_count[18]  (.D(current_count_n18_net_1), .CLK(
        memory_controller_0_NEXT_WRITE), .CLR(reset_pulse_0_RESET_15), 
        .Q(write_address_traversal_0_COL_WRITE_OUT[5]));
    DFN1C0 \current_count[5]  (.D(current_count_n5_net_1), .CLK(
        memory_controller_0_NEXT_WRITE), .CLR(reset_pulse_0_RESET_14), 
        .Q(write_address_traversal_0_ROW_WRITE_OUT[5]));
    DFN1C0 \current_count[3]  (.D(current_count_n3_net_1), .CLK(
        memory_controller_0_NEXT_WRITE), .CLR(reset_pulse_0_RESET_14), 
        .Q(write_address_traversal_0_ROW_WRITE_OUT[3]));
    NOR2B current_count_c9 (.A(current_count_c8_net_1), .B(
        write_address_traversal_0_ROW_WRITE_OUT[9]), .Y(
        current_count_c9_net_1));
    XOR2 current_count_n3 (.A(current_count_c2_net_1), .B(
        write_address_traversal_0_ROW_WRITE_OUT[3]), .Y(
        current_count_n3_net_1));
    NOR2B \current_count_RNILM32[8]  (.A(
        write_address_traversal_0_ROW_WRITE_OUT[7]), .B(
        write_address_traversal_0_ROW_WRITE_OUT[8]), .Y(
        current_m6_0_a2_2));
    XOR2 current_count_n12 (.A(current_count_c11_net_1), .B(
        write_address_traversal_0_ROW_WRITE_OUT[12]), .Y(
        current_count_n12_net_1));
    DFN1C0 \current_count[21]  (.D(current_count_n21_net_1), .CLK(
        memory_controller_0_NEXT_WRITE), .CLR(reset_pulse_0_RESET_15), 
        .Q(write_address_traversal_0_COL_WRITE_OUT[8]));
    
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


module clock_div_1MHZ_10HZ(
       clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT,
       GLA,
       reset_pulse_0_RESET_17,
       reset_pulse_0_RESET_22,
       reset_pulse_0_RESET
    );
output clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT;
input  GLA;
input  reset_pulse_0_RESET_17;
input  reset_pulse_0_RESET_22;
input  reset_pulse_0_RESET;

    wire clk_out_i, N_16, \counter[1]_net_1 , \counter[0]_net_1 , N_14, 
        \counter[3]_net_1 , \DWACT_FINC_E[0] , N_9, \counter[8]_net_1 , 
        \DWACT_FINC_E[4] , N_6, \DWACT_FINC_E[7] , \DWACT_FINC_E[6] , 
        clk_out5_13, clk_out5_5, clk_out5_4, clk_out5_11, clk_out5_12, 
        clk_out5_1, clk_out5_0, clk_out5_9, \counter[9]_net_1 , 
        clk_out5_7, clk_out5_3, \counter[13]_net_1 , 
        \counter[5]_net_1 , \counter[12]_net_1 , \counter[6]_net_1 , 
        \counter[4]_net_1 , \counter[10]_net_1 , \counter[2]_net_1 , 
        \counter[7]_net_1 , \counter[15]_net_1 , \counter[11]_net_1 , 
        \counter[14]_net_1 , \counter[16]_net_1 , clk_out_RNO_net_1, 
        \counter_3[15] , I_43, \counter_3[14] , I_40, \counter_3[9] , 
        I_26, \counter_3[8] , I_23, \counter_3[6] , I_17, 
        \counter_3[4] , I_12, I_4, I_5, I_7, I_9, I_14, I_20, I_28, 
        I_32, I_35, I_37, I_46, N_2, \DWACT_FINC_E[10] , 
        \DWACT_FINC_E[9] , N_3, N_4, \DWACT_FINC_E[8] , N_5, N_7, 
        \DWACT_FINC_E[2] , \DWACT_FINC_E[5] , N_8, \DWACT_FINC_E[3] , 
        N_10, N_11, N_12, \DWACT_FINC_E[1] , N_13, N_15, GND, VCC;
    
    XOR2 un5_counter_I_5 (.A(\counter[0]_net_1 ), .B(
        \counter[1]_net_1 ), .Y(I_5));
    AND3 un5_counter_I_33 (.A(\counter[9]_net_1 ), .B(
        \counter[10]_net_1 ), .C(\counter[11]_net_1 ), .Y(
        \DWACT_FINC_E[7] ));
    XOR2 un5_counter_I_20 (.A(N_11), .B(\counter[7]_net_1 ), .Y(I_20));
    NOR2B un5_counter_I_11 (.A(\counter[3]_net_1 ), .B(
        \DWACT_FINC_E[0] ), .Y(N_14));
    NOR3A \counter_RNIIUN61[5]  (.A(clk_out5_3), .B(
        \counter[13]_net_1 ), .C(\counter[5]_net_1 ), .Y(clk_out5_9));
    XOR2 un5_counter_I_28 (.A(N_8), .B(\counter[10]_net_1 ), .Y(I_28));
    AND3 un5_counter_I_16 (.A(\DWACT_FINC_E[0] ), .B(\DWACT_FINC_E[1] )
        , .C(\counter[5]_net_1 ), .Y(N_12));
    XOR2 un5_counter_I_17 (.A(N_12), .B(\counter[6]_net_1 ), .Y(I_17));
    NOR3B \counter_RNIGSN61[1]  (.A(\counter[9]_net_1 ), .B(clk_out5_7)
        , .C(\counter[1]_net_1 ), .Y(clk_out5_11));
    XOR2 un5_counter_I_32 (.A(N_7), .B(\counter[11]_net_1 ), .Y(I_32));
    AND3 un5_counter_I_29 (.A(\counter[6]_net_1 ), .B(
        \counter[7]_net_1 ), .C(\counter[8]_net_1 ), .Y(
        \DWACT_FINC_E[5] ));
    DFN1C0 \counter[2]  (.D(I_7), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_17), .Q(\counter[2]_net_1 ));
    DFN1C0 \counter[7]  (.D(I_20), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_17), .Q(\counter[7]_net_1 ));
    XOR2 un5_counter_I_7 (.A(N_16), .B(\counter[2]_net_1 ), .Y(I_7));
    AND3 un5_counter_I_45 (.A(\DWACT_FINC_E[6] ), .B(
        \DWACT_FINC_E[10] ), .C(\counter[15]_net_1 ), .Y(N_2));
    XOR2 un5_counter_I_23 (.A(N_10), .B(\counter[8]_net_1 ), .Y(I_23));
    DFN1C0 \counter[6]  (.D(\counter_3[6] ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_17), .Q(\counter[6]_net_1 ));
    AOI1B \counter_RNO[4]  (.A(clk_out5_13), .B(clk_out5_12), .C(I_12), 
        .Y(\counter_3[4] ));
    NOR2B \counter_RNIMVFF[6]  (.A(\counter[6]_net_1 ), .B(
        \counter[8]_net_1 ), .Y(clk_out5_5));
    VCC VCC_i (.Y(VCC));
    AND2 un5_counter_I_44 (.A(\DWACT_FINC_E[7] ), .B(\DWACT_FINC_E[9] )
        , .Y(\DWACT_FINC_E[10] ));
    DFN1C0 \counter[8]  (.D(\counter_3[8] ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_17), .Q(\counter[8]_net_1 ));
    AND3 un5_counter_I_22 (.A(\DWACT_FINC_E[0] ), .B(\DWACT_FINC_E[2] )
        , .C(\DWACT_FINC_E[3] ), .Y(N_10));
    NOR2A \counter_RNIKG0V[16]  (.A(\counter[14]_net_1 ), .B(
        \counter[16]_net_1 ), .Y(clk_out5_0));
    DFN1C0 \counter[16]  (.D(I_46), .CLK(GLA), .CLR(
        reset_pulse_0_RESET), .Q(\counter[16]_net_1 ));
    AND3 un5_counter_I_8 (.A(\counter[0]_net_1 ), .B(
        \counter[1]_net_1 ), .C(\counter[2]_net_1 ), .Y(N_15));
    AND3 un5_counter_I_31 (.A(\DWACT_FINC_E[6] ), .B(
        \counter[9]_net_1 ), .C(\counter[10]_net_1 ), .Y(N_7));
    XOR2 un5_counter_I_40 (.A(N_4), .B(\counter[14]_net_1 ), .Y(I_40));
    NOR3C \counter_RNI3SFD2[1]  (.A(clk_out5_5), .B(clk_out5_4), .C(
        clk_out5_11), .Y(clk_out5_13));
    DFN1C0 \counter[15]  (.D(\counter_3[15] ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET), .Q(\counter[15]_net_1 ));
    AND3 un5_counter_I_36 (.A(\DWACT_FINC_E[6] ), .B(\DWACT_FINC_E[7] )
        , .C(\counter[12]_net_1 ), .Y(N_5));
    NOR2A \counter_RNIGC0V[11]  (.A(\counter[15]_net_1 ), .B(
        \counter[11]_net_1 ), .Y(clk_out5_1));
    XOR2 un5_counter_I_37 (.A(N_5), .B(\counter[13]_net_1 ), .Y(I_37));
    DFN1C0 \counter[14]  (.D(\counter_3[14] ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET), .Q(\counter[14]_net_1 ));
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
    DFN1C0 \counter[4]  (.D(\counter_3[4] ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_17), .Q(\counter[4]_net_1 ));
    AND2 un5_counter_I_21 (.A(\counter[6]_net_1 ), .B(
        \counter[7]_net_1 ), .Y(\DWACT_FINC_E[3] ));
    DFN1C0 \counter[5]  (.D(I_14), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_17), .Q(\counter[5]_net_1 ));
    XOR2 un5_counter_I_43 (.A(N_3), .B(\counter[15]_net_1 ), .Y(I_43));
    XOR2 un5_counter_I_14 (.A(N_13), .B(\counter[5]_net_1 ), .Y(I_14));
    AX1C clk_out_RNO (.A(clk_out5_12), .B(clk_out5_13), .C(clk_out_i), 
        .Y(clk_out_RNO_net_1));
    NOR2 \counter_RNIU08N[12]  (.A(\counter[12]_net_1 ), .B(
        \counter[3]_net_1 ), .Y(clk_out5_7));
    XOR2 un5_counter_I_26 (.A(N_9), .B(\counter[9]_net_1 ), .Y(I_26));
    AND3 un5_counter_I_27 (.A(\DWACT_FINC_E[4] ), .B(
        \counter[8]_net_1 ), .C(\counter[9]_net_1 ), .Y(N_8));
    NOR2A \counter_RNITV7N[10]  (.A(\counter[4]_net_1 ), .B(
        \counter[10]_net_1 ), .Y(clk_out5_4));
    AND3 un5_counter_I_10 (.A(\counter[0]_net_1 ), .B(
        \counter[1]_net_1 ), .C(\counter[2]_net_1 ), .Y(
        \DWACT_FINC_E[0] ));
    GND GND_i (.Y(GND));
    AND3 un5_counter_I_42 (.A(\DWACT_FINC_E[6] ), .B(\DWACT_FINC_E[7] )
        , .C(\DWACT_FINC_E[9] ), .Y(N_3));
    AND3 un5_counter_I_18 (.A(\counter[3]_net_1 ), .B(
        \counter[4]_net_1 ), .C(\counter[5]_net_1 ), .Y(
        \DWACT_FINC_E[2] ));
    DFN1C0 \counter[12]  (.D(I_35), .CLK(GLA), .CLR(
        reset_pulse_0_RESET), .Q(\counter[12]_net_1 ));
    DFN1C0 \counter[1]  (.D(I_5), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_17), .Q(\counter[1]_net_1 ));
    DFN1C0 \counter[3]  (.D(I_9), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_17), .Q(\counter[3]_net_1 ));
    AND3 un5_counter_I_19 (.A(\DWACT_FINC_E[0] ), .B(\DWACT_FINC_E[2] )
        , .C(\counter[6]_net_1 ), .Y(N_11));
    AOI1B \counter_RNO[6]  (.A(clk_out5_13), .B(clk_out5_12), .C(I_17), 
        .Y(\counter_3[6] ));
    NOR3C \counter_RNIMRO43[5]  (.A(clk_out5_1), .B(clk_out5_0), .C(
        clk_out5_9), .Y(clk_out5_12));
    XOR2 un5_counter_I_35 (.A(N_6), .B(\counter[12]_net_1 ), .Y(I_35));
    AOI1B \counter_RNO[9]  (.A(clk_out5_13), .B(clk_out5_12), .C(I_26), 
        .Y(\counter_3[9] ));
    AND3 un5_counter_I_13 (.A(\DWACT_FINC_E[0] ), .B(
        \counter[3]_net_1 ), .C(\counter[4]_net_1 ), .Y(N_13));
    DFN1C0 \counter[11]  (.D(I_32), .CLK(GLA), .CLR(
        reset_pulse_0_RESET), .Q(\counter[11]_net_1 ));
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
    NOR2B un5_counter_I_25 (.A(\counter[8]_net_1 ), .B(
        \DWACT_FINC_E[4] ), .Y(N_9));
    AND3 un5_counter_I_39 (.A(\DWACT_FINC_E[6] ), .B(\DWACT_FINC_E[7] )
        , .C(\DWACT_FINC_E[8] ), .Y(N_4));
    DFN1P0 clk_out (.D(clk_out_RNO_net_1), .CLK(GLA), .PRE(
        reset_pulse_0_RESET_17), .Q(clk_out_i));
    NOR2 \counter_RNIHQFF[2]  (.A(\counter[2]_net_1 ), .B(
        \counter[7]_net_1 ), .Y(clk_out5_3));
    AND3 un5_counter_I_24 (.A(\DWACT_FINC_E[0] ), .B(\DWACT_FINC_E[2] )
        , .C(\DWACT_FINC_E[3] ), .Y(\DWACT_FINC_E[4] ));
    DFN1C0 \counter[13]  (.D(I_37), .CLK(GLA), .CLR(
        reset_pulse_0_RESET), .Q(\counter[13]_net_1 ));
    DFN1P0 \counter[0]  (.D(I_4), .CLK(GLA), .PRE(
        reset_pulse_0_RESET_17), .Q(\counter[0]_net_1 ));
    DFN1C0 \counter[10]  (.D(I_28), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_22), .Q(\counter[10]_net_1 ));
    DFN1C0 \counter[9]  (.D(\counter_3[9] ), .CLK(GLA), .CLR(
        reset_pulse_0_RESET_17), .Q(\counter[9]_net_1 ));
    
endmodule


module sdram_interface(
       address_cl_4,
       address_cl_2,
       address_cl,
       address_cl_1,
       memory_controller_0_CMD_OUT,
       timestamp_0_TIMESTAMP,
       address_cl_12,
       memory_controller_0_BA_OUT,
       address_cl_8,
       address_cl_10,
       address_cl_7,
       address_cl_11,
       address_cl_3,
       address_cl_6,
       address_cl_5,
       address_cl_9,
       sdram_interface_0_DATA_READ,
       memory_controller_0_DATA_OUT,
       address,
       memory_controller_0_COL_OUT,
       memory_controller_0_ROW_OUT,
       dout,
       sdram_interface_0_STATUS,
       SDRAM_CLK_c,
       reset_pulse_0_CLK_OUT_48MHZ,
       weVAL,
       reset_pulse_0_RESET_16,
       reset_pulse_0_RESET_22,
       reset_pulse_0_RESET_19,
       reset_pulse_0_RESET_17,
       reset_pulse_0_RESET_18,
       reset_pulse_0_RESET_13,
       reset_pulse_0_RESET_15,
       SDRAM_RAS_c,
       reset_pulse_0_RESET_6,
       SDRAM_CKE_c,
       reset_pulse_0_RESET_5,
       SDRAM_CAS_c,
       SDRAM_WE_c,
       reset_pulse_0_RESET_3,
       reset_pulse_0_RESET_7,
       SDRAM_DQMU_c_c,
       reset_pulse_0_RESET_11,
       SDRAM_BA1_c,
       SDRAM_BA0_c,
       SDRAM_D15_in,
       SDRAM_D14_in,
       SDRAM_D13_in,
       SDRAM_D12_in,
       SDRAM_D11_in,
       SDRAM_D10_in,
       SDRAM_D9_in,
       SDRAM_D8_in,
       SDRAM_D7_in,
       SDRAM_D6_in,
       SDRAM_D5_in,
       SDRAM_D4_in,
       SDRAM_D3_in,
       SDRAM_D2_in,
       SDRAM_D1_in,
       SDRAM_D0_in,
       reset_pulse_0_RESET_10,
       reset_pulse_0_RESET_4
    );
output [0:0] address_cl_4;
output [0:0] address_cl_2;
output [0:0] address_cl;
output [0:0] address_cl_1;
input  [1:0] memory_controller_0_CMD_OUT;
input  [23:0] timestamp_0_TIMESTAMP;
output [0:0] address_cl_12;
input  [1:0] memory_controller_0_BA_OUT;
output [0:0] address_cl_8;
output [0:0] address_cl_10;
output [0:0] address_cl_7;
output [0:0] address_cl_11;
output [0:0] address_cl_3;
output [0:0] address_cl_6;
output [0:0] address_cl_5;
output [0:0] address_cl_9;
output [15:0] sdram_interface_0_DATA_READ;
input  [15:0] memory_controller_0_DATA_OUT;
output [12:0] address;
input  [8:0] memory_controller_0_COL_OUT;
input  [12:0] memory_controller_0_ROW_OUT;
output [15:0] dout;
output sdram_interface_0_STATUS;
output SDRAM_CLK_c;
input  reset_pulse_0_CLK_OUT_48MHZ;
output weVAL;
input  reset_pulse_0_RESET_16;
input  reset_pulse_0_RESET_22;
input  reset_pulse_0_RESET_19;
input  reset_pulse_0_RESET_17;
input  reset_pulse_0_RESET_18;
input  reset_pulse_0_RESET_13;
input  reset_pulse_0_RESET_15;
output SDRAM_RAS_c;
input  reset_pulse_0_RESET_6;
output SDRAM_CKE_c;
input  reset_pulse_0_RESET_5;
output SDRAM_CAS_c;
output SDRAM_WE_c;
input  reset_pulse_0_RESET_3;
input  reset_pulse_0_RESET_7;
output SDRAM_DQMU_c_c;
input  reset_pulse_0_RESET_11;
output SDRAM_BA1_c;
output SDRAM_BA0_c;
input  SDRAM_D15_in;
input  SDRAM_D14_in;
input  SDRAM_D13_in;
input  SDRAM_D12_in;
input  SDRAM_D11_in;
input  SDRAM_D10_in;
input  SDRAM_D9_in;
input  SDRAM_D8_in;
input  SDRAM_D7_in;
input  SDRAM_D6_in;
input  SDRAM_D5_in;
input  SDRAM_D4_in;
input  SDRAM_D3_in;
input  SDRAM_D2_in;
input  SDRAM_D1_in;
input  SDRAM_D0_in;
input  reset_pulse_0_RESET_10;
input  reset_pulse_0_RESET_4;

    wire N_2402_0, write_cycle_net_1, write_cycle_0_sqmuxa, N_3, 
        \write_counter[1]_net_1 , N_75, \address_cl_240_iv_i_0_1[0] , 
        N_185, N_267, N_266, address_m8_0_0, 
        \address_25_m_i_o2_1_0[8] , address_N_7_1, address_N_6, 
        address_m8_0_a4_1_0, N_406_1, N_47, 
        \address_cl_240_iv_i_a2_0[0] , N_194, N_2442, N_2403, 
        cke17_1_1, N_2409, N_181, \address_cl_12_RNO_5[0]_net_1 , 
        N_178, d_m2_e_0, address_N_9_0, address_cl_239_0_a2_7_out, 
        N_2402, N_2410, cke29, cke35, I_7_3, I_9_3, N_2405, 
        \write_counter[2]_net_1 , N_2425, N_2414, cke5_1, N_2401, 
        \write_counter[0]_net_1 , cke5, \write_counter[3]_net_1 , 
        N_2391, N_2445, N_2, \DWACT_ADD_CI_0_g_array_1[0] , 
        \DWACT_ADD_CI_0_TMP[0] , N_32, \DWACT_ADD_CI_0_g_array_1_0[0] , 
        \DWACT_ADD_CI_0_TMP_0[0] , \read_counter[1]_net_1 , N_23, N_21, 
        \DWACT_FINC_E[0] , N_16, \DWACT_FINC_E[4] , N_13, 
        \DWACT_FINC_E[7] , \DWACT_FINC_E[6] , N_3_0, 
        \init_counter[1]_net_1 , \init_counter[0]_net_1 , 
        \address_12_0_a3_1_0[11]_net_1 , N_109, N_2412_i, 
        read_cycle_1_sqmuxa_i, read_cycle_1_sqmuxa_0, N_54, 
        read_cycle_net_1, read_exit_net_1, N_77, \address_25_m_i_0[2] , 
        N_345, \address_25_m_i_a2_0[2] , N_287, \address_25_m_i_0[3] , 
        N_347, \address_25_m_i_a2_0[3] , N_284, \address_25_m_i_0[6] , 
        N_353, \address_25_m_i_a2_0[6] , N_278, \address_25_m_i_0[8] , 
        N_357, \address_25_m_i_a2_0[8] , N_272, \address_25_m_i_0[1] , 
        N_343, \address_25_m_i_a2_0[1] , N_290, \address_25_m_i_0[4] , 
        N_349, \address_25_m_i_a2_0[4] , N_281, \address_25_m_i_0[0] , 
        N_341, \address_25_m_i_a2_0[0] , N_293, \address_25_m_i_0[7] , 
        N_355, \address_25_m_i_a2_0[7] , N_275, N_409, 
        \init_counter_9[2] , \address_cl_239_0_a2_0_0[0] , N_162, 
        write_cycle_RNIOMU9P_net_1, \read_counter_16_i_0[1] , 
        \read_counter_8[1] , N_150, N_220, \address_cl_234_0_a2_0[0] , 
        un1_cke_1_sqmuxa_0_2, N_305, un1_cke_1_sqmuxa_0_0, N_308, 
        N_2386, N_309, \address_25_i_m_i_0_0[9] , N_374, 
        \address_cl_230_i_a2_0[0] , N_2411, N_2400_1, 
        \address_cl_228_i_a2_0[0] , \address_cl_229_i_a2_0[0] , 
        \read_counter_16_i_a2_0_0[1] , \read_counter_4[2] , 
        un1_dqml_1_sqmuxa_1_0_0, N_73, \address_25_i_m_i_0_1[5] , 
        N_165, \address_25_i_m_i_0_0[5] , N_435, 
        \address_37_0_f0_i_0[10] , \address_37_0_f0_i_a2_0[10] , 
        ba0_1_sqmuxa, un1_busy_0_sqmuxa_2_0_0, 
        un1_busy_0_sqmuxa_2_0_a3_0_0, N_399, N_2387, 
        un1_cas_1_sqmuxa_1_i_0, N_428, \init_counter_9[1] , N_186, 
        \address_25_m_0_o2_0[12] , N_373, \address_25_i_m_i_a2_1_0[9] , 
        busy_2_sqmuxa_1_i_2, N_416, busy_2_sqmuxa_1_i_1, 
        busy_2_sqmuxa_1_i_0, N_321, un1_dqml_1_sqmuxa_1_0_a3_1, 
        un1_dqml_1_sqmuxa_1_0_a3_0, dqml_2_sqmuxa_1_0, 
        un1_busy_0_sqmuxa_2_0_a3_1, cke41, \address_25_i_m_i_a2_0[9] , 
        N_108, \address_12_0_1[11] , \address_37_0_f0_i_a2_0_1[10] , 
        \address_37_0_f0_i_a2_0_0[10] , N_172, 
        \address_25_i_m_i_a2_0[5] , un1_cke_1_sqmuxa_0_a2_0_0, 
        un1_TIMESTAMP_1lto23_0_o2_18_net_1, 
        un1_TIMESTAMP_1lto23_0_o2_19_net_1, N_216, N_238, N_239, N_244, 
        N_240, N_241, N_243, N_242, N_237, \address_25_m_0_o2_0_2[12] , 
        \address_25_m_0_o2_0_1[12] , \address_25_m_0_o2_0_0[12] , 
        un1_ras_2_sqmuxa_1_i_o2_0_1, N_174, N_368, 
        \address_25_m_i_o2_0_1[0] , \address_25_m_i_o2_1_a0_2[0] , 
        \address_25_m_i_o2_1_a3_0[0] , \address_25_m_i_o2_0_0[0] , 
        dout_0_sqmuxa, N_164, \address_25_m_i_o2_1_1[0] , 
        un1_we_2_sqmuxa_i_0, N_235, N_314, un1_cas_1_sqmuxa_1_i_a2_2_1, 
        cke23, ras_2_sqmuxa_3_i_a2_1_0, N_413, N_2394, 
        un1_we_2_sqmuxa_i_a2_1, un1_we_2_sqmuxa_i_a2_0, N_183, N_364_1, 
        \address_25_m_0_a2_2_0[12] , N_151, \read_counter[3]_net_1 , 
        \address_25_m_i_o2_1_1_1[0] , 
        \address_25_m_i_o2_1_1_tz_tz_tz_tz[0] , 
        \address_25_m_i_o2_1_a0_0[0] , \DWACT_ADD_CI_0_partial_sum[0] , 
        N_227, address_m1_e_0_0, ts_delay_1_sqmuxa_i_0, N_188, I_9_5, 
        \DWACT_ADD_CI_0_partial_sum_0[0] , un1_m5_0_a2_2, 
        un1_m5_0_a2_1, N_190, \address_cl_239_0_a2_1_a1_0[0] , N_153, 
        N_380, N_379, cke41_0, N_115, \address_25_i_m_i_o2_4_2[5] , 
        \address_25_i_m_i_o2_4_1[5] , N_171, N_2424, 
        \read_counter_6_0_a2_0[0] , \read_counter_4[1] , 
        un1_SDRAM_CS_4_d0lt3_i_a3_1_net_1, 
        \write_counter_12_i_o2_0[2] , N_17, 
        \write_counter_14_i_o2_1_0[0] , N_2452, N_90, 
        \write_counter_8_i_3_1[0] , N_2428, ras_2_sqmuxa_3_i_o2_0_0, 
        N_184, N_411, address_1_sqmuxa_5_1_i_a3_0, cke35_0_a3_0_0, 
        \write_counter_8_i_0_0[1] , N_2417, \address_cl_81_0_o2_0[0] , 
        \init_counter_7_i_a2_0[1] , N_166, dout_0_sqmuxa_0_a3_0, 
        \address_12_0_0[11] , cke133_0_o2_22, cke133_0_o2_17, 
        cke133_0_o2_16, cke133_0_o2_19, cke133_0_o2_5, cke133_0_o2_4, 
        cke133_0_o2_15, cke133_0_o2_18, cke133_0_o2_1, cke133_0_o2_0, 
        cke133_0_o2_13, un1_TIMESTAMP_4, un1_TIMESTAMP_5, 
        cke133_0_o2_11, un1_TIMESTAMP_8, un1_TIMESTAMP_17, 
        cke133_0_o2_9, un1_TIMESTAMP_16, un1_TIMESTAMP_10, 
        cke133_0_o2_7, un1_TIMESTAMP_20, un1_TIMESTAMP_14, 
        cke133_0_o2_3, \ts_delay[1]_net_1 , un1_TIMESTAMP_0, 
        \ts_delay[7]_net_1 , un1_TIMESTAMP_6, \ts_delay[9]_net_1 , 
        un1_TIMESTAMP_2, \ts_delay[11]_net_1 , un1_TIMESTAMP_19, 
        \ts_delay[12]_net_1 , un1_TIMESTAMP_18, \ts_delay[13]_net_1 , 
        un1_TIMESTAMP_21, \ts_delay[15]_net_1 , un1_TIMESTAMP_23, 
        \ts_delay[3]_net_1 , un1_TIMESTAMP_22, 
        \init_counter_5_i_a2_0[2] , \init_counter[3]_net_1 , 
        pwr_up_hold_0_i_a2_0, cke56_0_a2_1, \read_counter[2]_net_1 , 
        cke56_0_a2_0, \read_counter[0]_net_1 , 
        un1_TIMESTAMP_1lto23_0_o2_13_net_1, 
        un1_TIMESTAMP_1lto23_0_o2_12_net_1, 
        un1_TIMESTAMP_1lto23_0_o2_16_net_1, 
        un1_TIMESTAMP_1lto23_0_o2_7_net_1, 
        un1_TIMESTAMP_1lto23_0_o2_6_net_1, 
        un1_TIMESTAMP_1lto23_0_o2_15_net_1, 
        un1_TIMESTAMP_1lto23_0_o2_1_net_1, 
        un1_TIMESTAMP_1lto23_0_o2_0_net_1, 
        un1_TIMESTAMP_1lto23_0_o2_10_net_1, 
        un1_TIMESTAMP_1lto23_0_o2_9_net_1, 
        un1_TIMESTAMP_1lto23_0_o2_5_net_1, 
        un1_TIMESTAMP_1lto23_0_o2_3_net_1, address_N_3_mux_0, 
        \read_counter_RNIOCMV9[3]_net_1 , un1_N_11_mux, N_149, N_377, 
        N_376, N_55, N_277, N_177, N_187, \init_counter[2]_net_1 , 
        N_2371, N_175, N_170, N_252, N_202, N_424, N_24, N_236, 
        \init_counter_7[0] , N_224_i, N_76, N_304, N_79, N_144, N_143, 
        N_336, N_367, N_369, N_370, N_335, N_83, N_139, N_315, N_81, 
        N_417, N_392, N_65, N_292, N_53, N_274, N_378, N_2374, N_58, 
        N_66, N_72, N_300, N_61, N_286, un1_busy_0_sqmuxa_2, N_264, 
        address_N_5_mux_0, N_375, N_429, N_41, N_2321, cke56, N_45, 
        N_386, N_159, N_39, N_2396, N_2427, N_59, N_283, N_138, N_2418, 
        N_2435, N_2398, N_2419, N_111, un1_dqml_1_sqmuxa_1, N_91, 
        dqml_2_sqmuxa_1, N_34, N_430, N_85, N_316, N_2426, N_60, N_49, 
        N_306, N_366, un1_cke_1_sqmuxa, N_307, N_2453, N_51, N_271, 
        N_57, N_280, N_63, N_289, N_208, N_89, N_415, 
        \read_counter_RNI93S4S[3]_net_1 , address_N_10, d_N_3_mux_1, 
        address_N_8_mux, address_N_7_mux, address_cl_239_0_a2_5_out, 
        \read_counter_RNI1GA6O[2]_net_1 , 
        \address_cl_239_0_a2_1_a2_0[0] , N_394, 
        \address_cl_239_0_a2_1_2[0] , d_N_3_mux_0, N_141, r_N_4_mux, 
        N_163, d_N_7_mux, address_N_9, 
        \read_counter_RNI6DR31[3]_net_1 , N_140, address_N_5_mux, 
        N_431, N_338, d_N_3_mux, un1_cke45_i_a3_0, N_2408, ba1_10, 
        ba0_10, \dout_6[15] , \ts_delay[0]_net_1 , \ts_delay[2]_net_1 , 
        \ts_delay[4]_net_1 , \ts_delay[5]_net_1 , \ts_delay[6]_net_1 , 
        \ts_delay[8]_net_1 , \ts_delay[10]_net_1 , 
        \ts_delay[14]_net_1 , \ts_delay[16]_net_1 , 
        \ts_delay[17]_net_1 , \ts_delay[18]_net_1 , 
        \ts_delay[19]_net_1 , \ts_delay[20]_net_1 , 
        \ts_delay[21]_net_1 , \ts_delay[22]_net_1 , 
        \ts_delay[23]_net_1 , N_433, N_207, N_297, N_43, 
        pwr_up_hold_net_1, \address_37[11] , \address_cl_238[0] , 
        \address_cl_235[0] , \address_cl_233[0] , \address_cl_232[0] , 
        \address_cl_231[0] , N_112, N_146, N_445, N_114, N_116, 
        write_exit_net_1, write_exit_5, N_383, N_215, N_160, I_7_5, 
        N_173, pwr_stabalize_RNO_net_1, pwr_stabalize_net_1, N_189, 
        N_414, N_2407, \address_cl_234[0] , \address_cl_236[0] , 
        \address_cl_237[0] , \address_cl_239[0] , \dread[0]_net_1 , 
        \dread_cl[0] , \dread[3]_net_1 , \dread[5]_net_1 , 
        \dread[9]_net_1 , \dread[15]_net_1 , \dread[14]_net_1 , 
        \dread[13]_net_1 , \dread[12]_net_1 , \dread[11]_net_1 , 
        \dread[8]_net_1 , \dread[7]_net_1 , \dread[6]_net_1 , 
        \dread[4]_net_1 , \dread[1]_net_1 , \dread[2]_net_1 , 
        \dread[10]_net_1 , \write_counter_12[1] , N_389, N_168, 
        \write_counter_6[3] , N_2397, N_2432, \dout_6[0] , \dout_6[1] , 
        \dout_6[2] , \dout_6[3] , \dout_6[6] , \dout_6[7] , 
        \dout_6[8] , \dout_6[9] , \dout_6[10] , \dout_6[11] , 
        \dout_6[12] , \dout_6[13] , N_27, weVAL_3, N_2393_2, N_339, 
        \read_counter_10[3] , \read_counter_6[0] , 
        \DWACT_ADD_CI_0_partial_sum_1[0] , N_320, N_15, N_29, N_154, 
        N_74, N_169, N_2369, N_2372, N_232, read_exit_5, \dout_6[14] , 
        \dout_6[5] , \dout_6[4] , N_360, N_391, N_395, N_396, N_26, 
        \init_counter_5[3] , N_233, \init_counter_11[0] , N_180, I_5_4, 
        N_200, \address_37[12] , N_295, cke133, N_2368, 
        \DWACT_ADD_CI_0_partial_sum_2[0] , I_4_1, I_5_3, I_7_4, I_9_4, 
        I_12_4, I_14_4, I_17_3, I_20_3, I_23_3, I_26_3, I_28_2, I_32_2, 
        I_35_2, I_37_2, I_40_2, I_43_2, I_46_2, I_49_0, I_53_0, I_56_0, 
        I_59_0, I_62_0, I_65_0, I_70_0, \init_counter_13[1] , N_2_0, 
        N_2_1, \DWACT_FINC_E[29] , \DWACT_FINC_E[13] , 
        \DWACT_FINC_E[33] , \DWACT_FINC_E[34] , \DWACT_FINC_E[2] , 
        \DWACT_FINC_E[5] , \DWACT_FINC_E[15] , N_3_1, 
        \DWACT_FINC_E[28] , \DWACT_FINC_E[16] , N_4, N_5, 
        \DWACT_FINC_E[14] , N_6, \DWACT_FINC_E[9] , \DWACT_FINC_E[12] , 
        N_7, \DWACT_FINC_E[10] , N_8, \DWACT_FINC_E[11] , N_9, N_10, 
        N_11, \DWACT_FINC_E[8] , N_12, N_14, N_15_0, \DWACT_FINC_E[3] , 
        N_17_0, N_18, N_19, \DWACT_FINC_E[1] , N_20, N_22, 
        \DWACT_ADD_CI_0_TMP_1[0] , \DWACT_ADD_CI_0_TMP_2[0] , GND, VCC;
    
    XOR2 un3_ts_delay_I_59 (.A(N_5), .B(timestamp_0_TIMESTAMP[20]), .Y(
        I_59_0));
    NOR3A \init_counter_RNI3KO81[1]  (.A(\init_counter[3]_net_1 ), .B(
        \init_counter[2]_net_1 ), .C(\init_counter[1]_net_1 ), .Y(
        N_411));
    NOR2A \dout_RNO[3]  (.A(memory_controller_0_DATA_OUT[3]), .B(
        N_2387), .Y(\dout_6[3] ));
    NOR2B un3_ts_delay_I_25 (.A(timestamp_0_TIMESTAMP[8]), .B(
        \DWACT_FINC_E[4] ), .Y(N_16));
    XOR2 \ts_delay_RNIUEOS[17]  (.A(\ts_delay[17]_net_1 ), .B(
        timestamp_0_TIMESTAMP[17]), .Y(un1_TIMESTAMP_17));
    XOR2 un3_ts_delay_I_23 (.A(N_17_0), .B(timestamp_0_TIMESTAMP[8]), 
        .Y(I_23_3));
    NOR2B \dread_RNIUOHJ[8]  (.A(\dread[8]_net_1 ), .B(\dread_cl[0] ), 
        .Y(sdram_interface_0_DATA_READ[8]));
    DFN0E1C0 \dout[15]  (.D(\dout_6[15] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_7), .E(
        N_27), .Q(dout[15]));
    OR2A \init_counter_RNI3P5R[2]  (.A(\init_counter[2]_net_1 ), .B(
        \init_counter[3]_net_1 ), .Y(N_184));
    AO1A dqml_RNO (.A(N_91), .B(un1_dqml_1_sqmuxa_1_0_a3_1), .C(
        un1_dqml_1_sqmuxa_1_0_0), .Y(un1_dqml_1_sqmuxa_1));
    NOR2B \address_RNO_2[9]  (.A(\address_25_i_m_i_a2_1_0[9] ), .B(
        N_429), .Y(N_375));
    NOR2B \read_counter_RNISNR01[2]  (.A(\read_counter[2]_net_1 ), .B(
        \read_counter_4[2] ), .Y(N_406_1));
    DFN0E0C0 \init_counter[2]  (.D(\init_counter_9[2] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_7), .E(
        N_153), .Q(\init_counter[2]_net_1 ));
    NOR2B \address_RNO_5[9]  (.A(memory_controller_0_ROW_OUT[9]), .B(
        N_2400_1), .Y(\address_25_i_m_i_a2_1_0[9] ));
    NOR2A \read_counter_RNI6DR31[3]  (.A(\read_counter[3]_net_1 ), .B(
        N_406_1), .Y(\read_counter_RNI6DR31[3]_net_1 ));
    AND3 un3_ts_delay_I_64 (.A(\DWACT_FINC_E[28] ), .B(
        \DWACT_FINC_E[13] ), .C(\DWACT_FINC_E[16] ), .Y(N_3_1));
    NOR3 \write_counter_RNO[0]  (.A(N_2435), .B(N_2419), .C(N_111), .Y(
        N_2398));
    AND2 init_counter_9_I_1 (.A(\init_counter_7[0] ), .B(cke133), .Y(
        \DWACT_ADD_CI_0_TMP[0] ));
    AND3 un3_ts_delay_I_36 (.A(\DWACT_FINC_E[6] ), .B(
        \DWACT_FINC_E[7] ), .C(timestamp_0_TIMESTAMP[12]), .Y(N_12));
    NOR3 \address_RNO[8]  (.A(N_271), .B(\address_25_m_i_0[8] ), .C(
        N_177), .Y(N_51));
    NOR2A \write_counter_RNIU0R51_0[3]  (.A(\write_counter[3]_net_1 ), 
        .B(N_2391), .Y(N_2401));
    AND3 un3_ts_delay_I_67 (.A(timestamp_0_TIMESTAMP[0]), .B(
        timestamp_0_TIMESTAMP[1]), .C(timestamp_0_TIMESTAMP[2]), .Y(
        \DWACT_FINC_E[34] ));
    NOR2B \dread_RNIBNDF[14]  (.A(\dread[14]_net_1 ), .B(\dread_cl[0] )
        , .Y(sdram_interface_0_DATA_READ[14]));
    DFN0P0 \address_cl_3[0]  (.D(\address_cl_231[0] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .PRE(reset_pulse_0_RESET_18), .Q(
        address_cl_3[0]));
    AOI1 \address_cl_2_RNO_0[0]  (.A(address_cl_2[0]), .B(N_2411), .C(
        N_2400_1), .Y(\address_cl_230_i_a2_0[0] ));
    OR2A \init_counter_7_i_o2[1]  (.A(I_7_5), .B(I_9_5), .Y(N_202));
    AO1A \read_counter_RNIF8MA2[3]  (.A(\read_counter_4[2] ), .B(
        \read_counter_6_0_a2_0[0] ), .C(
        \DWACT_ADD_CI_0_partial_sum_1[0] ), .Y(\read_counter_6[0] ));
    NOR2B \write_counter_RNIJHGIK[1]  (.A(N_413), .B(N_2414), .Y(N_424)
        );
    AND3 un3_ts_delay_I_58 (.A(\DWACT_FINC_E[28] ), .B(
        \DWACT_FINC_E[13] ), .C(\DWACT_FINC_E[14] ), .Y(N_5));
    NOR2A \init_counter_RNIHSLCP[3]  (.A(N_208), .B(N_153), .Y(N_315));
    AND3 un3_ts_delay_I_24 (.A(\DWACT_FINC_E[0] ), .B(
        \DWACT_FINC_E[2] ), .C(\DWACT_FINC_E[3] ), .Y(
        \DWACT_FINC_E[4] ));
    DFN0E1C0 ba1 (.D(ba1_10), .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(
        reset_pulse_0_RESET_5), .E(N_89), .Q(SDRAM_BA1_c));
    AO1 write_exit_RNO (.A(cke5), .B(N_2402), .C(N_115), .Y(
        write_exit_5));
    AND2 un3_ts_delay_I_15 (.A(timestamp_0_TIMESTAMP[3]), .B(
        timestamp_0_TIMESTAMP[4]), .Y(\DWACT_FINC_E[1] ));
    XOR2 init_counter_9_I_14 (.A(N_26), .B(
        \DWACT_ADD_CI_0_g_array_1[0] ), .Y(\init_counter_9[2] ));
    NOR3C \read_counter_RNIT9F1C[2]  (.A(
        \DWACT_ADD_CI_0_partial_sum[0] ), .B(
        \address_25_m_i_o2_1_1_1[0] ), .C(\read_counter_8[1] ), .Y(
        \address_25_m_i_o2_1_1[0] ));
    OR2B \read_counter_RNI2FUB[3]  (.A(N_169), .B(
        \read_counter[3]_net_1 ), .Y(N_150));
    AND3 un3_ts_delay_I_27 (.A(\DWACT_FINC_E[4] ), .B(
        timestamp_0_TIMESTAMP[8]), .C(timestamp_0_TIMESTAMP[9]), .Y(
        N_15_0));
    AND3 un3_ts_delay_I_30 (.A(\DWACT_FINC_E[0] ), .B(
        \DWACT_FINC_E[2] ), .C(\DWACT_FINC_E[5] ), .Y(
        \DWACT_FINC_E[6] ));
    DFN0E0C0 \dread[4]  (.D(SDRAM_D4_in), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_11), .E(
        N_2372), .Q(\dread[4]_net_1 ));
    NOR3A busy_RNI0BKI (.A(memory_controller_0_CMD_OUT[1]), .B(
        sdram_interface_0_STATUS), .C(memory_controller_0_CMD_OUT[0]), 
        .Y(write_cycle_0_sqmuxa));
    AND3 un3_ts_delay_I_13 (.A(\DWACT_FINC_E[0] ), .B(
        timestamp_0_TIMESTAMP[3]), .C(timestamp_0_TIMESTAMP[4]), .Y(
        N_20));
    AO1 write_cycle_RNI578862 (.A(ras_2_sqmuxa_3_i_a2_1_0), .B(N_417), 
        .C(N_360), .Y(N_139));
    OR2A \address_12_0_a3_1_RNIUQE22[11]  (.A(N_2402), .B(
        \address_12_0_0[11] ), .Y(\address_12_0_1[11] ));
    NOR2B init_counter_9_I_15 (.A(\DWACT_ADD_CI_0_TMP[0] ), .B(N_32), 
        .Y(\DWACT_ADD_CI_0_g_array_1[0] ));
    DFN0C0 \address[9]  (.D(N_45), .CLK(reset_pulse_0_CLK_OUT_48MHZ), 
        .CLR(reset_pulse_0_RESET_18), .Q(address[9]));
    NOR3 \address_RNO_4[7]  (.A(N_164), .B(N_207), .C(
        memory_controller_0_COL_OUT[7]), .Y(N_275));
    DFN0E0C0 \dread[11]  (.D(SDRAM_D11_in), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_7), .E(
        N_2372), .Q(\dread[11]_net_1 ));
    XA1A \write_counter_RNIU0R51[0]  (.A(\write_counter[3]_net_1 ), .B(
        \write_counter[0]_net_1 ), .C(cke5_1), .Y(N_2453));
    OR3 \ts_delay_RNIG45J6[3]  (.A(cke133_0_o2_1), .B(cke133_0_o2_0), 
        .C(cke133_0_o2_13), .Y(cke133_0_o2_18));
    XOR2 un3_ts_delay_I_14 (.A(N_20), .B(timestamp_0_TIMESTAMP[5]), .Y(
        I_14_4));
    OR2A \init_counter_RNI0HO81[2]  (.A(\init_counter[2]_net_1 ), .B(
        N_166), .Y(N_188));
    OR3B \write_counter_RNIARHN3[3]  (.A(N_2410), .B(N_2402), .C(
        \address_cl_81_0_o2_0[0] ), .Y(N_2411));
    XOR2 un3_ts_delay_I_17 (.A(N_19), .B(timestamp_0_TIMESTAMP[6]), .Y(
        I_17_3));
    OR2 un1_TIMESTAMP_1lto23_0_o2_7 (.A(timestamp_0_TIMESTAMP[7]), .B(
        timestamp_0_TIMESTAMP[6]), .Y(
        un1_TIMESTAMP_1lto23_0_o2_7_net_1));
    NOR2B \dread_RNI8KDF[11]  (.A(\dread[11]_net_1 ), .B(\dread_cl[0] )
        , .Y(sdram_interface_0_DATA_READ[11]));
    NOR2 \write_counter_RNIFGTI_1[1]  (.A(\write_counter[1]_net_1 ), 
        .B(\write_counter[2]_net_1 ), .Y(cke5_1));
    AO1 \address_cl_7_RNO[0]  (.A(address_cl_7[0]), .B(N_394), .C(
        N_163), .Y(\address_cl_233[0] ));
    AO1B \address_RNO_5[8]  (.A(N_172), .B(N_2402), .C(address[8]), .Y(
        N_244));
    DFN0P0 \address_cl_9[0]  (.D(\address_cl_239[0] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .PRE(reset_pulse_0_RESET_13), .Q(
        address_cl_9[0]));
    NOR2A \read_counter_RNIJ3ST[3]  (.A(\read_counter_4[1] ), .B(N_150)
        , .Y(\read_counter_6_0_a2_0[0] ));
    NOR2 write_exit_RNI6NT72 (.A(N_115), .B(cke5), .Y(cke41_0));
    NOR2 \write_counter_RNI2I4G6_0[0]  (.A(N_2409), .B(N_2410), .Y(
        N_138));
    AO1D \read_counter_RNO_1[1]  (.A(\read_counter_8[1] ), .B(N_150), 
        .C(N_220), .Y(\read_counter_16_i_0[1] ));
    OA1A dqml_RNO_1 (.A(N_2402), .B(N_2414), .C(N_2386), .Y(
        dqml_2_sqmuxa_1_0));
    NOR2A \write_counter_RNIGHTI[3]  (.A(\write_counter[1]_net_1 ), .B(
        \write_counter[3]_net_1 ), .Y(cke17_1_1));
    XOR2 read_counter_4_I_9 (.A(\read_counter[0]_net_1 ), .B(cke56), 
        .Y(\DWACT_ADD_CI_0_partial_sum_1[0] ));
    XOR2 un2_init_counter_1_I_7 (.A(N_3_0), .B(\init_counter[2]_net_1 )
        , .Y(I_7_5));
    OR3 \ts_delay_RNIIAJP1[7]  (.A(un1_TIMESTAMP_8), .B(
        un1_TIMESTAMP_17), .C(cke133_0_o2_9), .Y(cke133_0_o2_16));
    DFN0E1C0 \dout[1]  (.D(\dout_6[1] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_3), .E(
        N_27), .Q(dout[1]));
    NOR2 busy_RNIKTQF (.A(sdram_interface_0_STATUS), .B(
        memory_controller_0_CMD_OUT[1]), .Y(read_cycle_1_sqmuxa_0));
    DFN0E0C0 \ts_delay[11]  (.D(I_32_2), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_10), .E(
        N_2371), .Q(\ts_delay[11]_net_1 ));
    NOR2A \address_RNO_3[10]  (.A(N_185), .B(
        memory_controller_0_ROW_OUT[10]), .Y(
        \address_37_0_f0_i_a2_0[10] ));
    MX2A \write_counter_RNIMAHAC1[1]  (.A(\read_counter_8[1] ), .B(
        d_N_3_mux_1), .S(\read_counter_RNI93S4S[3]_net_1 ), .Y(N_435));
    OA1C \write_counter_RNIAHJU2[2]  (.A(N_2408), .B(cke5), .C(
        \write_counter[2]_net_1 ), .Y(N_2427));
    XOR2 un3_ts_delay_I_32 (.A(N_14), .B(timestamp_0_TIMESTAMP[11]), 
        .Y(I_32_2));
    DFN0E0C0 \ts_delay[21]  (.D(I_62_0), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_11), .E(
        N_2371), .Q(\ts_delay[21]_net_1 ));
    NOR2A \read_counter_RNITOR01[3]  (.A(\read_counter_4[2] ), .B(
        \read_counter[3]_net_1 ), .Y(address_m1_e_0_0));
    NOR2B \address_RNO_2[3]  (.A(memory_controller_0_COL_OUT[3]), .B(
        N_165), .Y(N_347));
    NOR2 \address_RNO_0[4]  (.A(memory_controller_0_ROW_OUT[4]), .B(
        N_433), .Y(N_280));
    XO1 \ts_delay_RNIUC6J[1]  (.A(timestamp_0_TIMESTAMP[1]), .B(
        \ts_delay[1]_net_1 ), .C(un1_TIMESTAMP_0), .Y(cke133_0_o2_11));
    NOR3C \read_counter_RNI2MK23[2]  (.A(dout_0_sqmuxa), .B(
        \address_25_m_i_o2_1_1_tz_tz_tz_tz[0] ), .C(
        \read_counter_4[2] ), .Y(\address_25_m_i_o2_1_1_1[0] ));
    NOR2A \dout_RNO[9]  (.A(memory_controller_0_DATA_OUT[9]), .B(
        N_2387), .Y(\dout_6[9] ));
    AO1 \address_cl_12_RNO_1[0]  (.A(address_cl_12[0]), .B(N_140), .C(
        N_141), .Y(N_194));
    AOI1B \address_RNO_3[1]  (.A(memory_controller_0_ROW_OUT[1]), .B(
        N_435), .C(N_238), .Y(\address_25_m_i_a2_0[1] ));
    AX1B \init_counter_RNO[0]  (.A(N_236), .B(N_160), .C(
        \DWACT_ADD_CI_0_partial_sum_2[0] ), .Y(N_2368));
    NOR2A \dout_RNO[13]  (.A(memory_controller_0_DATA_OUT[13]), .B(
        N_2387), .Y(\dout_6[13] ));
    AOI1B \address_RNO_3[8]  (.A(memory_controller_0_ROW_OUT[8]), .B(
        N_435), .C(N_244), .Y(\address_25_m_i_a2_0[8] ));
    OR2 \address_cl_240_iv_i_o2_0[0]  (.A(N_391), .B(I_9_5), .Y(N_180));
    DFN0P0 \address_cl_6[0]  (.D(\address_cl_236[0] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .PRE(reset_pulse_0_RESET_19), .Q(
        address_cl_6[0]));
    DFN0E0C0 dqml (.D(un1_dqml_1_sqmuxa_1), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_11), .E(
        dqml_2_sqmuxa_1), .Q(SDRAM_DQMU_c_c));
    DFN0C0 write_cycle (.D(N_2393_2), .CLK(reset_pulse_0_CLK_OUT_48MHZ)
        , .CLR(reset_pulse_0_RESET_16), .Q(write_cycle_net_1));
    NOR3C ras_RNO_2 (.A(\read_counter_4[2] ), .B(N_151), .C(
        address_N_3_mux_0), .Y(N_336));
    AOI1B \address_RNO_3[7]  (.A(memory_controller_0_ROW_OUT[7]), .B(
        N_435), .C(N_243), .Y(\address_25_m_i_a2_0[7] ));
    AO1A \address_RNO_1[6]  (.A(N_353), .B(\address_25_m_i_a2_0[6] ), 
        .C(N_278), .Y(\address_25_m_i_0[6] ));
    OR2A \read_counter_RNIERHJC3[3]  (.A(N_162), .B(
        \address_25_m_0_o2_0_1[12] ), .Y(\address_25_m_0_o2_0_2[12] ));
    DFN0E0C0 \dread[7]  (.D(SDRAM_D7_in), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_11), .E(
        N_2372), .Q(\dread[7]_net_1 ));
    OR2A \write_counter_RNI86GCH3[1]  (.A(N_162), .B(N_373), .Y(
        \address_25_m_0_o2_0[12] ));
    OR2 un1_SDRAM_CS_2lt3_0_o2 (.A(\DWACT_ADD_CI_0_partial_sum_0[0] ), 
        .B(\init_counter_9[1] ), .Y(N_160));
    DFN0E1C0 \dout[8]  (.D(\dout_6[8] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_4), .E(
        N_27), .Q(dout[8]));
    OR3 \ts_delay_RNIJ84EG[3]  (.A(cke133_0_o2_19), .B(cke133_0_o2_18), 
        .C(cke133_0_o2_22), .Y(N_170));
    AND3 un3_ts_delay_I_41 (.A(timestamp_0_TIMESTAMP[12]), .B(
        timestamp_0_TIMESTAMP[13]), .C(timestamp_0_TIMESTAMP[14]), .Y(
        \DWACT_FINC_E[9] ));
    XOR2 \ts_delay_RNIK6QS[21]  (.A(\ts_delay[21]_net_1 ), .B(
        timestamp_0_TIMESTAMP[21]), .Y(un1_TIMESTAMP_21));
    NOR2A read_cycle_RNIPGD86 (.A(\DWACT_ADD_CI_0_partial_sum[0] ), .B(
        N_227), .Y(\address_25_m_i_o2_1_a3_0[0] ));
    AO1A \init_counter_RNO[3]  (.A(N_188), .B(I_9_5), .C(
        \init_counter[3]_net_1 ), .Y(\init_counter_5[3] ));
    XOR2 un3_ts_delay_I_5 (.A(timestamp_0_TIMESTAMP[0]), .B(
        timestamp_0_TIMESTAMP[1]), .Y(I_5_3));
    NOR2B \read_counter_RNINBMV9[2]  (.A(N_414), .B(
        \read_counter[2]_net_1 ), .Y(N_339));
    DFN0E0C0 \init_counter[3]  (.D(\init_counter_5[3] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_7), .E(
        N_153), .Q(\init_counter[3]_net_1 ));
    NOR2 \address_RNO_0[0]  (.A(memory_controller_0_ROW_OUT[0]), .B(
        N_433), .Y(N_292));
    OR2 busy_RNO_4 (.A(N_416), .B(busy_2_sqmuxa_1_i_1), .Y(
        busy_2_sqmuxa_1_i_2));
    XOR2 init_counter_9_I_12 (.A(N_32), .B(\DWACT_ADD_CI_0_TMP[0] ), 
        .Y(\init_counter_9[1] ));
    NOR2 \write_counter_RNI79CS[2]  (.A(N_2417), .B(
        \write_counter[2]_net_1 ), .Y(N_2419));
    NOR2B \address_RNO_2[6]  (.A(memory_controller_0_COL_OUT[6]), .B(
        N_165), .Y(N_353));
    OR2 \write_counter_RNIETL66[2]  (.A(\write_counter_8_i_3_1[0] ), 
        .B(N_2427), .Y(N_2396));
    AO1 \address_cl_12_RNO[0]  (.A(\address_cl_240_iv_i_a2_0[0] ), .B(
        N_194), .C(\address_cl_240_iv_i_0_1[0] ), .Y(N_47));
    OA1B \init_counter_RNIC1G0R2[2]  (.A(N_395), .B(N_396), .C(
        \DWACT_ADD_CI_0_partial_sum_0[0] ), .Y(N_428));
    DFN0E0C0 \ts_delay[4]  (.D(I_12_4), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_6), .E(
        N_2371), .Q(\ts_delay[4]_net_1 ));
    NOR2 \init_counter_RNIONB38[3]  (.A(N_188), .B(N_173), .Y(
        ba0_1_sqmuxa));
    XOR2 un3_ts_delay_I_46 (.A(N_9), .B(timestamp_0_TIMESTAMP[16]), .Y(
        I_46_2));
    NOR2 \address_RNO_0[3]  (.A(memory_controller_0_ROW_OUT[3]), .B(
        N_433), .Y(N_283));
    NOR3 \address_RNO_4[0]  (.A(N_164), .B(N_207), .C(
        memory_controller_0_COL_OUT[0]), .Y(N_293));
    NOR2B un2_init_counter_1_I_6 (.A(\init_counter[1]_net_1 ), .B(
        \init_counter[0]_net_1 ), .Y(N_3_0));
    NOR2B \dread_RNISMHJ[6]  (.A(\dread[6]_net_1 ), .B(\dread_cl[0] ), 
        .Y(sdram_interface_0_DATA_READ[6]));
    DFN0E1C0 cas (.D(N_79), .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(
        reset_pulse_0_RESET_5), .E(N_83), .Q(SDRAM_CAS_c));
    AXOI5 un40_read_counter_1_SUM1 (.A(N_189), .B(\read_counter_8[1] ), 
        .C(\DWACT_ADD_CI_0_partial_sum[0] ), .Y(N_2321));
    OR3 \ts_delay_RNICAD61[1]  (.A(un1_TIMESTAMP_4), .B(
        un1_TIMESTAMP_5), .C(cke133_0_o2_11), .Y(cke133_0_o2_17));
    NOR2B \read_counter_RNIDG4HC[3]  (.A(address_N_9), .B(N_227), .Y(
        address_N_10));
    NOR2B ras_RNO_3 (.A(N_424), .B(N_164), .Y(N_367));
    AO1 \address_RNO_1[5]  (.A(memory_controller_0_COL_OUT[5]), .B(
        N_165), .C(\address_25_i_m_i_0_0[5] ), .Y(
        \address_25_i_m_i_0_1[5] ));
    OR2A \read_counter_RNIJ9V5[2]  (.A(\read_counter[3]_net_1 ), .B(
        \read_counter[2]_net_1 ), .Y(
        \address_25_m_i_o2_1_1_tz_tz_tz_tz[0] ));
    OR2 \write_counter_RNI8ACS_0[3]  (.A(N_2407), .B(
        \write_counter[3]_net_1 ), .Y(N_60));
    XOR2 un3_ts_delay_I_40 (.A(N_11), .B(timestamp_0_TIMESTAMP[14]), 
        .Y(I_40_2));
    OA1A cke_RNO_4 (.A(N_200), .B(N_208), .C(pwr_up_hold_net_1), .Y(
        N_316));
    XOR2 un3_ts_delay_I_70 (.A(N_2_1), .B(timestamp_0_TIMESTAMP[23]), 
        .Y(I_70_0));
    NOR2 pwr_up_hold_RNI4UDD6 (.A(N_2386), .B(timestamp_0_TIMESTAMP[1])
        , .Y(N_2387));
    NOR2A \dout_RNO[15]  (.A(memory_controller_0_DATA_OUT[15]), .B(
        N_2387), .Y(\dout_6[15] ));
    NOR2A \read_counter_RNIRCL1C[2]  (.A(N_181), .B(
        \address_cl_239_0_a2_1_a2_0[0] ), .Y(r_N_4_mux));
    NOR2A \write_counter_RNIKN9F1_0[0]  (.A(\write_counter[0]_net_1 ), 
        .B(cke5), .Y(N_75));
    OR2A \write_counter_RNIU0R51_1[0]  (.A(\write_counter[0]_net_1 ), 
        .B(N_60), .Y(N_2410));
    AO1A \address_RNO_1[7]  (.A(N_355), .B(\address_25_m_i_a2_0[7] ), 
        .C(N_275), .Y(\address_25_m_i_0[7] ));
    NOR2B \address_RNO_2[8]  (.A(memory_controller_0_COL_OUT[8]), .B(
        N_165), .Y(N_357));
    OR3B \init_counter_RNIMRQA84[3]  (.A(N_175), .B(N_139), .C(N_315), 
        .Y(N_83));
    NOR2A \dout_RNO[11]  (.A(memory_controller_0_DATA_OUT[11]), .B(
        N_2387), .Y(\dout_6[11] ));
    NOR3B \address_RNO_0[12]  (.A(N_429), .B(
        memory_controller_0_ROW_OUT[12]), .C(\address_25_m_0_o2_0[12] )
        , .Y(N_295));
    OA1A \address_cl_1_RNO[0]  (.A(\address_cl_229_i_a2_0[0] ), .B(
        N_146), .C(N_445), .Y(N_114));
    OR2 \init_counter_RNI0OSL81[3]  (.A(N_173), .B(\init_counter_9[2] )
        , .Y(N_175));
    DFN0E0C0 \ts_delay[10]  (.D(I_28_2), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_10), .E(
        N_2371), .Q(\ts_delay[10]_net_1 ));
    NOR2 \init_counter_RNI3P5R_1[2]  (.A(\init_counter[2]_net_1 ), .B(
        \init_counter[3]_net_1 ), .Y(N_409));
    NOR3 \address_RNO_4[4]  (.A(N_164), .B(N_207), .C(
        memory_controller_0_COL_OUT[4]), .Y(N_281));
    OA1A \address_cl_12_RNI0TUP9[0]  (.A(N_2402_0), .B(
        address_cl_239_0_a2_5_out), .C(address_cl_12[0]), .Y(
        address_N_9_0));
    NOR3 \address_RNO[4]  (.A(N_280), .B(\address_25_m_i_0[4] ), .C(
        N_177), .Y(N_57));
    DFN0E0C0 \ts_delay[20]  (.D(I_59_0), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_11), .E(
        N_2371), .Q(\ts_delay[20]_net_1 ));
    NOR2A \init_counter_RNIM1A9H[2]  (.A(N_409), .B(N_170), .Y(cke133));
    OR3A busy_RNO_0 (.A(N_58), .B(N_66), .C(busy_2_sqmuxa_1_i_2), .Y(
        N_2374));
    MX2C write_cycle_RNIPNJH51 (.A(N_227), .B(
        \address_25_m_i_o2_1_0[8] ), .S(d_m2_e_0), .Y(address_N_7_mux));
    AO1B \address_RNO_5[0]  (.A(N_172), .B(N_2402_0), .C(address[0]), 
        .Y(N_237));
    NOR2A \dout_RNO[14]  (.A(memory_controller_0_DATA_OUT[14]), .B(
        N_2387), .Y(\dout_6[14] ));
    NOR2B \write_counter_RNIK467N1[1]  (.A(N_424), .B(N_417), .Y(N_366)
        );
    DFN0E1C0 \read_counter[2]  (.D(N_39), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_3), .E(
        N_151), .Q(\read_counter[2]_net_1 ));
    NOR3A dqml_RNO_0 (.A(dqml_2_sqmuxa_1_0), .B(N_2400_1), .C(N_91), 
        .Y(dqml_2_sqmuxa_1));
    GND GND_i (.Y(GND));
    OR2A \init_counter_RNIK4NRG[2]  (.A(N_170), .B(
        \init_counter[2]_net_1 ), .Y(N_235));
    OR2A read_cycle_RNI41V12 (.A(N_151), .B(N_189), .Y(N_227));
    NOR2B \init_counter_RNI3P5R_0[2]  (.A(\init_counter[2]_net_1 ), .B(
        \init_counter[3]_net_1 ), .Y(N_379));
    NOR2B pwr_stabalize_RNIJCMO (.A(reset_pulse_0_CLK_OUT_48MHZ), .B(
        pwr_stabalize_net_1), .Y(SDRAM_CLK_c));
    AO1 \address_cl_9_RNO[0]  (.A(address_cl_9[0]), .B(N_394), .C(
        N_163), .Y(\address_cl_239[0] ));
    AO1D \write_counter_RNI19283[1]  (.A(N_2407), .B(N_2408), .C(
        N_2452), .Y(cke23));
    AO1A \address_RNO_1[4]  (.A(N_349), .B(\address_25_m_i_a2_0[4] ), 
        .C(N_281), .Y(\address_25_m_i_0[4] ));
    DFN0E0C0 \dread[3]  (.D(SDRAM_D3_in), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_11), .E(
        N_2372), .Q(\dread[3]_net_1 ));
    OA1 pwr_up_hold_RNO_0 (.A(un1_TIMESTAMP_1lto23_0_o2_18_net_1), .B(
        un1_TIMESTAMP_1lto23_0_o2_19_net_1), .C(
        \init_counter[0]_net_1 ), .Y(pwr_up_hold_0_i_a2_0));
    DFN0E1C0 \dout[5]  (.D(\dout_6[5] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_4), .E(
        N_27), .Q(dout[5]));
    NOR2B read_counter_4_I_15 (.A(\DWACT_ADD_CI_0_TMP_0[0] ), .B(
        \read_counter[1]_net_1 ), .Y(\DWACT_ADD_CI_0_g_array_1_0[0] ));
    AOI5 \read_counter_RNIOPU8[0]  (.A(\read_counter[2]_net_1 ), .B(
        \read_counter[0]_net_1 ), .C(\read_counter[1]_net_1 ), .Y(
        N_159));
    NOR2B \init_counter_RNI28PTC1[3]  (.A(N_180), .B(ba0_1_sqmuxa), .Y(
        N_267));
    OA1C \write_counter_RNO[2]  (.A(N_2418), .B(
        \write_counter[2]_net_1 ), .C(N_2432), .Y(N_2397));
    AOI1B \init_counter_RNI6MDP6[1]  (.A(\init_counter_7_i_a2_0[1] ), 
        .B(N_202), .C(N_233), .Y(N_32));
    DFN0C0 \address[11]  (.D(\address_37[11] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_18), .Q(
        address[11]));
    OR3A \write_counter_RNI4C283[3]  (.A(N_2410), .B(N_2428), .C(N_90), 
        .Y(\write_counter_8_i_3_1[0] ));
    NOR2B \dread_RNIPJHJ[3]  (.A(\dread[3]_net_1 ), .B(\dread_cl[0] ), 
        .Y(sdram_interface_0_DATA_READ[3]));
    NOR3A \write_counter_RNO_0[0]  (.A(N_2409), .B(N_2410), .C(cke41), 
        .Y(N_2435));
    NOR3C \read_counter_RNILIQ91[3]  (.A(N_159), .B(
        \read_counter[3]_net_1 ), .C(\read_counter_4[2] ), .Y(N_386));
    NOR3A cke_RNO_10 (.A(N_411), .B(N_153), .C(\init_counter[0]_net_1 )
        , .Y(N_309));
    NOR2B \address_cl_12_RNO_0[0]  (.A(N_409), .B(\init_counter_9[2] ), 
        .Y(\address_cl_240_iv_i_a2_0[0] ));
    OR2 un1_TIMESTAMP_1lto23_0_o2_5 (.A(timestamp_0_TIMESTAMP[19]), .B(
        timestamp_0_TIMESTAMP[18]), .Y(
        un1_TIMESTAMP_1lto23_0_o2_5_net_1));
    AND3 un3_ts_delay_I_42 (.A(\DWACT_FINC_E[6] ), .B(
        \DWACT_FINC_E[7] ), .C(\DWACT_FINC_E[9] ), .Y(N_10));
    AO1A \address_RNO_1[1]  (.A(N_343), .B(\address_25_m_i_a2_0[1] ), 
        .C(N_290), .Y(\address_25_m_i_0[1] ));
    OA1A \address_cl_2_RNO[0]  (.A(\address_cl_230_i_a2_0[0] ), .B(
        N_146), .C(N_445), .Y(N_112));
    NOR2B \dread_RNIMGHJ[0]  (.A(\dread[0]_net_1 ), .B(\dread_cl[0] ), 
        .Y(sdram_interface_0_DATA_READ[0]));
    DFN0C0 \address[4]  (.D(N_57), .CLK(reset_pulse_0_CLK_OUT_48MHZ), 
        .CLR(reset_pulse_0_RESET_17), .Q(address[4]));
    AND3 un3_ts_delay_I_55 (.A(\DWACT_FINC_E[28] ), .B(
        \DWACT_FINC_E[13] ), .C(timestamp_0_TIMESTAMP[18]), .Y(N_6));
    NOR2A \read_counter_RNI1GA6O[2]  (.A(
        \address_cl_239_0_a2_1_a2_0[0] ), .B(
        \address_25_m_i_o2_1_0[8] ), .Y(
        \read_counter_RNI1GA6O[2]_net_1 ));
    OR3 \address_RNO[9]  (.A(N_264), .B(\address_25_i_m_i_0_0[9] ), .C(
        N_375), .Y(N_45));
    AND3 un3_ts_delay_I_61 (.A(\DWACT_FINC_E[28] ), .B(
        \DWACT_FINC_E[13] ), .C(\DWACT_FINC_E[15] ), .Y(N_4));
    NOR2B ras_RNO_0 (.A(N_143), .B(N_183), .Y(N_304));
    XOR2 \ts_delay_RNII9J9[2]  (.A(\ts_delay[2]_net_1 ), .B(
        timestamp_0_TIMESTAMP[2]), .Y(un1_TIMESTAMP_2));
    NOR2 \address_12_0_a3_1_0[11]  (.A(\write_counter[3]_net_1 ), .B(
        \write_counter[2]_net_1 ), .Y(\address_12_0_a3_1_0[11]_net_1 ));
    XOR2 un3_ts_delay_I_53 (.A(N_7), .B(timestamp_0_TIMESTAMP[18]), .Y(
        I_53_0));
    DFN0P0 \address_cl_12[0]  (.D(N_47), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .PRE(reset_pulse_0_RESET_16), .Q(
        address_cl_12[0]));
    MX2 \init_counter_RNI29U32[1]  (.A(I_5_4), .B(
        \init_counter[1]_net_1 ), .S(N_184), .Y(N_233));
    DFN0E0C0 \ts_delay[6]  (.D(I_17_3), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_6), .E(
        N_2371), .Q(\ts_delay[6]_net_1 ));
    NOR3 \address_RNO[6]  (.A(N_277), .B(\address_25_m_i_0[6] ), .C(
        N_177), .Y(N_55));
    DFN0E0C0 \ts_delay[16]  (.D(I_46_2), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_11), .E(
        N_2371), .Q(\ts_delay[16]_net_1 ));
    OR2 \read_counter_RNI2R582[3]  (.A(N_73), .B(N_416), .Y(
        \address_25_m_0_o2_0_0[12] ));
    XOR2 un6_write_counter_I_7 (.A(N_3), .B(\write_counter[2]_net_1 ), 
        .Y(I_7_3));
    NOR2B \dread_RNICODF[15]  (.A(\dread[15]_net_1 ), .B(\dread_cl[0] )
        , .Y(sdram_interface_0_DATA_READ[15]));
    MX2 cke_RNO_11 (.A(\init_counter_9[2] ), .B(
        \init_counter[1]_net_1 ), .S(\init_counter[3]_net_1 ), .Y(
        N_215));
    AO1 \address_cl_6_RNO[0]  (.A(address_cl_6[0]), .B(N_394), .C(
        N_163), .Y(\address_cl_236[0] ));
    XOR2 init_counter_9_I_9 (.A(\init_counter_7[0] ), .B(cke133), .Y(
        \DWACT_ADD_CI_0_partial_sum_0[0] ));
    OR3 cas_RNO_0 (.A(N_369), .B(N_370), .C(N_335), .Y(N_144));
    AND2 un3_ts_delay_I_21 (.A(timestamp_0_TIMESTAMP[6]), .B(
        timestamp_0_TIMESTAMP[7]), .Y(\DWACT_FINC_E[3] ));
    OA1A \read_counter_RNI2FUB[2]  (.A(\read_counter[3]_net_1 ), .B(
        N_154), .C(\read_counter[2]_net_1 ), .Y(N_29));
    AO1 \address_cl_10_RNO[0]  (.A(address_cl_10[0]), .B(N_394), .C(
        N_163), .Y(\address_cl_235[0] ));
    AND3 un3_ts_delay_I_66 (.A(\DWACT_FINC_E[15] ), .B(
        timestamp_0_TIMESTAMP[21]), .C(timestamp_0_TIMESTAMP[22]), .Y(
        \DWACT_FINC_E[33] ));
    AND3 un3_ts_delay_I_39 (.A(\DWACT_FINC_E[6] ), .B(
        \DWACT_FINC_E[7] ), .C(\DWACT_FINC_E[8] ), .Y(N_11));
    AO1 \address_RNO[5]  (.A(\address_25_i_m_i_a2_0[5] ), .B(N_430), 
        .C(\address_25_i_m_i_0_1[5] ), .Y(N_34));
    AO1B \address_RNO_5[1]  (.A(N_172), .B(N_2402_0), .C(address[1]), 
        .Y(N_238));
    AND3 un3_ts_delay_I_54 (.A(\DWACT_FINC_E[7] ), .B(
        \DWACT_FINC_E[9] ), .C(\DWACT_FINC_E[12] ), .Y(
        \DWACT_FINC_E[13] ));
    DFN0E1C0 ba0 (.D(ba0_10), .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(
        reset_pulse_0_RESET_5), .E(N_89), .Q(SDRAM_BA0_c));
    OR3 cke_RNO (.A(N_306), .B(un1_cke_1_sqmuxa_0_2), .C(N_307), .Y(
        un1_cke_1_sqmuxa));
    AO1B \address_RNO_5[3]  (.A(N_172), .B(N_2402_0), .C(address[3]), 
        .Y(N_240));
    AND2 un3_ts_delay_I_57 (.A(timestamp_0_TIMESTAMP[18]), .B(
        timestamp_0_TIMESTAMP[19]), .Y(\DWACT_FINC_E[14] ));
    XOR2 un3_ts_delay_I_26 (.A(N_16), .B(timestamp_0_TIMESTAMP[9]), .Y(
        I_26_3));
    OAI1 \read_counter_RNO_2[1]  (.A(N_187), .B(N_189), .C(N_174), .Y(
        N_220));
    DFN0E1C0 \dout[0]  (.D(\dout_6[0] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_3), .E(
        N_27), .Q(dout[0]));
    DFN0E1C0 \dout[4]  (.D(\dout_6[4] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_4), .E(
        N_27), .Q(dout[4]));
    XOR2 un6_write_counter_I_9 (.A(N_2), .B(N_2401), .Y(I_9_3));
    AND3 un3_ts_delay_I_60 (.A(timestamp_0_TIMESTAMP[18]), .B(
        timestamp_0_TIMESTAMP[19]), .C(timestamp_0_TIMESTAMP[20]), .Y(
        \DWACT_FINC_E[15] ));
    NOR3 \address_RNO_4[2]  (.A(N_164), .B(N_207), .C(
        memory_controller_0_COL_OUT[2]), .Y(N_287));
    NOR2 \address_RNO_0[1]  (.A(memory_controller_0_ROW_OUT[1]), .B(
        N_433), .Y(N_289));
    XOR2 un2_init_counter_1_I_9 (.A(N_2_0), .B(\init_counter[3]_net_1 )
        , .Y(I_9_5));
    AND2 read_counter_4_I_1 (.A(\read_counter[0]_net_1 ), .B(cke56), 
        .Y(\DWACT_ADD_CI_0_TMP_0[0] ));
    AND2 un3_ts_delay_I_38 (.A(timestamp_0_TIMESTAMP[12]), .B(
        timestamp_0_TIMESTAMP[13]), .Y(\DWACT_FINC_E[8] ));
    AO1A write_cycle_RNIG0AAL1 (.A(d_N_3_mux_0), .B(
        \address_25_m_i_o2_1_0[8] ), .C(N_181), .Y(
        \address_cl_239_0_a2_1_2[0] ));
    NOR2B un3_ts_delay_I_11 (.A(timestamp_0_TIMESTAMP[3]), .B(
        \DWACT_FINC_E[0] ), .Y(N_21));
    DFN0E1C0 \dout[11]  (.D(\dout_6[11] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_7), .E(
        N_27), .Q(dout[11]));
    DFN0E0C0 \dread[6]  (.D(SDRAM_D6_in), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_11), .E(
        N_2372), .Q(\dread[6]_net_1 ));
    NOR2B \write_counter_RNIU0R51[3]  (.A(N_2391), .B(
        \write_counter[3]_net_1 ), .Y(cke5));
    XOR2 un3_ts_delay_I_20 (.A(N_18), .B(timestamp_0_TIMESTAMP[7]), .Y(
        I_20_3));
    NOR2B \write_counter_RNIEFTI[0]  (.A(\write_counter[0]_net_1 ), .B(
        \write_counter[2]_net_1 ), .Y(dout_0_sqmuxa_0_a3_0));
    OR2A \read_counter_RNIOPU8[2]  (.A(\read_counter[2]_net_1 ), .B(
        N_154), .Y(N_169));
    NOR2B \address_RNO_4[9]  (.A(memory_controller_0_ROW_OUT[9]), .B(
        N_415), .Y(N_374));
    XOR2 init_counter_13_I_8 (.A(\init_counter_11[0] ), .B(N_24), .Y(
        \DWACT_ADD_CI_0_partial_sum_2[0] ));
    AO1A cke_RNO_7 (.A(N_2386), .B(timestamp_0_TIMESTAMP[1]), .C(N_309)
        , .Y(un1_cke_1_sqmuxa_0_0));
    NOR3A busy_RNO_1 (.A(cke41), .B(N_416), .C(N_321), .Y(
        un1_busy_0_sqmuxa_2_0_a3_1));
    AOI1 \address_cl_RNO_0[0]  (.A(address_cl[0]), .B(N_2411), .C(
        N_2400_1), .Y(\address_cl_228_i_a2_0[0] ));
    OR2 write_cycle_RNIU7UO_0 (.A(write_cycle_net_1), .B(
        write_cycle_0_sqmuxa), .Y(N_2402));
    NOR3B \read_counter_RNILQBJ86[2]  (.A(\address_cl_239_0_a2_0_0[0] )
        , .B(\address_cl_239_0_a2_1_2[0] ), .C(
        \read_counter_RNI1GA6O[2]_net_1 ), .Y(N_394));
    DFN0E0C0 \dread[5]  (.D(SDRAM_D5_in), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_11), .E(
        N_2372), .Q(\dread[5]_net_1 ));
    NOR2B \write_counter_RNI739DB[1]  (.A(N_164), .B(N_2400_1), .Y(
        d_N_3_mux_1));
    NOR2B \read_counter_RNINBMV9_0[2]  (.A(N_406_1), .B(N_181), .Y(
        N_338));
    AOI1 we_RNO (.A(un1_we_2_sqmuxa_i_a2_1), .B(N_417), .C(
        un1_we_2_sqmuxa_i_0), .Y(N_81));
    AO1 \address_RNO_1[10]  (.A(\address_37_0_f0_i_a2_0[10] ), .B(
        N_435), .C(ba0_1_sqmuxa), .Y(\address_37_0_f0_i_0[10] ));
    OR2 \write_counter_RNI6EB8G[0]  (.A(\address_25_i_m_i_o2_4_2[5] ), 
        .B(N_138), .Y(N_172));
    AND3 un3_ts_delay_I_16 (.A(\DWACT_FINC_E[0] ), .B(
        \DWACT_FINC_E[1] ), .C(timestamp_0_TIMESTAMP[5]), .Y(N_19));
    DFN0E1C0 \write_counter[1]  (.D(\write_counter_12[1] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_6), .E(
        N_2402_0), .Q(\write_counter[1]_net_1 ));
    NOR3A \write_counter_RNI8ACS[3]  (.A(\write_counter[2]_net_1 ), .B(
        \write_counter[1]_net_1 ), .C(\write_counter[3]_net_1 ), .Y(
        N_2428));
    DFN0E0C0 \ts_delay[0]  (.D(I_4_1), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_6), .E(
        N_2371), .Q(\ts_delay[0]_net_1 ));
    NOR2 \write_counter_RNO_1[2]  (.A(I_7_3), .B(N_2410), .Y(N_2432));
    AOI1B pwr_up_hold_RNO (.A(pwr_up_hold_0_i_a2_0), .B(N_411), .C(
        pwr_up_hold_net_1), .Y(N_43));
    OA1C \write_counter_RNIMN6JD[2]  (.A(N_2410), .B(cke29), .C(cke35), 
        .Y(address_cl_239_0_a2_7_out));
    AO1B read_exit_RNIPBJ01 (.A(read_cycle_1_sqmuxa_0), .B(
        memory_controller_0_CMD_OUT[0]), .C(read_exit_net_1), .Y(N_190)
        );
    DFN0E0C0 \ts_delay[2]  (.D(I_7_4), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_6), .E(
        N_2371), .Q(\ts_delay[2]_net_1 ));
    OR2 \init_counter_RNI66QKV2[3]  (.A(N_160), .B(N_175), .Y(N_185));
    OR2A un1_busy_0_sqmuxa_2_0_a2_RNIH419A (.A(N_399), .B(N_77), .Y(
        N_58));
    DFN0E0C0 \ts_delay[7]  (.D(I_20_3), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_6), .E(
        N_2371), .Q(\ts_delay[7]_net_1 ));
    AOI1B \address_RNO_3[3]  (.A(memory_controller_0_ROW_OUT[3]), .B(
        N_435), .C(N_240), .Y(\address_25_m_i_a2_0[3] ));
    NOR2 busy_RNO_5 (.A(N_77), .B(N_321), .Y(
        un1_busy_0_sqmuxa_2_0_a3_0_0));
    AO1A \init_counter_RNICD0851[3]  (.A(N_188), .B(I_9_5), .C(N_200), 
        .Y(N_236));
    AOI1B \address_RNO_3[4]  (.A(memory_controller_0_ROW_OUT[4]), .B(
        N_435), .C(N_241), .Y(\address_25_m_i_a2_0[4] ));
    OR2 \address_cl_12_RNIKS36O[0]  (.A(d_m2_e_0), .B(address_N_9_0), 
        .Y(address_N_7_1));
    NOR2A \read_counter_RNI6UO12[3]  (.A(dout_0_sqmuxa), .B(
        \read_counter[3]_net_1 ), .Y(\address_25_m_i_o2_1_a0_0[0] ));
    OR3 \ts_delay_RNIUENC2[9]  (.A(un1_TIMESTAMP_16), .B(
        un1_TIMESTAMP_10), .C(cke133_0_o2_7), .Y(cke133_0_o2_15));
    DFN0P0 \address_cl_7[0]  (.D(\address_cl_233[0] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .PRE(reset_pulse_0_RESET_19), .Q(
        address_cl_7[0]));
    AND3 un3_ts_delay_I_10 (.A(timestamp_0_TIMESTAMP[0]), .B(
        timestamp_0_TIMESTAMP[1]), .C(timestamp_0_TIMESTAMP[2]), .Y(
        \DWACT_FINC_E[0] ));
    NOR3A write_cycle_RNIKLV7N (.A(N_2402), .B(
        address_cl_239_0_a2_5_out), .C(address_cl_239_0_a2_7_out), .Y(
        d_N_3_mux_0));
    AO1B \address_RNO_5[7]  (.A(N_172), .B(N_2402_0), .C(address[7]), 
        .Y(N_243));
    OR3 \init_counter_RNIT96R3[0]  (.A(cke133_0_o2_17), .B(
        cke133_0_o2_16), .C(N_166), .Y(cke133_0_o2_22));
    XOR2 \ts_delay_RNIG0OS[10]  (.A(\ts_delay[10]_net_1 ), .B(
        timestamp_0_TIMESTAMP[10]), .Y(un1_TIMESTAMP_10));
    NOR3C \init_counter_RNIUIJ4J1[2]  (.A(N_170), .B(N_409), .C(
        \init_counter_9[2] ), .Y(N_392));
    AO1A \address_RNO_1[2]  (.A(N_345), .B(\address_25_m_i_a2_0[2] ), 
        .C(N_287), .Y(\address_25_m_i_0[2] ));
    AO1A \init_counter_RNI2RR1R[2]  (.A(N_188), .B(I_9_5), .C(
        \DWACT_ADD_CI_0_partial_sum_0[0] ), .Y(ts_delay_1_sqmuxa_i_0));
    AOI1 cas_RNO (.A(N_144), .B(N_183), .C(un1_cas_1_sqmuxa_1_i_0), .Y(
        N_79));
    AOI1 write_cycle_RNI89K1K6 (.A(d_m2_e_0), .B(N_162), .C(N_314), .Y(
        d_N_7_mux));
    XOR2 un3_ts_delay_I_62 (.A(N_4), .B(timestamp_0_TIMESTAMP[21]), .Y(
        I_62_0));
    OA1A \init_counter_RNI2V3V2[2]  (.A(\init_counter_5_i_a2_0[2] ), 
        .B(I_7_5), .C(\init_counter[2]_net_1 ), .Y(N_26));
    NOR3B \write_counter_RNILO9F1[1]  (.A(\write_counter[2]_net_1 ), 
        .B(N_2445), .C(\write_counter[1]_net_1 ), .Y(N_2425));
    AO1A \address_RNO_1[8]  (.A(N_357), .B(\address_25_m_i_a2_0[8] ), 
        .C(N_272), .Y(\address_25_m_i_0[8] ));
    OR2 \write_counter_RNI4S6O9[1]  (.A(\address_25_i_m_i_o2_4_1[5] ), 
        .B(N_171), .Y(\address_25_i_m_i_o2_4_2[5] ));
    AO1B \address_RNO_5[4]  (.A(N_172), .B(N_2402_0), .C(address[4]), 
        .Y(N_241));
    MX2A write_cycle_RNIGNCABE (.A(d_N_7_mux), .B(r_N_4_mux), .S(
        address_N_8_mux), .Y(N_163));
    DFN0E1C0 \dout[10]  (.D(\dout_6[10] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_7), .E(
        N_27), .Q(dout[10]));
    OR2A \write_counter_RNIV9TD4[0]  (.A(N_2410), .B(cke23), .Y(N_171));
    NOR2A \address_cl_12_RNO_5[0]  (.A(N_181), .B(N_227), .Y(
        \address_cl_12_RNO_5[0]_net_1 ));
    OR3 un1_TIMESTAMP_1lto23_0_o2_13 (.A(timestamp_0_TIMESTAMP[12]), 
        .B(timestamp_0_TIMESTAMP[13]), .C(
        un1_TIMESTAMP_1lto23_0_o2_5_net_1), .Y(
        un1_TIMESTAMP_1lto23_0_o2_13_net_1));
    AO1 read_cycle_RNIJU8MG6 (.A(N_415), .B(N_162), .C(N_314), .Y(
        N_146));
    OR2 un1_TIMESTAMP_1lto23_0_o2_10 (.A(timestamp_0_TIMESTAMP[9]), .B(
        timestamp_0_TIMESTAMP[8]), .Y(
        un1_TIMESTAMP_1lto23_0_o2_10_net_1));
    XOR2 \ts_delay_RNIQHJ9[6]  (.A(\ts_delay[6]_net_1 ), .B(
        timestamp_0_TIMESTAMP[6]), .Y(un1_TIMESTAMP_6));
    DFN0C0 read_cycle (.D(N_74), .CLK(reset_pulse_0_CLK_OUT_48MHZ), 
        .CLR(reset_pulse_0_RESET_16), .Q(read_cycle_net_1));
    XOR2 read_counter_8_I_10 (.A(\read_counter_4[1] ), .B(
        \DWACT_ADD_CI_0_TMP_1[0] ), .Y(\read_counter_8[1] ));
    AND3 un3_ts_delay_I_22 (.A(\DWACT_FINC_E[0] ), .B(
        \DWACT_FINC_E[2] ), .C(\DWACT_FINC_E[3] ), .Y(N_17_0));
    AO1 \address_cl_8_RNO[0]  (.A(address_cl_8[0]), .B(N_394), .C(
        N_163), .Y(\address_cl_238[0] ));
    NOR2B \address_cl_4_RNO_0[0]  (.A(address_cl_4[0]), .B(N_162), .Y(
        \address_cl_234_0_a2_0[0] ));
    XOR2 read_counter_8_I_8 (.A(\read_counter_6[0] ), .B(N_15), .Y(
        \DWACT_ADD_CI_0_partial_sum[0] ));
    DFN0E0C0 \dread[8]  (.D(SDRAM_D8_in), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_11), .E(
        N_2372), .Q(\dread[8]_net_1 ));
    NOR3 \address_RNO[1]  (.A(N_289), .B(\address_25_m_i_0[1] ), .C(
        N_177), .Y(N_63));
    OR2 \init_counter_RNIPDV7R1[2]  (.A(N_392), .B(N_178), .Y(N_183));
    NOR2B write_cycle_RNI29TQ2 (.A(N_2402), .B(N_227), .Y(
        \address_cl_239_0_a2_1_a1_0[0] ));
    NOR2A \write_counter_RNI38722_0[0]  (.A(
        address_1_sqmuxa_5_1_i_a3_0), .B(N_2401), .Y(N_2424));
    OR3 un1_TIMESTAMP_1lto23_0_o2_12 (.A(timestamp_0_TIMESTAMP[2]), .B(
        timestamp_0_TIMESTAMP[3]), .C(
        un1_TIMESTAMP_1lto23_0_o2_3_net_1), .Y(
        un1_TIMESTAMP_1lto23_0_o2_12_net_1));
    OR2 \write_counter_RNI077C8[0]  (.A(dout_0_sqmuxa), .B(N_2387), .Y(
        N_27));
    DFN0E1C0 ras (.D(N_76), .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(
        reset_pulse_0_RESET_6), .E(N_83), .Q(SDRAM_RAS_c));
    OA1 \address_cl_12_RNO_4[0]  (.A(\address_cl_12_RNO_5[0]_net_1 ), 
        .B(address_m8_0_0), .C(N_178), .Y(N_266));
    OR2A \write_counter_RNIBIJU2[3]  (.A(N_2414), .B(cke5), .Y(N_2394));
    NOR3C \read_counter_RNIOCMV9[3]  (.A(
        \DWACT_ADD_CI_0_partial_sum[0] ), .B(address_m1_e_0_0), .C(
        \read_counter_8[1] ), .Y(\read_counter_RNIOCMV9[3]_net_1 ));
    NOR2B \dread_RNINHHJ[1]  (.A(\dread[1]_net_1 ), .B(\dread_cl[0] ), 
        .Y(sdram_interface_0_DATA_READ[1]));
    NOR2A \write_counter_RNI2I4G6[0]  (.A(N_2409), .B(N_2410), .Y(
        N_108));
    NOR2 \init_counter_RNI1IO81[3]  (.A(\init_counter[3]_net_1 ), .B(
        N_166), .Y(\init_counter_5_i_a2_0[2] ));
    NOR3 \address_RNO_4[6]  (.A(N_164), .B(N_207), .C(
        memory_controller_0_COL_OUT[6]), .Y(N_278));
    XNOR2 \address_25_m_i_o2_6[8]  (.A(\DWACT_ADD_CI_0_partial_sum[0] )
        , .B(\read_counter_8[1] ), .Y(N_181));
    AO1 \read_counter_RNICCLO47[2]  (.A(N_429), .B(N_162), .C(N_314), 
        .Y(N_445));
    NOR3 \address_RNO_4[3]  (.A(N_164), .B(N_207), .C(
        memory_controller_0_COL_OUT[3]), .Y(N_284));
    NOR2B \dread_RNIOIHJ[2]  (.A(\dread[2]_net_1 ), .B(\dread_cl[0] ), 
        .Y(sdram_interface_0_DATA_READ[2]));
    XA1B \read_counter_RNO[0]  (.A(\DWACT_ADD_CI_0_partial_sum[0] ), 
        .B(N_150), .C(N_300), .Y(N_72));
    DFN0P0 \address_cl_10[0]  (.D(\address_cl_235[0] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .PRE(reset_pulse_0_RESET_15), .Q(
        address_cl_10[0]));
    NOR3B \init_counter_RNIONB38[0]  (.A(\init_counter[0]_net_1 ), .B(
        N_411), .C(N_153), .Y(N_321));
    OR2 read_exit_RNILP82D (.A(N_389), .B(N_164), .Y(N_168));
    AO1 \address_cl_12_RNO_6[0]  (.A(\address_25_m_i_o2_1_0[8] ), .B(
        address_N_7_1), .C(address_N_6), .Y(address_m8_0_0));
    NOR3B \read_counter_RNIHT241[3]  (.A(\read_counter[3]_net_1 ), .B(
        N_151), .C(N_169), .Y(N_416));
    DFN0E1C0 \dout[3]  (.D(\dout_6[3] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_4), .E(
        N_27), .Q(dout[3]));
    NOR3 \write_counter_RNI60OPI[0]  (.A(cke41), .B(cke35), .C(N_171), 
        .Y(N_413));
    AND2 read_counter_8_I_1 (.A(\read_counter_6[0] ), .B(N_15), .Y(
        \DWACT_ADD_CI_0_TMP_1[0] ));
    OR2 cke_RNO_9 (.A(N_215), .B(\init_counter[2]_net_1 ), .Y(N_216));
    XOR2 un3_ts_delay_I_12 (.A(N_21), .B(timestamp_0_TIMESTAMP[4]), .Y(
        I_12_4));
    NOR3A \init_counter_RNI5JS74[1]  (.A(\init_counter[1]_net_1 ), .B(
        N_184), .C(N_202), .Y(N_252));
    DFN0E0C0 \ts_delay[8]  (.D(I_23_3), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_6), .E(
        N_2371), .Q(\ts_delay[8]_net_1 ));
    XOR2 un3_ts_delay_I_49 (.A(N_8), .B(timestamp_0_TIMESTAMP[17]), .Y(
        I_49_0));
    OR2 write_cycle_RNIU7UO (.A(write_cycle_net_1), .B(
        write_cycle_0_sqmuxa), .Y(N_2402_0));
    OR3 \ts_delay_RNI6QOV5[11]  (.A(cke133_0_o2_5), .B(cke133_0_o2_4), 
        .C(cke133_0_o2_15), .Y(cke133_0_o2_19));
    DFN0E1C0 \dout[13]  (.D(\dout_6[13] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_7), .E(
        N_27), .Q(dout[13]));
    OR2A \read_counter_RNI9F5FA[3]  (.A(N_2400_1), .B(
        \read_counter_RNI6DR31[3]_net_1 ), .Y(address_N_9));
    OR2 \init_counter_RNIQV41L1[0]  (.A(N_267), .B(N_321), .Y(N_186));
    NOR2A \write_counter_RNIFGTI_0[1]  (.A(\write_counter[1]_net_1 ), 
        .B(\write_counter[2]_net_1 ), .Y(cke35_0_a3_0_0));
    OR2B \read_counter_RNILIQ91_0[3]  (.A(N_150), .B(
        \read_counter_4[2] ), .Y(N_189));
    OR2A \write_counter_RNIFGTI[0]  (.A(\write_counter[0]_net_1 ), .B(
        \write_counter[3]_net_1 ), .Y(N_2417));
    NOR3A \init_counter_RNIIRT6S2[3]  (.A(
        \DWACT_ADD_CI_0_partial_sum_0[0] ), .B(\init_counter_9[1] ), 
        .C(N_236), .Y(N_24));
    DFN0C0 \address[8]  (.D(N_51), .CLK(reset_pulse_0_CLK_OUT_48MHZ), 
        .CLR(reset_pulse_0_RESET_18), .Q(address[8]));
    NOR3A \write_counter_RNI38722[1]  (.A(\write_counter[2]_net_1 ), 
        .B(\write_counter[1]_net_1 ), .C(N_2408), .Y(un1_cke45_i_a3_0));
    DFN0C0 \address[5]  (.D(N_34), .CLK(reset_pulse_0_CLK_OUT_48MHZ), 
        .CLR(reset_pulse_0_RESET_17), .Q(address[5]));
    OR3A \read_counter_RNIB62101[2]  (.A(address_N_5_mux_0), .B(N_399), 
        .C(N_339), .Y(N_433));
    OR3B read_cycle_RNILLSJ2 (.A(\read_counter_6_0_a2_0[0] ), .B(N_151)
        , .C(\read_counter_4[2] ), .Y(N_2372));
    OR2A \init_counter_RNI6DU32[1]  (.A(N_184), .B(N_411), .Y(
        ras_2_sqmuxa_3_i_o2_0_0));
    NOR3 \address_RNO[7]  (.A(N_274), .B(\address_25_m_i_0[7] ), .C(
        N_177), .Y(N_53));
    AO1D \init_counter_RNIRILVI[3]  (.A(N_170), .B(
        \init_counter[3]_net_1 ), .C(ras_2_sqmuxa_3_i_o2_0_0), .Y(
        N_208));
    OA1B \write_counter_RNISINJF[1]  (.A(
        \DWACT_ADD_CI_0_partial_sum[0] ), .B(N_227), .C(N_2400_1), .Y(
        N_373));
    NOR2B \write_counter_RNI4S6O9[2]  (.A(N_2405), .B(
        \write_counter[2]_net_1 ), .Y(cke29));
    NOR2A \read_counter_RNIP34R[3]  (.A(N_151), .B(
        \read_counter[3]_net_1 ), .Y(\address_25_m_0_a2_2_0[12] ));
    NOR2 address_1_sqmuxa_5_1_i_o2 (.A(\write_counter[1]_net_1 ), .B(
        \write_counter[0]_net_1 ), .Y(N_2412_i));
    OR2A \address_RNO_1[9]  (.A(N_162), .B(N_374), .Y(
        \address_25_i_m_i_0_0[9] ));
    NOR3B cas_RNO_2 (.A(un1_cas_1_sqmuxa_1_i_a2_2_1), .B(N_417), .C(
        cke41), .Y(N_369));
    NOR2 \address_RNO_0[6]  (.A(memory_controller_0_ROW_OUT[6]), .B(
        N_433), .Y(N_277));
    AND3 un3_ts_delay_I_48 (.A(\DWACT_FINC_E[6] ), .B(
        \DWACT_FINC_E[10] ), .C(\DWACT_FINC_E[11] ), .Y(N_8));
    NOR2B \read_counter_RNIF5V5_0[0]  (.A(\read_counter[1]_net_1 ), .B(
        \read_counter[0]_net_1 ), .Y(cke56_0_a2_0));
    AO1A \write_counter_RNIKQ4L2[1]  (.A(N_2401), .B(cke35_0_a3_0_0), 
        .C(N_2419), .Y(cke35));
    OR2B \write_counter_RNIDHOO1[1]  (.A(cke5_1), .B(N_2401), .Y(
        N_2414));
    AO1 \address_cl_3_RNO[0]  (.A(address_cl_3[0]), .B(N_394), .C(
        N_163), .Y(\address_cl_231[0] ));
    AND2 un1_busy_0_sqmuxa_2_0_a2 (.A(read_cycle_1_sqmuxa_i), .B(N_54), 
        .Y(N_77));
    AO1A \write_counter_RNO[3]  (.A(N_2410), .B(I_9_3), .C(N_2401), .Y(
        \write_counter_6[3] ));
    AO1 busy_RNO_6 (.A(cke5), .B(N_2402), .C(busy_2_sqmuxa_1_i_0), .Y(
        busy_2_sqmuxa_1_i_1));
    NOR2A \dout_RNO[7]  (.A(memory_controller_0_DATA_OUT[7]), .B(
        N_2387), .Y(\dout_6[7] ));
    NOR2A \write_counter_RNIHIBOL[3]  (.A(N_413), .B(N_2394), .Y(
        ras_2_sqmuxa_3_i_a2_1_0));
    AO1 \address_cl_11_RNO[0]  (.A(address_cl_11[0]), .B(N_394), .C(
        N_163), .Y(\address_cl_232[0] ));
    NOR3A \read_counter_RNO_0[0]  (.A(N_232), .B(\read_counter_4[2] ), 
        .C(N_174), .Y(N_300));
    NOR2A write_cycle_RNIJ17RD (.A(N_168), .B(N_2402), .Y(N_360));
    DFN0E0C0 \init_counter[0]  (.D(N_2368), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_7), .E(
        N_153), .Q(\init_counter[0]_net_1 ));
    NOR2A ba1_RNO (.A(memory_controller_0_BA_OUT[1]), .B(ba0_1_sqmuxa), 
        .Y(ba1_10));
    NOR3A write_cycle_RNIOMU9P (.A(\address_cl_239_0_a2_1_a1_0[0] ), 
        .B(address_cl_239_0_a2_5_out), .C(address_cl_239_0_a2_7_out), 
        .Y(write_cycle_RNIOMU9P_net_1));
    OA1B \write_counter_RNO_1[0]  (.A(N_2453), .B(
        \write_counter_14_i_o2_1_0[0] ), .C(cke41), .Y(N_111));
    NOR3A \read_counter_RNIVKP0B[3]  (.A(N_416), .B(
        \read_counter_4[2] ), .C(N_174), .Y(N_335));
    DFN0C0 read_exit (.D(read_exit_5), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_19), .Q(
        read_exit_net_1));
    OR2A \read_counter_RNO_1[0]  (.A(N_190), .B(
        \read_counter[3]_net_1 ), .Y(N_232));
    OA1 \write_counter_RNI32AB9[1]  (.A(un1_cke45_i_a3_0), .B(N_138), 
        .C(N_2402_0), .Y(N_2400_1));
    NOR2 un1_SDRAM_CS_4_d0lt3_i_a3_1 (.A(I_7_3), .B(I_9_3), .Y(
        un1_SDRAM_CS_4_d0lt3_i_a3_1_net_1));
    AX1A \write_counter_RNO[1]  (.A(N_2396), .B(cke35), .C(N_17), .Y(
        \write_counter_12[1] ));
    DFN0C0 \address[0]  (.D(N_65), .CLK(reset_pulse_0_CLK_OUT_48MHZ), 
        .CLR(reset_pulse_0_RESET_17), .Q(address[0]));
    NOR2B we_RNO_0 (.A(un1_we_2_sqmuxa_i_a2_0), .B(N_183), .Y(
        un1_we_2_sqmuxa_i_a2_1));
    DFN0E0C0 \ts_delay[5]  (.D(I_14_4), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_6), .E(
        N_2371), .Q(\ts_delay[5]_net_1 ));
    OR2A \read_counter_RNI1NF3L[3]  (.A(address_N_5_mux_0), .B(
        address_N_3_mux_0), .Y(\address_25_m_i_o2_1_0[8] ));
    NOR2A \read_counter_RNIOCMV9_0[3]  (.A(address_N_3_mux_0), .B(
        \read_counter_4[2] ), .Y(N_399));
    NOR2A \dout_RNO[0]  (.A(memory_controller_0_DATA_OUT[0]), .B(
        N_2387), .Y(\dout_6[0] ));
    NOR2A \dout_RNO[10]  (.A(memory_controller_0_DATA_OUT[10]), .B(
        N_2387), .Y(\dout_6[10] ));
    NOR3B \write_counter_RNIF3T88[0]  (.A(N_2403), .B(
        un1_SDRAM_CS_4_d0lt3_i_a3_1_net_1), .C(N_60), .Y(N_2426));
    OR3 \init_counter_RNIQEFFS[3]  (.A(N_2400_1), .B(ba0_1_sqmuxa), .C(
        N_415), .Y(N_89));
    DFN0E0C0 \ts_delay[12]  (.D(I_35_2), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_11), .E(
        N_2371), .Q(\ts_delay[12]_net_1 ));
    AO1A \address_RNO_1[3]  (.A(N_347), .B(\address_25_m_i_a2_0[3] ), 
        .C(N_284), .Y(\address_25_m_i_0[3] ));
    OR2 \write_counter_RNIC3OE9[1]  (.A(N_2442), .B(N_2425), .Y(N_2405)
        );
    AO1A \init_counter_RNIIRT6S2_0[3]  (.A(N_236), .B(
        \init_counter_9[1] ), .C(\DWACT_ADD_CI_0_partial_sum_0[0] ), 
        .Y(\init_counter_11[0] ));
    NOR3A cke_RNO_1 (.A(un1_cke_1_sqmuxa_0_a2_0_0), .B(N_335), .C(
        N_366), .Y(N_306));
    DFN0E1P0 busy (.D(un1_busy_0_sqmuxa_2), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .PRE(reset_pulse_0_RESET_7), .E(
        N_2374), .Q(sdram_interface_0_STATUS));
    DFN0E0C0 \ts_delay[22]  (.D(I_65_0), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_11), .E(
        N_2371), .Q(\ts_delay[22]_net_1 ));
    DFN0E0C0 \dread[14]  (.D(SDRAM_D14_in), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_7), .E(
        N_2372), .Q(\dread[14]_net_1 ));
    XOR2 \init_counter_RNI2JO81[0]  (.A(N_184), .B(
        \init_counter[0]_net_1 ), .Y(N_224_i));
    NOR2 \read_counter_RNISDL1C[3]  (.A(N_164), .B(
        \read_counter_RNIOCMV9[3]_net_1 ), .Y(address_N_5_mux_0));
    DFN0E0C0 \init_counter[1]  (.D(\init_counter_13[1] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_7), .E(
        N_153), .Q(\init_counter[1]_net_1 ));
    NOR2A \dout_RNO[6]  (.A(memory_controller_0_DATA_OUT[6]), .B(
        N_2387), .Y(\dout_6[6] ));
    OR2 read_cycle_RNIGIS4C (.A(N_73), .B(N_415), .Y(N_91));
    OR2B \init_counter_RNIVK5R[0]  (.A(\init_counter[0]_net_1 ), .B(
        \init_counter[1]_net_1 ), .Y(N_166));
    OR2 \write_counter_RNO_0[2]  (.A(\write_counter_12_i_o2_0[2] ), .B(
        N_2396), .Y(N_2418));
    AO1B \address_RNO_5[6]  (.A(N_172), .B(N_2402_0), .C(address[6]), 
        .Y(N_242));
    AO1 \write_counter_RNITJ72G[0]  (.A(dout_0_sqmuxa), .B(N_164), .C(
        \address_25_m_i_o2_1_1[0] ), .Y(\address_25_m_i_o2_0_0[0] ));
    XOR2 \ts_delay_RNISCOS[16]  (.A(\ts_delay[16]_net_1 ), .B(
        timestamp_0_TIMESTAMP[16]), .Y(un1_TIMESTAMP_16));
    NOR3A we_RNO_2 (.A(N_364_1), .B(cke41), .C(cke35), .Y(
        un1_we_2_sqmuxa_i_a2_0));
    AND2 \address_12_0_a3_1[11]  (.A(N_2412_i), .B(
        \address_12_0_a3_1_0[11]_net_1 ), .Y(N_109));
    OR2B \write_counter_RNIFGTI[1]  (.A(\write_counter[1]_net_1 ), .B(
        \write_counter[2]_net_1 ), .Y(N_2407));
    DFN0E1C0 \dout[6]  (.D(\dout_6[6] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_4), .E(
        N_27), .Q(dout[6]));
    DFN0P0 pwr_up_hold (.D(N_43), .CLK(reset_pulse_0_CLK_OUT_48MHZ), 
        .PRE(reset_pulse_0_RESET_16), .Q(pwr_up_hold_net_1));
    OA1B \write_counter_RNI57CS[0]  (.A(\write_counter[0]_net_1 ), .B(
        \write_counter[1]_net_1 ), .C(\write_counter[2]_net_1 ), .Y(
        address_1_sqmuxa_5_1_i_a3_0));
    AOI1B \address_RNO_3[6]  (.A(memory_controller_0_ROW_OUT[6]), .B(
        N_435), .C(N_242), .Y(\address_25_m_i_a2_0[6] ));
    OR2 \write_counter_RNO_2[2]  (.A(N_2401), .B(N_17), .Y(
        \write_counter_12_i_o2_0[2] ));
    XO1 \ts_delay_RNIADIP1[13]  (.A(timestamp_0_TIMESTAMP[13]), .B(
        \ts_delay[13]_net_1 ), .C(un1_TIMESTAMP_21), .Y(cke133_0_o2_3));
    NOR2B \dread_RNI9LDF[12]  (.A(\dread[12]_net_1 ), .B(\dread_cl[0] )
        , .Y(sdram_interface_0_DATA_READ[12]));
    NOR2B \address_RNO_2[1]  (.A(memory_controller_0_COL_OUT[1]), .B(
        N_165), .Y(N_343));
    OR2 un1_TIMESTAMP_1lto23_0_o2_3 (.A(timestamp_0_TIMESTAMP[15]), .B(
        timestamp_0_TIMESTAMP[14]), .Y(
        un1_TIMESTAMP_1lto23_0_o2_3_net_1));
    NOR3A cas_RNO_4 (.A(N_2414), .B(cke35), .C(cke23), .Y(
        un1_cas_1_sqmuxa_1_i_a2_2_1));
    NOR2 \init_counter_RNI2EBM1[0]  (.A(N_166), .B(N_184), .Y(
        \init_counter_7_i_a2_0[1] ));
    XOR2 \ts_delay_RNIOAQS[23]  (.A(\ts_delay[23]_net_1 ), .B(
        timestamp_0_TIMESTAMP[23]), .Y(un1_TIMESTAMP_23));
    DFN0C0 \address[7]  (.D(N_53), .CLK(reset_pulse_0_CLK_OUT_48MHZ), 
        .CLR(reset_pulse_0_RESET_17), .Q(address[7]));
    NOR2 \init_counter_RNIKSJHP1[2]  (.A(N_235), .B(N_175), .Y(N_396));
    DFN0E0C0 \dread[0]  (.D(SDRAM_D0_in), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_11), .E(
        N_2372), .Q(\dread[0]_net_1 ));
    AOI1B \address_RNO_3[2]  (.A(memory_controller_0_ROW_OUT[2]), .B(
        N_435), .C(N_239), .Y(\address_25_m_i_a2_0[2] ));
    OR2 \read_counter_RNIF5V5[0]  (.A(\read_counter[0]_net_1 ), .B(
        \read_counter[1]_net_1 ), .Y(N_154));
    AO1A ras_RNO_4 (.A(N_174), .B(N_416), .C(N_368), .Y(
        un1_ras_2_sqmuxa_1_i_o2_0_1));
    NOR3 \read_counter_RNIM4F12[3]  (.A(N_190), .B(
        \read_counter[3]_net_1 ), .C(\read_counter_4[2] ), .Y(
        un1_m5_0_a2_1));
    DFN0E0C0 \dread[9]  (.D(SDRAM_D9_in), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_11), .E(
        N_2372), .Q(\dread[9]_net_1 ));
    AND3 un3_ts_delay_I_51 (.A(\DWACT_FINC_E[0] ), .B(
        \DWACT_FINC_E[2] ), .C(\DWACT_FINC_E[5] ), .Y(
        \DWACT_FINC_E[28] ));
    NOR2 cke_RNO_8 (.A(N_175), .B(\init_counter_9[1] ), .Y(N_308));
    AO1A \address_RNO_1[0]  (.A(N_341), .B(\address_25_m_i_a2_0[0] ), 
        .C(N_293), .Y(\address_25_m_i_0[0] ));
    DFN0P0 \address_cl_4[0]  (.D(\address_cl_234[0] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .PRE(reset_pulse_0_RESET_18), .Q(
        address_cl_4[0]));
    NOR2A \dout_RNO[8]  (.A(memory_controller_0_DATA_OUT[8]), .B(
        N_2387), .Y(\dout_6[8] ));
    NOR3 \write_counter_RNI68CS[0]  (.A(\write_counter[0]_net_1 ), .B(
        \write_counter[1]_net_1 ), .C(\write_counter[3]_net_1 ), .Y(
        N_2445));
    XOR2 un3_ts_delay_I_35 (.A(N_13), .B(timestamp_0_TIMESTAMP[12]), 
        .Y(I_35_2));
    OR2A \address_12_0_o2_0[11]  (.A(I_7_3), .B(I_9_3), .Y(N_2409));
    AND3 un3_ts_delay_I_69 (.A(\DWACT_FINC_E[29] ), .B(
        \DWACT_FINC_E[13] ), .C(\DWACT_FINC_E[33] ), .Y(N_2_1));
    NOR2B \dread_RNIVPHJ[9]  (.A(\dread[9]_net_1 ), .B(\dread_cl[0] ), 
        .Y(sdram_interface_0_DATA_READ[9]));
    NOR2 cas_RNO_3 (.A(N_227), .B(N_187), .Y(N_370));
    AND3 un3_ts_delay_I_33 (.A(timestamp_0_TIMESTAMP[9]), .B(
        timestamp_0_TIMESTAMP[10]), .C(timestamp_0_TIMESTAMP[11]), .Y(
        \DWACT_FINC_E[7] ));
    MX2 \read_counter_RNID6T6I[3]  (.A(\address_25_m_i_o2_1_a0_2[0] ), 
        .B(\address_25_m_i_o2_1_a3_0[0] ), .S(\read_counter_8[1] ), .Y(
        \address_25_m_i_o2_0_1[0] ));
    OA1C dqml_RNO_4 (.A(\write_counter[3]_net_1 ), .B(cke5_1), .C(
        N_2387), .Y(un1_dqml_1_sqmuxa_1_0_a3_0));
    AO1A \address_RNO[11]  (.A(N_149), .B(address[11]), .C(N_297), .Y(
        \address_37[11] ));
    DFN0C0 write_exit (.D(write_exit_5), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_22), .Q(
        write_exit_net_1));
    DFN0C0 pwr_stabalize (.D(pwr_stabalize_RNO_net_1), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_18), .Q(
        pwr_stabalize_net_1));
    OR3 \init_counter_RNIRQB38[1]  (.A(N_153), .B(N_380), .C(N_379), 
        .Y(N_178));
    NOR3C \read_counter_10_0_a2_0[3]  (.A(
        \DWACT_ADD_CI_0_partial_sum[0] ), .B(\read_counter_8[1] ), .C(
        \read_counter_4[2] ), .Y(N_414));
    XOR2 \ts_delay_RNII4QS[20]  (.A(\ts_delay[20]_net_1 ), .B(
        timestamp_0_TIMESTAMP[20]), .Y(un1_TIMESTAMP_20));
    XOR2 un3_ts_delay_I_56 (.A(N_6), .B(timestamp_0_TIMESTAMP[19]), .Y(
        I_56_0));
    OA1C un1_we_2_sqmuxa_i_a2_3 (.A(N_160), .B(\init_counter_9[2] ), 
        .C(I_7_5), .Y(N_383));
    OR2 \write_counter_RNO_2[0]  (.A(N_2452), .B(N_90), .Y(
        \write_counter_14_i_o2_1_0[0] ));
    NOR2A \dout_RNO[12]  (.A(memory_controller_0_DATA_OUT[12]), .B(
        N_2387), .Y(\dout_6[12] ));
    AO1 read_cycle_RNIFE4O (.A(read_cycle_1_sqmuxa_0), .B(
        memory_controller_0_CMD_OUT[0]), .C(read_cycle_net_1), .Y(
        N_151));
    AO1A pwr_stabalize_RNO (.A(N_2386), .B(timestamp_0_TIMESTAMP[1]), 
        .C(pwr_stabalize_net_1), .Y(pwr_stabalize_RNO_net_1));
    NOR2B \address_RNO_2[2]  (.A(memory_controller_0_COL_OUT[2]), .B(
        N_165), .Y(N_345));
    AND3 un3_ts_delay_I_29 (.A(timestamp_0_TIMESTAMP[6]), .B(
        timestamp_0_TIMESTAMP[7]), .C(timestamp_0_TIMESTAMP[8]), .Y(
        \DWACT_FINC_E[5] ));
    NOR3C \write_counter_RNIS8PU1[0]  (.A(dout_0_sqmuxa_0_a3_0), .B(
        cke17_1_1), .C(N_2402), .Y(dout_0_sqmuxa));
    NOR2B \address_cl_12_RNO_7[0]  (.A(address_m8_0_a4_1_0), .B(N_181), 
        .Y(address_N_6));
    OR2 \init_counter_RNIO6JQ6[3]  (.A(N_153), .B(
        \init_counter[3]_net_1 ), .Y(N_173));
    INV un3_ts_delay_I_4 (.A(timestamp_0_TIMESTAMP[0]), .Y(I_4_1));
    NOR2B un3_ts_delay_I_34 (.A(\DWACT_FINC_E[7] ), .B(
        \DWACT_FINC_E[6] ), .Y(N_13));
    OR3A pwr_up_hold_RNIM90D6 (.A(pwr_up_hold_net_1), .B(
        un1_TIMESTAMP_1lto23_0_o2_18_net_1), .C(
        un1_TIMESTAMP_1lto23_0_o2_19_net_1), .Y(N_2386));
    XOR2 un3_ts_delay_I_7 (.A(N_23), .B(timestamp_0_TIMESTAMP[2]), .Y(
        I_7_4));
    OR2 un1_TIMESTAMP_1lto23_0_o2_9 (.A(timestamp_0_TIMESTAMP[11]), .B(
        timestamp_0_TIMESTAMP[10]), .Y(
        un1_TIMESTAMP_1lto23_0_o2_9_net_1));
    AND3 un3_ts_delay_I_68 (.A(\DWACT_FINC_E[34] ), .B(
        \DWACT_FINC_E[2] ), .C(\DWACT_FINC_E[5] ), .Y(
        \DWACT_FINC_E[29] ));
    AO1 busy_RNO (.A(un1_busy_0_sqmuxa_2_0_a3_1), .B(N_58), .C(
        un1_busy_0_sqmuxa_2_0_0), .Y(un1_busy_0_sqmuxa_2));
    AO1 \address_cl_4_RNO[0]  (.A(\address_cl_234_0_a2_0[0] ), .B(
        N_140), .C(N_163), .Y(\address_cl_234[0] ));
    DFN0C0 \address[3]  (.D(N_59), .CLK(reset_pulse_0_CLK_OUT_48MHZ), 
        .CLR(reset_pulse_0_RESET_17), .Q(address[3]));
    OR3 \read_counter_RNISH7324[3]  (.A(N_377), .B(
        \address_25_m_0_o2_0_2[12] ), .C(N_376), .Y(N_149));
    DFN0E1C0 \dout[7]  (.D(\dout_6[7] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_4), .E(
        N_27), .Q(dout[7]));
    AND3 un3_ts_delay_I_50 (.A(timestamp_0_TIMESTAMP[15]), .B(
        timestamp_0_TIMESTAMP[16]), .C(timestamp_0_TIMESTAMP[17]), .Y(
        \DWACT_FINC_E[12] ));
    OA1 cke_RNO_5 (.A(un1_TIMESTAMP_1lto23_0_o2_18_net_1), .B(
        un1_TIMESTAMP_1lto23_0_o2_19_net_1), .C(N_216), .Y(
        un1_cke_1_sqmuxa_0_a2_0_0));
    XOR2 un3_ts_delay_I_37 (.A(N_12), .B(timestamp_0_TIMESTAMP[13]), 
        .Y(I_37_2));
    NOR3A read_exit_RNIHO90B (.A(address_N_3_mux_0), .B(N_190), .C(
        \read_counter_4[2] ), .Y(N_389));
    AO1B \address_RNO_2[5]  (.A(memory_controller_0_ROW_OUT[5]), .B(
        N_435), .C(N_162), .Y(\address_25_i_m_i_0_0[5] ));
    DFN0E1C0 \dout[9]  (.D(\dout_6[9] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_4), .E(
        N_27), .Q(dout[9]));
    OR2B read_cycle_1_sqmuxa (.A(read_cycle_1_sqmuxa_0), .B(
        memory_controller_0_CMD_OUT[0]), .Y(read_cycle_1_sqmuxa_i));
    MX2 dqml_RNO_3 (.A(timestamp_0_TIMESTAMP[1]), .B(N_73), .S(N_2386), 
        .Y(un1_dqml_1_sqmuxa_1_0_0));
    DFN0C0 \address[6]  (.D(N_55), .CLK(reset_pulse_0_CLK_OUT_48MHZ), 
        .CLR(reset_pulse_0_RESET_17), .Q(address[6]));
    NOR2A \read_counter_RNIJ9V5_0[2]  (.A(\read_counter[3]_net_1 ), .B(
        \read_counter[2]_net_1 ), .Y(cke56_0_a2_1));
    DFN0E1C0 \dout[14]  (.D(\dout_6[14] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_7), .E(
        N_27), .Q(dout[14]));
    OR3 un1_TIMESTAMP_1lto23_0_o2_16 (.A(
        un1_TIMESTAMP_1lto23_0_o2_1_net_1), .B(
        un1_TIMESTAMP_1lto23_0_o2_0_net_1), .C(
        un1_TIMESTAMP_1lto23_0_o2_10_net_1), .Y(
        un1_TIMESTAMP_1lto23_0_o2_16_net_1));
    OA1A \init_counter_RNIHOCLP2[2]  (.A(N_160), .B(
        \init_counter_9[2] ), .C(N_409), .Y(N_378));
    XOR2 un3_ts_delay_I_28 (.A(N_15_0), .B(timestamp_0_TIMESTAMP[10]), 
        .Y(I_28_2));
    OR3B cke_RNO_0 (.A(N_2386), .B(N_139), .C(N_316), .Y(N_85));
    DFN0E1C0 cke (.D(un1_cke_1_sqmuxa), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_5), .E(
        N_85), .Q(SDRAM_CKE_c));
    XOR2 \ts_delay_RNIO8OS[14]  (.A(\ts_delay[14]_net_1 ), .B(
        timestamp_0_TIMESTAMP[14]), .Y(un1_TIMESTAMP_14));
    AOI1 \address_RNO_2[10]  (.A(N_172), .B(N_2402), .C(address[10]), 
        .Y(\address_37_0_f0_i_a2_0_0[10] ));
    MX2B \write_counter_RNI1JLK21[2]  (.A(d_N_3_mux), .B(
        \read_counter_8[1] ), .S(un1_N_11_mux), .Y(N_417));
    OA1C \dread_cl_1_RNO_0[0]  (.A(\read_counter_6_0_a2_0[0] ), .B(
        \read_counter_4[2] ), .C(\dread_cl[0] ), .Y(N_320));
    XOR2 \ts_delay_RNIMDJ9[4]  (.A(\ts_delay[4]_net_1 ), .B(
        timestamp_0_TIMESTAMP[4]), .Y(un1_TIMESTAMP_4));
    XOR2 init_counter_13_I_10 (.A(\init_counter_9[1] ), .B(
        \DWACT_ADD_CI_0_TMP_2[0] ), .Y(\init_counter_13[1] ));
    NOR2B \dread_RNI7JDF[10]  (.A(\dread[10]_net_1 ), .B(\dread_cl[0] )
        , .Y(sdram_interface_0_DATA_READ[10]));
    AND3 un3_ts_delay_I_19 (.A(\DWACT_FINC_E[0] ), .B(
        \DWACT_FINC_E[2] ), .C(timestamp_0_TIMESTAMP[6]), .Y(N_18));
    OR3 cke_RNO_2 (.A(N_305), .B(un1_cke_1_sqmuxa_0_0), .C(N_308), .Y(
        un1_cke_1_sqmuxa_0_2));
    DFN0E1C0 \read_counter[1]  (.D(N_41), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_3), .E(
        N_151), .Q(\read_counter[1]_net_1 ));
    NOR3A \read_counter_RNI7RQNA_0[3]  (.A(N_151), .B(
        \read_counter_4[2] ), .C(address_N_3_mux_0), .Y(N_377));
    OR2A \write_counter_RNI38722[0]  (.A(N_2414), .B(
        \write_counter[0]_net_1 ), .Y(N_2403));
    OA1 \init_counter_RNI8MMS33[3]  (.A(I_9_5), .B(N_383), .C(
        ba0_1_sqmuxa), .Y(N_314));
    NOR3 cke_RNO_3 (.A(N_335), .B(N_366), .C(pwr_up_hold_net_1), .Y(
        N_307));
    OA1 \address_RNO_3[9]  (.A(N_108), .B(\address_12_0_1[11] ), .C(
        address[9]), .Y(\address_25_i_m_i_a2_0[9] ));
    XOR2 \ts_delay_RNI2JOS[19]  (.A(\ts_delay[19]_net_1 ), .B(
        timestamp_0_TIMESTAMP[19]), .Y(un1_TIMESTAMP_19));
    XO1 \ts_delay_RNIM57J[7]  (.A(timestamp_0_TIMESTAMP[7]), .B(
        \ts_delay[7]_net_1 ), .C(un1_TIMESTAMP_6), .Y(cke133_0_o2_9));
    XOR2 read_counter_4_I_14 (.A(N_29), .B(
        \DWACT_ADD_CI_0_g_array_1_0[0] ), .Y(\read_counter_4[2] ));
    AO1 cas_RNO_1 (.A(N_428), .B(\init_counter_9[1] ), .C(N_186), .Y(
        un1_cas_1_sqmuxa_1_i_0));
    DFN0E0C0 \ts_delay[13]  (.D(I_37_2), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_11), .E(
        N_2371), .Q(\ts_delay[13]_net_1 ));
    OR3A \write_counter_RNI5I9A5[1]  (.A(N_2414), .B(N_2424), .C(
        N_2425), .Y(\address_25_i_m_i_o2_4_1[5] ));
    AOI1 \address_cl_1_RNO_0[0]  (.A(address_cl_1[0]), .B(N_2411), .C(
        N_2400_1), .Y(\address_cl_229_i_a2_0[0] ));
    DFN0C0 \address[1]  (.D(N_63), .CLK(reset_pulse_0_CLK_OUT_48MHZ), 
        .CLR(reset_pulse_0_RESET_17), .Q(address[1]));
    OR2 un1_TIMESTAMP_1lto23_0_o2_0 (.A(timestamp_0_TIMESTAMP[22]), .B(
        timestamp_0_TIMESTAMP[23]), .Y(
        un1_TIMESTAMP_1lto23_0_o2_0_net_1));
    XO1 \ts_delay_RNIAKD61[3]  (.A(timestamp_0_TIMESTAMP[3]), .B(
        \ts_delay[3]_net_1 ), .C(un1_TIMESTAMP_22), .Y(cke133_0_o2_0));
    DFN0E0C0 \ts_delay[23]  (.D(I_70_0), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_11), .E(
        N_2371), .Q(\ts_delay[23]_net_1 ));
    OR2A \read_counter_RNI41V12[3]  (.A(N_151), .B(N_386), .Y(N_164));
    DFN0E0C0 \ts_delay[9]  (.D(I_26_3), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_6), .E(
        N_2371), .Q(\ts_delay[9]_net_1 ));
    OA1A read_cycle_RNO (.A(\read_counter[3]_net_1 ), .B(N_169), .C(
        N_151), .Y(N_74));
    DFN0E0C0 \dread[12]  (.D(SDRAM_D12_in), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_7), .E(
        N_2372), .Q(\dread[12]_net_1 ));
    AND3 un3_ts_delay_I_18 (.A(timestamp_0_TIMESTAMP[3]), .B(
        timestamp_0_TIMESTAMP[4]), .C(timestamp_0_TIMESTAMP[5]), .Y(
        \DWACT_FINC_E[2] ));
    OA1A \address_cl_RNO[0]  (.A(\address_cl_228_i_a2_0[0] ), .B(N_146)
        , .C(N_445), .Y(N_116));
    DFN0E1C0 we (.D(N_81), .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(
        reset_pulse_0_RESET_3), .E(N_83), .Q(SDRAM_WE_c));
    DFN0E1C0 \write_counter[3]  (.D(\write_counter_6[3] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_6), .E(
        N_2402_0), .Q(\write_counter[3]_net_1 ));
    AO1 busy_RNO_3 (.A(un1_busy_0_sqmuxa_2_0_a3_0_0), .B(N_399), .C(
        N_2387), .Y(un1_busy_0_sqmuxa_2_0_0));
    NOR3A \read_counter_RNIJH32I[3]  (.A(un1_m5_0_a2_2), .B(N_164), .C(
        \DWACT_ADD_CI_0_partial_sum[0] ), .Y(un1_N_11_mux));
    DFN0E0C0 \ts_delay[19]  (.D(I_56_0), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_11), .E(
        N_2371), .Q(\ts_delay[19]_net_1 ));
    OR2 \init_counter_RNIAES821[3]  (.A(\init_counter_9[2] ), .B(
        \init_counter[3]_net_1 ), .Y(N_200));
    OA1A \address_RNO_0[9]  (.A(address_N_5_mux_0), .B(N_399), .C(
        \address_25_i_m_i_a2_0[9] ), .Y(N_264));
    XOR2 un2_init_counter_1_I_5 (.A(\init_counter[0]_net_1 ), .B(
        \init_counter[1]_net_1 ), .Y(I_5_4));
    OR2A read_exit_RNO (.A(N_190), .B(N_416), .Y(read_exit_5));
    AND3 un6_write_counter_I_8 (.A(N_75), .B(\write_counter[1]_net_1 ), 
        .C(\write_counter[2]_net_1 ), .Y(N_2));
    DFN0E0C0 \ts_delay[17]  (.D(I_49_0), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_11), .E(
        N_2371), .Q(\ts_delay[17]_net_1 ));
    AND3 un3_ts_delay_I_52 (.A(\DWACT_FINC_E[28] ), .B(
        \DWACT_FINC_E[10] ), .C(\DWACT_FINC_E[12] ), .Y(N_7));
    XO1 \ts_delay_RNIKLGP1[11]  (.A(timestamp_0_TIMESTAMP[11]), .B(
        \ts_delay[11]_net_1 ), .C(un1_TIMESTAMP_19), .Y(cke133_0_o2_5));
    DFN0E0C0 \dread[2]  (.D(SDRAM_D2_in), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_11), .E(
        N_2372), .Q(\dread[2]_net_1 ));
    NOR3 \address_RNO[0]  (.A(N_292), .B(\address_25_m_i_0[0] ), .C(
        N_177), .Y(N_65));
    OA1 \write_counter_RNIJRLMB[0]  (.A(N_2453), .B(N_2426), .C(
        cke41_0), .Y(cke41));
    NOR3 \address_RNO_4[1]  (.A(N_164), .B(N_207), .C(
        memory_controller_0_COL_OUT[1]), .Y(N_290));
    OA1C \read_counter_RNO[1]  (.A(\read_counter_16_i_a2_0_0[1] ), .B(
        N_2321), .C(\read_counter_16_i_0[1] ), .Y(N_41));
    DFN0E0C0 \ts_delay[3]  (.D(I_9_4), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_6), .E(
        N_2371), .Q(\ts_delay[3]_net_1 ));
    DFN0C0 \address[10]  (.D(N_49), .CLK(reset_pulse_0_CLK_OUT_48MHZ), 
        .CLR(reset_pulse_0_RESET_18), .Q(address[10]));
    NOR3 \address_RNO[3]  (.A(N_283), .B(\address_25_m_i_0[3] ), .C(
        N_177), .Y(N_59));
    XOR2 \ts_delay_RNIM8QS[22]  (.A(\ts_delay[22]_net_1 ), .B(
        timestamp_0_TIMESTAMP[22]), .Y(un1_TIMESTAMP_22));
    AO1D \read_counter_RNI28PQA[3]  (.A(\address_12_0_1[11] ), .B(
        N_108), .C(\address_25_m_0_o2_0_0[12] ), .Y(
        \address_25_m_0_o2_0_1[12] ));
    NOR2B \init_counter_RNI2O5R[1]  (.A(\init_counter[1]_net_1 ), .B(
        \init_counter[3]_net_1 ), .Y(N_380));
    NOR3 \read_counter_RNI67OR1[3]  (.A(\read_counter_4[2] ), .B(N_150)
        , .C(\read_counter_4[1] ), .Y(N_15));
    NOR2A \read_counter_RNIQ0MPB[3]  (.A(un1_m5_0_a2_1), .B(cke29), .Y(
        un1_m5_0_a2_2));
    NOR2A \init_counter_RNIO84C9[3]  (.A(ba0_1_sqmuxa), .B(I_7_5), .Y(
        N_395));
    OR3 un1_TIMESTAMP_1lto23_0_o2_15 (.A(timestamp_0_TIMESTAMP[4]), .B(
        timestamp_0_TIMESTAMP[5]), .C(
        un1_TIMESTAMP_1lto23_0_o2_9_net_1), .Y(
        un1_TIMESTAMP_1lto23_0_o2_15_net_1));
    DFN0P0 \address_cl_1[0]  (.D(N_114), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .PRE(reset_pulse_0_RESET_17), .Q(
        address_cl_1[0]));
    OR2 \write_counter_RNIKN9F1[0]  (.A(N_2401), .B(
        \write_counter[0]_net_1 ), .Y(N_2408));
    OR2 \init_counter_RNICJOO13[2]  (.A(N_178), .B(N_378), .Y(N_162));
    MX2C write_cycle_RNIPDEDE1 (.A(\address_25_m_i_o2_1_0[8] ), .B(
        N_227), .S(d_N_3_mux_0), .Y(address_N_5_mux));
    OR2 \read_counter_RNISDL1C_0[3]  (.A(N_399), .B(N_164), .Y(N_430));
    OR3A \init_counter_RNI85UJ23[2]  (.A(\init_counter_9[1] ), .B(
        ts_delay_1_sqmuxa_i_0), .C(N_175), .Y(N_2371));
    OA1A dqml_RNO_2 (.A(N_2386), .B(N_2401), .C(
        un1_dqml_1_sqmuxa_1_0_a3_0), .Y(un1_dqml_1_sqmuxa_1_0_a3_1));
    AOI1B \address_RNO_3[0]  (.A(memory_controller_0_ROW_OUT[0]), .B(
        N_435), .C(N_237), .Y(\address_25_m_i_a2_0[0] ));
    MX2A write_cycle_RNI8G3NH2 (.A(d_N_3_mux_0), .B(r_N_4_mux), .S(
        address_N_5_mux), .Y(N_140));
    AO1A \read_counter_RNISKG1J[2]  (.A(N_174), .B(N_406_1), .C(
        address_N_3_mux_0), .Y(N_207));
    OA1B \dread_cl_1_RNO[0]  (.A(N_187), .B(N_189), .C(N_320), .Y(
        N_2369));
    AND3 un3_ts_delay_I_45 (.A(\DWACT_FINC_E[6] ), .B(
        \DWACT_FINC_E[10] ), .C(timestamp_0_TIMESTAMP[15]), .Y(N_9));
    MX2 \address_cl_12_RNO_3[0]  (.A(d_m2_e_0), .B(r_N_4_mux), .S(
        address_N_7_mux), .Y(N_141));
    NOR2 read_cycle_RNIVKP0B (.A(N_227), .B(N_174), .Y(N_415));
    DFN0C0 \address[2]  (.D(N_61), .CLK(reset_pulse_0_CLK_OUT_48MHZ), 
        .CLR(reset_pulse_0_RESET_17), .Q(address[2]));
    DFN0E0C0 \ts_delay[1]  (.D(I_5_3), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_6), .E(
        N_2371), .Q(\ts_delay[1]_net_1 ));
    XOR2 un3_ts_delay_I_43 (.A(N_10), .B(timestamp_0_TIMESTAMP[15]), 
        .Y(I_43_2));
    DFN0E0C0 \dread[15]  (.D(SDRAM_D15_in), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_7), .E(
        N_2372), .Q(\dread[15]_net_1 ));
    NOR3 \read_counter_RNI59Q19[3]  (.A(
        \DWACT_ADD_CI_0_partial_sum[0] ), .B(\read_counter[3]_net_1 ), 
        .C(\read_counter_8[1] ), .Y(address_N_3_mux_0));
    NOR2A write_cycle_RNI4AN2R3 (.A(N_162), .B(
        write_cycle_RNIOMU9P_net_1), .Y(\address_cl_239_0_a2_0_0[0] ));
    NOR2B un3_ts_delay_I_6 (.A(timestamp_0_TIMESTAMP[1]), .B(
        timestamp_0_TIMESTAMP[0]), .Y(N_23));
    DFN0E0C0 \ts_delay[14]  (.D(I_40_2), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_11), .E(
        N_2371), .Q(\ts_delay[14]_net_1 ));
    AO1B weVAL_RNO (.A(weVAL), .B(N_2414), .C(N_2410), .Y(weVAL_3));
    OR2 \read_counter_12_i_o2[0]  (.A(\read_counter_8[1] ), .B(
        \DWACT_ADD_CI_0_partial_sum[0] ), .Y(N_174));
    NOR2B \address_RNO_2[4]  (.A(memory_controller_0_COL_OUT[4]), .B(
        N_165), .Y(N_349));
    DFN0P0 \address_cl[0]  (.D(N_116), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .PRE(reset_pulse_0_RESET_19), .Q(
        address_cl[0]));
    NOR2B \dread_RNIQKHJ[4]  (.A(\dread[4]_net_1 ), .B(\dread_cl[0] ), 
        .Y(sdram_interface_0_DATA_READ[4]));
    AO1B \address_RNO_5[2]  (.A(N_172), .B(N_2402_0), .C(address[2]), 
        .Y(N_239));
    AOI1 \address_RNO[10]  (.A(\address_37_0_f0_i_a2_0_1[10] ), .B(
        N_430), .C(\address_37_0_f0_i_0[10] ), .Y(N_49));
    XO1 \ts_delay_RNII17J[9]  (.A(timestamp_0_TIMESTAMP[9]), .B(
        \ts_delay[9]_net_1 ), .C(un1_TIMESTAMP_2), .Y(cke133_0_o2_7));
    XOR2 \ts_delay_RNIOFJ9[5]  (.A(\ts_delay[5]_net_1 ), .B(
        timestamp_0_TIMESTAMP[5]), .Y(un1_TIMESTAMP_5));
    OAI1 pwr_up_hold_RNIM90D6_0 (.A(un1_TIMESTAMP_1lto23_0_o2_18_net_1)
        , .B(un1_TIMESTAMP_1lto23_0_o2_19_net_1), .C(pwr_up_hold_net_1)
        , .Y(N_153));
    XOR2 un3_ts_delay_I_9 (.A(N_22), .B(timestamp_0_TIMESTAMP[3]), .Y(
        I_9_4));
    NOR2B write_cycle_RNIKV4CE (.A(address_cl_239_0_a2_7_out), .B(
        N_2402), .Y(d_m2_e_0));
    DFN0P0 \address_cl_11[0]  (.D(\address_cl_232[0] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .PRE(reset_pulse_0_RESET_16), .Q(
        address_cl_11[0]));
    NOR2B \address_RNO_2[7]  (.A(memory_controller_0_COL_OUT[7]), .B(
        N_165), .Y(N_355));
    OR2A \read_counter_RNO[3]  (.A(N_150), .B(N_414), .Y(
        \read_counter_10[3] ));
    OR2 \read_counter_RNIAQ4921[3]  (.A(\address_25_m_i_o2_0_1[0] ), 
        .B(\address_25_m_i_o2_0_0[0] ), .Y(N_165));
    NOR3 ras_RNO (.A(N_428), .B(N_186), .C(N_304), .Y(N_76));
    NOR2A write_cycle_RNO (.A(N_2402), .B(cke5), .Y(N_2393_2));
    AND2 un3_ts_delay_I_44 (.A(\DWACT_FINC_E[7] ), .B(
        \DWACT_FINC_E[9] ), .Y(\DWACT_FINC_E[10] ));
    NOR2B busy_RNO_2 (.A(cke41), .B(N_2402), .Y(N_66));
    OR2A \read_counter_RNIO263V_0[2]  (.A(address_N_5_mux_0), .B(N_207)
        , .Y(N_429));
    NOR2A \dout_RNO[2]  (.A(memory_controller_0_DATA_OUT[2]), .B(
        N_2387), .Y(\dout_6[2] ));
    NOR2 \write_counter_RNICRL66[3]  (.A(N_2394), .B(cke23), .Y(
        N_364_1));
    AND3 un3_ts_delay_I_8 (.A(timestamp_0_TIMESTAMP[0]), .B(
        timestamp_0_TIMESTAMP[1]), .C(timestamp_0_TIMESTAMP[2]), .Y(
        N_22));
    AO1A \address_12_0_a3_1_RNI0JG91[11]  (.A(cke5_1), .B(
        \write_counter[3]_net_1 ), .C(N_109), .Y(\address_12_0_0[11] ));
    NOR2B un6_write_counter_I_6 (.A(\write_counter[1]_net_1 ), .B(N_75)
        , .Y(N_3));
    DFN0E1C0 weVAL_inst_1 (.D(weVAL_3), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_3), .E(
        N_2402_0), .Q(weVAL));
    NOR2B \write_counter_RNI57CS_0[0]  (.A(cke5_1), .B(
        \write_counter[0]_net_1 ), .Y(N_2391));
    NOR3B write_cycle_RNID137B7 (.A(N_162), .B(address_N_7_mux), .C(
        N_314), .Y(address_N_8_mux));
    AND2 un3_ts_delay_I_47 (.A(timestamp_0_TIMESTAMP[15]), .B(
        timestamp_0_TIMESTAMP[16]), .Y(\DWACT_FINC_E[11] ));
    DFN0P0 \address_cl_2[0]  (.D(N_112), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .PRE(reset_pulse_0_RESET_17), .Q(
        address_cl_2[0]));
    DFN0E1P0 \dread_cl_1[0]  (.D(N_2369), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .PRE(reset_pulse_0_RESET_3), .E(
        N_151), .Q(\dread_cl[0] ));
    NOR2A \dout_RNO[1]  (.A(memory_controller_0_DATA_OUT[1]), .B(
        N_2387), .Y(\dout_6[1] ));
    XOR2 \ts_delay_RNIULJ9[8]  (.A(\ts_delay[8]_net_1 ), .B(
        timestamp_0_TIMESTAMP[8]), .Y(un1_TIMESTAMP_8));
    NOR3B \address_RNO_0[11]  (.A(N_429), .B(
        memory_controller_0_ROW_OUT[11]), .C(\address_25_m_0_o2_0[12] )
        , .Y(N_297));
    DFN0E0C0 \ts_delay[18]  (.D(I_53_0), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_11), .E(
        N_2371), .Q(\ts_delay[18]_net_1 ));
    DFN0E0C0 \dread[13]  (.D(SDRAM_D13_in), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_7), .E(
        N_2372), .Q(\dread[13]_net_1 ));
    XOR2 \ts_delay_RNIE5J9[0]  (.A(\ts_delay[0]_net_1 ), .B(
        timestamp_0_TIMESTAMP[0]), .Y(un1_TIMESTAMP_0));
    NOR2A \read_counter_RNO_0[1]  (.A(N_150), .B(\read_counter_4[2] ), 
        .Y(\read_counter_16_i_a2_0_0[1] ));
    OR2B \read_counter_16_i_o2[2]  (.A(\read_counter_8[1] ), .B(
        \DWACT_ADD_CI_0_partial_sum[0] ), .Y(N_187));
    DFN0E1C0 \dout[12]  (.D(\dout_6[12] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_7), .E(
        N_27), .Q(dout[12]));
    XOR2 read_counter_4_I_12 (.A(\read_counter[1]_net_1 ), .B(
        \DWACT_ADD_CI_0_TMP_0[0] ), .Y(\read_counter_4[1] ));
    NOR2A \write_counter_RNI0MQR8[1]  (.A(N_364_1), .B(cke35), .Y(
        address_cl_239_0_a2_5_out));
    AO1D we_RNO_1 (.A(N_235), .B(N_185), .C(N_314), .Y(
        un1_we_2_sqmuxa_i_0));
    XO1 \ts_delay_RNIILIP1[15]  (.A(timestamp_0_TIMESTAMP[15]), .B(
        \ts_delay[15]_net_1 ), .C(un1_TIMESTAMP_23), .Y(cke133_0_o2_1));
    AOI1B \address_RNO_0[5]  (.A(N_172), .B(N_2402_0), .C(address[5]), 
        .Y(\address_25_i_m_i_a2_0[5] ));
    NOR2B \address_RNO_2[0]  (.A(memory_controller_0_COL_OUT[0]), .B(
        N_165), .Y(N_341));
    NOR3A \write_counter_RNIU0R51[1]  (.A(\write_counter[2]_net_1 ), 
        .B(\write_counter[1]_net_1 ), .C(N_2417), .Y(N_2452));
    NOR3B \write_counter_RNINAEV7[0]  (.A(N_2403), .B(cke17_1_1), .C(
        N_2409), .Y(N_2442));
    OR3 \read_counter_RNI93S4S[3]  (.A(address_N_10), .B(d_N_3_mux_1), 
        .C(\DWACT_ADD_CI_0_partial_sum[0] ), .Y(
        \read_counter_RNI93S4S[3]_net_1 ));
    OR2 un1_TIMESTAMP_1lto23_0_o2_1 (.A(timestamp_0_TIMESTAMP[21]), .B(
        timestamp_0_TIMESTAMP[20]), .Y(
        un1_TIMESTAMP_1lto23_0_o2_1_net_1));
    OR3A \init_counter_RNIAQDP6[0]  (.A(N_224_i), .B(N_411), .C(N_252), 
        .Y(\init_counter_7[0] ));
    NOR3B ras_RNO_5 (.A(N_424), .B(address_N_3_mux_0), .C(N_190), .Y(
        N_368));
    NOR3 \address_RNO[2]  (.A(N_286), .B(\address_25_m_i_0[2] ), .C(
        N_177), .Y(N_61));
    AO1A \write_counter_RNIEIOO1[3]  (.A(cke5_1), .B(
        \write_counter[3]_net_1 ), .C(N_2445), .Y(
        \address_cl_81_0_o2_0[0] ));
    NOR3C \read_counter_RNI7RQNA[3]  (.A(\read_counter_4[2] ), .B(
        \address_25_m_0_a2_2_0[12] ), .C(N_187), .Y(N_376));
    DFN0E1C0 \read_counter[0]  (.D(N_72), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_3), .E(
        N_151), .Q(\read_counter[0]_net_1 ));
    DFN0C0 \address[12]  (.D(\address_37[12] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_18), .Q(
        address[12]));
    NOR2B \dread_RNIAMDF[13]  (.A(\dread[13]_net_1 ), .B(\dread_cl[0] )
        , .Y(sdram_interface_0_DATA_READ[13]));
    NOR2A \read_counter_RNI0PQ23[2]  (.A(N_227), .B(N_406_1), .Y(
        \address_cl_239_0_a2_1_a2_0[0] ));
    DFN0E1C0 \dout[2]  (.D(\dout_6[2] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_3), .E(
        N_27), .Q(dout[2]));
    NOR2B read_cycle_RNIHT241 (.A(cke56), .B(N_151), .Y(N_73));
    AO1 \address_cl_5_RNO[0]  (.A(address_cl_5[0]), .B(N_394), .C(
        N_163), .Y(\address_cl_237[0] ));
    NOR2 \address_RNO_0[7]  (.A(memory_controller_0_ROW_OUT[7]), .B(
        N_433), .Y(N_274));
    OR2 busy_RNO_7 (.A(N_321), .B(N_2387), .Y(busy_2_sqmuxa_1_i_0));
    NOR2B \address_RNO_0[10]  (.A(\address_37_0_f0_i_a2_0_0[10] ), .B(
        N_185), .Y(\address_37_0_f0_i_a2_0_1[10] ));
    OR3 ras_RNO_1 (.A(N_336), .B(N_367), .C(
        un1_ras_2_sqmuxa_1_i_o2_0_1), .Y(N_143));
    DFN0E0C0 \ts_delay[15]  (.D(I_43_2), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_11), .E(
        N_2371), .Q(\ts_delay[15]_net_1 ));
    NOR2 \address_RNO_0[8]  (.A(memory_controller_0_ROW_OUT[8]), .B(
        N_433), .Y(N_271));
    NOR2B \address_cl_12_RNO_8[0]  (.A(N_406_1), .B(address_N_7_1), .Y(
        address_m8_0_a4_1_0));
    NOR2B \dread_RNIRLHJ[5]  (.A(\dread[5]_net_1 ), .B(\dread_cl[0] ), 
        .Y(sdram_interface_0_DATA_READ[5]));
    NOR2A \dout_RNO[5]  (.A(memory_controller_0_DATA_OUT[5]), .B(
        N_2387), .Y(\dout_6[5] ));
    DFN0E0C0 \dread[10]  (.D(SDRAM_D10_in), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_7), .E(
        N_2372), .Q(\dread[10]_net_1 ));
    OR2A \write_counter_RNIJP4L2[1]  (.A(N_2410), .B(
        \write_counter_8_i_0_0[1] ), .Y(N_17));
    AO1A \address_RNO[12]  (.A(N_149), .B(address[12]), .C(N_295), .Y(
        \address_37[12] ));
    DFN0E1C0 \write_counter[2]  (.D(N_2397), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_6), .E(
        N_2402_0), .Q(\write_counter[2]_net_1 ));
    VCC VCC_i (.Y(VCC));
    OR3 un1_TIMESTAMP_1lto23_0_o2_18 (.A(
        un1_TIMESTAMP_1lto23_0_o2_7_net_1), .B(
        un1_TIMESTAMP_1lto23_0_o2_6_net_1), .C(
        un1_TIMESTAMP_1lto23_0_o2_15_net_1), .Y(
        un1_TIMESTAMP_1lto23_0_o2_18_net_1));
    NOR3A \read_counter_RNIEH367[3]  (.A(\address_25_m_i_o2_1_a0_0[0] )
        , .B(\read_counter_4[2] ), .C(\DWACT_ADD_CI_0_partial_sum[0] ), 
        .Y(\address_25_m_i_o2_1_a0_2[0] ));
    DFN0E0C0 \dread[1]  (.D(SDRAM_D1_in), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_11), .E(
        N_2372), .Q(\dread[1]_net_1 ));
    DFN0P0 \address_cl_8[0]  (.D(\address_cl_238[0] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .PRE(reset_pulse_0_RESET_22), .Q(
        address_cl_8[0]));
    NOR2A \write_counter_RNI8T5QB[2]  (.A(N_164), .B(cke29), .Y(
        d_N_3_mux));
    OR2B \read_counter_RNI4MUR04[2]  (.A(N_431), .B(N_162), .Y(N_177));
    NOR3A \write_counter_RNIU0R51_0[0]  (.A(\write_counter[3]_net_1 ), 
        .B(cke5_1), .C(\write_counter[0]_net_1 ), .Y(N_90));
    DFN0E1C0 \read_counter[3]  (.D(\read_counter_10[3] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_3), .E(
        N_151), .Q(\read_counter[3]_net_1 ));
    XOR2 \ts_delay_RNI0HOS[18]  (.A(\ts_delay[18]_net_1 ), .B(
        timestamp_0_TIMESTAMP[18]), .Y(un1_TIMESTAMP_18));
    AO1A \write_counter_RNILO9F1_0[1]  (.A(\write_counter[1]_net_1 ), 
        .B(N_2417), .C(cke5_1), .Y(\write_counter_8_i_0_0[1] ));
    OR3 \ts_delay_RNIKQ4J3[13]  (.A(un1_TIMESTAMP_20), .B(
        un1_TIMESTAMP_14), .C(cke133_0_o2_3), .Y(cke133_0_o2_13));
    AND2 init_counter_13_I_1 (.A(\init_counter_11[0] ), .B(N_24), .Y(
        \DWACT_ADD_CI_0_TMP_2[0] ));
    NOR2 \address_RNO_0[2]  (.A(memory_controller_0_ROW_OUT[2]), .B(
        N_433), .Y(N_286));
    OR2 \read_counter_RNIO263V[2]  (.A(\address_25_m_i_o2_1_0[8] ), .B(
        N_338), .Y(N_431));
    OR3A \address_cl_12_RNO_2[0]  (.A(N_185), .B(N_267), .C(N_266), .Y(
        \address_cl_240_iv_i_0_1[0] ));
    NOR2A write_exit_RNI8M221 (.A(write_exit_net_1), .B(
        write_cycle_0_sqmuxa), .Y(N_115));
    NOR3 \address_RNO_4[8]  (.A(N_164), .B(N_207), .C(
        memory_controller_0_COL_OUT[8]), .Y(N_272));
    XO1 \ts_delay_RNIKLGP1[12]  (.A(timestamp_0_TIMESTAMP[12]), .B(
        \ts_delay[12]_net_1 ), .C(un1_TIMESTAMP_18), .Y(cke133_0_o2_4));
    OR3 un1_TIMESTAMP_1lto23_0_o2_19 (.A(
        un1_TIMESTAMP_1lto23_0_o2_13_net_1), .B(
        un1_TIMESTAMP_1lto23_0_o2_12_net_1), .C(
        un1_TIMESTAMP_1lto23_0_o2_16_net_1), .Y(
        un1_TIMESTAMP_1lto23_0_o2_19_net_1));
    XOR2 un3_ts_delay_I_65 (.A(N_3_1), .B(timestamp_0_TIMESTAMP[22]), 
        .Y(I_65_0));
    NOR2A \dout_RNO[4]  (.A(memory_controller_0_DATA_OUT[4]), .B(
        N_2387), .Y(\dout_6[4] ));
    OR2A busy_2_sqmuxa_1_i_o2 (.A(read_cycle_net_1), .B(
        read_exit_net_1), .Y(N_54));
    AX1 \read_counter_RNO[2]  (.A(N_187), .B(N_150), .C(
        \read_counter_4[2] ), .Y(N_39));
    AND2 un3_ts_delay_I_63 (.A(\DWACT_FINC_E[15] ), .B(
        timestamp_0_TIMESTAMP[21]), .Y(\DWACT_FINC_E[16] ));
    OR2 ba0_RNO (.A(memory_controller_0_BA_OUT[0]), .B(ba0_1_sqmuxa), 
        .Y(ba0_10));
    AND3 un2_init_counter_1_I_8 (.A(\init_counter[0]_net_1 ), .B(
        \init_counter[1]_net_1 ), .C(\init_counter[2]_net_1 ), .Y(
        N_2_0));
    OR2 un1_TIMESTAMP_1lto23_0_o2_6 (.A(timestamp_0_TIMESTAMP[17]), .B(
        timestamp_0_TIMESTAMP[16]), .Y(
        un1_TIMESTAMP_1lto23_0_o2_6_net_1));
    DFN0P0 \address_cl_5[0]  (.D(\address_cl_237[0] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .PRE(reset_pulse_0_RESET_18), .Q(
        address_cl_5[0]));
    NOR2A \address_cl_240_iv_i_a2_3[0]  (.A(\init_counter_9[2] ), .B(
        I_7_5), .Y(N_391));
    DFN0E1C0 \write_counter[0]  (.D(N_2398), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_6), .E(
        N_2402_0), .Q(\write_counter[0]_net_1 ));
    AND3 un3_ts_delay_I_31 (.A(\DWACT_FINC_E[6] ), .B(
        timestamp_0_TIMESTAMP[9]), .C(timestamp_0_TIMESTAMP[10]), .Y(
        N_14));
    NOR2B \read_counter_RNI2FUB[0]  (.A(cke56_0_a2_1), .B(cke56_0_a2_0)
        , .Y(cke56));
    NOR2B \dread_RNITNHJ[7]  (.A(\dread[7]_net_1 ), .B(\dread_cl[0] ), 
        .Y(sdram_interface_0_DATA_READ[7]));
    NOR2A cke_RNO_6 (.A(N_235), .B(N_173), .Y(N_305));
    
endmodule


module constant_sensor_data(
       constant_sensor_data_0_G_DATA_STACK_0,
       timestamp_0_TIMESTAMP,
       constant_sensor_data_0_M_DATA_STACK_30,
       constant_sensor_data_0_M_DATA_STACK_31,
       constant_sensor_data_0_M_DATA_STACK_32,
       constant_sensor_data_0_M_DATA_STACK_37,
       constant_sensor_data_0_M_DATA_STACK_60,
       constant_sensor_data_0_M_DATA_STACK_62,
       constant_sensor_data_0_M_DATA_STACK_67,
       constant_sensor_data_0_M_DATA_STACK_0,
       constant_sensor_data_0_M_DATA_STACK_6,
       constant_sensor_data_0_M_DATA_STACK_7,
       constant_sensor_data_0_M_DATA_STACK_8,
       constant_sensor_data_0_M_DATA_STACK_9,
       constant_sensor_data_0_M_DATA_STACK_10,
       constant_sensor_data_0_M_DATA_STACK_11,
       constant_sensor_data_0_M_DATA_STACK_12,
       constant_sensor_data_0_M_DATA_STACK_13,
       constant_sensor_data_0_M_DATA_STACK_14,
       constant_sensor_data_0_M_DATA_STACK_15,
       constant_sensor_data_0_M_DATA_STACK_16,
       constant_sensor_data_0_M_DATA_STACK_17,
       constant_sensor_data_0_M_DATA_STACK_18,
       constant_sensor_data_0_M_DATA_STACK_19,
       constant_sensor_data_0_M_DATA_STACK_20,
       constant_sensor_data_0_M_DATA_STACK_21,
       constant_sensor_data_0_M_DATA_STACK_22,
       constant_sensor_data_0_M_DATA_STACK_23,
       constant_sensor_data_0_M_DATA_STACK_24,
       constant_sensor_data_0_M_DATA_STACK_25,
       constant_sensor_data_0_M_DATA_STACK_26,
       constant_sensor_data_0_M_DATA_STACK_27,
       constant_sensor_data_0_M_DATA_STACK_28,
       constant_sensor_data_0_M_DATA_STACK_29,
       constant_sensor_data_0_M_DATA_STACK_33,
       constant_sensor_data_0_M_DATA_STACK_34,
       constant_sensor_data_0_M_DATA_STACK_35,
       constant_sensor_data_0_M_DATA_STACK_36,
       constant_sensor_data_0_M_DATA_STACK_38,
       constant_sensor_data_0_M_DATA_STACK_39,
       constant_sensor_data_0_M_DATA_STACK_40,
       constant_sensor_data_0_M_DATA_STACK_41,
       constant_sensor_data_0_M_DATA_STACK_42,
       constant_sensor_data_0_M_DATA_STACK_43,
       constant_sensor_data_0_M_DATA_STACK_44,
       constant_sensor_data_0_M_DATA_STACK_45,
       constant_sensor_data_0_M_DATA_STACK_46,
       constant_sensor_data_0_M_DATA_STACK_47,
       constant_sensor_data_0_M_DATA_STACK_48,
       constant_sensor_data_0_M_DATA_STACK_49,
       constant_sensor_data_0_M_DATA_STACK_50,
       constant_sensor_data_0_M_DATA_STACK_51,
       constant_sensor_data_0_M_DATA_STACK_52,
       constant_sensor_data_0_M_DATA_STACK_53,
       constant_sensor_data_0_M_DATA_STACK_54,
       constant_sensor_data_0_M_DATA_STACK_55,
       constant_sensor_data_0_M_DATA_STACK_56,
       constant_sensor_data_0_M_DATA_STACK_57,
       constant_sensor_data_0_M_DATA_STACK_58,
       constant_sensor_data_0_M_DATA_STACK_59,
       constant_sensor_data_0_M_DATA_STACK_61,
       constant_sensor_data_0_M_DATA_STACK_63,
       constant_sensor_data_0_M_DATA_STACK_64,
       constant_sensor_data_0_M_DATA_STACK_65,
       constant_sensor_data_0_M_DATA_STACK_66,
       constant_sensor_data_0_M_DATA_STACK_68,
       constant_sensor_data_0_M_DATA_STACK_69,
       constant_sensor_data_0_M_DATA_STACK_70,
       constant_sensor_data_0_M_DATA_STACK_71,
       constant_sensor_data_0_M_DATA_STACK_72,
       constant_sensor_data_0_M_DATA_STACK_73,
       constant_sensor_data_0_M_DATA_STACK_74,
       constant_sensor_data_0_M_DATA_STACK_75,
       constant_sensor_data_0_M_DATA_STACK_76,
       constant_sensor_data_0_M_DATA_STACK_77,
       constant_sensor_data_0_G_DATA_STACK_0_d0,
       constant_sensor_data_0_G_DATA_STACK_7,
       constant_sensor_data_0_G_DATA_STACK_8,
       constant_sensor_data_0_G_DATA_STACK_9,
       constant_sensor_data_0_G_DATA_STACK_10,
       constant_sensor_data_0_G_DATA_STACK_11,
       constant_sensor_data_0_G_DATA_STACK_12,
       constant_sensor_data_0_G_DATA_STACK_13,
       constant_sensor_data_0_G_DATA_STACK_14,
       constant_sensor_data_0_G_DATA_STACK_15,
       constant_sensor_data_0_G_DATA_STACK_16,
       constant_sensor_data_0_G_DATA_STACK_17,
       constant_sensor_data_0_G_DATA_STACK_18,
       constant_sensor_data_0_G_DATA_STACK_19,
       constant_sensor_data_0_G_DATA_STACK_20,
       constant_sensor_data_0_G_DATA_STACK_21,
       constant_sensor_data_0_G_DATA_STACK_22,
       constant_sensor_data_0_G_DATA_STACK_23,
       constant_sensor_data_0_G_DATA_STACK_24,
       constant_sensor_data_0_G_DATA_STACK_25,
       constant_sensor_data_0_G_DATA_STACK_26,
       constant_sensor_data_0_G_DATA_STACK_27,
       constant_sensor_data_0_G_DATA_STACK_28,
       constant_sensor_data_0_G_DATA_STACK_29,
       constant_sensor_data_0_G_DATA_STACK_30,
       constant_sensor_data_0_G_DATA_STACK_31,
       constant_sensor_data_0_G_DATA_STACK_32,
       constant_sensor_data_0_G_DATA_STACK_33,
       constant_sensor_data_0_G_DATA_STACK_34,
       constant_sensor_data_0_G_DATA_STACK_35,
       constant_sensor_data_0_G_DATA_STACK_36,
       constant_sensor_data_0_G_DATA_STACK_37,
       constant_sensor_data_0_G_DATA_STACK_38,
       constant_sensor_data_0_G_DATA_STACK_39,
       constant_sensor_data_0_G_DATA_STACK_40,
       constant_sensor_data_0_G_DATA_STACK_41,
       constant_sensor_data_0_G_DATA_STACK_42,
       constant_sensor_data_0_G_DATA_STACK_43,
       constant_sensor_data_0_G_DATA_STACK_44,
       constant_sensor_data_0_G_DATA_STACK_45,
       constant_sensor_data_0_G_DATA_STACK_46,
       constant_sensor_data_0_G_DATA_STACK_47,
       clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT,
       reset_pulse_0_RESET_0,
       constant_sensor_data_0_NEXT_BYTE,
       reset_pulse_0_RESET_19,
       reset_pulse_0_RESET_18,
       reset_pulse_0_RESET_15,
       reset_pulse_0_RESET_7,
       reset_pulse_0_RESET_8,
       reset_pulse_0_RESET_9,
       reset_pulse_0_RESET_10,
       reset_pulse_0_RESET_3,
       reset_pulse_0_RESET_1,
       reset_pulse_0_RESET_2,
       reset_pulse_0_RESET_4,
       reset_pulse_0_RESET_5
    );
output [1:1] constant_sensor_data_0_G_DATA_STACK_0;
input  [23:0] timestamp_0_TIMESTAMP;
output constant_sensor_data_0_M_DATA_STACK_30;
output constant_sensor_data_0_M_DATA_STACK_31;
output constant_sensor_data_0_M_DATA_STACK_32;
output constant_sensor_data_0_M_DATA_STACK_37;
output constant_sensor_data_0_M_DATA_STACK_60;
output constant_sensor_data_0_M_DATA_STACK_62;
output constant_sensor_data_0_M_DATA_STACK_67;
output constant_sensor_data_0_M_DATA_STACK_0;
output constant_sensor_data_0_M_DATA_STACK_6;
output constant_sensor_data_0_M_DATA_STACK_7;
output constant_sensor_data_0_M_DATA_STACK_8;
output constant_sensor_data_0_M_DATA_STACK_9;
output constant_sensor_data_0_M_DATA_STACK_10;
output constant_sensor_data_0_M_DATA_STACK_11;
output constant_sensor_data_0_M_DATA_STACK_12;
output constant_sensor_data_0_M_DATA_STACK_13;
output constant_sensor_data_0_M_DATA_STACK_14;
output constant_sensor_data_0_M_DATA_STACK_15;
output constant_sensor_data_0_M_DATA_STACK_16;
output constant_sensor_data_0_M_DATA_STACK_17;
output constant_sensor_data_0_M_DATA_STACK_18;
output constant_sensor_data_0_M_DATA_STACK_19;
output constant_sensor_data_0_M_DATA_STACK_20;
output constant_sensor_data_0_M_DATA_STACK_21;
output constant_sensor_data_0_M_DATA_STACK_22;
output constant_sensor_data_0_M_DATA_STACK_23;
output constant_sensor_data_0_M_DATA_STACK_24;
output constant_sensor_data_0_M_DATA_STACK_25;
output constant_sensor_data_0_M_DATA_STACK_26;
output constant_sensor_data_0_M_DATA_STACK_27;
output constant_sensor_data_0_M_DATA_STACK_28;
output constant_sensor_data_0_M_DATA_STACK_29;
output constant_sensor_data_0_M_DATA_STACK_33;
output constant_sensor_data_0_M_DATA_STACK_34;
output constant_sensor_data_0_M_DATA_STACK_35;
output constant_sensor_data_0_M_DATA_STACK_36;
output constant_sensor_data_0_M_DATA_STACK_38;
output constant_sensor_data_0_M_DATA_STACK_39;
output constant_sensor_data_0_M_DATA_STACK_40;
output constant_sensor_data_0_M_DATA_STACK_41;
output constant_sensor_data_0_M_DATA_STACK_42;
output constant_sensor_data_0_M_DATA_STACK_43;
output constant_sensor_data_0_M_DATA_STACK_44;
output constant_sensor_data_0_M_DATA_STACK_45;
output constant_sensor_data_0_M_DATA_STACK_46;
output constant_sensor_data_0_M_DATA_STACK_47;
output constant_sensor_data_0_M_DATA_STACK_48;
output constant_sensor_data_0_M_DATA_STACK_49;
output constant_sensor_data_0_M_DATA_STACK_50;
output constant_sensor_data_0_M_DATA_STACK_51;
output constant_sensor_data_0_M_DATA_STACK_52;
output constant_sensor_data_0_M_DATA_STACK_53;
output constant_sensor_data_0_M_DATA_STACK_54;
output constant_sensor_data_0_M_DATA_STACK_55;
output constant_sensor_data_0_M_DATA_STACK_56;
output constant_sensor_data_0_M_DATA_STACK_57;
output constant_sensor_data_0_M_DATA_STACK_58;
output constant_sensor_data_0_M_DATA_STACK_59;
output constant_sensor_data_0_M_DATA_STACK_61;
output constant_sensor_data_0_M_DATA_STACK_63;
output constant_sensor_data_0_M_DATA_STACK_64;
output constant_sensor_data_0_M_DATA_STACK_65;
output constant_sensor_data_0_M_DATA_STACK_66;
output constant_sensor_data_0_M_DATA_STACK_68;
output constant_sensor_data_0_M_DATA_STACK_69;
output constant_sensor_data_0_M_DATA_STACK_70;
output constant_sensor_data_0_M_DATA_STACK_71;
output constant_sensor_data_0_M_DATA_STACK_72;
output constant_sensor_data_0_M_DATA_STACK_73;
output constant_sensor_data_0_M_DATA_STACK_74;
output constant_sensor_data_0_M_DATA_STACK_75;
output constant_sensor_data_0_M_DATA_STACK_76;
output constant_sensor_data_0_M_DATA_STACK_77;
output constant_sensor_data_0_G_DATA_STACK_0_d0;
output constant_sensor_data_0_G_DATA_STACK_7;
output constant_sensor_data_0_G_DATA_STACK_8;
output constant_sensor_data_0_G_DATA_STACK_9;
output constant_sensor_data_0_G_DATA_STACK_10;
output constant_sensor_data_0_G_DATA_STACK_11;
output constant_sensor_data_0_G_DATA_STACK_12;
output constant_sensor_data_0_G_DATA_STACK_13;
output constant_sensor_data_0_G_DATA_STACK_14;
output constant_sensor_data_0_G_DATA_STACK_15;
output constant_sensor_data_0_G_DATA_STACK_16;
output constant_sensor_data_0_G_DATA_STACK_17;
output constant_sensor_data_0_G_DATA_STACK_18;
output constant_sensor_data_0_G_DATA_STACK_19;
output constant_sensor_data_0_G_DATA_STACK_20;
output constant_sensor_data_0_G_DATA_STACK_21;
output constant_sensor_data_0_G_DATA_STACK_22;
output constant_sensor_data_0_G_DATA_STACK_23;
output constant_sensor_data_0_G_DATA_STACK_24;
output constant_sensor_data_0_G_DATA_STACK_25;
output constant_sensor_data_0_G_DATA_STACK_26;
output constant_sensor_data_0_G_DATA_STACK_27;
output constant_sensor_data_0_G_DATA_STACK_28;
output constant_sensor_data_0_G_DATA_STACK_29;
output constant_sensor_data_0_G_DATA_STACK_30;
output constant_sensor_data_0_G_DATA_STACK_31;
output constant_sensor_data_0_G_DATA_STACK_32;
output constant_sensor_data_0_G_DATA_STACK_33;
output constant_sensor_data_0_G_DATA_STACK_34;
output constant_sensor_data_0_G_DATA_STACK_35;
output constant_sensor_data_0_G_DATA_STACK_36;
output constant_sensor_data_0_G_DATA_STACK_37;
output constant_sensor_data_0_G_DATA_STACK_38;
output constant_sensor_data_0_G_DATA_STACK_39;
output constant_sensor_data_0_G_DATA_STACK_40;
output constant_sensor_data_0_G_DATA_STACK_41;
output constant_sensor_data_0_G_DATA_STACK_42;
output constant_sensor_data_0_G_DATA_STACK_43;
output constant_sensor_data_0_G_DATA_STACK_44;
output constant_sensor_data_0_G_DATA_STACK_45;
output constant_sensor_data_0_G_DATA_STACK_46;
output constant_sensor_data_0_G_DATA_STACK_47;
input  clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT;
input  reset_pulse_0_RESET_0;
output constant_sensor_data_0_NEXT_BYTE;
input  reset_pulse_0_RESET_19;
input  reset_pulse_0_RESET_18;
input  reset_pulse_0_RESET_15;
input  reset_pulse_0_RESET_7;
input  reset_pulse_0_RESET_8;
input  reset_pulse_0_RESET_9;
input  reset_pulse_0_RESET_10;
input  reset_pulse_0_RESET_3;
input  reset_pulse_0_RESET_1;
input  reset_pulse_0_RESET_2;
input  reset_pulse_0_RESET_4;
input  reset_pulse_0_RESET_5;

    wire \geiger_stack_RNILALN3[0]_net_1 , g_data12_4_0, g_data12_6, 
        g_data12_5, g_data12_3, g_data12_2_0, g_data12_1, g_data12_0, 
        next_byte_control_i, N_9, \g_counter[1]_net_1 , 
        \g_counter[0]_net_1 , N_7, \g_counter[3]_net_1 , 
        \DWACT_FINC_E[0] , N_2, \g_counter[8]_net_1 , 
        \DWACT_FINC_E[4] , N_16, \g_data[1]_net_1 , \g_data[0]_net_1 , 
        N_14, \g_data[3]_net_1 , \DWACT_FINC_E_0[0] , N_9_0, 
        \g_data[8]_net_1 , \DWACT_FINC_E_0[4] , N_6, \DWACT_FINC_E[7] , 
        \DWACT_FINC_E[6] , I_5_0, N_48, \DWACT_FINC_E_1[0] , N_47, 
        N_42, \DWACT_FINC_E_1[4] , N_39, \DWACT_FINC_E_0[7] , 
        \DWACT_FINC_E_0[6] , \DWACT_FINC_E[34] , N_18, N_20, N_16_0, 
        \DWACT_FINC_E_2[0] , N_11, \DWACT_FINC_E_2[4] , N_8, 
        \DWACT_FINC_E_1[7] , \DWACT_FINC_E_1[6] , \g_counter[4]_net_1 , 
        g_data12_4, g_data12_2, \g_counter[5]_net_1 , 
        \g_counter[7]_net_1 , \g_counter[9]_net_1 , 
        \g_counter[6]_net_1 , \g_counter[2]_net_1 , g_data12, 
        \g_counter_3[0] , \g_counter_3[6] , I_17_2, \g_counter_3[9] , 
        I_26_2, \g_counter_3[3] , I_9_2, \g_counter_3[4] , I_12_2, 
        next_byte_control_RNO_net_1, constant_sensor_data_VCC, I_7_0, 
        I_9_0, I_12_0, I_14_0, I_17_0, I_20_0, I_23_0, I_26_0, I_28_0, 
        I_32_0, I_35_0, I_37_0, I_40_0, I_43_0, I_46_0, I_49, I_53, 
        I_56, I_59, I_62, I_65, I_70, I_74, I_77, I_82, I_86, I_89, 
        I_92, I_95, I_101, I_103, I_105, I_108, I_110, I_113, I_116, 
        I_119, I_122, I_124, I_128, I_131, I_133, I_136, I_139, I_142, 
        I_145, I_149, I_4_0, I_5_1, I_7_1, I_9_1, I_12_1, I_14_1, 
        I_17_1, I_20_1, I_23_1, I_26_1, I_28_1, I_32_1, I_35_1, I_37_1, 
        I_40_1, I_43_1, I_46_1, \g_data[2]_net_1 , \g_data[4]_net_1 , 
        \g_data[5]_net_1 , \g_data[6]_net_1 , \g_data[7]_net_1 , 
        \g_data[9]_net_1 , \g_data[10]_net_1 , \g_data[11]_net_1 , 
        \g_data[12]_net_1 , \g_data[13]_net_1 , \g_data[14]_net_1 , 
        \g_data[15]_net_1 , \g_data[16]_net_1 , I_5_2, I_7_2, I_14_2, 
        I_20_2, I_23_2, N_2_0, \DWACT_FINC_E[28] , \DWACT_FINC_E[10] , 
        \DWACT_FINC_E[12] , \DWACT_FINC_E[2] , \DWACT_FINC_E[5] , N_3, 
        \DWACT_FINC_E[11] , N_4, \DWACT_FINC_E[9] , N_5, N_6_0, 
        \DWACT_FINC_E[8] , N_7_0, N_9_1, N_10, \DWACT_FINC_E[3] , N_12, 
        N_13, N_14_0, \DWACT_FINC_E[1] , N_15, N_17, 
        \DWACT_FINC_E[24] , \DWACT_FINC_E[23] , \DWACT_FINC_E[27] , 
        \DWACT_FINC_E[26] , N_21, N_22, \DWACT_FINC_E[25] , N_23, 
        \DWACT_FINC_E[29] , \DWACT_FINC_E[30] , N_24, 
        \DWACT_FINC_E[15] , \DWACT_FINC_E[17] , \DWACT_FINC_E[22] , 
        N_25, \DWACT_FINC_E[21] , \DWACT_FINC_E_0[9] , 
        \DWACT_FINC_E_0[12] , \DWACT_FINC_E[20] , N_26, 
        \DWACT_FINC_E[13] , \DWACT_FINC_E[19] , N_27, 
        \DWACT_FINC_E[18] , N_28, \DWACT_FINC_E[33] , 
        \DWACT_FINC_E_0[2] , \DWACT_FINC_E_0[5] , N_29, 
        \DWACT_FINC_E_0[28] , \DWACT_FINC_E[16] , N_30, N_31, 
        \DWACT_FINC_E[14] , N_32, N_33, \DWACT_FINC_E_0[10] , N_34, 
        \DWACT_FINC_E_0[11] , N_35, N_36, N_37, \DWACT_FINC_E_0[8] , 
        N_38, N_40, N_41, \DWACT_FINC_E_0[3] , N_43, N_44, N_45, 
        \DWACT_FINC_E_0[1] , N_46, N_2_1, \DWACT_FINC_E_1[10] , 
        \DWACT_FINC_E_1[9] , N_3_0, N_4_0, \DWACT_FINC_E_1[8] , N_5_0, 
        N_7_1, \DWACT_FINC_E_1[2] , \DWACT_FINC_E_1[5] , N_8_0, 
        \DWACT_FINC_E_1[3] , N_10_0, N_11_0, N_12_0, 
        \DWACT_FINC_E_1[1] , N_13_0, N_15_0, \DWACT_FINC_E_2[2] , 
        \DWACT_FINC_E_2[3] , N_3_1, N_4_1, N_5_1, \DWACT_FINC_E_2[1] , 
        N_6_1, N_8_1, GND;
    
    DFN1E0C0 \mag_stack[56]  (.D(I_77), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_9), .E(g_data12_4_0), .Q(
        constant_sensor_data_0_M_DATA_STACK_54));
    AND2 un3_mag_data_I_78 (.A(constant_sensor_data_0_M_DATA_STACK_53), 
        .B(constant_sensor_data_0_M_DATA_STACK_54), .Y(
        \DWACT_FINC_E[20] ));
    AND3 un3_mag_data_I_85 (.A(\DWACT_FINC_E[29] ), .B(
        \DWACT_FINC_E[30] ), .C(\DWACT_FINC_E[23] ), .Y(N_24));
    AND3 un3_mag_data_I_24 (.A(\DWACT_FINC_E_1[0] ), .B(
        \DWACT_FINC_E_0[2] ), .C(\DWACT_FINC_E_0[3] ), .Y(
        \DWACT_FINC_E_1[4] ));
    AND3 un3_g_data_I_13 (.A(\DWACT_FINC_E_0[0] ), .B(
        \g_data[3]_net_1 ), .C(\g_data[4]_net_1 ), .Y(N_13_0));
    DFN1E1C0 \geiger_stack[41]  (.D(I_26_1), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_2), .E(g_data12_1), .Q(
        constant_sensor_data_0_G_DATA_STACK_40));
    AND2 un3_g_data_I_21 (.A(\g_data[6]_net_1 ), .B(\g_data[7]_net_1 ), 
        .Y(\DWACT_FINC_E_1[3] ));
    DFN1E1C0 \geiger_stack[23]  (.D(timestamp_0_TIMESTAMP[15]), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_1), .E(g_data12_0), .Q(
        constant_sensor_data_0_G_DATA_STACK_22));
    DFN1E1C0 \g_data[14]  (.D(I_40_1), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_0), .E(g_data12_0), .Q(\g_data[14]_net_1 ));
    NOR2B \g_counter_RNICHMK3_1[1]  (.A(g_data12_6), .B(g_data12_5), 
        .Y(g_data12_1));
    DFN1E1C0 \geiger_stack[10]  (.D(timestamp_0_TIMESTAMP[2]), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_0), .E(g_data12_0), .Q(
        constant_sensor_data_0_G_DATA_STACK_9));
    DFN1E0C0 \mag_stack[68]  (.D(I_116), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_10), .E(g_data12), .Q(
        constant_sensor_data_0_M_DATA_STACK_66));
    AND3 un3_mag_data_I_146 (.A(constant_sensor_data_0_M_DATA_STACK_74)
        , .B(constant_sensor_data_0_M_DATA_STACK_75), .C(
        constant_sensor_data_0_M_DATA_STACK_76), .Y(\DWACT_FINC_E[12] )
        );
    DFN1E0C0 \mag_stack[24]  (.D(timestamp_0_TIMESTAMP[16]), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_8), .E(g_data12_3), .Q(
        constant_sensor_data_0_M_DATA_STACK_22));
    DFN1E1C0 \geiger_stack[35]  (.D(I_9_1), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_1), .E(g_data12_1), .Q(
        constant_sensor_data_0_G_DATA_STACK_34));
    NOR2B \g_counter_RNICHMK3_0[1]  (.A(g_data12_6), .B(g_data12_5), 
        .Y(g_data12_0));
    DFN1E0C0 \mag_stack[27]  (.D(timestamp_0_TIMESTAMP[19]), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_8), .E(g_data12_3), .Q(
        constant_sensor_data_0_M_DATA_STACK_25));
    AND3 un3_g_data_I_10 (.A(\g_data[0]_net_1 ), .B(\g_data[1]_net_1 ), 
        .C(\g_data[2]_net_1 ), .Y(\DWACT_FINC_E_0[0] ));
    XOR2 un3_mag_data_I_59 (.A(N_31), .B(
        constant_sensor_data_0_M_DATA_STACK_49), .Y(I_59));
    XOR2 un3_mag_data_I_40 (.A(N_37), .B(
        constant_sensor_data_0_M_DATA_STACK_43), .Y(I_40_0));
    DFN1E1C0 \geiger_stack[18]  (.D(timestamp_0_TIMESTAMP[10]), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_1), .E(g_data12_0), .Q(
        constant_sensor_data_0_G_DATA_STACK_17));
    AND3 un5_g_counter_1_I_8 (.A(\g_counter[0]_net_1 ), .B(
        \g_counter[1]_net_1 ), .C(\g_counter[2]_net_1 ), .Y(N_8_1));
    AND3 un3_mag_data_I_66 (.A(\DWACT_FINC_E[15] ), .B(
        constant_sensor_data_0_M_DATA_STACK_50), .C(
        constant_sensor_data_0_M_DATA_STACK_51), .Y(\DWACT_FINC_E[33] )
        );
    DFN1E0C0 \mag_stack[73]  (.D(I_131), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_10), .E(g_data12), .Q(
        constant_sensor_data_0_M_DATA_STACK_71));
    AND3 un3_mag_data_I_61 (.A(\DWACT_FINC_E_0[28] ), .B(
        \DWACT_FINC_E[13] ), .C(\DWACT_FINC_E[15] ), .Y(N_30));
    XOR2 un3_mag_data_I_105 (.A(N_17), .B(
        constant_sensor_data_0_M_DATA_STACK_62), .Y(I_105));
    XOR2 un5_g_counter_1_I_5 (.A(\g_counter[0]_net_1 ), .B(
        \g_counter[1]_net_1 ), .Y(I_5_2));
    NOR2B un3_mag_data_I_25 (.A(constant_sensor_data_0_M_DATA_STACK_37)
        , .B(\DWACT_FINC_E_1[4] ), .Y(N_42));
    XOR2 un3_mag_data_I_128 (.A(N_9_1), .B(
        constant_sensor_data_0_M_DATA_STACK_70), .Y(I_128));
    DFN1E0C0 \mag_stack[43]  (.D(I_35_0), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_9), .E(g_data12_4_0), .Q(
        constant_sensor_data_0_M_DATA_STACK_41));
    DFN1E1C0 \g_data[15]  (.D(I_43_1), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_0), .E(g_data12_0), .Q(\g_data[15]_net_1 ));
    DFN1C0 \g_counter[4]  (.D(\g_counter_3[4] ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_18), .Q(\g_counter[4]_net_1 ));
    NOR2B un3_mag_data_I_67 (.A(constant_sensor_data_0_M_DATA_STACK_31)
        , .B(constant_sensor_data_0_M_DATA_STACK_30), .Y(
        \DWACT_FINC_E[34] ));
    DFN1E0C0 \mag_stack[58]  (.D(I_86), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_10), .E(g_data12_4_0), .Q(
        constant_sensor_data_0_M_DATA_STACK_56));
    DFN1E1C0 \geiger_stack[20]  (.D(timestamp_0_TIMESTAMP[12]), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_1), .E(g_data12_0), .Q(
        constant_sensor_data_0_G_DATA_STACK_19));
    XOR2 un3_mag_data_I_32 (.A(N_40), .B(
        constant_sensor_data_0_M_DATA_STACK_40), .Y(I_32_0));
    DFN1E0C0 \mag_stack[29]  (.D(timestamp_0_TIMESTAMP[21]), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_8), .E(g_data12_3), .Q(
        constant_sensor_data_0_M_DATA_STACK_27));
    AND3 un3_mag_data_I_19 (.A(\DWACT_FINC_E_1[0] ), .B(
        \DWACT_FINC_E_0[2] ), .C(
        constant_sensor_data_0_M_DATA_STACK_35), .Y(N_44));
    DFN1E1C0 \g_data[16]  (.D(I_46_1), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_0), .E(g_data12_0), .Q(\g_data[16]_net_1 ));
    XOR2 un3_mag_data_I_122 (.A(N_11), .B(
        constant_sensor_data_0_M_DATA_STACK_68), .Y(I_122));
    AND3 un3_mag_data_I_80 (.A(\DWACT_FINC_E_0[7] ), .B(
        \DWACT_FINC_E_0[9] ), .C(\DWACT_FINC_E_0[12] ), .Y(
        \DWACT_FINC_E[30] ));
    AND2 un3_mag_data_I_72 (.A(\DWACT_FINC_E[15] ), .B(
        \DWACT_FINC_E[17] ), .Y(\DWACT_FINC_E[18] ));
    XOR2 un3_mag_data_I_7 (.A(constant_sensor_data_0_M_DATA_STACK_30), 
        .B(constant_sensor_data_0_M_DATA_STACK_31), .Y(I_7_0));
    XOR2 un5_g_counter_1_I_12 (.A(N_7), .B(\g_counter[4]_net_1 ), .Y(
        I_12_2));
    XOR2 un3_mag_data_I_110 (.A(N_15), .B(
        constant_sensor_data_0_M_DATA_STACK_64), .Y(I_110));
    AND3 un3_g_data_I_27 (.A(\DWACT_FINC_E_0[4] ), .B(
        \g_data[8]_net_1 ), .C(\g_data[9]_net_1 ), .Y(N_8_0));
    DFN1E0C0 \mag_stack[35]  (.D(I_12_0), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_9), .E(g_data12_3), .Q(
        constant_sensor_data_0_M_DATA_STACK_33));
    AND3 un5_g_counter_1_I_22 (.A(\DWACT_FINC_E[0] ), .B(
        \DWACT_FINC_E_2[2] ), .C(\DWACT_FINC_E_2[3] ), .Y(N_3_1));
    AND3 un3_g_data_I_24 (.A(\DWACT_FINC_E_0[0] ), .B(
        \DWACT_FINC_E_1[2] ), .C(\DWACT_FINC_E_1[3] ), .Y(
        \DWACT_FINC_E_0[4] ));
    DFN1C0 \g_counter[9]  (.D(\g_counter_3[9] ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_18), .Q(\g_counter[9]_net_1 ));
    XOR2 un5_g_counter_1_I_7 (.A(N_9), .B(\g_counter[2]_net_1 ), .Y(
        I_7_2));
    AND3 un5_g_counter_1_I_16 (.A(\DWACT_FINC_E[0] ), .B(
        \DWACT_FINC_E_2[1] ), .C(\g_counter[5]_net_1 ), .Y(N_5_1));
    DFN1E1C0 \geiger_stack[16]  (.D(timestamp_0_TIMESTAMP[8]), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_1), .E(g_data12_0), .Q(
        constant_sensor_data_0_G_DATA_STACK_15));
    XOR2 un5_g_counter_1_I_26 (.A(N_2), .B(\g_counter[9]_net_1 ), .Y(
        I_26_2));
    AND3 un5_g_counter_1_I_18 (.A(\g_counter[3]_net_1 ), .B(
        \g_counter[4]_net_1 ), .C(\g_counter[5]_net_1 ), .Y(
        \DWACT_FINC_E_2[2] ));
    DFN1E1C0 \g_data[9]  (.D(I_26_1), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_5), .E(g_data12_2_0), .Q(\g_data[9]_net_1 )
        );
    DFN1E1C0 \geiger_stack[28]  (.D(timestamp_0_TIMESTAMP[20]), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_1), .E(g_data12_1), .Q(
        constant_sensor_data_0_G_DATA_STACK_27));
    DFN1E0C0 \mag_stack[63]  (.D(I_103), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_10), .E(g_data12_4_0), .Q(
        constant_sensor_data_0_M_DATA_STACK_61));
    NOR2B un3_g_data_I_11 (.A(\g_data[3]_net_1 ), .B(
        \DWACT_FINC_E_0[0] ), .Y(N_14));
    AND3 un3_mag_data_I_54 (.A(\DWACT_FINC_E_0[7] ), .B(
        \DWACT_FINC_E_0[9] ), .C(\DWACT_FINC_E_0[12] ), .Y(
        \DWACT_FINC_E[13] ));
    NOR2A \g_counter_RNO[3]  (.A(I_9_2), .B(g_data12), .Y(
        \g_counter_3[3] ));
    DFN1E1C0 \geiger_stack[11]  (.D(timestamp_0_TIMESTAMP[3]), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_0), .E(g_data12_0), .Q(
        constant_sensor_data_0_G_DATA_STACK_10));
    DFN1E1C0 \g_data[11]  (.D(I_32_1), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_0), .E(g_data12_0), .Q(\g_data[11]_net_1 ));
    OR2 \geiger_stack_RNILALN3[0]  (.A(
        constant_sensor_data_0_G_DATA_STACK_0_d0), .B(g_data12), .Y(
        \geiger_stack_RNILALN3[0]_net_1 ));
    AND2 un3_mag_data_I_117 (.A(constant_sensor_data_0_M_DATA_STACK_65)
        , .B(constant_sensor_data_0_M_DATA_STACK_66), .Y(
        \DWACT_FINC_E[3] ));
    DFN1E1C0 \geiger_stack[44]  (.D(I_35_1), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_2), .E(g_data12_1), .Q(
        constant_sensor_data_0_G_DATA_STACK_43));
    AND3 un3_g_data_I_36 (.A(\DWACT_FINC_E[6] ), .B(\DWACT_FINC_E[7] ), 
        .C(\g_data[12]_net_1 ), .Y(N_5_0));
    DFN1E0C0 \mag_stack[72]  (.D(I_128), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_10), .E(g_data12), .Q(
        constant_sensor_data_0_M_DATA_STACK_70));
    NOR3B \g_counter_RNISNQ02[1]  (.A(\g_counter[4]_net_1 ), .B(
        g_data12_4), .C(\g_counter[1]_net_1 ), .Y(g_data12_6));
    DFN1E0C0 \mag_stack[31]  (.D(timestamp_0_TIMESTAMP[23]), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_8), .E(g_data12_3), .Q(
        constant_sensor_data_0_M_DATA_STACK_29));
    XOR2 un3_mag_data_I_20 (.A(N_44), .B(
        constant_sensor_data_0_M_DATA_STACK_36), .Y(I_20_0));
    AND3 un3_mag_data_I_114 (.A(constant_sensor_data_0_M_DATA_STACK_62)
        , .B(constant_sensor_data_0_M_DATA_STACK_63), .C(
        constant_sensor_data_0_M_DATA_STACK_64), .Y(\DWACT_FINC_E[2] ));
    DFN1C0 \g_counter[1]  (.D(I_5_2), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_18), .Q(\g_counter[1]_net_1 ));
    XOR2 un3_g_data_I_35 (.A(N_6), .B(\g_data[12]_net_1 ), .Y(I_35_1));
    DFN1E1C0 \geiger_stack[37]  (.D(I_14_1), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_2), .E(g_data12_1), .Q(
        constant_sensor_data_0_G_DATA_STACK_36));
    AND2 un5_g_counter_1_I_15 (.A(\g_counter[3]_net_1 ), .B(
        \g_counter[4]_net_1 ), .Y(\DWACT_FINC_E_2[1] ));
    DFN1E0C0 \mag_stack[42]  (.D(I_32_0), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_9), .E(g_data12_4_0), .Q(
        constant_sensor_data_0_M_DATA_STACK_40));
    NOR2B un5_g_counter_1_I_25 (.A(\g_counter[8]_net_1 ), .B(
        \DWACT_FINC_E[4] ), .Y(N_2));
    XOR2 un3_mag_data_I_14 (.A(N_46), .B(
        constant_sensor_data_0_M_DATA_STACK_34), .Y(I_14_0));
    AND3 un3_mag_data_I_106 (.A(N_20), .B(
        constant_sensor_data_0_M_DATA_STACK_60), .C(
        constant_sensor_data_0_M_DATA_STACK_61), .Y(
        \DWACT_FINC_E_2[0] ));
    NOR2B un3_mag_data_I_121 (.A(
        constant_sensor_data_0_M_DATA_STACK_67), .B(
        \DWACT_FINC_E_2[4] ), .Y(N_11));
    XOR2 un3_mag_data_I_113 (.A(N_14_0), .B(
        constant_sensor_data_0_M_DATA_STACK_65), .Y(I_113));
    DFN1E0C0 \mag_stack[53]  (.D(I_65), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_9), .E(g_data12_4_0), .Q(
        constant_sensor_data_0_M_DATA_STACK_51));
    AND3 un3_mag_data_I_69 (.A(\DWACT_FINC_E[29] ), .B(
        \DWACT_FINC_E[13] ), .C(\DWACT_FINC_E[33] ), .Y(N_28));
    AND3 un5_g_counter_1_I_19 (.A(\DWACT_FINC_E[0] ), .B(
        \DWACT_FINC_E_2[2] ), .C(\g_counter[6]_net_1 ), .Y(N_4_1));
    DFN1E1C0 \geiger_stack[26]  (.D(timestamp_0_TIMESTAMP[18]), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_1), .E(g_data12_1), .Q(
        constant_sensor_data_0_G_DATA_STACK_25));
    XOR2 un3_mag_data_I_119 (.A(N_12), .B(
        constant_sensor_data_0_M_DATA_STACK_67), .Y(I_119));
    AND3 un3_mag_data_I_55 (.A(\DWACT_FINC_E_0[28] ), .B(
        \DWACT_FINC_E[13] ), .C(constant_sensor_data_0_M_DATA_STACK_47)
        , .Y(N_32));
    DFN1E0C0 \mag_stack[20]  (.D(timestamp_0_TIMESTAMP[12]), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_8), .E(g_data12_3), .Q(
        constant_sensor_data_0_M_DATA_STACK_18));
    INV un3_g_data_I_4 (.A(\g_data[0]_net_1 ), .Y(I_4_0));
    NOR2A \g_counter_RNO[6]  (.A(I_17_2), .B(g_data12), .Y(
        \g_counter_3[6] ));
    DFN1E1C0 \geiger_stack[21]  (.D(timestamp_0_TIMESTAMP[13]), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_1), .E(g_data12_0), .Q(
        constant_sensor_data_0_G_DATA_STACK_20));
    DFN1E0C0 \mag_stack[15]  (.D(timestamp_0_TIMESTAMP[7]), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_8), .E(g_data12_2_0), .Q(
        constant_sensor_data_0_M_DATA_STACK_13));
    XOR2 un3_mag_data_I_92 (.A(N_22), .B(
        constant_sensor_data_0_M_DATA_STACK_58), .Y(I_92));
    XOR2 un3_mag_data_I_9 (.A(N_48), .B(
        constant_sensor_data_0_M_DATA_STACK_32), .Y(I_9_0));
    XOR2 un3_g_data_I_17 (.A(N_12_0), .B(\g_data[6]_net_1 ), .Y(I_17_1)
        );
    DFN1E0C0 \mag_stack[26]  (.D(timestamp_0_TIMESTAMP[18]), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_8), .E(g_data12_3), .Q(
        constant_sensor_data_0_M_DATA_STACK_24));
    DFN1E0C0 \mag_stack[62]  (.D(I_101), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_10), .E(g_data12_4_0), .Q(
        constant_sensor_data_0_M_DATA_STACK_60));
    DFN1E1C0 \g_data[6]  (.D(I_17_1), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_5), .E(g_data12_2_0), .Q(\g_data[6]_net_1 )
        );
    XOR2 un3_g_data_I_14 (.A(N_13_0), .B(\g_data[5]_net_1 ), .Y(I_14_1)
        );
    AND2 un3_mag_data_I_15 (.A(constant_sensor_data_0_M_DATA_STACK_32), 
        .B(constant_sensor_data_0_M_DATA_STACK_33), .Y(
        \DWACT_FINC_E_0[1] ));
    XOR2 un3_mag_data_I_43 (.A(N_36), .B(
        constant_sensor_data_0_M_DATA_STACK_44), .Y(I_43_0));
    DFN1E1C0 \g_data[2]  (.D(I_7_1), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_4), .E(g_data12_2_0), .Q(\g_data[2]_net_1 )
        );
    DFN1E1C0 \geiger_stack[33]  (.D(I_5_1), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_1), .E(g_data12_1), .Q(
        constant_sensor_data_0_G_DATA_STACK_32));
    GND GND_i (.Y(GND));
    AND3 un3_mag_data_I_135 (.A(\DWACT_FINC_E_1[6] ), .B(
        \DWACT_FINC_E_1[7] ), .C(\DWACT_FINC_E[8] ), .Y(N_6_0));
    AND3 un3_mag_data_I_64 (.A(\DWACT_FINC_E_0[28] ), .B(
        \DWACT_FINC_E[13] ), .C(\DWACT_FINC_E[16] ), .Y(N_29));
    DFN1E0C0 \mag_stack[11]  (.D(timestamp_0_TIMESTAMP[3]), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_8), .E(g_data12_2_0), .Q(
        constant_sensor_data_0_M_DATA_STACK_9));
    DFN1C0 \geiger_stack_0_0[0]  (.D(\geiger_stack_RNILALN3[0]_net_1 ), 
        .CLK(clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_0), .Q(
        constant_sensor_data_0_G_DATA_STACK_0[1]));
    DFN1E0C0 \mag_stack[52]  (.D(I_62), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_9), .E(g_data12_4_0), .Q(
        constant_sensor_data_0_M_DATA_STACK_50));
    DFN1E1C0 \geiger_stack[14]  (.D(timestamp_0_TIMESTAMP[6]), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_1), .E(g_data12_0), .Q(
        constant_sensor_data_0_G_DATA_STACK_13));
    AND3 un3_mag_data_I_83 (.A(constant_sensor_data_0_M_DATA_STACK_53), 
        .B(constant_sensor_data_0_M_DATA_STACK_54), .C(
        constant_sensor_data_0_M_DATA_STACK_55), .Y(\DWACT_FINC_E[22] )
        );
    AND3 un3_mag_data_I_50 (.A(constant_sensor_data_0_M_DATA_STACK_44), 
        .B(constant_sensor_data_0_M_DATA_STACK_45), .C(
        constant_sensor_data_0_M_DATA_STACK_46), .Y(
        \DWACT_FINC_E_0[12] ));
    DFN1E0C0 \mag_stack[28]  (.D(timestamp_0_TIMESTAMP[20]), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_8), .E(g_data12_3), .Q(
        constant_sensor_data_0_M_DATA_STACK_26));
    AND2 un3_mag_data_I_140 (.A(\DWACT_FINC_E_1[7] ), .B(
        \DWACT_FINC_E[9] ), .Y(\DWACT_FINC_E[10] ));
    AND3 un3_g_data_I_42 (.A(\DWACT_FINC_E[6] ), .B(\DWACT_FINC_E[7] ), 
        .C(\DWACT_FINC_E_1[9] ), .Y(N_3_0));
    AND3 un3_mag_data_I_118 (.A(\DWACT_FINC_E_2[0] ), .B(
        \DWACT_FINC_E[2] ), .C(\DWACT_FINC_E[3] ), .Y(N_12));
    DFN1C0 \g_counter[8]  (.D(I_23_2), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_18), .Q(\g_counter[8]_net_1 ));
    DFN1E1C0 \g_data[7]  (.D(I_20_1), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_5), .E(g_data12_2_0), .Q(\g_data[7]_net_1 )
        );
    AND3 un3_mag_data_I_36 (.A(\DWACT_FINC_E_0[6] ), .B(
        \DWACT_FINC_E_0[7] ), .C(
        constant_sensor_data_0_M_DATA_STACK_41), .Y(N_38));
    DFN1E1C0 \geiger_stack[30]  (.D(timestamp_0_TIMESTAMP[22]), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_1), .E(g_data12_1), .Q(
        constant_sensor_data_0_G_DATA_STACK_29));
    AND3 un3_mag_data_I_31 (.A(\DWACT_FINC_E_0[6] ), .B(
        constant_sensor_data_0_M_DATA_STACK_38), .C(
        constant_sensor_data_0_M_DATA_STACK_39), .Y(N_40));
    AND3 un3_g_data_I_39 (.A(\DWACT_FINC_E[6] ), .B(\DWACT_FINC_E[7] ), 
        .C(\DWACT_FINC_E_1[8] ), .Y(N_4_0));
    AND3 un3_mag_data_I_76 (.A(\DWACT_FINC_E[29] ), .B(
        \DWACT_FINC_E[13] ), .C(\DWACT_FINC_E[19] ), .Y(N_26));
    NOR3B \g_counter_RNI90T61[9]  (.A(\g_counter[9]_net_1 ), .B(
        \g_counter[3]_net_1 ), .C(\g_counter[8]_net_1 ), .Y(g_data12_4)
        );
    NOR2B un3_mag_data_I_10 (.A(constant_sensor_data_0_M_DATA_STACK_31)
        , .B(constant_sensor_data_0_M_DATA_STACK_30), .Y(
        \DWACT_FINC_E_1[0] ));
    DFN1C0 \g_counter[2]  (.D(I_7_2), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_18), .Q(\g_counter[2]_net_1 ));
    AND3 un3_mag_data_I_112 (.A(\DWACT_FINC_E_2[0] ), .B(
        \DWACT_FINC_E[1] ), .C(constant_sensor_data_0_M_DATA_STACK_64), 
        .Y(N_14_0));
    AND3 un3_mag_data_I_71 (.A(constant_sensor_data_0_M_DATA_STACK_50), 
        .B(constant_sensor_data_0_M_DATA_STACK_51), .C(
        constant_sensor_data_0_M_DATA_STACK_52), .Y(\DWACT_FINC_E[17] )
        );
    XOR2 un3_mag_data_I_65 (.A(N_29), .B(
        constant_sensor_data_0_M_DATA_STACK_51), .Y(I_65));
    NOR2A \g_counter_RNO[9]  (.A(I_26_2), .B(g_data12), .Y(
        \g_counter_3[9] ));
    XOR2 un3_mag_data_I_37 (.A(N_38), .B(
        constant_sensor_data_0_M_DATA_STACK_42), .Y(I_37_0));
    DFN1E1C0 \g_data[5]  (.D(I_14_1), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_4), .E(g_data12_2_0), .Q(\g_data[5]_net_1 )
        );
    XOR2 un3_g_data_I_26 (.A(N_9_0), .B(\g_data[9]_net_1 ), .Y(I_26_1));
    XOR2 un3_mag_data_I_77 (.A(N_26), .B(
        constant_sensor_data_0_M_DATA_STACK_54), .Y(I_77));
    DFN1E1C0 \g_data[10]  (.D(I_28_1), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_0), .E(g_data12_0), .Q(\g_data[10]_net_1 ));
    DFN1E1C0 \geiger_stack[24]  (.D(timestamp_0_TIMESTAMP[16]), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_1), .E(g_data12_0), .Q(
        constant_sensor_data_0_G_DATA_STACK_23));
    XOR2 un3_mag_data_I_23 (.A(N_43), .B(
        constant_sensor_data_0_M_DATA_STACK_37), .Y(I_23_0));
    AND3 un3_mag_data_I_147 (.A(\DWACT_FINC_E_2[0] ), .B(
        \DWACT_FINC_E[2] ), .C(\DWACT_FINC_E[5] ), .Y(
        \DWACT_FINC_E[28] ));
    DFN1E1C0 \geiger_stack[38]  (.D(I_17_1), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_2), .E(g_data12_1), .Q(
        constant_sensor_data_0_G_DATA_STACK_37));
    NOR2B un3_g_data_I_25 (.A(\g_data[8]_net_1 ), .B(
        \DWACT_FINC_E_0[4] ), .Y(N_9_0));
    AND3 un3_mag_data_I_144 (.A(\DWACT_FINC_E_1[6] ), .B(
        \DWACT_FINC_E[10] ), .C(\DWACT_FINC_E[11] ), .Y(N_3));
    DFN1E1C0 \geiger_stack[42]  (.D(I_28_1), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_2), .E(g_data12_1), .Q(
        constant_sensor_data_0_G_DATA_STACK_41));
    XOR2 un3_mag_data_I_136 (.A(N_6_0), .B(
        constant_sensor_data_0_M_DATA_STACK_73), .Y(I_136));
    AND3 un3_mag_data_I_48 (.A(\DWACT_FINC_E_0[6] ), .B(
        \DWACT_FINC_E_0[10] ), .C(\DWACT_FINC_E_0[11] ), .Y(N_34));
    VCC VCC_i (.Y(constant_sensor_data_VCC));
    DFN1E0C0 \mag_stack[34]  (.D(I_9_0), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_9), .E(g_data12_3), .Q(
        constant_sensor_data_0_M_DATA_STACK_32));
    AND2 un3_mag_data_I_143 (.A(constant_sensor_data_0_M_DATA_STACK_74)
        , .B(constant_sensor_data_0_M_DATA_STACK_75), .Y(
        \DWACT_FINC_E[11] ));
    DFN1E0C0 \mag_stack[37]  (.D(I_17_0), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_9), .E(g_data12_3), .Q(
        constant_sensor_data_0_M_DATA_STACK_35));
    XOR2 un3_mag_data_I_149 (.A(N_2_0), .B(
        constant_sensor_data_0_M_DATA_STACK_77), .Y(I_149));
    NOR2B \g_counter_RNICHMK3_4[1]  (.A(g_data12_6), .B(g_data12_5), 
        .Y(g_data12_3));
    AND2 un3_g_data_I_38 (.A(\g_data[12]_net_1 ), .B(
        \g_data[13]_net_1 ), .Y(\DWACT_FINC_E_1[8] ));
    CLKINT next_byte_control_RNIBLEA (.A(next_byte_control_i), .Y(
        constant_sensor_data_0_NEXT_BYTE));
    DFN1E0C0 \mag_stack[23]  (.D(timestamp_0_TIMESTAMP[15]), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_8), .E(g_data12_3), .Q(
        constant_sensor_data_0_M_DATA_STACK_21));
    DFN1E0C0 \mag_stack[75]  (.D(I_136), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_10), .E(g_data12), .Q(
        constant_sensor_data_0_M_DATA_STACK_73));
    AND3 un3_mag_data_I_88 (.A(\DWACT_FINC_E[24] ), .B(
        \DWACT_FINC_E[23] ), .C(constant_sensor_data_0_M_DATA_STACK_56)
        , .Y(N_23));
    AND2 un3_mag_data_I_111 (.A(constant_sensor_data_0_M_DATA_STACK_62)
        , .B(constant_sensor_data_0_M_DATA_STACK_63), .Y(
        \DWACT_FINC_E[1] ));
    XOR2 un3_g_data_I_43 (.A(N_3_0), .B(\g_data[15]_net_1 ), .Y(I_43_1)
        );
    DFN1E1C0 \geiger_stack[36]  (.D(I_12_1), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_2), .E(g_data12_1), .Q(
        constant_sensor_data_0_G_DATA_STACK_35));
    AND3 un3_mag_data_I_60 (.A(constant_sensor_data_0_M_DATA_STACK_47), 
        .B(constant_sensor_data_0_M_DATA_STACK_48), .C(
        constant_sensor_data_0_M_DATA_STACK_49), .Y(\DWACT_FINC_E[15] )
        );
    DFN1E0C0 \mag_stack[45]  (.D(I_40_0), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_9), .E(g_data12_4_0), .Q(
        constant_sensor_data_0_M_DATA_STACK_43));
    DFN1E0C0 \mag_stack[39]  (.D(I_23_0), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_9), .E(g_data12_3), .Q(
        constant_sensor_data_0_M_DATA_STACK_37));
    DFN1E1C0 \geiger_stack[31]  (.D(timestamp_0_TIMESTAMP[23]), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_1), .E(g_data12_1), .Q(
        constant_sensor_data_0_G_DATA_STACK_30));
    AND3 un3_mag_data_I_39 (.A(\DWACT_FINC_E_0[6] ), .B(
        \DWACT_FINC_E_0[7] ), .C(\DWACT_FINC_E_0[8] ), .Y(N_37));
    AND2 un3_mag_data_I_96 (.A(\DWACT_FINC_E[26] ), .B(
        constant_sensor_data_0_M_DATA_STACK_59), .Y(\DWACT_FINC_E[27] )
        );
    XOR2 un5_g_counter_1_I_17 (.A(N_5_1), .B(\g_counter[6]_net_1 ), .Y(
        I_17_2));
    AND3 un5_g_counter_1_I_13 (.A(\DWACT_FINC_E[0] ), .B(
        \g_counter[3]_net_1 ), .C(\g_counter[4]_net_1 ), .Y(N_6_1));
    XOR2 un5_g_counter_1_I_23 (.A(N_3_1), .B(\g_counter[8]_net_1 ), .Y(
        I_23_2));
    DFN1C0 \geiger_stack[0]  (.D(\geiger_stack_RNILALN3[0]_net_1 ), 
        .CLK(clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_15), .Q(
        constant_sensor_data_0_G_DATA_STACK_0_d0));
    AND3 un3_mag_data_I_91 (.A(\DWACT_FINC_E[24] ), .B(
        \DWACT_FINC_E[23] ), .C(\DWACT_FINC_E[25] ), .Y(N_22));
    AND3 un3_mag_data_I_79 (.A(\DWACT_FINC_E[15] ), .B(
        \DWACT_FINC_E[17] ), .C(\DWACT_FINC_E[20] ), .Y(
        \DWACT_FINC_E[21] ));
    XOR2 un3_g_data_I_40 (.A(N_4_0), .B(\g_data[14]_net_1 ), .Y(I_40_1)
        );
    NOR2B un5_g_counter_1_I_11 (.A(\g_counter[3]_net_1 ), .B(
        \DWACT_FINC_E[0] ), .Y(N_7));
    AND3 un3_g_data_I_16 (.A(\DWACT_FINC_E_0[0] ), .B(
        \DWACT_FINC_E_1[1] ), .C(\g_data[5]_net_1 ), .Y(N_12_0));
    AND2 un5_g_counter_1_I_21 (.A(\g_counter[6]_net_1 ), .B(
        \g_counter[7]_net_1 ), .Y(\DWACT_FINC_E_2[3] ));
    AND3 un3_mag_data_I_97 (.A(\DWACT_FINC_E[24] ), .B(
        \DWACT_FINC_E[23] ), .C(\DWACT_FINC_E[27] ), .Y(N_20));
    AND3 un3_mag_data_I_42 (.A(\DWACT_FINC_E_0[6] ), .B(
        \DWACT_FINC_E_0[7] ), .C(\DWACT_FINC_E_0[9] ), .Y(N_36));
    AND2 un3_g_data_I_15 (.A(\g_data[3]_net_1 ), .B(\g_data[4]_net_1 ), 
        .Y(\DWACT_FINC_E_1[1] ));
    DFN1E0C0 \mag_stack[71]  (.D(I_124), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_10), .E(g_data12), .Q(
        constant_sensor_data_0_M_DATA_STACK_69));
    XOR2 un3_mag_data_I_53 (.A(N_33), .B(
        constant_sensor_data_0_M_DATA_STACK_47), .Y(I_53));
    AND3 un3_mag_data_I_125 (.A(constant_sensor_data_0_M_DATA_STACK_65)
        , .B(constant_sensor_data_0_M_DATA_STACK_66), .C(
        constant_sensor_data_0_M_DATA_STACK_67), .Y(\DWACT_FINC_E[5] ));
    XOR2 un3_mag_data_I_28 (.A(N_41), .B(
        constant_sensor_data_0_M_DATA_STACK_39), .Y(I_28_0));
    DFN1E0C0 \mag_stack[65]  (.D(I_108), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_10), .E(g_data12), .Q(
        constant_sensor_data_0_M_DATA_STACK_63));
    DFN1E0C0 \mag_stack[8]  (.D(timestamp_0_TIMESTAMP[0]), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_7), .E(g_data12_2_0), .Q(
        constant_sensor_data_0_M_DATA_STACK_6));
    DFN1E0C0 \mag_stack[41]  (.D(I_28_0), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_9), .E(g_data12_3), .Q(
        constant_sensor_data_0_M_DATA_STACK_39));
    DFN1E0C0 \mag_stack[14]  (.D(timestamp_0_TIMESTAMP[6]), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_8), .E(g_data12_2_0), .Q(
        constant_sensor_data_0_M_DATA_STACK_12));
    DFN1E1C0 \geiger_stack[12]  (.D(timestamp_0_TIMESTAMP[4]), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_1), .E(g_data12_0), .Q(
        constant_sensor_data_0_G_DATA_STACK_11));
    DFN1E0C0 \mag_stack[22]  (.D(timestamp_0_TIMESTAMP[14]), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_8), .E(g_data12_3), .Q(
        constant_sensor_data_0_M_DATA_STACK_20));
    DFN1E0C0 \mag_stack[17]  (.D(timestamp_0_TIMESTAMP[9]), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_8), .E(g_data12_2_0), .Q(
        constant_sensor_data_0_M_DATA_STACK_15));
    NOR2B un3_g_data_I_6 (.A(\g_data[1]_net_1 ), .B(\g_data[0]_net_1 ), 
        .Y(N_16));
    DFN1C0 \mag_stack[0]  (.D(constant_sensor_data_VCC), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_19), .Q(
        constant_sensor_data_0_M_DATA_STACK_0));
    NOR2B un3_mag_data_I_107 (.A(
        constant_sensor_data_0_M_DATA_STACK_62), .B(
        \DWACT_FINC_E_2[0] ), .Y(N_16_0));
    AND3 un3_mag_data_I_148 (.A(\DWACT_FINC_E[28] ), .B(
        \DWACT_FINC_E[10] ), .C(\DWACT_FINC_E[12] ), .Y(N_2_0));
    XOR2 un3_mag_data_I_82 (.A(N_25), .B(
        constant_sensor_data_0_M_DATA_STACK_55), .Y(I_82));
    NOR2B un3_mag_data_I_8 (.A(constant_sensor_data_0_M_DATA_STACK_31), 
        .B(constant_sensor_data_0_M_DATA_STACK_30), .Y(N_48));
    NOR2 \g_counter_RNO[0]  (.A(\g_counter[0]_net_1 ), .B(g_data12), 
        .Y(\g_counter_3[0] ));
    AND3 un3_g_data_I_29 (.A(\g_data[6]_net_1 ), .B(\g_data[7]_net_1 ), 
        .C(\g_data[8]_net_1 ), .Y(\DWACT_FINC_E_1[5] ));
    DFN1E1C0 \g_data[13]  (.D(I_37_1), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_0), .E(g_data12_0), .Q(\g_data[13]_net_1 ));
    AND3 un3_mag_data_I_13 (.A(\DWACT_FINC_E_1[0] ), .B(
        constant_sensor_data_0_M_DATA_STACK_32), .C(
        constant_sensor_data_0_M_DATA_STACK_33), .Y(N_46));
    AND3 un3_mag_data_I_104 (.A(N_20), .B(
        constant_sensor_data_0_M_DATA_STACK_60), .C(
        constant_sensor_data_0_M_DATA_STACK_61), .Y(N_17));
    NOR2B un3_mag_data_I_34 (.A(\DWACT_FINC_E_0[7] ), .B(
        \DWACT_FINC_E_0[6] ), .Y(N_39));
    XOR2 un3_mag_data_I_142 (.A(N_4), .B(
        constant_sensor_data_0_M_DATA_STACK_75), .Y(I_142));
    XOR2 un3_mag_data_I_74 (.A(N_27), .B(
        constant_sensor_data_0_M_DATA_STACK_53), .Y(I_74));
    XOR2 un3_mag_data_I_103 (.A(N_18), .B(
        constant_sensor_data_0_M_DATA_STACK_61), .Y(I_103));
    AND3 un3_g_data_I_41 (.A(\g_data[12]_net_1 ), .B(
        \g_data[13]_net_1 ), .C(\g_data[14]_net_1 ), .Y(
        \DWACT_FINC_E_1[9] ));
    DFN1E0C0 \mag_stack[61]  (.D(I_95), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_10), .E(g_data12_4_0), .Q(
        constant_sensor_data_0_M_DATA_STACK_59));
    DFN1E0C0 \mag_stack[55]  (.D(I_74), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_9), .E(g_data12_4_0), .Q(
        constant_sensor_data_0_M_DATA_STACK_53));
    AND3 un3_mag_data_I_109 (.A(\DWACT_FINC_E_2[0] ), .B(
        constant_sensor_data_0_M_DATA_STACK_62), .C(
        constant_sensor_data_0_M_DATA_STACK_63), .Y(N_15));
    DFN1E0C0 \mag_stack[30]  (.D(timestamp_0_TIMESTAMP[22]), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_8), .E(g_data12_3), .Q(
        constant_sensor_data_0_M_DATA_STACK_28));
    DFN1E0C0 \mag_stack[19]  (.D(timestamp_0_TIMESTAMP[11]), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_8), .E(g_data12_3), .Q(
        constant_sensor_data_0_M_DATA_STACK_17));
    DFN1E1C0 \geiger_stack[22]  (.D(timestamp_0_TIMESTAMP[14]), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_1), .E(g_data12_0), .Q(
        constant_sensor_data_0_G_DATA_STACK_21));
    DFN1E0C0 \mag_stack[36]  (.D(I_14_0), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_9), .E(g_data12_3), .Q(
        constant_sensor_data_0_M_DATA_STACK_34));
    AND3 un3_mag_data_I_22 (.A(\DWACT_FINC_E_1[0] ), .B(
        \DWACT_FINC_E_0[2] ), .C(\DWACT_FINC_E_0[3] ), .Y(N_43));
    DFN1E1C0 \geiger_stack[34]  (.D(I_7_1), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_1), .E(g_data12_1), .Q(
        constant_sensor_data_0_G_DATA_STACK_33));
    XOR2 un3_g_data_I_28 (.A(N_8_0), .B(\g_data[10]_net_1 ), .Y(I_28_1)
        );
    XOR2 un3_mag_data_I_35 (.A(N_39), .B(
        constant_sensor_data_0_M_DATA_STACK_41), .Y(I_35_0));
    XOR2 un3_g_data_I_32 (.A(N_7_1), .B(\g_data[11]_net_1 ), .Y(I_32_1)
        );
    AND3 un3_mag_data_I_126 (.A(\DWACT_FINC_E_2[0] ), .B(
        \DWACT_FINC_E[2] ), .C(\DWACT_FINC_E[5] ), .Y(
        \DWACT_FINC_E_1[6] ));
    DFN1E0C0 \mag_stack[51]  (.D(I_59), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_9), .E(g_data12_4_0), .Q(
        constant_sensor_data_0_M_DATA_STACK_49));
    AND3 un3_mag_data_I_75 (.A(\DWACT_FINC_E[15] ), .B(
        \DWACT_FINC_E[17] ), .C(constant_sensor_data_0_M_DATA_STACK_53)
        , .Y(\DWACT_FINC_E[19] ));
    NOR2A \g_counter_RNIMQTP[2]  (.A(\g_counter[6]_net_1 ), .B(
        \g_counter[2]_net_1 ), .Y(g_data12_2));
    DFN1E1C0 \geiger_stack[45]  (.D(I_37_1), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_2), .E(g_data12_1), .Q(
        constant_sensor_data_0_G_DATA_STACK_44));
    AND3 un3_mag_data_I_58 (.A(\DWACT_FINC_E_0[28] ), .B(
        \DWACT_FINC_E[13] ), .C(\DWACT_FINC_E[14] ), .Y(N_31));
    AND2 un3_mag_data_I_63 (.A(\DWACT_FINC_E[15] ), .B(
        constant_sensor_data_0_M_DATA_STACK_50), .Y(\DWACT_FINC_E[16] )
        );
    AND3 un3_mag_data_I_141 (.A(\DWACT_FINC_E_1[6] ), .B(
        \DWACT_FINC_E[10] ), .C(constant_sensor_data_0_M_DATA_STACK_74)
        , .Y(N_4));
    AND3 un3_g_data_I_19 (.A(\DWACT_FINC_E_0[0] ), .B(
        \DWACT_FINC_E_1[2] ), .C(\g_data[6]_net_1 ), .Y(N_11_0));
    NOR3A \g_counter_RNIGPRJ1[7]  (.A(g_data12_2), .B(
        \g_counter[5]_net_1 ), .C(\g_counter[7]_net_1 ), .Y(g_data12_5)
        );
    DFN1E1C0 \geiger_stack[19]  (.D(timestamp_0_TIMESTAMP[11]), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_1), .E(g_data12_0), .Q(
        constant_sensor_data_0_G_DATA_STACK_18));
    AND2 un3_g_data_I_44 (.A(\DWACT_FINC_E[7] ), .B(
        \DWACT_FINC_E_1[9] ), .Y(\DWACT_FINC_E_1[10] ));
    DFN1P0 next_byte_control (.D(next_byte_control_RNO_net_1), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .PRE(
        reset_pulse_0_RESET_18), .Q(next_byte_control_i));
    AND3 un3_mag_data_I_18 (.A(constant_sensor_data_0_M_DATA_STACK_32), 
        .B(constant_sensor_data_0_M_DATA_STACK_33), .C(
        constant_sensor_data_0_M_DATA_STACK_34), .Y(
        \DWACT_FINC_E_0[2] ));
    NOR2B un3_mag_data_I_130 (.A(\DWACT_FINC_E_1[7] ), .B(
        \DWACT_FINC_E_1[6] ), .Y(N_8));
    DFN1E0C0 \mag_stack[38]  (.D(I_20_0), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_9), .E(g_data12_3), .Q(
        constant_sensor_data_0_M_DATA_STACK_36));
    AND3 un3_mag_data_I_94 (.A(\DWACT_FINC_E[24] ), .B(
        \DWACT_FINC_E[23] ), .C(\DWACT_FINC_E[26] ), .Y(N_21));
    DFN1E0C0 \mag_stack[10]  (.D(timestamp_0_TIMESTAMP[2]), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_8), .E(g_data12_2_0), .Q(
        constant_sensor_data_0_M_DATA_STACK_8));
    DFN1C0 \g_counter[3]  (.D(\g_counter_3[3] ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_18), .Q(\g_counter[3]_net_1 ));
    XOR2 un3_mag_data_I_108 (.A(N_16_0), .B(
        constant_sensor_data_0_M_DATA_STACK_63), .Y(I_108));
    AND3 un3_mag_data_I_30 (.A(\DWACT_FINC_E_1[0] ), .B(
        \DWACT_FINC_E_0[2] ), .C(\DWACT_FINC_E_0[5] ), .Y(
        \DWACT_FINC_E_0[6] ));
    DFN1E0C0 \mag_stack[16]  (.D(timestamp_0_TIMESTAMP[8]), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_8), .E(g_data12_2_0), .Q(
        constant_sensor_data_0_M_DATA_STACK_14));
    NOR2B un3_mag_data_I_102 (.A(
        constant_sensor_data_0_M_DATA_STACK_60), .B(N_20), .Y(N_18));
    XOR2 un3_mag_data_I_70 (.A(N_28), .B(
        constant_sensor_data_0_M_DATA_STACK_52), .Y(I_70));
    DFN1E0C0 \mag_stack[74]  (.D(I_133), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_10), .E(g_data12), .Q(
        constant_sensor_data_0_M_DATA_STACK_72));
    XOR2 un3_mag_data_I_46 (.A(N_35), .B(
        constant_sensor_data_0_M_DATA_STACK_45), .Y(I_46_0));
    DFN1E1C0 \geiger_stack[8]  (.D(timestamp_0_TIMESTAMP[0]), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_3), .E(g_data12_2_0), .Q(
        constant_sensor_data_0_G_DATA_STACK_7));
    AND3 un3_mag_data_I_137 (.A(constant_sensor_data_0_M_DATA_STACK_71)
        , .B(constant_sensor_data_0_M_DATA_STACK_72), .C(
        constant_sensor_data_0_M_DATA_STACK_73), .Y(\DWACT_FINC_E[9] ));
    DFN1C0 \g_counter[5]  (.D(I_14_2), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_18), .Q(\g_counter[5]_net_1 ));
    AND3 un5_g_counter_1_I_10 (.A(\g_counter[0]_net_1 ), .B(
        \g_counter[1]_net_1 ), .C(\g_counter[2]_net_1 ), .Y(
        \DWACT_FINC_E[0] ));
    AND3 un3_mag_data_I_52 (.A(\DWACT_FINC_E_0[28] ), .B(
        \DWACT_FINC_E_0[10] ), .C(\DWACT_FINC_E_0[12] ), .Y(N_33));
    INV un3_mag_data_I_5 (.A(constant_sensor_data_0_M_DATA_STACK_30), 
        .Y(I_5_0));
    AND3 un3_mag_data_I_41 (.A(constant_sensor_data_0_M_DATA_STACK_41), 
        .B(constant_sensor_data_0_M_DATA_STACK_42), .C(
        constant_sensor_data_0_M_DATA_STACK_43), .Y(
        \DWACT_FINC_E_0[9] ));
    DFN1E0C0 \mag_stack[77]  (.D(I_142), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_10), .E(g_data12), .Q(
        constant_sensor_data_0_M_DATA_STACK_75));
    XOR2 un5_g_counter_1_I_20 (.A(N_4_1), .B(\g_counter[7]_net_1 ), .Y(
        I_20_2));
    AND3 un3_g_data_I_18 (.A(\g_data[3]_net_1 ), .B(\g_data[4]_net_1 ), 
        .C(\g_data[5]_net_1 ), .Y(\DWACT_FINC_E_1[2] ));
    DFN1E0C0 \mag_stack[44]  (.D(I_37_0), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_9), .E(g_data12_4_0), .Q(
        constant_sensor_data_0_M_DATA_STACK_42));
    DFN1E1C0 \geiger_stack[29]  (.D(timestamp_0_TIMESTAMP[21]), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_1), .E(g_data12_1), .Q(
        constant_sensor_data_0_G_DATA_STACK_28));
    AND3 un3_g_data_I_33 (.A(\g_data[9]_net_1 ), .B(\g_data[10]_net_1 )
        , .C(\g_data[11]_net_1 ), .Y(\DWACT_FINC_E[7] ));
    AND2 un3_mag_data_I_134 (.A(constant_sensor_data_0_M_DATA_STACK_71)
        , .B(constant_sensor_data_0_M_DATA_STACK_72), .Y(
        \DWACT_FINC_E[8] ));
    DFN1E1C0 \g_data[8]  (.D(I_23_1), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_5), .E(g_data12_2_0), .Q(\g_data[8]_net_1 )
        );
    AND2 un3_mag_data_I_47 (.A(constant_sensor_data_0_M_DATA_STACK_44), 
        .B(constant_sensor_data_0_M_DATA_STACK_45), .Y(
        \DWACT_FINC_E_0[11] ));
    DFN1E0C0 \mag_stack[47]  (.D(I_46_0), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_9), .E(g_data12_4_0), .Q(
        constant_sensor_data_0_M_DATA_STACK_45));
    AND3 un3_mag_data_I_115 (.A(\DWACT_FINC_E_2[0] ), .B(
        \DWACT_FINC_E[2] ), .C(constant_sensor_data_0_M_DATA_STACK_65), 
        .Y(N_13));
    AND3 un3_g_data_I_8 (.A(\g_data[0]_net_1 ), .B(\g_data[1]_net_1 ), 
        .C(\g_data[2]_net_1 ), .Y(N_15_0));
    XNOR2 next_byte_control_RNO (.A(next_byte_control_i), .B(g_data12), 
        .Y(next_byte_control_RNO_net_1));
    XOR2 un3_mag_data_I_95 (.A(N_21), .B(
        constant_sensor_data_0_M_DATA_STACK_59), .Y(I_95));
    XOR2 un3_g_data_I_5 (.A(\g_data[0]_net_1 ), .B(\g_data[1]_net_1 ), 
        .Y(I_5_1));
    XOR2 un3_mag_data_I_133 (.A(N_7_0), .B(
        constant_sensor_data_0_M_DATA_STACK_72), .Y(I_133));
    DFN1E1C0 \geiger_stack[15]  (.D(timestamp_0_TIMESTAMP[7]), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_1), .E(g_data12_0), .Q(
        constant_sensor_data_0_G_DATA_STACK_14));
    XOR2 un3_mag_data_I_139 (.A(N_5), .B(
        constant_sensor_data_0_M_DATA_STACK_74), .Y(I_139));
    XOR2 un3_mag_data_I_86 (.A(N_24), .B(
        constant_sensor_data_0_M_DATA_STACK_56), .Y(I_86));
    XOR2 un3_mag_data_I_12 (.A(N_47), .B(
        constant_sensor_data_0_M_DATA_STACK_33), .Y(I_12_0));
    AND3 un3_g_data_I_30 (.A(\DWACT_FINC_E_0[0] ), .B(
        \DWACT_FINC_E_1[2] ), .C(\DWACT_FINC_E_1[5] ), .Y(
        \DWACT_FINC_E[6] ));
    DFN1E1C0 \geiger_stack[47]  (.D(I_43_1), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_2), .E(g_data12_1), .Q(
        constant_sensor_data_0_G_DATA_STACK_46));
    AND3 un3_mag_data_I_68 (.A(\DWACT_FINC_E[34] ), .B(
        \DWACT_FINC_E_0[2] ), .C(\DWACT_FINC_E_0[5] ), .Y(
        \DWACT_FINC_E[29] ));
    AND3 un3_mag_data_I_81 (.A(\DWACT_FINC_E[29] ), .B(
        \DWACT_FINC_E[30] ), .C(\DWACT_FINC_E[21] ), .Y(N_25));
    DFN1E0C0 \mag_stack[79]  (.D(I_149), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_10), .E(g_data12), .Q(
        constant_sensor_data_0_M_DATA_STACK_77));
    DFN1E0C0 \mag_stack[33]  (.D(I_7_0), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_8), .E(g_data12_3), .Q(
        constant_sensor_data_0_M_DATA_STACK_31));
    DFN1E0C0 \mag_stack[64]  (.D(I_105), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_10), .E(g_data12_4_0), .Q(
        constant_sensor_data_0_M_DATA_STACK_62));
    DFN1E0C0 \mag_stack[25]  (.D(timestamp_0_TIMESTAMP[17]), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_8), .E(g_data12_3), .Q(
        constant_sensor_data_0_M_DATA_STACK_23));
    DFN1E0C0 \mag_stack[18]  (.D(timestamp_0_TIMESTAMP[10]), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_8), .E(g_data12_2_0), .Q(
        constant_sensor_data_0_M_DATA_STACK_16));
    AND2 un3_mag_data_I_87 (.A(\DWACT_FINC_E[29] ), .B(
        \DWACT_FINC_E[30] ), .Y(\DWACT_FINC_E[24] ));
    DFN1E0C0 \mag_stack[49]  (.D(I_53), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_9), .E(g_data12_4_0), .Q(
        constant_sensor_data_0_M_DATA_STACK_47));
    NOR2B \g_counter_RNICHMK3_3[1]  (.A(g_data12_6), .B(g_data12_5), 
        .Y(g_data12_4_0));
    DFN1E0C0 \mag_stack[67]  (.D(I_113), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_10), .E(g_data12), .Q(
        constant_sensor_data_0_M_DATA_STACK_65));
    DFN1E1C0 \g_data[1]  (.D(I_5_1), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_4), .E(g_data12_2_0), .Q(\g_data[1]_net_1 )
        );
    XOR2 un3_mag_data_I_101 (.A(N_20), .B(
        constant_sensor_data_0_M_DATA_STACK_60), .Y(I_101));
    AND3 un3_g_data_I_22 (.A(\DWACT_FINC_E_0[0] ), .B(
        \DWACT_FINC_E_1[2] ), .C(\DWACT_FINC_E_1[3] ), .Y(N_10_0));
    DFN1E1C0 \g_data[0]  (.D(I_4_0), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_4), .E(g_data12_2_0), .Q(\g_data[0]_net_1 )
        );
    NOR2B un5_g_counter_1_I_6 (.A(\g_counter[1]_net_1 ), .B(
        \g_counter[0]_net_1 ), .Y(N_9));
    NOR2B \g_counter_RNICHMK3_2[1]  (.A(g_data12_6), .B(g_data12_5), 
        .Y(g_data12_2_0));
    DFN1E1C0 \geiger_stack[32]  (.D(I_4_0), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_1), .E(g_data12_1), .Q(
        constant_sensor_data_0_G_DATA_STACK_31));
    DFN1E1C0 \g_data[3]  (.D(I_9_1), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_4), .E(g_data12_2_0), .Q(\g_data[3]_net_1 )
        );
    DFN1E1C0 \geiger_stack[25]  (.D(timestamp_0_TIMESTAMP[17]), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_1), .E(g_data12_0), .Q(
        constant_sensor_data_0_G_DATA_STACK_24));
    XOR2 un3_mag_data_I_26 (.A(N_42), .B(
        constant_sensor_data_0_M_DATA_STACK_38), .Y(I_26_0));
    AND2 un3_mag_data_I_90 (.A(constant_sensor_data_0_M_DATA_STACK_56), 
        .B(constant_sensor_data_0_M_DATA_STACK_57), .Y(
        \DWACT_FINC_E[25] ));
    AND2 un3_mag_data_I_21 (.A(constant_sensor_data_0_M_DATA_STACK_35), 
        .B(constant_sensor_data_0_M_DATA_STACK_36), .Y(
        \DWACT_FINC_E_0[3] ));
    DFN1C0 \g_counter[7]  (.D(I_20_2), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_18), .Q(\g_counter[7]_net_1 ));
    DFN1E0C0 \mag_stack[54]  (.D(I_70), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_9), .E(g_data12_4_0), .Q(
        constant_sensor_data_0_M_DATA_STACK_52));
    DFN1E0C0 \mag_stack[21]  (.D(timestamp_0_TIMESTAMP[13]), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_8), .E(g_data12_3), .Q(
        constant_sensor_data_0_M_DATA_STACK_19));
    XOR2 un5_g_counter_1_I_14 (.A(N_6_1), .B(\g_counter[5]_net_1 ), .Y(
        I_14_2));
    XOR2 un3_mag_data_I_49 (.A(N_34), .B(
        constant_sensor_data_0_M_DATA_STACK_46), .Y(I_49));
    DFN1E0C0 \mag_stack[69]  (.D(I_119), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_10), .E(g_data12), .Q(
        constant_sensor_data_0_M_DATA_STACK_67));
    DFN1E1C0 \geiger_stack[43]  (.D(I_32_1), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_2), .E(g_data12_1), .Q(
        constant_sensor_data_0_G_DATA_STACK_42));
    AND3 un5_g_counter_1_I_24 (.A(\DWACT_FINC_E[0] ), .B(
        \DWACT_FINC_E_2[2] ), .C(\DWACT_FINC_E_2[3] ), .Y(
        \DWACT_FINC_E[4] ));
    AND3 un3_mag_data_I_27 (.A(\DWACT_FINC_E_1[4] ), .B(
        constant_sensor_data_0_M_DATA_STACK_37), .C(
        constant_sensor_data_0_M_DATA_STACK_38), .Y(N_41));
    XOR2 un3_g_data_I_7 (.A(N_16), .B(\g_data[2]_net_1 ), .Y(I_7_1));
    DFN1E0C0 \mag_stack[57]  (.D(I_82), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_9), .E(g_data12_4_0), .Q(
        constant_sensor_data_0_M_DATA_STACK_55));
    AND3 un3_g_data_I_31 (.A(\DWACT_FINC_E[6] ), .B(\g_data[9]_net_1 ), 
        .C(\g_data[10]_net_1 ), .Y(N_7_1));
    XOR2 un3_mag_data_I_116 (.A(N_13), .B(
        constant_sensor_data_0_M_DATA_STACK_66), .Y(I_116));
    XOR2 un3_mag_data_I_62 (.A(N_30), .B(
        constant_sensor_data_0_M_DATA_STACK_50), .Y(I_62));
    DFN1E0C0 \mag_stack[32]  (.D(I_5_0), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_8), .E(g_data12_3), .Q(
        constant_sensor_data_0_M_DATA_STACK_30));
    AND3 un3_mag_data_I_138 (.A(\DWACT_FINC_E_1[6] ), .B(
        \DWACT_FINC_E_1[7] ), .C(\DWACT_FINC_E[9] ), .Y(N_5));
    DFN1E0C0 \mag_stack[70]  (.D(I_122), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_10), .E(g_data12), .Q(
        constant_sensor_data_0_M_DATA_STACK_68));
    DFN1E0C0 \mag_stack[13]  (.D(timestamp_0_TIMESTAMP[5]), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_8), .E(g_data12_2_0), .Q(
        constant_sensor_data_0_M_DATA_STACK_11));
    XOR2 un3_mag_data_I_89 (.A(N_23), .B(
        constant_sensor_data_0_M_DATA_STACK_57), .Y(I_89));
    DFN1E0C0 \mag_stack[9]  (.D(timestamp_0_TIMESTAMP[1]), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_7), .E(g_data12_2_0), .Q(
        constant_sensor_data_0_M_DATA_STACK_7));
    AND3 un3_mag_data_I_33 (.A(constant_sensor_data_0_M_DATA_STACK_38), 
        .B(constant_sensor_data_0_M_DATA_STACK_39), .C(
        constant_sensor_data_0_M_DATA_STACK_40), .Y(
        \DWACT_FINC_E_0[7] ));
    XOR2 un3_g_data_I_46 (.A(N_2_1), .B(\g_data[16]_net_1 ), .Y(I_46_1)
        );
    DFN1E1C0 \geiger_stack[17]  (.D(timestamp_0_TIMESTAMP[9]), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_1), .E(g_data12_0), .Q(
        constant_sensor_data_0_G_DATA_STACK_16));
    AND3 un3_mag_data_I_120 (.A(\DWACT_FINC_E_2[0] ), .B(
        \DWACT_FINC_E[2] ), .C(\DWACT_FINC_E[3] ), .Y(
        \DWACT_FINC_E_2[4] ));
    DFN1E0C0 \mag_stack[40]  (.D(I_26_0), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_9), .E(g_data12_3), .Q(
        constant_sensor_data_0_M_DATA_STACK_38));
    AND3 un3_mag_data_I_132 (.A(\DWACT_FINC_E_1[6] ), .B(
        \DWACT_FINC_E_1[7] ), .C(
        constant_sensor_data_0_M_DATA_STACK_71), .Y(N_7_0));
    DFN1E0C0 \mag_stack[59]  (.D(I_89), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_10), .E(g_data12_4_0), .Q(
        constant_sensor_data_0_M_DATA_STACK_57));
    DFN1E1C0 \g_data[4]  (.D(I_12_1), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_4), .E(g_data12_2_0), .Q(\g_data[4]_net_1 )
        );
    AND3 un3_mag_data_I_73 (.A(\DWACT_FINC_E[29] ), .B(
        \DWACT_FINC_E[13] ), .C(\DWACT_FINC_E[18] ), .Y(N_27));
    DFN1C0 \g_counter[6]  (.D(\g_counter_3[6] ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_18), .Q(\g_counter[6]_net_1 ));
    AND3 un3_g_data_I_45 (.A(\DWACT_FINC_E[6] ), .B(
        \DWACT_FINC_E_1[10] ), .C(\g_data[15]_net_1 ), .Y(N_2_1));
    DFN1E0C0 \mag_stack[76]  (.D(I_139), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_10), .E(g_data12), .Q(
        constant_sensor_data_0_M_DATA_STACK_74));
    DFN1E1C0 \geiger_stack[40]  (.D(I_23_1), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_2), .E(g_data12_1), .Q(
        constant_sensor_data_0_G_DATA_STACK_39));
    XOR2 un3_g_data_I_23 (.A(N_10_0), .B(\g_data[8]_net_1 ), .Y(I_23_1)
        );
    DFN1E0C0 \mag_stack[46]  (.D(I_43_0), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_9), .E(g_data12_4_0), .Q(
        constant_sensor_data_0_M_DATA_STACK_44));
    XOR2 un3_g_data_I_12 (.A(N_14), .B(\g_data[4]_net_1 ), .Y(I_12_1));
    AND2 un3_mag_data_I_44 (.A(\DWACT_FINC_E_0[7] ), .B(
        \DWACT_FINC_E_0[9] ), .Y(\DWACT_FINC_E_0[10] ));
    XOR2 un5_g_counter_1_I_9 (.A(N_8_1), .B(\g_counter[3]_net_1 ), .Y(
        I_9_2));
    XOR2 un3_mag_data_I_145 (.A(N_3), .B(
        constant_sensor_data_0_M_DATA_STACK_76), .Y(I_145));
    XOR2 un3_g_data_I_37 (.A(N_5_0), .B(\g_data[13]_net_1 ), .Y(I_37_1)
        );
    AND3 un3_mag_data_I_127 (.A(\DWACT_FINC_E_1[6] ), .B(
        constant_sensor_data_0_M_DATA_STACK_68), .C(
        constant_sensor_data_0_M_DATA_STACK_69), .Y(N_9_1));
    NOR2B un3_g_data_I_34 (.A(\DWACT_FINC_E[7] ), .B(\DWACT_FINC_E[6] )
        , .Y(N_6));
    XOR2 un3_mag_data_I_56 (.A(N_32), .B(
        constant_sensor_data_0_M_DATA_STACK_48), .Y(I_56));
    DFN1E0C0 \mag_stack[60]  (.D(I_92), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_10), .E(g_data12_4_0), .Q(
        constant_sensor_data_0_M_DATA_STACK_58));
    AND3 un3_mag_data_I_29 (.A(constant_sensor_data_0_M_DATA_STACK_35), 
        .B(constant_sensor_data_0_M_DATA_STACK_36), .C(
        constant_sensor_data_0_M_DATA_STACK_37), .Y(
        \DWACT_FINC_E_0[5] ));
    DFN1E1C0 \geiger_stack[48]  (.D(I_46_1), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_2), .E(g_data12_1), .Q(
        constant_sensor_data_0_G_DATA_STACK_47));
    XOR2 un3_mag_data_I_124 (.A(N_10), .B(
        constant_sensor_data_0_M_DATA_STACK_69), .Y(I_124));
    XOR2 un3_g_data_I_20 (.A(N_11_0), .B(\g_data[7]_net_1 ), .Y(I_20_1)
        );
    DFN1E1C0 \geiger_stack[39]  (.D(I_20_1), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_2), .E(g_data12_1), .Q(
        constant_sensor_data_0_G_DATA_STACK_38));
    AND3 un3_mag_data_I_51 (.A(\DWACT_FINC_E_1[0] ), .B(
        \DWACT_FINC_E_0[2] ), .C(\DWACT_FINC_E_0[5] ), .Y(
        \DWACT_FINC_E_0[28] ));
    DFN1E1C0 \geiger_stack[27]  (.D(timestamp_0_TIMESTAMP[19]), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_1), .E(g_data12_1), .Q(
        constant_sensor_data_0_G_DATA_STACK_26));
    AND3 un3_mag_data_I_84 (.A(\DWACT_FINC_E[15] ), .B(
        \DWACT_FINC_E[17] ), .C(\DWACT_FINC_E[22] ), .Y(
        \DWACT_FINC_E[23] ));
    AND2 un3_mag_data_I_57 (.A(constant_sensor_data_0_M_DATA_STACK_47), 
        .B(constant_sensor_data_0_M_DATA_STACK_48), .Y(
        \DWACT_FINC_E[14] ));
    DFN1E1C0 \geiger_stack[13]  (.D(timestamp_0_TIMESTAMP[5]), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_1), .E(g_data12_0), .Q(
        constant_sensor_data_0_G_DATA_STACK_12));
    DFN1E0C0 \mag_stack[66]  (.D(I_110), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_10), .E(g_data12), .Q(
        constant_sensor_data_0_M_DATA_STACK_64));
    AND3 un3_mag_data_I_123 (.A(\DWACT_FINC_E_2[4] ), .B(
        constant_sensor_data_0_M_DATA_STACK_67), .C(
        constant_sensor_data_0_M_DATA_STACK_68), .Y(N_10));
    DFN1E1C0 \g_data[12]  (.D(I_35_1), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_0), .E(g_data12_0), .Q(\g_data[12]_net_1 ));
    DFN1E0C0 \mag_stack[12]  (.D(timestamp_0_TIMESTAMP[4]), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_8), .E(g_data12_2_0), .Q(
        constant_sensor_data_0_M_DATA_STACK_10));
    NOR2B \g_counter_RNICHMK3[1]  (.A(g_data12_6), .B(g_data12_5), .Y(
        g_data12));
    AND3 un3_mag_data_I_129 (.A(constant_sensor_data_0_M_DATA_STACK_68)
        , .B(constant_sensor_data_0_M_DATA_STACK_69), .C(
        constant_sensor_data_0_M_DATA_STACK_70), .Y(
        \DWACT_FINC_E_1[7] ));
    DFN1E0C0 \mag_stack[78]  (.D(I_145), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_10), .E(g_data12), .Q(
        constant_sensor_data_0_M_DATA_STACK_76));
    XOR2 un3_mag_data_I_131 (.A(N_8), .B(
        constant_sensor_data_0_M_DATA_STACK_71), .Y(I_131));
    DFN1E1C0 \geiger_stack[9]  (.D(timestamp_0_TIMESTAMP[1]), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_3), .E(g_data12_2_0), .Q(
        constant_sensor_data_0_G_DATA_STACK_8));
    AND3 un3_mag_data_I_45 (.A(\DWACT_FINC_E_0[6] ), .B(
        \DWACT_FINC_E_0[10] ), .C(
        constant_sensor_data_0_M_DATA_STACK_44), .Y(N_35));
    AND3 un3_mag_data_I_16 (.A(\DWACT_FINC_E_1[0] ), .B(
        \DWACT_FINC_E_0[1] ), .C(
        constant_sensor_data_0_M_DATA_STACK_34), .Y(N_45));
    DFN1E0C0 \mag_stack[48]  (.D(I_49), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_9), .E(g_data12_4_0), .Q(
        constant_sensor_data_0_M_DATA_STACK_46));
    NOR2B un3_mag_data_I_11 (.A(constant_sensor_data_0_M_DATA_STACK_32)
        , .B(\DWACT_FINC_E_1[0] ), .Y(N_47));
    NOR2A \g_counter_RNO[4]  (.A(I_12_2), .B(g_data12), .Y(
        \g_counter_3[4] ));
    DFN1E0C0 \mag_stack[50]  (.D(I_56), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_9), .E(g_data12_4_0), .Q(
        constant_sensor_data_0_M_DATA_STACK_48));
    XOR2 un3_mag_data_I_17 (.A(N_45), .B(
        constant_sensor_data_0_M_DATA_STACK_35), .Y(I_17_0));
    DFN1C0 \g_counter[0]  (.D(\g_counter_3[0] ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_18), .Q(\g_counter[0]_net_1 ));
    DFN1E1C0 \geiger_stack[46]  (.D(I_40_1), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_2), .E(g_data12_1), .Q(
        constant_sensor_data_0_G_DATA_STACK_45));
    AND3 un3_mag_data_I_93 (.A(constant_sensor_data_0_M_DATA_STACK_56), 
        .B(constant_sensor_data_0_M_DATA_STACK_57), .C(
        constant_sensor_data_0_M_DATA_STACK_58), .Y(\DWACT_FINC_E[26] )
        );
    XOR2 un3_g_data_I_9 (.A(N_15_0), .B(\g_data[3]_net_1 ), .Y(I_9_1));
    AND2 un3_mag_data_I_38 (.A(constant_sensor_data_0_M_DATA_STACK_41), 
        .B(constant_sensor_data_0_M_DATA_STACK_42), .Y(
        \DWACT_FINC_E_0[8] ));
    
endmodule


module memory_controller(
       constant_sensor_data_0_G_DATA_STACK_0,
       read_address_traversal_0_BA_READ_OUT,
       write_address_traversal_0_BA_WRITE_OUT,
       constant_sensor_data_0_M_DATA_STACK_77,
       constant_sensor_data_0_M_DATA_STACK_45,
       constant_sensor_data_0_M_DATA_STACK_13,
       constant_sensor_data_0_M_DATA_STACK_62,
       constant_sensor_data_0_M_DATA_STACK_67,
       constant_sensor_data_0_M_DATA_STACK_47,
       constant_sensor_data_0_M_DATA_STACK_15,
       constant_sensor_data_0_M_DATA_STACK_64,
       constant_sensor_data_0_M_DATA_STACK_32,
       constant_sensor_data_0_M_DATA_STACK_49,
       constant_sensor_data_0_M_DATA_STACK_18,
       constant_sensor_data_0_M_DATA_STACK_51,
       constant_sensor_data_0_M_DATA_STACK_52,
       constant_sensor_data_0_M_DATA_STACK_20,
       constant_sensor_data_0_M_DATA_STACK_53,
       constant_sensor_data_0_M_DATA_STACK_54,
       constant_sensor_data_0_M_DATA_STACK_22,
       constant_sensor_data_0_M_DATA_STACK_55,
       constant_sensor_data_0_M_DATA_STACK_56,
       constant_sensor_data_0_M_DATA_STACK_24,
       constant_sensor_data_0_M_DATA_STACK_57,
       constant_sensor_data_0_M_DATA_STACK_74,
       constant_sensor_data_0_M_DATA_STACK_42,
       constant_sensor_data_0_M_DATA_STACK_10,
       constant_sensor_data_0_M_DATA_STACK_27,
       constant_sensor_data_0_M_DATA_STACK_76,
       constant_sensor_data_0_M_DATA_STACK_44,
       constant_sensor_data_0_M_DATA_STACK_0,
       constant_sensor_data_0_M_DATA_STACK_6,
       constant_sensor_data_0_M_DATA_STACK_7,
       constant_sensor_data_0_M_DATA_STACK_8,
       constant_sensor_data_0_M_DATA_STACK_9,
       constant_sensor_data_0_M_DATA_STACK_11,
       constant_sensor_data_0_M_DATA_STACK_12,
       constant_sensor_data_0_M_DATA_STACK_14,
       constant_sensor_data_0_M_DATA_STACK_16,
       constant_sensor_data_0_M_DATA_STACK_17,
       constant_sensor_data_0_M_DATA_STACK_19,
       constant_sensor_data_0_M_DATA_STACK_21,
       constant_sensor_data_0_M_DATA_STACK_23,
       constant_sensor_data_0_M_DATA_STACK_25,
       constant_sensor_data_0_M_DATA_STACK_26,
       constant_sensor_data_0_M_DATA_STACK_30,
       constant_sensor_data_0_M_DATA_STACK_31,
       constant_sensor_data_0_M_DATA_STACK_34,
       constant_sensor_data_0_M_DATA_STACK_35,
       constant_sensor_data_0_M_DATA_STACK_37,
       constant_sensor_data_0_M_DATA_STACK_40,
       constant_sensor_data_0_M_DATA_STACK_43,
       constant_sensor_data_0_M_DATA_STACK_48,
       constant_sensor_data_0_M_DATA_STACK_50,
       constant_sensor_data_0_M_DATA_STACK_58,
       constant_sensor_data_0_M_DATA_STACK_59,
       constant_sensor_data_0_M_DATA_STACK_60,
       constant_sensor_data_0_M_DATA_STACK_61,
       constant_sensor_data_0_M_DATA_STACK_63,
       constant_sensor_data_0_M_DATA_STACK_65,
       constant_sensor_data_0_M_DATA_STACK_28,
       constant_sensor_data_0_M_DATA_STACK_29,
       constant_sensor_data_0_M_DATA_STACK_66,
       constant_sensor_data_0_M_DATA_STACK_68,
       constant_sensor_data_0_M_DATA_STACK_69,
       constant_sensor_data_0_M_DATA_STACK_70,
       constant_sensor_data_0_M_DATA_STACK_71,
       constant_sensor_data_0_M_DATA_STACK_72,
       constant_sensor_data_0_M_DATA_STACK_73,
       constant_sensor_data_0_M_DATA_STACK_75,
       constant_sensor_data_0_M_DATA_STACK_46,
       constant_sensor_data_0_M_DATA_STACK_41,
       constant_sensor_data_0_M_DATA_STACK_39,
       constant_sensor_data_0_M_DATA_STACK_38,
       constant_sensor_data_0_M_DATA_STACK_36,
       constant_sensor_data_0_M_DATA_STACK_33,
       constant_sensor_data_0_G_DATA_STACK_34,
       constant_sensor_data_0_G_DATA_STACK_35,
       constant_sensor_data_0_G_DATA_STACK_37,
       constant_sensor_data_0_G_DATA_STACK_39,
       constant_sensor_data_0_G_DATA_STACK_47,
       constant_sensor_data_0_G_DATA_STACK_44,
       constant_sensor_data_0_G_DATA_STACK_46,
       constant_sensor_data_0_G_DATA_STACK_9,
       constant_sensor_data_0_G_DATA_STACK_7,
       constant_sensor_data_0_G_DATA_STACK_17,
       constant_sensor_data_0_G_DATA_STACK_30,
       constant_sensor_data_0_G_DATA_STACK_32,
       constant_sensor_data_0_G_DATA_STACK_19,
       constant_sensor_data_0_G_DATA_STACK_24,
       constant_sensor_data_0_G_DATA_STACK_26,
       constant_sensor_data_0_G_DATA_STACK_28,
       constant_sensor_data_0_G_DATA_STACK_15,
       constant_sensor_data_0_G_DATA_STACK_13,
       constant_sensor_data_0_G_DATA_STACK_11,
       constant_sensor_data_0_G_DATA_STACK_21,
       constant_sensor_data_0_G_DATA_STACK_0_d0,
       constant_sensor_data_0_G_DATA_STACK_8,
       constant_sensor_data_0_G_DATA_STACK_10,
       constant_sensor_data_0_G_DATA_STACK_12,
       constant_sensor_data_0_G_DATA_STACK_14,
       constant_sensor_data_0_G_DATA_STACK_16,
       constant_sensor_data_0_G_DATA_STACK_18,
       constant_sensor_data_0_G_DATA_STACK_20,
       constant_sensor_data_0_G_DATA_STACK_22,
       constant_sensor_data_0_G_DATA_STACK_23,
       constant_sensor_data_0_G_DATA_STACK_25,
       constant_sensor_data_0_G_DATA_STACK_27,
       constant_sensor_data_0_G_DATA_STACK_31,
       constant_sensor_data_0_G_DATA_STACK_33,
       constant_sensor_data_0_G_DATA_STACK_36,
       constant_sensor_data_0_G_DATA_STACK_38,
       constant_sensor_data_0_G_DATA_STACK_40,
       constant_sensor_data_0_G_DATA_STACK_41,
       constant_sensor_data_0_G_DATA_STACK_42,
       constant_sensor_data_0_G_DATA_STACK_43,
       constant_sensor_data_0_G_DATA_STACK_29,
       constant_sensor_data_0_G_DATA_STACK_45,
       read_address_traversal_0_COL_READ_OUT,
       write_address_traversal_0_COL_WRITE_OUT,
       read_address_traversal_0_ROW_READ_OUT,
       write_address_traversal_0_ROW_WRITE_OUT,
       memory_controller_0_CMD_OUT,
       memory_controller_0_ROW_OUT,
       memory_controller_0_COL_OUT,
       memory_controller_0_BA_OUT,
       memory_controller_0_DATA_OUT,
       reset_pulse_0_RESET_0,
       memory_controller_0_NEXT_READ,
       memory_controller_0_NEXT_WRITE,
       reset_pulse_0_RESET,
       reset_pulse_0_RESET_11,
       reset_pulse_0_RESET_17,
       read_buffer_0_READ_CMD,
       sdram_interface_0_STATUS,
       reset_pulse_0_CLK_OUT_48MHZ,
       reset_pulse_0_RESET_7,
       reset_pulse_0_RESET_3,
       reset_pulse_0_RESET_4,
       reset_pulse_0_RESET_6,
       reset_pulse_0_RESET_18,
       reset_pulse_0_RESET_2,
       reset_pulse_0_RESET_5,
       reset_pulse_0_RESET_16,
       reset_pulse_0_RESET_14,
       reset_pulse_0_RESET_15,
       reset_pulse_0_RESET_12,
       reset_pulse_0_RESET_13,
       reset_pulse_0_RESET_19,
       reset_pulse_0_RESET_20,
       reset_pulse_0_RESET_21,
       reset_pulse_0_RESET_22
    );
input  [1:1] constant_sensor_data_0_G_DATA_STACK_0;
input  [1:0] read_address_traversal_0_BA_READ_OUT;
input  [1:0] write_address_traversal_0_BA_WRITE_OUT;
input  constant_sensor_data_0_M_DATA_STACK_77;
input  constant_sensor_data_0_M_DATA_STACK_45;
input  constant_sensor_data_0_M_DATA_STACK_13;
input  constant_sensor_data_0_M_DATA_STACK_62;
input  constant_sensor_data_0_M_DATA_STACK_67;
input  constant_sensor_data_0_M_DATA_STACK_47;
input  constant_sensor_data_0_M_DATA_STACK_15;
input  constant_sensor_data_0_M_DATA_STACK_64;
input  constant_sensor_data_0_M_DATA_STACK_32;
input  constant_sensor_data_0_M_DATA_STACK_49;
input  constant_sensor_data_0_M_DATA_STACK_18;
input  constant_sensor_data_0_M_DATA_STACK_51;
input  constant_sensor_data_0_M_DATA_STACK_52;
input  constant_sensor_data_0_M_DATA_STACK_20;
input  constant_sensor_data_0_M_DATA_STACK_53;
input  constant_sensor_data_0_M_DATA_STACK_54;
input  constant_sensor_data_0_M_DATA_STACK_22;
input  constant_sensor_data_0_M_DATA_STACK_55;
input  constant_sensor_data_0_M_DATA_STACK_56;
input  constant_sensor_data_0_M_DATA_STACK_24;
input  constant_sensor_data_0_M_DATA_STACK_57;
input  constant_sensor_data_0_M_DATA_STACK_74;
input  constant_sensor_data_0_M_DATA_STACK_42;
input  constant_sensor_data_0_M_DATA_STACK_10;
input  constant_sensor_data_0_M_DATA_STACK_27;
input  constant_sensor_data_0_M_DATA_STACK_76;
input  constant_sensor_data_0_M_DATA_STACK_44;
input  constant_sensor_data_0_M_DATA_STACK_0;
input  constant_sensor_data_0_M_DATA_STACK_6;
input  constant_sensor_data_0_M_DATA_STACK_7;
input  constant_sensor_data_0_M_DATA_STACK_8;
input  constant_sensor_data_0_M_DATA_STACK_9;
input  constant_sensor_data_0_M_DATA_STACK_11;
input  constant_sensor_data_0_M_DATA_STACK_12;
input  constant_sensor_data_0_M_DATA_STACK_14;
input  constant_sensor_data_0_M_DATA_STACK_16;
input  constant_sensor_data_0_M_DATA_STACK_17;
input  constant_sensor_data_0_M_DATA_STACK_19;
input  constant_sensor_data_0_M_DATA_STACK_21;
input  constant_sensor_data_0_M_DATA_STACK_23;
input  constant_sensor_data_0_M_DATA_STACK_25;
input  constant_sensor_data_0_M_DATA_STACK_26;
input  constant_sensor_data_0_M_DATA_STACK_30;
input  constant_sensor_data_0_M_DATA_STACK_31;
input  constant_sensor_data_0_M_DATA_STACK_34;
input  constant_sensor_data_0_M_DATA_STACK_35;
input  constant_sensor_data_0_M_DATA_STACK_37;
input  constant_sensor_data_0_M_DATA_STACK_40;
input  constant_sensor_data_0_M_DATA_STACK_43;
input  constant_sensor_data_0_M_DATA_STACK_48;
input  constant_sensor_data_0_M_DATA_STACK_50;
input  constant_sensor_data_0_M_DATA_STACK_58;
input  constant_sensor_data_0_M_DATA_STACK_59;
input  constant_sensor_data_0_M_DATA_STACK_60;
input  constant_sensor_data_0_M_DATA_STACK_61;
input  constant_sensor_data_0_M_DATA_STACK_63;
input  constant_sensor_data_0_M_DATA_STACK_65;
input  constant_sensor_data_0_M_DATA_STACK_28;
input  constant_sensor_data_0_M_DATA_STACK_29;
input  constant_sensor_data_0_M_DATA_STACK_66;
input  constant_sensor_data_0_M_DATA_STACK_68;
input  constant_sensor_data_0_M_DATA_STACK_69;
input  constant_sensor_data_0_M_DATA_STACK_70;
input  constant_sensor_data_0_M_DATA_STACK_71;
input  constant_sensor_data_0_M_DATA_STACK_72;
input  constant_sensor_data_0_M_DATA_STACK_73;
input  constant_sensor_data_0_M_DATA_STACK_75;
input  constant_sensor_data_0_M_DATA_STACK_46;
input  constant_sensor_data_0_M_DATA_STACK_41;
input  constant_sensor_data_0_M_DATA_STACK_39;
input  constant_sensor_data_0_M_DATA_STACK_38;
input  constant_sensor_data_0_M_DATA_STACK_36;
input  constant_sensor_data_0_M_DATA_STACK_33;
input  constant_sensor_data_0_G_DATA_STACK_34;
input  constant_sensor_data_0_G_DATA_STACK_35;
input  constant_sensor_data_0_G_DATA_STACK_37;
input  constant_sensor_data_0_G_DATA_STACK_39;
input  constant_sensor_data_0_G_DATA_STACK_47;
input  constant_sensor_data_0_G_DATA_STACK_44;
input  constant_sensor_data_0_G_DATA_STACK_46;
input  constant_sensor_data_0_G_DATA_STACK_9;
input  constant_sensor_data_0_G_DATA_STACK_7;
input  constant_sensor_data_0_G_DATA_STACK_17;
input  constant_sensor_data_0_G_DATA_STACK_30;
input  constant_sensor_data_0_G_DATA_STACK_32;
input  constant_sensor_data_0_G_DATA_STACK_19;
input  constant_sensor_data_0_G_DATA_STACK_24;
input  constant_sensor_data_0_G_DATA_STACK_26;
input  constant_sensor_data_0_G_DATA_STACK_28;
input  constant_sensor_data_0_G_DATA_STACK_15;
input  constant_sensor_data_0_G_DATA_STACK_13;
input  constant_sensor_data_0_G_DATA_STACK_11;
input  constant_sensor_data_0_G_DATA_STACK_21;
input  constant_sensor_data_0_G_DATA_STACK_0_d0;
input  constant_sensor_data_0_G_DATA_STACK_8;
input  constant_sensor_data_0_G_DATA_STACK_10;
input  constant_sensor_data_0_G_DATA_STACK_12;
input  constant_sensor_data_0_G_DATA_STACK_14;
input  constant_sensor_data_0_G_DATA_STACK_16;
input  constant_sensor_data_0_G_DATA_STACK_18;
input  constant_sensor_data_0_G_DATA_STACK_20;
input  constant_sensor_data_0_G_DATA_STACK_22;
input  constant_sensor_data_0_G_DATA_STACK_23;
input  constant_sensor_data_0_G_DATA_STACK_25;
input  constant_sensor_data_0_G_DATA_STACK_27;
input  constant_sensor_data_0_G_DATA_STACK_31;
input  constant_sensor_data_0_G_DATA_STACK_33;
input  constant_sensor_data_0_G_DATA_STACK_36;
input  constant_sensor_data_0_G_DATA_STACK_38;
input  constant_sensor_data_0_G_DATA_STACK_40;
input  constant_sensor_data_0_G_DATA_STACK_41;
input  constant_sensor_data_0_G_DATA_STACK_42;
input  constant_sensor_data_0_G_DATA_STACK_43;
input  constant_sensor_data_0_G_DATA_STACK_29;
input  constant_sensor_data_0_G_DATA_STACK_45;
input  [8:0] read_address_traversal_0_COL_READ_OUT;
input  [8:0] write_address_traversal_0_COL_WRITE_OUT;
input  [12:0] read_address_traversal_0_ROW_READ_OUT;
input  [12:0] write_address_traversal_0_ROW_WRITE_OUT;
output [1:0] memory_controller_0_CMD_OUT;
output [12:0] memory_controller_0_ROW_OUT;
output [8:0] memory_controller_0_COL_OUT;
output [1:0] memory_controller_0_BA_OUT;
output [15:0] memory_controller_0_DATA_OUT;
input  reset_pulse_0_RESET_0;
output memory_controller_0_NEXT_READ;
output memory_controller_0_NEXT_WRITE;
input  reset_pulse_0_RESET;
input  reset_pulse_0_RESET_11;
input  reset_pulse_0_RESET_17;
input  read_buffer_0_READ_CMD;
input  sdram_interface_0_STATUS;
input  reset_pulse_0_CLK_OUT_48MHZ;
input  reset_pulse_0_RESET_7;
input  reset_pulse_0_RESET_3;
input  reset_pulse_0_RESET_4;
input  reset_pulse_0_RESET_6;
input  reset_pulse_0_RESET_18;
input  reset_pulse_0_RESET_2;
input  reset_pulse_0_RESET_5;
input  reset_pulse_0_RESET_16;
input  reset_pulse_0_RESET_14;
input  reset_pulse_0_RESET_15;
input  reset_pulse_0_RESET_12;
input  reset_pulse_0_RESET_13;
input  reset_pulse_0_RESET_19;
input  reset_pulse_0_RESET_20;
input  reset_pulse_0_RESET_21;
input  reset_pulse_0_RESET_22;

    wire un1_schedule_21_0, \schedule_RNIUGQM72[2]_net_1 , 
        \schedule_RNIRFRF[2]_net_1 , un1_schedule_19, 
        un1_next_write8_1_0, ba_out_1_sqmuxa, write_count_0_sqmuxa, 
        next_write8, num_cycles15_2, num_cycles15_1, num_cycles15_0, 
        mag_buffer3_5, un1_MAG_DATA_NE_69, un1_MAG_DATA_NE_70, 
        mag_buffer3_4, mag_buffer3_3, mag_buffer3_2, mag_buffer3_1, 
        mag_buffer3_0, data_buffer_0_sqmuxa_2, cmd_out12, next_write7, 
        data_buffer_0_sqmuxa_1, data_buffer_0_sqmuxa_0, 
        data_buffer_4_sn_N_2_2, num_cycles10, num_cycles11, 
        data_buffer_4_sn_N_2_1, data_buffer_4_sn_N_2_0, num_cycles11_2, 
        un1_write_count_3, num_cycles11_1, num_cycles11_0, 
        geig_buffer3_4, un1_GEIG_DATA_NE_38, un1_GEIG_DATA_NE_39, 
        geig_buffer3_3, geig_buffer3_2, geig_buffer3_1, geig_buffer3_0, 
        next_read_i, next_write_i, \DWACT_ADD_CI_0_g_array_1[0] , 
        \DWACT_ADD_CI_0_TMP[0] , \write_count[1]_net_1 , 
        \ACT_LT3_E[3] , \ACT_LT3_E[0] , write_count_0_sqmuxa_0_net_1, 
        \schedule_15_i_m_0[7] , \schedule[7]_net_1 , schedule_3_sqmuxa, 
        schedule_15_sn_N_3, schedule_2_sqmuxa_2_1, schedule56, 
        \schedule_9[4] , N_477, schedule_1_sqmuxa_2_0, \schedule_9[2] , 
        \schedule_15[3] , schedule_15_sn_m1_0, \schedule_3[3] , 
        schedule_1_sqmuxa_1_0, mag_buffer3, schedule_3_sqmuxa_1_0, 
        \schedule_3[2] , schedule18, schedule_1_sqmuxa_0, 
        cmd_out13_NE_0, \num_cycles_2[2] , \write_count[0]_net_1 , 
        un1_schedule_20_a0_2, un1_schedule_20_a0_0, \schedule_3[0] , 
        un1_MAG_DATA_NE_62, un1_MAG_DATA_NE_61, un1_MAG_DATA_NE_68, 
        un1_MAG_DATA_NE_58, un1_MAG_DATA_NE_57, un1_MAG_DATA_NE_66, 
        un1_MAG_DATA_NE_56, un1_MAG_DATA_NE_55, un1_MAG_DATA_NE_63, 
        un1_MAG_DATA_NE_48, un1_MAG_DATA_NE_47, un1_MAG_DATA_NE_59, 
        un1_MAG_DATA_NE_34, un1_MAG_DATA_NE_33, un1_MAG_DATA_NE_54, 
        un1_MAG_DATA_NE_30, un1_MAG_DATA_NE_29, un1_MAG_DATA_NE_52, 
        un1_MAG_DATA_NE_28, un1_MAG_DATA_NE_27, un1_MAG_DATA_NE_49, 
        un1_MAG_DATA_NE_18, un1_MAG_DATA_NE_17, un1_MAG_DATA_NE_46, 
        un1_MAG_DATA_NE_14, un1_MAG_DATA_NE_13, un1_MAG_DATA_NE_44, 
        un1_MAG_DATA_NE_10, un1_MAG_DATA_NE_9, un1_MAG_DATA_NE_42, 
        un1_MAG_DATA_NE_6, un1_MAG_DATA_NE_5, un1_MAG_DATA_NE_40, 
        un1_MAG_DATA_NE_2, un1_MAG_DATA_NE_1, un1_MAG_DATA_NE_38, 
        un1_MAG_DATA_NE_0, un1_MAG_DATA_30, un1_MAG_DATA_NE_35, 
        un1_MAG_DATA_48, un1_MAG_DATA_32, un1_MAG_DATA_NE_32, 
        un1_MAG_DATA_18, un1_MAG_DATA_71, un1_MAG_DATA_NE_26, 
        un1_MAG_DATA_35, un1_MAG_DATA_19, un1_MAG_DATA_NE_24, 
        un1_MAG_DATA_72, un1_MAG_DATA_52, un1_MAG_DATA_NE_21, 
        un1_MAG_DATA_37, un1_MAG_DATA_21, un1_MAG_DATA_NE_20, 
        un1_MAG_DATA_39, un1_MAG_DATA_23, un1_MAG_DATA_NE_16, 
        un1_MAG_DATA_41, un1_MAG_DATA_25, un1_MAG_DATA_NE_12, 
        un1_MAG_DATA_43, un1_MAG_DATA_27, un1_MAG_DATA_NE_8, 
        un1_MAG_DATA_77, un1_MAG_DATA_61, un1_MAG_DATA_NE_4, 
        \mag_prev[79]_net_1 , un1_MAG_DATA_14, \mag_prev[47]_net_1 , 
        un1_MAG_DATA_63, \mag_prev[15]_net_1 , un1_MAG_DATA_31, 
        \mag_prev[64]_net_1 , un1_MAG_DATA_68, \mag_prev[69]_net_1 , 
        un1_MAG_DATA_16, \mag_prev[49]_net_1 , un1_MAG_DATA_65, 
        \mag_prev[17]_net_1 , un1_MAG_DATA_33, \mag_prev[66]_net_1 , 
        un1_MAG_DATA_70, \mag_prev[34]_net_1 , un1_MAG_DATA_50, 
        \mag_prev[51]_net_1 , un1_MAG_DATA_67, \mag_prev[20]_net_1 , 
        un1_MAG_DATA_36, \mag_prev[53]_net_1 , un1_MAG_DATA_73, 
        \mag_prev[54]_net_1 , un1_MAG_DATA_74, \mag_prev[22]_net_1 , 
        un1_MAG_DATA_38, \mag_prev[55]_net_1 , un1_MAG_DATA_75, 
        \mag_prev[56]_net_1 , un1_MAG_DATA_6, \mag_prev[24]_net_1 , 
        un1_MAG_DATA_40, \mag_prev[57]_net_1 , un1_MAG_DATA_8, 
        \mag_prev[58]_net_1 , un1_MAG_DATA_9, \mag_prev[26]_net_1 , 
        un1_MAG_DATA_42, \mag_prev[59]_net_1 , un1_MAG_DATA_10, 
        \mag_prev[76]_net_1 , un1_MAG_DATA_11, \mag_prev[44]_net_1 , 
        un1_MAG_DATA_60, \mag_prev[12]_net_1 , un1_MAG_DATA_28, 
        \mag_prev[29]_net_1 , un1_MAG_DATA_45, \mag_prev[78]_net_1 , 
        un1_MAG_DATA_13, \mag_prev[46]_net_1 , un1_MAG_DATA_62, 
        un1_GEIG_DATA_NE_39_22, un1_GEIG_DATA_NE_39_11, 
        un1_GEIG_DATA_NE_39_10, un1_GEIG_DATA_NE_39_19, 
        un1_GEIG_DATA_NE_39_21, un1_GEIG_DATA_NE_39_7, 
        un1_GEIG_DATA_NE_39_6, un1_GEIG_DATA_NE_39_17, 
        un1_GEIG_DATA_NE_39_20, un1_GEIG_DATA_NE_39_3, 
        un1_GEIG_DATA_NE_39_2, un1_GEIG_DATA_NE_39_15, 
        un1_GEIG_DATA_NE_39_1, un1_GEIG_DATA_NE_39_0, 
        un1_GEIG_DATA_NE_39_12, un1_GEIG_DATA_41, un1_GEIG_DATA_42, 
        un1_GEIG_DATA_NE_39_9, un1_GEIG_DATA_NE_39_4, 
        un1_GEIG_DATA_NE_39_5, \geig_prev[35]_net_1 , un1_GEIG_DATA_34, 
        \geig_prev[36]_net_1 , un1_GEIG_DATA_6, \geig_prev[38]_net_1 , 
        un1_GEIG_DATA_37, \geig_prev[40]_net_1 , un1_GEIG_DATA_39, 
        \geig_prev[48]_net_1 , un1_GEIG_DATA_43, \geig_prev[45]_net_1 , 
        un1_GEIG_DATA_44, \geig_prev[47]_net_1 , un1_GEIG_DATA_46, 
        \geig_prev[10]_net_1 , un1_GEIG_DATA_11, \geig_prev[8]_net_1 , 
        un1_GEIG_DATA_9, \geig_prev[18]_net_1 , un1_GEIG_DATA_19, 
        \geig_prev[31]_net_1 , un1_GEIG_DATA_30, \geig_prev[33]_net_1 , 
        un1_GEIG_DATA_32, un1_GEIG_DATA_NE_38_13, 
        un1_GEIG_DATA_NE_38_5, un1_GEIG_DATA_NE_38_4, 
        un1_GEIG_DATA_NE_38_11, un1_GEIG_DATA_NE_38_12, 
        un1_GEIG_DATA_NE_38_1, un1_GEIG_DATA_NE_38_0, 
        un1_GEIG_DATA_NE_38_9, un1_GEIG_DATA_NE_38_6, 
        un1_GEIG_DATA_NE_38_7, un1_GEIG_DATA_NE_38_2, 
        un1_GEIG_DATA_NE_38_3, \geig_prev[20]_net_1 , un1_GEIG_DATA_21, 
        \geig_prev[25]_net_1 , un1_GEIG_DATA_24, \geig_prev[27]_net_1 , 
        un1_GEIG_DATA_26, \geig_prev[29]_net_1 , un1_GEIG_DATA_28, 
        \geig_prev[16]_net_1 , un1_GEIG_DATA_17, \geig_prev[14]_net_1 , 
        un1_GEIG_DATA_15, \geig_prev[12]_net_1 , un1_GEIG_DATA_13, 
        \geig_prev[22]_net_1 , un1_GEIG_DATA_23, 
        schedule72_NE_20_net_1, schedule72_NE_11_net_1, 
        schedule72_NE_10_net_1, schedule72_NE_16_net_1, 
        schedule72_NE_19_net_1, schedule72_NE_5_net_1, 
        schedule72_NE_4_net_1, schedule72_NE_15_net_1, 
        schedule72_NE_18_net_1, schedule72_NE_1_net_1, 
        schedule72_NE_0_net_1, schedule72_NE_13_net_1, 
        schedule72_11_net_1, schedule72_23_net_1, 
        schedule72_NE_9_net_1, schedule72_12_net_1, 
        schedule72_17_net_1, schedule72_NE_7_net_1, schedule72_2_net_1, 
        schedule72_3_net_1, schedule72_NE_3_net_1, schedule72_8_net_1, 
        schedule72_9_net_1, schedule72_10_net_1, schedule72_13_net_1, 
        schedule72_14_net_1, schedule72_15_net_1, schedule72_0_net_1, 
        schedule72_4_net_1, schedule72_6_net_1, un1_schedule_21, 
        \write_count[2]_net_1 , cmd_out13_NE, schedule73, 
        un1_num_cycles17, un1_num_cycles15, schedule_1_sqmuxa_3, 
        schedule_0_sqmuxa_3, schedule_3_sqmuxa_1, geig_buffer3, N_488, 
        un1_schedule50_1, \schedule_15_i_m[7] , un1_next_write8_3, 
        write_count_0_sqmuxa_1, next_read_0_sqmuxa, un1_next_write8_1, 
        \schedule_3[1] , next_write_1_sqmuxa, 
        un1_write_count_0_sqmuxa_3, N_492, \geig_buffer_3[0] , 
        \mag_buffer_3[0] , N_494, \geig_buffer_3[2] , 
        \mag_buffer_3[2] , N_498, \geig_buffer_3[6] , 
        \mag_buffer_3[6] , N_500, \geig_buffer_3[8] , 
        \mag_buffer_3[8] , N_501, \geig_buffer_3[9] , 
        \mag_buffer_3[9] , N_502, \geig_buffer_3[10] , 
        \mag_buffer_3[10] , N_503, \geig_buffer_3[11] , 
        \mag_buffer_3[11] , N_504, \geig_buffer_3[12] , 
        \mag_buffer_3[12] , N_505, \geig_buffer_3[13] , 
        \mag_buffer_3[13] , N_506, \geig_buffer_3[14] , 
        \mag_buffer_3[14] , N_507, \geig_buffer_3[15] , 
        \mag_buffer_3[15] , N_508, \geig_buffer_3[16] , 
        \mag_buffer_3[16] , N_509, \geig_buffer_3[17] , 
        \mag_buffer_3[17] , N_510, \geig_buffer_3[18] , 
        \mag_buffer_3[18] , N_511, \geig_buffer_3[19] , 
        \mag_buffer_3[19] , N_512, \geig_buffer_3[20] , 
        \mag_buffer_3[20] , N_513, \geig_buffer_3[21] , 
        \mag_buffer_3[21] , N_514, \geig_buffer_3[22] , 
        \mag_buffer_3[22] , N_515, \geig_buffer_3[23] , 
        \mag_buffer_3[23] , N_516, \geig_buffer_3[24] , 
        \mag_buffer_3[24] , N_517, \geig_buffer_3[25] , 
        \mag_buffer_3[25] , N_518, \geig_buffer_3[26] , 
        \mag_buffer_3[26] , N_519, \geig_buffer_3[27] , 
        \mag_buffer_3[27] , N_520, \geig_buffer_3[28] , 
        \mag_buffer_3[28] , N_524, \geig_buffer_3[32] , 
        \mag_buffer_3[32] , N_525, \geig_buffer_3[33] , 
        \mag_buffer_3[33] , N_526, \geig_buffer_3[34] , 
        \mag_buffer_3[34] , N_527, \geig_buffer_3[35] , 
        \mag_buffer_3[35] , N_528, \geig_buffer_3[36] , 
        \mag_buffer_3[36] , N_529, \geig_buffer_3[37] , 
        \mag_buffer_3[37] , N_530, \geig_buffer_3[38] , 
        \mag_buffer_3[38] , N_531, \geig_buffer_3[39] , 
        \mag_buffer_3[39] , N_532, \geig_buffer_3[40] , 
        \mag_buffer_3[40] , N_533, \geig_buffer_3[41] , 
        \mag_buffer_3[41] , N_534, \geig_buffer_3[42] , 
        \mag_buffer_3[42] , N_535, \geig_buffer_3[43] , 
        \mag_buffer_3[43] , N_536, \geig_buffer_3[44] , 
        \mag_buffer_3[44] , N_537, \geig_buffer_3[45] , 
        \mag_buffer_3[45] , N_538, \geig_buffer_3[46] , 
        \mag_buffer_3[46] , N_539, \geig_buffer_3[47] , 
        \mag_buffer_3[47] , N_542, \geig_buffer_3[50] , 
        \mag_buffer_3[50] , N_544, \geig_buffer_3[52] , 
        \mag_buffer_3[52] , N_548, \geig_buffer_3[56] , 
        \mag_buffer_3[56] , N_550, \geig_buffer_3[58] , 
        \mag_buffer_3[58] , N_552, \geig_buffer_3[60] , 
        \mag_buffer_3[60] , N_554, \geig_buffer_3[62] , 
        \mag_buffer_3[62] , N_556, \geig_buffer_3[64] , 
        \mag_buffer_3[64] , N_558, \geig_buffer_3[66] , 
        \mag_buffer_3[66] , N_566, \geig_buffer_3[74] , 
        \mag_buffer_3[74] , N_568, \geig_buffer_3[76] , 
        \mag_buffer_3[76] , N_570, \geig_buffer_3[78] , 
        \mag_buffer_3[78] , \data_buffer_4[0] , \data_buffer[0]_net_1 , 
        \data_buffer_4[2] , \data_buffer[2]_net_1 , \data_buffer_4[3] , 
        N_495, \data_buffer[3]_net_1 , \data_buffer_4[6] , 
        \data_buffer[6]_net_1 , \data_buffer_4[8] , 
        \data_buffer[8]_net_1 , \data_buffer_4[9] , 
        \data_buffer[9]_net_1 , \data_buffer_4[10] , 
        \data_buffer[10]_net_1 , \data_buffer_4[11] , 
        \data_buffer[11]_net_1 , \data_buffer_4[12] , 
        \data_buffer[12]_net_1 , \data_buffer_4[13] , 
        \data_buffer[13]_net_1 , \data_buffer_4[14] , 
        \data_buffer[14]_net_1 , \data_buffer_4[15] , 
        \data_buffer[15]_net_1 , \data_buffer_4[16] , 
        \data_buffer[16]_net_1 , \data_buffer_4[17] , 
        \data_buffer[17]_net_1 , \data_buffer_4[18] , 
        \data_buffer[18]_net_1 , \data_buffer_4[19] , 
        \data_buffer[19]_net_1 , \data_buffer_4[20] , 
        \data_buffer[20]_net_1 , \data_buffer_4[21] , 
        \data_buffer[21]_net_1 , \data_buffer_4[22] , 
        \data_buffer[22]_net_1 , \data_buffer_4[23] , 
        \data_buffer[23]_net_1 , \data_buffer_4[24] , 
        \data_buffer[24]_net_1 , \data_buffer_4[25] , 
        \data_buffer[25]_net_1 , \data_buffer_4[26] , 
        \data_buffer[26]_net_1 , \data_buffer_4[27] , 
        \data_buffer[27]_net_1 , \data_buffer_4[28] , 
        \data_buffer[28]_net_1 , \data_buffer_4[32] , 
        \data_buffer[32]_net_1 , \data_buffer_4[33] , 
        \data_buffer[33]_net_1 , \data_buffer_4[34] , 
        \data_buffer[34]_net_1 , \data_buffer_4[35] , 
        \data_buffer[35]_net_1 , \data_buffer_4[36] , 
        \data_buffer[36]_net_1 , \data_buffer_4[37] , 
        \data_buffer[37]_net_1 , \data_buffer_4[38] , 
        \data_buffer[38]_net_1 , \data_buffer_4[39] , 
        \data_buffer[39]_net_1 , \data_buffer_4[40] , 
        \data_buffer[40]_net_1 , \data_buffer_4[41] , 
        \data_buffer[41]_net_1 , \data_buffer_4[42] , 
        \data_buffer[42]_net_1 , \data_buffer_4[43] , 
        \data_buffer[43]_net_1 , \data_buffer_4[44] , 
        \data_buffer[44]_net_1 , \data_buffer_4[45] , 
        \data_buffer[45]_net_1 , \data_buffer_4[46] , 
        \data_buffer[46]_net_1 , \data_buffer_4[47] , 
        \data_buffer[47]_net_1 , \data_buffer_4[49] , N_541, 
        \data_buffer[49]_net_1 , \data_buffer_4[50] , 
        \data_buffer[50]_net_1 , \data_buffer_4[51] , N_543, 
        \data_buffer[51]_net_1 , \data_buffer_4[53] , N_545, 
        \data_buffer[53]_net_1 , \data_buffer_4[56] , 
        \data_buffer[56]_net_1 , \data_buffer_4[57] , N_549, 
        \data_buffer[57]_net_1 , \data_buffer_4[58] , 
        \data_buffer[58]_net_1 , \data_buffer_4[59] , N_551, 
        \data_buffer[59]_net_1 , \data_buffer_4[60] , 
        \data_buffer[60]_net_1 , \data_buffer_4[61] , N_553, 
        \data_buffer[61]_net_1 , \data_buffer_4[62] , 
        \data_buffer[62]_net_1 , \data_buffer_4[63] , N_555, 
        \data_buffer[63]_net_1 , data_buffer_4_sn_N_2, 
        \data_buffer_4[64] , \data_buffer[64]_net_1 , 
        \data_buffer_4[65] , N_557, \data_buffer[65]_net_1 , 
        \data_buffer_4[66] , \data_buffer[66]_net_1 , 
        \data_buffer_4[67] , N_559, \data_buffer[67]_net_1 , 
        \data_buffer_4[72] , N_564, \data_buffer[72]_net_1 , 
        \data_buffer_4[74] , \data_buffer[74]_net_1 , 
        \data_buffer_4[76] , \data_buffer[76]_net_1 , 
        \data_buffer_4[78] , \data_buffer[78]_net_1 , 
        \data_buffer_7[0] , \data_buffer_7[1] , \data_buffer_4[1] , 
        \data_buffer_7[2] , \data_buffer_7[3] , \data_buffer_7[4] , 
        \data_buffer_4[4] , \data_buffer_7[5] , \data_buffer_4[5] , 
        \data_buffer_7[6] , data_buffer_0_sqmuxa, \data_buffer_7[7] , 
        \data_buffer_4[7] , \data_buffer_7[8] , \data_buffer_7[9] , 
        \data_buffer_7[10] , \data_buffer_7[11] , \data_buffer_7[12] , 
        \data_buffer_7[13] , \data_buffer_4[29] , \data_buffer_7[14] , 
        \data_buffer_4[30] , \data_buffer_7[15] , \data_buffer_4[31] , 
        \data_buffer_7[16] , \data_buffer_7[17] , \data_buffer_7[18] , 
        \data_buffer_7[19] , \data_buffer_7[20] , \data_buffer_7[21] , 
        \data_buffer_7[22] , \data_buffer_7[23] , \data_buffer_7[24] , 
        \data_buffer_7[25] , \data_buffer_7[26] , \data_buffer_7[27] , 
        \data_buffer_7[28] , \data_buffer_7[29] , \data_buffer_7[30] , 
        \data_buffer_7[31] , \data_buffer_7[32] , \data_buffer_4[48] , 
        \data_buffer_7[33] , \data_buffer_7[34] , \data_buffer_7[35] , 
        \data_buffer_7[37] , \data_buffer_7[39] , \data_buffer_4[55] , 
        \data_buffer_7[40] , \data_buffer_7[41] , \data_buffer_7[42] , 
        \data_buffer_7[43] , \data_buffer_7[44] , \data_buffer_7[45] , 
        \data_buffer_7[46] , \data_buffer_7[47] , \data_buffer_7[48] , 
        \data_buffer_7[49] , \data_buffer_7[50] , \data_buffer_7[51] , 
        \data_buffer_7[53] , \data_buffer_4[69] , \data_buffer_7[55] , 
        \data_buffer_4[71] , \data_buffer_7[56] , \data_buffer_7[57] , 
        \data_buffer_4[73] , \data_buffer_7[58] , \data_buffer_7[59] , 
        \data_buffer_4[75] , \data_buffer_7[60] , \data_buffer_7[61] , 
        \data_buffer_4[77] , \data_buffer_7[62] , \data_buffer_7[63] , 
        \data_buffer_4[79] , \geig_buffer[0]_net_1 , 
        \geig_buffer_3[1] , \geig_buffer[1]_net_1 , 
        \geig_buffer[2]_net_1 , \geig_buffer[6]_net_1 , 
        \geig_buffer[8]_net_1 , \geig_buffer[9]_net_1 , 
        \geig_buffer[10]_net_1 , \geig_buffer[11]_net_1 , 
        \geig_buffer[12]_net_1 , \geig_buffer[13]_net_1 , 
        \geig_buffer[14]_net_1 , \geig_buffer[15]_net_1 , 
        \geig_buffer[16]_net_1 , \geig_buffer[17]_net_1 , 
        \geig_buffer[18]_net_1 , \geig_buffer[19]_net_1 , 
        \geig_buffer[20]_net_1 , \geig_buffer[21]_net_1 , 
        \geig_buffer[22]_net_1 , \geig_buffer[23]_net_1 , 
        \geig_buffer[24]_net_1 , \geig_buffer[25]_net_1 , 
        \geig_buffer[26]_net_1 , \geig_buffer[27]_net_1 , 
        \geig_buffer[28]_net_1 , \geig_buffer[32]_net_1 , 
        \geig_buffer[33]_net_1 , \geig_buffer[34]_net_1 , 
        \geig_buffer[35]_net_1 , \geig_buffer[36]_net_1 , 
        \geig_buffer[37]_net_1 , \geig_buffer[38]_net_1 , 
        \geig_buffer[39]_net_1 , \geig_buffer[40]_net_1 , 
        \geig_buffer[41]_net_1 , \geig_buffer[42]_net_1 , 
        \geig_buffer[43]_net_1 , \geig_buffer[44]_net_1 , 
        \geig_buffer[45]_net_1 , \geig_buffer[47]_net_1 , 
        \geig_buffer[50]_net_1 , \geig_buffer[52]_net_1 , 
        \geig_buffer[56]_net_1 , \geig_buffer[58]_net_1 , 
        \geig_buffer[62]_net_1 , \geig_buffer[64]_net_1 , 
        \geig_buffer[66]_net_1 , \mag_buffer[0]_net_1 , 
        \mag_buffer[2]_net_1 , \mag_buffer_3[3] , 
        \mag_buffer[3]_net_1 , \mag_buffer[6]_net_1 , 
        \mag_buffer[8]_net_1 , \mag_buffer[9]_net_1 , 
        \mag_buffer[10]_net_1 , \mag_buffer[11]_net_1 , 
        \mag_buffer[12]_net_1 , \mag_buffer[13]_net_1 , 
        \mag_buffer[14]_net_1 , \mag_buffer[15]_net_1 , 
        \mag_buffer[16]_net_1 , \mag_buffer[17]_net_1 , 
        \mag_buffer[18]_net_1 , \mag_buffer[19]_net_1 , 
        \mag_buffer[20]_net_1 , \mag_buffer[21]_net_1 , 
        \mag_buffer[22]_net_1 , \mag_buffer[23]_net_1 , 
        \mag_buffer[24]_net_1 , \mag_buffer[25]_net_1 , 
        \mag_buffer[26]_net_1 , \mag_buffer[27]_net_1 , 
        \mag_buffer[28]_net_1 , \mag_buffer[32]_net_1 , 
        \mag_buffer[33]_net_1 , \mag_buffer[36]_net_1 , 
        \mag_buffer[37]_net_1 , \mag_buffer[39]_net_1 , 
        \mag_buffer[42]_net_1 , \mag_buffer[44]_net_1 , 
        \mag_buffer[45]_net_1 , \mag_buffer[46]_net_1 , 
        \mag_buffer[47]_net_1 , \mag_buffer_3[49] , 
        \mag_buffer[49]_net_1 , \mag_buffer[50]_net_1 , 
        \mag_buffer_3[51] , \mag_buffer[51]_net_1 , 
        \mag_buffer[52]_net_1 , \mag_buffer_3[53] , 
        \mag_buffer[53]_net_1 , \mag_buffer_3[57] , 
        \mag_buffer[57]_net_1 , \mag_buffer_3[59] , 
        \mag_buffer[59]_net_1 , \mag_buffer[60]_net_1 , 
        \mag_buffer_3[61] , \mag_buffer[61]_net_1 , 
        \mag_buffer[62]_net_1 , \mag_buffer_3[63] , 
        \mag_buffer[63]_net_1 , \mag_buffer[64]_net_1 , 
        \mag_buffer_3[65] , \mag_buffer[65]_net_1 , 
        \mag_buffer[66]_net_1 , \mag_buffer_3[67] , 
        \mag_buffer[67]_net_1 , \data_buffer_7[64] , 
        \data_buffer_7[65] , \data_buffer_7[66] , \data_buffer_7[67] , 
        \data_buffer_7[69] , \data_buffer_7[71] , \data_buffer_7[72] , 
        \data_buffer_7[73] , \data_buffer_7[74] , \data_buffer_7[75] , 
        \data_buffer_7[76] , \data_buffer_7[77] , \data_buffer_7[78] , 
        \data_buffer_7[79] , \data_buffer[7]_net_1 , 
        \data_buffer[5]_net_1 , \data_buffer[4]_net_1 , \ba_out_9[0] , 
        \ba_out_9[1] , \col_out_9[1] , \col_out_9[2] , \col_out_9[3] , 
        \col_out_9[4] , \col_out_9[5] , \col_out_9[6] , \col_out_9[7] , 
        \col_out_9[8] , \row_out_9[7] , \row_out_9[9] , N_521, 
        \geig_buffer_3[29] , \mag_buffer_3[29] , N_522, 
        \geig_buffer_3[30] , \mag_buffer_3[30] , N_523, 
        \geig_buffer_3[31] , \mag_buffer_3[31] , N_546, 
        \geig_buffer_3[54] , \mag_buffer_3[54] , N_562, 
        \geig_buffer_3[70] , \mag_buffer_3[70] , \geig_buffer_3[72] , 
        \mag_buffer_3[72] , \data_buffer[29]_net_1 , 
        \data_buffer[30]_net_1 , \data_buffer[31]_net_1 , 
        \data_buffer_4[54] , \data_buffer[54]_net_1 , N_561, 
        \data_buffer[69]_net_1 , \data_buffer_4[70] , 
        \data_buffer[70]_net_1 , N_563, \data_buffer[71]_net_1 , N_565, 
        \data_buffer[73]_net_1 , N_567, \data_buffer[75]_net_1 , N_569, 
        \data_buffer[77]_net_1 , N_571, \data_buffer[79]_net_1 , 
        \data_buffer_7[38] , \data_buffer_7[54] , 
        \geig_buffer[29]_net_1 , \geig_buffer[30]_net_1 , 
        \geig_buffer[70]_net_1 , \geig_buffer[72]_net_1 , 
        \geig_buffer[76]_net_1 , \geig_buffer[78]_net_1 , 
        \mag_buffer[29]_net_1 , \mag_buffer[30]_net_1 , 
        \mag_buffer[31]_net_1 , \mag_buffer[54]_net_1 , 
        \mag_buffer_3[68] , \mag_buffer[68]_net_1 , \mag_buffer_3[69] , 
        \mag_buffer[69]_net_1 , \mag_buffer[70]_net_1 , 
        \mag_buffer_3[71] , \mag_buffer[71]_net_1 , 
        \mag_buffer[72]_net_1 , \mag_buffer_3[73] , 
        \mag_buffer[73]_net_1 , \mag_buffer[74]_net_1 , 
        \mag_buffer_3[75] , \mag_buffer[75]_net_1 , 
        \mag_buffer[76]_net_1 , \mag_buffer_3[77] , 
        \mag_buffer[77]_net_1 , \mag_buffer[78]_net_1 , 
        \mag_buffer_3[79] , \mag_buffer[79]_net_1 , 
        \data_buffer_7[70] , \mag_prev[68]_net_1 , 
        \mag_prev[70]_net_1 , \mag_prev[71]_net_1 , 
        \mag_prev[72]_net_1 , \mag_prev[73]_net_1 , 
        \mag_prev[74]_net_1 , \mag_prev[75]_net_1 , 
        \mag_prev[77]_net_1 , \mag_prev[67]_net_1 , 
        \mag_prev[65]_net_1 , \mag_prev[63]_net_1 , 
        \mag_prev[62]_net_1 , \mag_prev[61]_net_1 , 
        \mag_prev[60]_net_1 , \mag_prev[52]_net_1 , 
        \mag_prev[50]_net_1 , \mag_prev[48]_net_1 , 
        \mag_prev[45]_net_1 , \mag_prev[43]_net_1 , 
        \mag_prev[42]_net_1 , \mag_prev[41]_net_1 , 
        \mag_prev[40]_net_1 , \mag_prev[39]_net_1 , 
        \mag_prev[38]_net_1 , \mag_prev[37]_net_1 , 
        \mag_prev[36]_net_1 , \mag_prev[35]_net_1 , 
        \mag_prev[33]_net_1 , \mag_prev[32]_net_1 , 
        \mag_prev[31]_net_1 , \mag_prev[30]_net_1 , 
        \mag_prev[28]_net_1 , \mag_prev[27]_net_1 , 
        \mag_prev[25]_net_1 , \mag_prev[23]_net_1 , 
        \mag_prev[21]_net_1 , \mag_prev[19]_net_1 , 
        \mag_prev[18]_net_1 , \mag_prev[16]_net_1 , 
        \mag_prev[14]_net_1 , \mag_prev[13]_net_1 , 
        \mag_prev[11]_net_1 , \mag_prev[10]_net_1 , 
        \mag_prev[9]_net_1 , \mag_prev[8]_net_1 , \mag_prev[6] , 
        \mag_buffer[58]_net_1 , \geig_buffer[74]_net_1 , 
        \geig_buffer[54]_net_1 , \geig_buffer[31]_net_1 , 
        \geig_buffer[60]_net_1 , \geig_buffer[46]_net_1 , 
        \geig_buffer_3[48] , \geig_buffer[48]_net_1 , N_540, 
        \data_buffer[48]_net_1 , \mag_buffer_3[48] , 
        \geig_prev[46]_net_1 , \geig_prev[44]_net_1 , 
        \geig_prev[43]_net_1 , \geig_prev[42]_net_1 , 
        \geig_prev[41]_net_1 , \geig_prev[39]_net_1 , 
        \geig_prev[37]_net_1 , \geig_prev[34]_net_1 , 
        \geig_prev[32]_net_1 , \geig_prev[30]_net_1 , 
        \geig_prev[28]_net_1 , \geig_prev[26]_net_1 , 
        \geig_prev[24]_net_1 , \geig_prev[6] , \num_cycles[0]_net_1 , 
        \geig_prev[9]_net_1 , \geig_prev[11]_net_1 , 
        \geig_prev[13]_net_1 , \geig_prev[15]_net_1 , 
        \geig_prev[17]_net_1 , \geig_prev[19]_net_1 , 
        \geig_prev[21]_net_1 , \geig_prev[23]_net_1 , N_493, 
        \mag_buffer[41]_net_1 , \mag_buffer[35]_net_1 , 
        \data_buffer[1]_net_1 , un1_schedule_6, \schedule_3[4] , 
        \schedule_3[5] , un1_schedule_10, schedule34, \schedule_15[5] , 
        \un1_schedule_8_m[0] , schedule50, \un1_schedule_13_m[1] , 
        \schedule_21_0_f1[4] , \schedule_21[4] , 
        \un1_schedule_15_m[1] , \schedule_15_i_m[6] , \schedule_15[6] , 
        \schedule[6]_net_1 , \schedule_29[0] , \un1_schedule_7_m[0] , 
        \schedule_29[1] , \un1_schedule_12_m[1] , \schedule_29[2] , 
        \schedule_29[3] , \schedule_29[4] , \schedule_29[5] , 
        \schedule[2]_net_1 , \schedule[4]_net_1 , un1_schedule_1, 
        \schedule[3]_net_1 , \schedule[5]_net_1 , \schedule_29[6] , 
        \schedule_29[7] , \schedule_15[1] , \schedule_9[0] , 
        un1_schedule_18, num_cycles15, \schedule[1]_net_1 , 
        \schedule[0]_net_1 , read_prev_net_1, \geig_buffer_3[68] , 
        \geig_buffer[68]_net_1 , \data_buffer_4[68] , N_560, 
        \data_buffer[68]_net_1 , N_547, \mag_buffer_3[55] , 
        \data_buffer_7[68] , \mag_buffer[56]_net_1 , 
        \mag_buffer[55]_net_1 , \data_buffer_7[52] , 
        \data_buffer_4[52] , \data_buffer_7[36] , 
        \data_buffer[55]_net_1 , \data_buffer[52]_net_1 , 
        busy_hold_net_1, un1_write_count_0_sqmuxa_4, cmd_out_1_sqmuxa, 
        un1_next_read_0_sqmuxa_1, next_read_1_sqmuxa, \row_out_9[12] , 
        \row_out_9[11] , \row_out_9[10] , \row_out_9[8] , 
        \row_out_9[6] , \row_out_9[5] , \row_out_9[4] , \row_out_9[3] , 
        \row_out_9[2] , \row_out_9[1] , \row_out_9[0] , \col_out_9[0] , 
        \mag_buffer[48]_net_1 , \mag_buffer[43]_net_1 , 
        \mag_buffer[40]_net_1 , \mag_buffer[38]_net_1 , 
        \mag_buffer[34]_net_1 , \write_count_6[2] , I_14_3, 
        \write_count_6[0] , \DWACT_ADD_CI_0_partial_sum[0] , I_12_3, 
        \ACT_LT3_E[4] , \ACT_LT3_E[5] , GND, VCC;
    
    NOR2B busy_hold_RNIMBDFP4_0 (.A(write_count_0_sqmuxa), .B(
        next_write7), .Y(write_count_0_sqmuxa_1));
    NOR2A busy_hold_RNIRJ6I05_1 (.A(ba_out_1_sqmuxa), .B(next_write7), 
        .Y(schedule_1_sqmuxa_3));
    NOR2B busy_hold_RNIMBDFP4 (.A(write_count_0_sqmuxa), .B(
        next_write8), .Y(next_write_1_sqmuxa));
    MX2 \mag_buffer_RNING5NH4[50]  (.A(\geig_buffer_3[50] ), .B(
        \mag_buffer_3[50] ), .S(num_cycles11_2), .Y(N_542));
    DFN1C0 \geig_prev[39]  (.D(constant_sensor_data_0_G_DATA_STACK_38), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_13)
        , .Q(\geig_prev[39]_net_1 ));
    DFN1C0 \mag_prev[75]  (.D(constant_sensor_data_0_M_DATA_STACK_73), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_22)
        , .Q(\mag_prev[75]_net_1 ));
    DFN1E1C0 \data_out[8]  (.D(\data_buffer_4[8] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_5), .E(
        next_write_1_sqmuxa), .Q(memory_controller_0_DATA_OUT[8]));
    XOR2 \mag_prev_RNIFKST[72]  (.A(\mag_prev[72]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_70), .Y(un1_MAG_DATA_72));
    OR3 \mag_prev_RNI9IN161[17]  (.A(un1_MAG_DATA_NE_62), .B(
        un1_MAG_DATA_NE_61), .C(un1_MAG_DATA_NE_68), .Y(
        un1_MAG_DATA_NE_70));
    MX2 \data_buffer_RNILBSV79[21]  (.A(N_513), .B(
        \data_buffer[21]_net_1 ), .S(data_buffer_4_sn_N_2_0), .Y(
        \data_buffer_4[21] ));
    XO1 \mag_prev_RNI29LR1[54]  (.A(
        constant_sensor_data_0_M_DATA_STACK_52), .B(
        \mag_prev[54]_net_1 ), .C(un1_MAG_DATA_74), .Y(
        un1_MAG_DATA_NE_18));
    DFN1E1 \mag_buffer[74]  (.D(constant_sensor_data_0_M_DATA_STACK_72)
        , .CLK(reset_pulse_0_CLK_OUT_48MHZ), .E(mag_buffer3_3), .Q(
        \mag_buffer[74]_net_1 ));
    MX2 \mag_buffer_RNI9AJH42[41]  (.A(\mag_buffer[41]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_39), .S(mag_buffer3_5), .Y(
        \mag_buffer_3[41] ));
    MX2 \geig_buffer_RNILR6H4[9]  (.A(\geig_buffer[9]_net_1 ), .B(
        constant_sensor_data_0_G_DATA_STACK_8), .S(geig_buffer3), .Y(
        \geig_buffer_3[9] ));
    MX2 \row_out_RNO[2]  (.A(read_address_traversal_0_ROW_READ_OUT[2]), 
        .B(write_address_traversal_0_ROW_WRITE_OUT[2]), .S(
        un1_schedule_21_0), .Y(\row_out_9[2] ));
    OA1C read_prev_RNIJ0QT55 (.A(schedule_1_sqmuxa_2_0), .B(schedule50)
        , .C(\schedule_9[2] ), .Y(\un1_schedule_8_m[0] ));
    MX2 \data_buffer_RNO[41]  (.A(\data_buffer_4[41] ), .B(
        \data_buffer_4[57] ), .S(data_buffer_0_sqmuxa_1), .Y(
        \data_buffer_7[41] ));
    XOR2 \mag_prev_RNI52KT[31]  (.A(\mag_prev[31]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_29), .Y(un1_MAG_DATA_31));
    MX2 \mag_buffer_RNI2O0G42[3]  (.A(\mag_buffer[3]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_0), .S(mag_buffer3_3), .Y(
        \mag_buffer_3[3] ));
    MX2 \data_buffer_RNIOK2089[37]  (.A(N_529), .B(
        \data_buffer[37]_net_1 ), .S(data_buffer_4_sn_N_2_1), .Y(
        \data_buffer_4[37] ));
    MX2 \geig_buffer_RNIM0LE4[50]  (.A(\geig_buffer[50]_net_1 ), .B(
        constant_sensor_data_0_G_DATA_STACK_0[1]), .S(geig_buffer3_4), 
        .Y(\geig_buffer_3[50] ));
    OR2 \geig_prev_RNI4FV31[12]  (.A(un1_GEIG_DATA_NE_38_13), .B(
        un1_GEIG_DATA_NE_38_12), .Y(un1_GEIG_DATA_NE_38));
    MX2 \geig_buffer_RNIB1L44[40]  (.A(\geig_buffer[40]_net_1 ), .B(
        constant_sensor_data_0_G_DATA_STACK_39), .S(geig_buffer3_4), 
        .Y(\geig_buffer_3[40] ));
    NOR2A \schedule_RNO[7]  (.A(un1_num_cycles17), .B(
        \schedule_15_i_m[7] ), .Y(\schedule_29[7] ));
    DFN1C0 \schedule[0]  (.D(\schedule_29[0] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_14), .Q(
        \schedule[0]_net_1 ));
    MX2 \data_buffer_RNI90TV79[25]  (.A(N_517), .B(
        \data_buffer[25]_net_1 ), .S(data_buffer_4_sn_N_2_1), .Y(
        \data_buffer_4[25] ));
    OR3 \mag_prev_RNIMQSD7[49]  (.A(un1_MAG_DATA_NE_30), .B(
        un1_MAG_DATA_NE_29), .C(un1_MAG_DATA_NE_52), .Y(
        un1_MAG_DATA_NE_62));
    DFN1E1 \data_buffer[48]  (.D(\data_buffer_7[48] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(num_cycles15_2), .Q(
        \data_buffer[48]_net_1 ));
    DFN1E1 \geig_buffer[30]  (.D(
        constant_sensor_data_0_G_DATA_STACK_29), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(geig_buffer3_0), .Q(
        \geig_buffer[30]_net_1 ));
    NOR2A \schedule_RNIRFRF[2]  (.A(\schedule_3[1] ), .B(
        \schedule_3[0] ), .Y(\schedule_RNIRFRF[2]_net_1 ));
    DFN1E1 \geig_buffer[52]  (.D(
        constant_sensor_data_0_G_DATA_STACK_0[1]), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(geig_buffer3_1), .Q(
        \geig_buffer[52]_net_1 ));
    OR3 \schedule_RNIA1GAL4[2]  (.A(\schedule_RNIUGQM72[2]_net_1 ), .B(
        \schedule_RNIRFRF[2]_net_1 ), .C(un1_schedule_19), .Y(
        un1_schedule_21));
    XOR2 \geig_prev_RNIERC2[42]  (.A(\geig_prev[42]_net_1 ), .B(
        constant_sensor_data_0_G_DATA_STACK_41), .Y(un1_GEIG_DATA_42));
    DFN1E1 \mag_buffer[65]  (.D(constant_sensor_data_0_M_DATA_STACK_63)
        , .CLK(reset_pulse_0_CLK_OUT_48MHZ), .E(mag_buffer3_2), .Q(
        \mag_buffer[65]_net_1 ));
    DFN1E1 \geig_buffer[47]  (.D(
        constant_sensor_data_0_G_DATA_STACK_46), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(geig_buffer3_1), .Q(
        \geig_buffer[47]_net_1 ));
    MX2 \data_buffer_RNIJK7089[45]  (.A(N_537), .B(
        \data_buffer[45]_net_1 ), .S(data_buffer_4_sn_N_2_2), .Y(
        \data_buffer_4[45] ));
    MX2 \data_buffer_RNO[51]  (.A(\data_buffer_4[51] ), .B(
        \data_buffer_4[67] ), .S(data_buffer_0_sqmuxa_2), .Y(
        \data_buffer_7[51] ));
    DFN1E1 \data_buffer[75]  (.D(\data_buffer_7[75] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(num_cycles15), .Q(
        \data_buffer[75]_net_1 ));
    DFN1E1 \data_buffer[30]  (.D(\data_buffer_7[30] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(num_cycles15_1), .Q(
        \data_buffer[30]_net_1 ));
    OR3 \mag_prev_RNII7HM3[27]  (.A(un1_MAG_DATA_43), .B(
        un1_MAG_DATA_27), .C(un1_MAG_DATA_NE_8), .Y(un1_MAG_DATA_NE_40)
        );
    DFN1C0 \geig_prev[35]  (.D(constant_sensor_data_0_G_DATA_STACK_34), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_13)
        , .Q(\geig_prev[35]_net_1 ));
    DFN1C0 \mag_prev[49]  (.D(constant_sensor_data_0_M_DATA_STACK_47), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_21)
        , .Q(\mag_prev[49]_net_1 ));
    MX2 \mag_buffer_RNIU52OH4[2]  (.A(\geig_buffer_3[2] ), .B(
        \mag_buffer_3[2] ), .S(num_cycles11_0), .Y(N_494));
    DFN1E1 \data_buffer[34]  (.D(\data_buffer_7[34] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(num_cycles15_1), .Q(
        \data_buffer[34]_net_1 ));
    MX2 \mag_buffer_RNIMLVCH4[34]  (.A(\geig_buffer_3[34] ), .B(
        \mag_buffer_3[34] ), .S(num_cycles11_1), .Y(N_526));
    NOR2B \data_buffer_RNI01BIM4[4]  (.A(\data_buffer[4]_net_1 ), .B(
        data_buffer_4_sn_N_2), .Y(\data_buffer_4[4] ));
    DFN1C0 \mag_prev[67]  (.D(constant_sensor_data_0_M_DATA_STACK_65), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_22)
        , .Q(\mag_prev[67]_net_1 ));
    XOR2 \geig_prev_RNIIP62[17]  (.A(\geig_prev[17]_net_1 ), .B(
        constant_sensor_data_0_G_DATA_STACK_16), .Y(un1_GEIG_DATA_17));
    XOR2 \mag_prev_RNIBAMT[43]  (.A(\mag_prev[43]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_41), .Y(un1_MAG_DATA_43));
    DFN1E1 \mag_buffer[41]  (.D(constant_sensor_data_0_M_DATA_STACK_39)
        , .CLK(reset_pulse_0_CLK_OUT_48MHZ), .E(mag_buffer3_1), .Q(
        \mag_buffer[41]_net_1 ));
    MX2 \data_buffer_RNI3DEA89[9]  (.A(N_501), .B(
        \data_buffer[9]_net_1 ), .S(data_buffer_4_sn_N_2_0), .Y(
        \data_buffer_4[9] ));
    DFN1E1 \data_buffer[60]  (.D(\data_buffer_7[60] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(num_cycles15_2), .Q(
        \data_buffer[60]_net_1 ));
    DFN1E1 \geig_buffer[66]  (.D(
        constant_sensor_data_0_G_DATA_STACK_0[1]), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(geig_buffer3_2), .Q(
        \geig_buffer[66]_net_1 ));
    DFN1E1 \data_buffer[18]  (.D(\data_buffer_7[18] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(num_cycles15_0), .Q(
        \data_buffer[18]_net_1 ));
    MX2 \mag_buffer_RNIJMLH42[55]  (.A(\mag_buffer[55]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_53), .S(mag_buffer3_5), .Y(
        \mag_buffer_3[55] ));
    DFN1E1 \data_buffer[64]  (.D(\data_buffer_7[64] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(num_cycles15), .Q(
        \data_buffer[64]_net_1 ));
    NOR2B busy_hold_RNIKR7M3_2 (.A(cmd_out12), .B(next_write7), .Y(
        data_buffer_0_sqmuxa));
    MX2 \data_buffer_RNIVLSV79[23]  (.A(N_515), .B(
        \data_buffer[23]_net_1 ), .S(data_buffer_4_sn_N_2_1), .Y(
        \data_buffer_4[23] ));
    MX2 \row_out_RNO[6]  (.A(read_address_traversal_0_ROW_READ_OUT[6]), 
        .B(write_address_traversal_0_ROW_WRITE_OUT[6]), .S(
        un1_schedule_21_0), .Y(\row_out_9[6] ));
    MX2 \geig_buffer_RNIJ7J44[35]  (.A(\geig_buffer[35]_net_1 ), .B(
        constant_sensor_data_0_G_DATA_STACK_34), .S(geig_buffer3_3), 
        .Y(\geig_buffer_3[35] ));
    MX2 \data_buffer_RNO[61]  (.A(\data_buffer_4[61] ), .B(
        \data_buffer_4[77] ), .S(data_buffer_0_sqmuxa_2), .Y(
        \data_buffer_7[61] ));
    DFN1E1 \data_buffer[50]  (.D(\data_buffer_7[50] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(num_cycles15_2), .Q(
        \data_buffer[50]_net_1 ));
    DFN1E1 \geig_buffer[0]  (.D(
        constant_sensor_data_0_G_DATA_STACK_0_d0), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(geig_buffer3), .Q(
        \geig_buffer[0]_net_1 ));
    MX2 \geig_buffer_RNIV5R54[66]  (.A(\geig_buffer[66]_net_1 ), .B(
        constant_sensor_data_0_G_DATA_STACK_0_d0), .S(geig_buffer3_4), 
        .Y(\geig_buffer_3[66] ));
    XOR2 \mag_prev_RNILKMT[48]  (.A(\mag_prev[48]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_46), .Y(un1_MAG_DATA_48));
    NOR2B \mag_buffer_RNIJ6L8D4[77]  (.A(\mag_buffer_3[77] ), .B(
        num_cycles11), .Y(N_569));
    XO1 schedule72_NE_7 (.A(read_address_traversal_0_COL_READ_OUT[3]), 
        .B(write_address_traversal_0_COL_WRITE_OUT[3]), .C(
        schedule72_13_net_1), .Y(schedule72_NE_7_net_1));
    DFN1E1 \mag_buffer[36]  (.D(constant_sensor_data_0_M_DATA_STACK_34)
        , .CLK(reset_pulse_0_CLK_OUT_48MHZ), .E(mag_buffer3_1), .Q(
        \mag_buffer[36]_net_1 ));
    DFN1E1 \data_buffer[54]  (.D(\data_buffer_7[54] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(num_cycles15_2), .Q(
        \data_buffer[54]_net_1 ));
    NOR2A \data_buffer_RNO[76]  (.A(\data_buffer_4[76] ), .B(
        data_buffer_0_sqmuxa), .Y(\data_buffer_7[76] ));
    MX2 \data_buffer_RNIQGSV79[22]  (.A(N_514), .B(
        \data_buffer[22]_net_1 ), .S(data_buffer_4_sn_N_2_0), .Y(
        \data_buffer_4[22] ));
    MX2 \mag_buffer_RNIKCEEH4[68]  (.A(\geig_buffer_3[68] ), .B(
        \mag_buffer_3[68] ), .S(num_cycles11_2), .Y(N_560));
    MX2 \mag_buffer_RNI50DH42[12]  (.A(\mag_buffer[12]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_10), .S(mag_buffer3_3), .Y(
        \mag_buffer_3[12] ));
    NOR2A \data_buffer_RNO[74]  (.A(\data_buffer_4[74] ), .B(
        data_buffer_0_sqmuxa), .Y(\data_buffer_7[74] ));
    XO1 schedule72_NE_10 (.A(read_address_traversal_0_COL_READ_OUT[8]), 
        .B(write_address_traversal_0_COL_WRITE_OUT[8]), .C(
        schedule72_9_net_1), .Y(schedule72_NE_10_net_1));
    NOR3A read_prev_RNI3KCMJ2 (.A(schedule56), .B(\schedule_9[2] ), .C(
        \schedule_15[3] ), .Y(schedule_1_sqmuxa_2_0));
    DFN1C0 \mag_prev[43]  (.D(constant_sensor_data_0_M_DATA_STACK_41), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_21)
        , .Q(\mag_prev[43]_net_1 ));
    MX2 \mag_buffer_RNILKHH42[38]  (.A(\mag_buffer[38]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_36), .S(mag_buffer3_4), .Y(
        \mag_buffer_3[38] ));
    MX2 \mag_buffer_RNILMJH42[47]  (.A(\mag_buffer[47]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_45), .S(mag_buffer3_5), .Y(
        \mag_buffer_3[47] ));
    DFN1C0 \geig_prev[34]  (.D(constant_sensor_data_0_G_DATA_STACK_33), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_13)
        , .Q(\geig_prev[34]_net_1 ));
    MX2 \geig_buffer_RNIR1R54[62]  (.A(\geig_buffer[62]_net_1 ), .B(
        constant_sensor_data_0_G_DATA_STACK_0_d0), .S(geig_buffer3_4), 
        .Y(\geig_buffer_3[62] ));
    MX2 \col_out_RNO[3]  (.A(read_address_traversal_0_COL_READ_OUT[3]), 
        .B(write_address_traversal_0_COL_WRITE_OUT[3]), .S(
        un1_schedule_21), .Y(\col_out_9[3] ));
    MX2 \data_buffer_RNO[38]  (.A(\data_buffer_4[38] ), .B(
        \data_buffer_4[54] ), .S(data_buffer_0_sqmuxa_1), .Y(
        \data_buffer_7[38] ));
    NOR2A \data_buffer_RNO[70]  (.A(\data_buffer_4[70] ), .B(
        data_buffer_0_sqmuxa), .Y(\data_buffer_7[70] ));
    XOR2 \mag_prev_RNI96KT[33]  (.A(\mag_prev[33]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_31), .Y(un1_MAG_DATA_33));
    MX2 \row_out_RNO[5]  (.A(read_address_traversal_0_ROW_READ_OUT[5]), 
        .B(write_address_traversal_0_ROW_WRITE_OUT[5]), .S(
        un1_schedule_21_0), .Y(\row_out_9[5] ));
    XO1 \mag_prev_RNI43DR1[79]  (.A(
        constant_sensor_data_0_M_DATA_STACK_77), .B(
        \mag_prev[79]_net_1 ), .C(un1_MAG_DATA_14), .Y(
        un1_MAG_DATA_NE_35));
    MX2 \mag_buffer_RNIDGLH42[52]  (.A(\mag_buffer[52]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_50), .S(mag_buffer3_5), .Y(
        \mag_buffer_3[52] ));
    XO1 \mag_prev_RNIOMCR1[76]  (.A(
        constant_sensor_data_0_M_DATA_STACK_74), .B(
        \mag_prev[76]_net_1 ), .C(un1_MAG_DATA_11), .Y(
        un1_MAG_DATA_NE_6));
    DFN1C0 \mag_prev[12]  (.D(constant_sensor_data_0_M_DATA_STACK_10), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_20)
        , .Q(\mag_prev[12]_net_1 ));
    MX2 \mag_buffer_RNIE9RCH4[23]  (.A(\geig_buffer_3[23] ), .B(
        \mag_buffer_3[23] ), .S(num_cycles11_0), .Y(N_515));
    DFN1E1 \mag_buffer[37]  (.D(constant_sensor_data_0_M_DATA_STACK_35)
        , .CLK(reset_pulse_0_CLK_OUT_48MHZ), .E(mag_buffer3_1), .Q(
        \mag_buffer[37]_net_1 ));
    OA1B \schedule_RNIPM92Q2[6]  (.A(schedule_3_sqmuxa), .B(
        \schedule[6]_net_1 ), .C(schedule_15_sn_N_3), .Y(
        \schedule_15[6] ));
    MX2 \data_buffer_RNIOAOV79[19]  (.A(N_511), .B(
        \data_buffer[19]_net_1 ), .S(data_buffer_4_sn_N_2_0), .Y(
        \data_buffer_4[19] ));
    MX2 \mag_buffer_RNINIHEH4[78]  (.A(\geig_buffer_3[78] ), .B(
        \mag_buffer_3[78] ), .S(num_cycles11_2), .Y(N_570));
    MX2 \geig_buffer_RNIS6LE4[56]  (.A(\geig_buffer[56]_net_1 ), .B(
        constant_sensor_data_0_G_DATA_STACK_0[1]), .S(geig_buffer3_4), 
        .Y(\geig_buffer_3[56] ));
    MX2 \data_buffer_RNI7RRR39[75]  (.A(N_567), .B(
        \data_buffer[75]_net_1 ), .S(data_buffer_4_sn_N_2), .Y(
        \data_buffer_4[75] ));
    DFN1E1 \data_buffer[9]  (.D(\data_buffer_7[9] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(num_cycles15_0), .Q(
        \data_buffer[9]_net_1 ));
    DFN1C0 \mag_prev[52]  (.D(constant_sensor_data_0_M_DATA_STACK_50), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_21)
        , .Q(\mag_prev[52]_net_1 ));
    DFN1E1 \geig_buffer[33]  (.D(
        constant_sensor_data_0_G_DATA_STACK_32), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(geig_buffer3_1), .Q(
        \geig_buffer[33]_net_1 ));
    MX2 \mag_buffer_RNIULNCH4[18]  (.A(\geig_buffer_3[18] ), .B(
        \mag_buffer_3[18] ), .S(num_cycles11_0), .Y(N_510));
    XO1 \geig_prev_RNIAOC4[10]  (.A(
        constant_sensor_data_0_G_DATA_STACK_9), .B(
        \geig_prev[10]_net_1 ), .C(un1_GEIG_DATA_11), .Y(
        un1_GEIG_DATA_NE_39_4));
    MX2 \mag_buffer_RNIT2OH42[69]  (.A(\mag_buffer[69]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_67), .S(mag_buffer3), .Y(
        \mag_buffer_3[69] ));
    XOR2 \geig_prev_RNI6D62[11]  (.A(\geig_prev[11]_net_1 ), .B(
        constant_sensor_data_0_G_DATA_STACK_10), .Y(un1_GEIG_DATA_11));
    DFN1E1C0 \data_out[5]  (.D(\data_buffer_4[5] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_5), .E(
        next_write_1_sqmuxa), .Q(memory_controller_0_DATA_OUT[5]));
    NOR2B busy_hold_RNIRJ6I05 (.A(next_write8), .B(ba_out_1_sqmuxa), 
        .Y(next_read_1_sqmuxa));
    XO1 \mag_prev_RNI09NR1[66]  (.A(
        constant_sensor_data_0_M_DATA_STACK_64), .B(
        \mag_prev[66]_net_1 ), .C(un1_MAG_DATA_70), .Y(
        un1_MAG_DATA_NE_27));
    DFN1E1 \data_buffer[42]  (.D(\data_buffer_7[42] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(num_cycles15_2), .Q(
        \data_buffer[42]_net_1 ));
    DFN1E1 \data_buffer[1]  (.D(\data_buffer_7[1] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(num_cycles15_0), .Q(
        \data_buffer[1]_net_1 ));
    MX2 \mag_buffer_RNILIFH42[29]  (.A(\mag_buffer[29]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_27), .S(mag_buffer3_4), .Y(
        \mag_buffer_3[29] ));
    DFN1E1C0 \ba_out[0]  (.D(\ba_out_9[0] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_3), .E(
        un1_next_write8_1_0), .Q(memory_controller_0_BA_OUT[0]));
    NOR2B \mag_buffer_RNINAL8D4[79]  (.A(\mag_buffer_3[79] ), .B(
        num_cycles11), .Y(N_571));
    DFN1C0 \mag_prev[66]  (.D(constant_sensor_data_0_M_DATA_STACK_64), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_22)
        , .Q(\mag_prev[66]_net_1 ));
    DFN1E1 \mag_buffer[43]  (.D(constant_sensor_data_0_M_DATA_STACK_41)
        , .CLK(reset_pulse_0_CLK_OUT_48MHZ), .E(mag_buffer3_1), .Q(
        \mag_buffer[43]_net_1 ));
    MX2 \geig_buffer_RNI396H4[0]  (.A(\geig_buffer[0]_net_1 ), .B(
        constant_sensor_data_0_G_DATA_STACK_0_d0), .S(geig_buffer3), 
        .Y(\geig_buffer_3[0] ));
    MX2 \ba_out_RNO[0]  (.A(read_address_traversal_0_BA_READ_OUT[0]), 
        .B(write_address_traversal_0_BA_WRITE_OUT[0]), .S(
        un1_schedule_21), .Y(\ba_out_9[0] ));
    OR3 \geig_prev_RNIUHH9[40]  (.A(un1_GEIG_DATA_41), .B(
        un1_GEIG_DATA_42), .C(un1_GEIG_DATA_NE_39_9), .Y(
        un1_GEIG_DATA_NE_39_17));
    XO1 \mag_prev_RNIOG6R1[22]  (.A(
        constant_sensor_data_0_M_DATA_STACK_20), .B(
        \mag_prev[22]_net_1 ), .C(un1_MAG_DATA_38), .Y(
        un1_MAG_DATA_NE_17));
    XO1 schedule72_NE_4 (.A(read_address_traversal_0_COL_READ_OUT[6]), 
        .B(write_address_traversal_0_COL_WRITE_OUT[6]), .C(
        schedule72_15_net_1), .Y(schedule72_NE_4_net_1));
    MX2 \geig_buffer_RNIL9J44[36]  (.A(\geig_buffer[36]_net_1 ), .B(
        constant_sensor_data_0_G_DATA_STACK_35), .S(geig_buffer3_3), 
        .Y(\geig_buffer_3[36] ));
    NOR2A \data_buffer_RNO[75]  (.A(\data_buffer_4[75] ), .B(
        data_buffer_0_sqmuxa), .Y(\data_buffer_7[75] ));
    OR3 schedule72_NE_16 (.A(schedule72_11_net_1), .B(
        schedule72_23_net_1), .C(schedule72_NE_9_net_1), .Y(
        schedule72_NE_16_net_1));
    DFN1C0 \geig_prev[10]  (.D(constant_sensor_data_0_G_DATA_STACK_9), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_12)
        , .Q(\geig_prev[10]_net_1 ));
    DFN1E1 \geig_buffer[56]  (.D(
        constant_sensor_data_0_G_DATA_STACK_0[1]), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(geig_buffer3_2), .Q(
        \geig_buffer[56]_net_1 ));
    DFN1E1C0 next_write (.D(busy_hold_net_1), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_7), .E(
        un1_write_count_0_sqmuxa_3), .Q(next_write_i));
    MX2 \mag_buffer_RNIE6EEH4[66]  (.A(\geig_buffer_3[66] ), .B(
        \mag_buffer_3[66] ), .S(num_cycles11_2), .Y(N_558));
    DFN1C0 \geig_prev[32]  (.D(constant_sensor_data_0_G_DATA_STACK_31), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_13)
        , .Q(\geig_prev[32]_net_1 ));
    DFN1E1 \geig_buffer[74]  (.D(
        constant_sensor_data_0_G_DATA_STACK_0[1]), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(geig_buffer3_2), .Q(
        \geig_buffer[74]_net_1 ));
    MX2 \geig_buffer_RNIL5F44[18]  (.A(\geig_buffer[18]_net_1 ), .B(
        constant_sensor_data_0_G_DATA_STACK_17), .S(geig_buffer3_2), 
        .Y(\geig_buffer_3[18] ));
    XO1 \mag_prev_RNIU4LR1[53]  (.A(
        constant_sensor_data_0_M_DATA_STACK_51), .B(
        \mag_prev[53]_net_1 ), .C(un1_MAG_DATA_73), .Y(
        un1_MAG_DATA_NE_20));
    DFN1E1 \data_buffer[20]  (.D(\data_buffer_7[20] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(num_cycles15_1), .Q(
        \data_buffer[20]_net_1 ));
    OR3 schedule72_NE_13 (.A(schedule72_2_net_1), .B(
        schedule72_3_net_1), .C(schedule72_NE_3_net_1), .Y(
        schedule72_NE_13_net_1));
    XOR2 \mag_prev_RNIDAKT[35]  (.A(\mag_prev[35]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_33), .Y(un1_MAG_DATA_35));
    MX2 \data_buffer_RNIQ87A37[1]  (.A(N_493), .B(
        \data_buffer[1]_net_1 ), .S(data_buffer_4_sn_N_2_0), .Y(
        \data_buffer_4[1] ));
    MX2 \data_buffer_RNIMUCA89[0]  (.A(N_492), .B(
        \data_buffer[0]_net_1 ), .S(data_buffer_4_sn_N_2_0), .Y(
        \data_buffer_4[0] ));
    DFN1E1 \data_buffer[12]  (.D(\data_buffer_7[12] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(num_cycles15_0), .Q(
        \data_buffer[12]_net_1 ));
    MX2 \data_buffer_RNIRERR39[71]  (.A(N_563), .B(
        \data_buffer[71]_net_1 ), .S(data_buffer_4_sn_N_2), .Y(
        \data_buffer_4[71] ));
    DFN1E1 \data_buffer[24]  (.D(\data_buffer_7[24] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(num_cycles15_1), .Q(
        \data_buffer[24]_net_1 ));
    OA1 \geig_prev_RNI40JU3_0[12]  (.A(un1_GEIG_DATA_NE_38), .B(
        un1_GEIG_DATA_NE_39), .C(reset_pulse_0_RESET_0), .Y(
        geig_buffer3_0));
    OR3 \mag_prev_RNI6A0N3[32]  (.A(un1_MAG_DATA_48), .B(
        un1_MAG_DATA_32), .C(un1_MAG_DATA_NE_32), .Y(
        un1_MAG_DATA_NE_52));
    XOR2 \geig_prev_RNIIR82[26]  (.A(\geig_prev[26]_net_1 ), .B(
        constant_sensor_data_0_G_DATA_STACK_25), .Y(un1_GEIG_DATA_26));
    NOR2B \mag_buffer_RNIH2J8D4[67]  (.A(\mag_buffer_3[67] ), .B(
        num_cycles11), .Y(N_559));
    DFN1C0 \mag_prev[45]  (.D(constant_sensor_data_0_M_DATA_STACK_43), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_21)
        , .Q(\mag_prev[45]_net_1 ));
    DFN1E1 \mag_buffer[35]  (.D(constant_sensor_data_0_M_DATA_STACK_33)
        , .CLK(reset_pulse_0_CLK_OUT_48MHZ), .E(mag_buffer3_1), .Q(
        \mag_buffer[35]_net_1 ));
    NOR2B write_count_0_sqmuxa_0 (.A(reset_pulse_0_RESET), .B(
        cmd_out12), .Y(write_count_0_sqmuxa_0_net_1));
    DFN1E1 \mag_buffer[11]  (.D(constant_sensor_data_0_M_DATA_STACK_9), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .E(mag_buffer3_0), .Q(
        \mag_buffer[11]_net_1 ));
    OA1 busy_hold_RNI86ADP9_0 (.A(ba_out_1_sqmuxa), .B(
        write_count_0_sqmuxa), .C(next_write8), .Y(un1_next_write8_1));
    DFN1C0 \geig_prev[20]  (.D(constant_sensor_data_0_G_DATA_STACK_19), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_12)
        , .Q(\geig_prev[20]_net_1 ));
    XO1 \mag_prev_RNIE88R1[24]  (.A(
        constant_sensor_data_0_M_DATA_STACK_22), .B(
        \mag_prev[24]_net_1 ), .C(un1_MAG_DATA_40), .Y(
        un1_MAG_DATA_NE_13));
    NOR2B \mag_buffer_RNIQRR6D4[3]  (.A(\mag_buffer_3[3] ), .B(
        num_cycles11_2), .Y(N_495));
    MX2 \mag_buffer_RNI9CLH42[50]  (.A(\mag_buffer[50]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_48), .S(mag_buffer3_5), .Y(
        \mag_buffer_3[50] ));
    DFN1C0 \geig_prev[31]  (.D(constant_sensor_data_0_G_DATA_STACK_30), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_13)
        , .Q(\geig_prev[31]_net_1 ));
    MX2 \geig_buffer_RNIRHL44[48]  (.A(\geig_buffer[48]_net_1 ), .B(
        constant_sensor_data_0_G_DATA_STACK_47), .S(geig_buffer3_4), 
        .Y(\geig_buffer_3[48] ));
    XO1 \mag_prev_RNI6DLR1[55]  (.A(
        constant_sensor_data_0_M_DATA_STACK_53), .B(
        \mag_prev[55]_net_1 ), .C(un1_MAG_DATA_75), .Y(
        un1_MAG_DATA_NE_16));
    DFN1E1 \mag_buffer[49]  (.D(constant_sensor_data_0_M_DATA_STACK_47)
        , .CLK(reset_pulse_0_CLK_OUT_48MHZ), .E(mag_buffer3_1), .Q(
        \mag_buffer[49]_net_1 ));
    DFN1E1 \mag_buffer[70]  (.D(constant_sensor_data_0_M_DATA_STACK_68)
        , .CLK(reset_pulse_0_CLK_OUT_48MHZ), .E(mag_buffer3_2), .Q(
        \mag_buffer[70]_net_1 ));
    MX2C \schedule_RNO[0]  (.A(\un1_schedule_8_m[0] ), .B(
        \un1_schedule_7_m[0] ), .S(un1_num_cycles17), .Y(
        \schedule_29[0] ));
    NOR2A cmd_out12_0_I_1 (.A(\num_cycles_2[2] ), .B(
        \write_count[0]_net_1 ), .Y(\ACT_LT3_E[0] ));
    XOR2 \mag_prev_RNIPSQT[68]  (.A(\mag_prev[68]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_66), .Y(un1_MAG_DATA_68));
    NOR2A cmd_out12_0_I_4 (.A(\ACT_LT3_E[0] ), .B(
        \write_count[1]_net_1 ), .Y(\ACT_LT3_E[3] ));
    DFN1C0 \mag_prev[72]  (.D(constant_sensor_data_0_M_DATA_STACK_70), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_22)
        , .Q(\mag_prev[72]_net_1 ));
    MX2C \schedule_RNO[3]  (.A(\un1_schedule_15_m[1] ), .B(
        \un1_schedule_13_m[1] ), .S(un1_num_cycles17), .Y(
        \schedule_29[3] ));
    DFN1E1 \geig_buffer[17]  (.D(
        constant_sensor_data_0_G_DATA_STACK_16), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(geig_buffer3_0), .Q(
        \geig_buffer[17]_net_1 ));
    MX2 \schedule_RNI5JIA[5]  (.A(\schedule[5]_net_1 ), .B(
        \schedule[7]_net_1 ), .S(un1_schedule_1), .Y(\schedule_3[5] ));
    DFN1E1 \data_buffer[39]  (.D(\data_buffer_7[39] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(num_cycles15_1), .Q(
        \data_buffer[39]_net_1 ));
    DFN1E1 \geig_buffer[41]  (.D(
        constant_sensor_data_0_G_DATA_STACK_40), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(geig_buffer3_1), .Q(
        \geig_buffer[41]_net_1 ));
    XO1 \mag_prev_RNIG2RO1[56]  (.A(
        constant_sensor_data_0_M_DATA_STACK_54), .B(
        \mag_prev[56]_net_1 ), .C(un1_MAG_DATA_6), .Y(
        un1_MAG_DATA_NE_14));
    XOR2 \geig_prev_RNIGTC2[43]  (.A(\geig_prev[43]_net_1 ), .B(
        constant_sensor_data_0_G_DATA_STACK_42), .Y(un1_GEIG_DATA_43));
    MX2 \data_buffer_RNI1FLR39[55]  (.A(N_547), .B(
        \data_buffer[55]_net_1 ), .S(data_buffer_4_sn_N_2_2), .Y(
        \data_buffer_4[55] ));
    DFN1E1C0 next_read (.D(busy_hold_net_1), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_3), .E(
        un1_next_read_0_sqmuxa_1), .Q(next_read_i));
    DFN1C0 \geig_prev[9]  (.D(constant_sensor_data_0_G_DATA_STACK_8), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_16)
        , .Q(\geig_prev[9]_net_1 ));
    DFN1E1 \geig_buffer[27]  (.D(
        constant_sensor_data_0_G_DATA_STACK_26), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(geig_buffer3_0), .Q(
        \geig_buffer[27]_net_1 ));
    DFN1E1 \data_buffer[46]  (.D(\data_buffer_7[46] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(num_cycles15_2), .Q(
        \data_buffer[46]_net_1 ));
    MX2 \mag_buffer_RNINQLH42[57]  (.A(\mag_buffer[57]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_55), .S(mag_buffer3_5), .Y(
        \mag_buffer_3[57] ));
    MX2 \data_buffer_RNO[16]  (.A(\data_buffer_4[16] ), .B(
        \data_buffer_4[32] ), .S(data_buffer_0_sqmuxa_0), .Y(
        \data_buffer_7[16] ));
    XOR2 schedule72_17 (.A(write_address_traversal_0_COL_WRITE_OUT[4]), 
        .B(read_address_traversal_0_COL_READ_OUT[4]), .Y(
        schedule72_17_net_1));
    XO1 \geig_prev_RNIMRL9[36]  (.A(
        constant_sensor_data_0_G_DATA_STACK_35), .B(
        \geig_prev[36]_net_1 ), .C(un1_GEIG_DATA_6), .Y(
        un1_GEIG_DATA_NE_39_11));
    MX2 \data_buffer_RNO[14]  (.A(\data_buffer_4[14] ), .B(
        \data_buffer_4[30] ), .S(data_buffer_0_sqmuxa_0), .Y(
        \data_buffer_7[14] ));
    OR3 \schedule_RNIA1GAL4_0[2]  (.A(\schedule_RNIUGQM72[2]_net_1 ), 
        .B(\schedule_RNIRFRF[2]_net_1 ), .C(un1_schedule_19), .Y(
        un1_schedule_21_0));
    DFN1C0 \mag_prev[10]  (.D(constant_sensor_data_0_M_DATA_STACK_8), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_19)
        , .Q(\mag_prev[10]_net_1 ));
    XO1 \geig_prev_RNIE0H4[20]  (.A(
        constant_sensor_data_0_G_DATA_STACK_19), .B(
        \geig_prev[20]_net_1 ), .C(un1_GEIG_DATA_21), .Y(
        un1_GEIG_DATA_NE_38_7));
    AND2A cmd_out12_0_I_6 (.A(\num_cycles_2[2] ), .B(
        \write_count[2]_net_1 ), .Y(\ACT_LT3_E[5] ));
    DFN1E1 \mag_buffer[72]  (.D(constant_sensor_data_0_M_DATA_STACK_70)
        , .CLK(reset_pulse_0_CLK_OUT_48MHZ), .E(mag_buffer3_2), .Q(
        \mag_buffer[72]_net_1 ));
    DFN1E1 \data_buffer[69]  (.D(\data_buffer_7[69] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(num_cycles15), .Q(
        \data_buffer[69]_net_1 ));
    MX2 \schedule_RNI1FIA[3]  (.A(\schedule[3]_net_1 ), .B(
        \schedule[5]_net_1 ), .S(un1_schedule_1), .Y(\schedule_3[3] ));
    DFN1E1 \geig_buffer[38]  (.D(
        constant_sensor_data_0_G_DATA_STACK_37), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(geig_buffer3_1), .Q(
        \geig_buffer[38]_net_1 ));
    MX2 \col_out_RNO[6]  (.A(read_address_traversal_0_COL_READ_OUT[6]), 
        .B(write_address_traversal_0_COL_WRITE_OUT[6]), .S(
        un1_schedule_21), .Y(\col_out_9[6] ));
    DFN1C0 \mag_prev[50]  (.D(constant_sensor_data_0_M_DATA_STACK_48), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_21)
        , .Q(\mag_prev[50]_net_1 ));
    MX2 \data_buffer_RNO[10]  (.A(\data_buffer_4[10] ), .B(
        \data_buffer_4[26] ), .S(data_buffer_0_sqmuxa_0), .Y(
        \data_buffer_7[10] ));
    MX2 \mag_buffer_RNI54HH42[30]  (.A(\mag_buffer[30]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_28), .S(mag_buffer3_4), .Y(
        \mag_buffer_3[30] ));
    DFN1E1 \mag_buffer[58]  (.D(constant_sensor_data_0_M_DATA_STACK_56)
        , .CLK(reset_pulse_0_CLK_OUT_48MHZ), .E(mag_buffer3_2), .Q(
        \mag_buffer[58]_net_1 ));
    MX2 \mag_buffer_RNITM5NH4[52]  (.A(\geig_buffer_3[52] ), .B(
        \mag_buffer_3[52] ), .S(num_cycles11_2), .Y(N_544));
    OR3 \geig_prev_RNI43PH[12]  (.A(un1_GEIG_DATA_NE_38_1), .B(
        un1_GEIG_DATA_NE_38_0), .C(un1_GEIG_DATA_NE_38_9), .Y(
        un1_GEIG_DATA_NE_38_12));
    DFN1C0 \mag_prev[28]  (.D(constant_sensor_data_0_M_DATA_STACK_26), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_20)
        , .Q(\mag_prev[28]_net_1 ));
    DFN1E1 \data_buffer[59]  (.D(\data_buffer_7[59] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(num_cycles15_2), .Q(
        \data_buffer[59]_net_1 ));
    NOR2B \schedule_RNIUNKIFA[7]  (.A(\schedule_15_i_m_0[7] ), .B(
        N_488), .Y(\schedule_15_i_m[7] ));
    OR2 \geig_prev_RNISPQ8[14]  (.A(un1_GEIG_DATA_NE_38_2), .B(
        un1_GEIG_DATA_NE_38_3), .Y(un1_GEIG_DATA_NE_38_9));
    NOR3A read_prev_RNIGB4MK2 (.A(schedule56), .B(\schedule_9[4] ), .C(
        N_477), .Y(schedule_2_sqmuxa_2_1));
    DFN1E1C0 \col_out[3]  (.D(\col_out_9[3] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_2), .E(
        un1_next_write8_1_0), .Q(memory_controller_0_COL_OUT[3]));
    MX2 \mag_buffer_RNIDKPH42[70]  (.A(\mag_buffer[70]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_68), .S(mag_buffer3), .Y(
        \mag_buffer_3[70] ));
    OR2 \geig_prev_RNIO179[10]  (.A(un1_GEIG_DATA_NE_39_4), .B(
        un1_GEIG_DATA_NE_39_5), .Y(un1_GEIG_DATA_NE_39_15));
    DFN1E1 \data_buffer[16]  (.D(\data_buffer_7[16] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(num_cycles15_0), .Q(
        \data_buffer[16]_net_1 ));
    DFN1E1 \data_buffer[43]  (.D(\data_buffer_7[43] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(num_cycles15_2), .Q(
        \data_buffer[43]_net_1 ));
    DFN1E1 \data_buffer[31]  (.D(\data_buffer_7[31] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(num_cycles15_1), .Q(
        \data_buffer[31]_net_1 ));
    MX2 \data_buffer_RNIS4DA89[2]  (.A(N_494), .B(
        \data_buffer[2]_net_1 ), .S(data_buffer_4_sn_N_2_0), .Y(
        \data_buffer_4[2] ));
    DFN1C0 \geig_prev[18]  (.D(constant_sensor_data_0_G_DATA_STACK_17), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_12)
        , .Q(\geig_prev[18]_net_1 ));
    DFN1E1C0 \row_out[9]  (.D(\row_out_9[9] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_4), .E(
        un1_next_write8_1), .Q(memory_controller_0_ROW_OUT[9]));
    NOR2B \mag_buffer_RNIF2L8D4[75]  (.A(\mag_buffer_3[75] ), .B(
        num_cycles11), .Y(N_567));
    MX2 \mag_buffer_RNIB8FH42[24]  (.A(\mag_buffer[24]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_22), .S(mag_buffer3_4), .Y(
        \mag_buffer_3[24] ));
    DFN1E1C0 \data_out[11]  (.D(\data_buffer_4[11] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_5), .E(
        next_write_1_sqmuxa), .Q(memory_controller_0_DATA_OUT[11]));
    DFN1C0 \mag_prev[61]  (.D(constant_sensor_data_0_M_DATA_STACK_59), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_22)
        , .Q(\mag_prev[61]_net_1 ));
    DFN1E1C0 \row_out[5]  (.D(\row_out_9[5] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_4), .E(
        un1_next_write8_1), .Q(memory_controller_0_ROW_OUT[5]));
    MX2 \data_buffer_RNO[2]  (.A(\data_buffer_4[2] ), .B(
        \data_buffer_4[18] ), .S(data_buffer_0_sqmuxa_2), .Y(
        \data_buffer_7[2] ));
    XOR2 \mag_prev_RNI78OT[50]  (.A(\mag_prev[50]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_48), .Y(un1_MAG_DATA_50));
    NOR2A \data_buffer_RNO[78]  (.A(\data_buffer_4[78] ), .B(
        data_buffer_0_sqmuxa), .Y(\data_buffer_7[78] ));
    DFN1E1 \mag_buffer[13]  (.D(constant_sensor_data_0_M_DATA_STACK_11)
        , .CLK(reset_pulse_0_CLK_OUT_48MHZ), .E(mag_buffer3_0), .Q(
        \mag_buffer[13]_net_1 ));
    MX2 \data_buffer_RNI9A7089[43]  (.A(N_535), .B(
        \data_buffer[43]_net_1 ), .S(data_buffer_4_sn_N_2_2), .Y(
        \data_buffer_4[43] ));
    MX2C \schedule_RNO[1]  (.A(\un1_schedule_13_m[1] ), .B(
        \un1_schedule_12_m[1] ), .S(un1_num_cycles17), .Y(
        \schedule_29[1] ));
    MX2 \geig_buffer_RNIJP6H4[8]  (.A(\geig_buffer[8]_net_1 ), .B(
        constant_sensor_data_0_G_DATA_STACK_7), .S(geig_buffer3), .Y(
        \geig_buffer_3[8] ));
    DFN1E1C0 \data_out[10]  (.D(\data_buffer_4[10] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_5), .E(
        next_write_1_sqmuxa), .Q(memory_controller_0_DATA_OUT[10]));
    MX2 \data_buffer_RNIJATV79[27]  (.A(N_519), .B(
        \data_buffer[27]_net_1 ), .S(data_buffer_4_sn_N_2_1), .Y(
        \data_buffer_4[27] ));
    XOR2 schedule72_11 (.A(read_address_traversal_0_ROW_READ_OUT[11]), 
        .B(write_address_traversal_0_ROW_WRITE_OUT[11]), .Y(
        schedule72_11_net_1));
    MX2 \geig_buffer_RNIRFJ44[39]  (.A(\geig_buffer[39]_net_1 ), .B(
        constant_sensor_data_0_G_DATA_STACK_38), .S(geig_buffer3_3), 
        .Y(\geig_buffer_3[39] ));
    MX2 \mag_buffer_RNI94DH42[14]  (.A(\mag_buffer[14]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_12), .S(mag_buffer3_3), .Y(
        \mag_buffer_3[14] ));
    DFN1E1 \data_buffer[61]  (.D(\data_buffer_7[61] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(num_cycles15), .Q(
        \data_buffer[61]_net_1 ));
    AO1A \schedule_RNIIBH3E2[3]  (.A(schedule34), .B(
        schedule_1_sqmuxa_1_0), .C(\schedule_3[3] ), .Y(
        \schedule_15[3] ));
    DFN1C0 \mag_prev[38]  (.D(constant_sensor_data_0_M_DATA_STACK_36), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_21)
        , .Q(\mag_prev[38]_net_1 ));
    DFN1C0 \mag_prev[64]  (.D(constant_sensor_data_0_M_DATA_STACK_62), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_22)
        , .Q(\mag_prev[64]_net_1 ));
    XOR2 \geig_prev_RNIEL62[15]  (.A(\geig_prev[15]_net_1 ), .B(
        constant_sensor_data_0_G_DATA_STACK_14), .Y(un1_GEIG_DATA_15));
    DFN1C0 \schedule[6]  (.D(\schedule_29[6] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_15), .Q(
        \schedule[6]_net_1 ));
    DFN1E1 \data_buffer[78]  (.D(\data_buffer_7[78] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(num_cycles15), .Q(
        \data_buffer[78]_net_1 ));
    MX2 \mag_buffer_RNIVK0G42[0]  (.A(\mag_buffer[0]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_0), .S(mag_buffer3_3), .Y(
        \mag_buffer_3[0] ));
    NOR2A \schedule_RNI4KI292[2]  (.A(mag_buffer3), .B(\schedule_9[2] )
        , .Y(schedule_1_sqmuxa_1_0));
    DFN1C0 \geig_prev[46]  (.D(constant_sensor_data_0_G_DATA_STACK_45), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_13)
        , .Q(\geig_prev[46]_net_1 ));
    MX2 \mag_buffer_RNIDINH42[61]  (.A(\mag_buffer[61]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_59), .S(mag_buffer3_5), .Y(
        \mag_buffer_3[61] ));
    DFN1C0 \geig_prev[28]  (.D(constant_sensor_data_0_G_DATA_STACK_27), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_13)
        , .Q(\geig_prev[28]_net_1 ));
    MX2 \data_buffer_RNO[15]  (.A(\data_buffer_4[15] ), .B(
        \data_buffer_4[31] ), .S(data_buffer_0_sqmuxa_0), .Y(
        \data_buffer_7[15] ));
    DFN1E1 \mag_buffer[68]  (.D(constant_sensor_data_0_M_DATA_STACK_66)
        , .CLK(reset_pulse_0_CLK_OUT_48MHZ), .E(mag_buffer3_2), .Q(
        \mag_buffer[68]_net_1 ));
    DFN1E1 \data_buffer[13]  (.D(\data_buffer_7[13] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(num_cycles15_0), .Q(
        \data_buffer[13]_net_1 ));
    MX2 \mag_buffer_RNIUKMCH4[10]  (.A(\geig_buffer_3[10] ), .B(
        \mag_buffer_3[10] ), .S(num_cycles11_0), .Y(N_502));
    MX2 \mag_buffer_RNIJQPH42[73]  (.A(\mag_buffer[73]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_71), .S(mag_buffer3), .Y(
        \mag_buffer_3[73] ));
    DFN1E1 \data_buffer[51]  (.D(\data_buffer_7[51] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(num_cycles15_2), .Q(
        \data_buffer[51]_net_1 ));
    XO1 \geig_prev_RNI6PH4[27]  (.A(
        constant_sensor_data_0_G_DATA_STACK_26), .B(
        \geig_prev[27]_net_1 ), .C(un1_GEIG_DATA_26), .Y(
        un1_GEIG_DATA_NE_38_5));
    MX2 \data_buffer_RNILG1089[30]  (.A(N_522), .B(
        \data_buffer[30]_net_1 ), .S(data_buffer_4_sn_N_2_1), .Y(
        \data_buffer_4[30] ));
    DFN1E1C0 \num_cycles[0]  (.D(\num_cycles_2[2] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_6), .E(
        un1_schedule_21_0), .Q(\num_cycles[0]_net_1 ));
    AO1A \schedule_RNIEOT7[3]  (.A(\schedule[0]_net_1 ), .B(
        \schedule[3]_net_1 ), .C(\schedule[1]_net_1 ), .Y(
        \schedule_3[1] ));
    OR3 \mag_prev_RNIOLPM3[12]  (.A(un1_MAG_DATA_77), .B(
        un1_MAG_DATA_61), .C(un1_MAG_DATA_NE_4), .Y(un1_MAG_DATA_NE_38)
        );
    DFN1C0 \mag_prev[70]  (.D(constant_sensor_data_0_M_DATA_STACK_68), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_22)
        , .Q(\mag_prev[70]_net_1 ));
    DFN1E1 \mag_buffer[19]  (.D(constant_sensor_data_0_M_DATA_STACK_17)
        , .CLK(reset_pulse_0_CLK_OUT_48MHZ), .E(mag_buffer3_0), .Q(
        \mag_buffer[19]_net_1 ));
    DFN1E1C0 \col_out[2]  (.D(\col_out_9[2] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_2), .E(
        un1_next_write8_1_0), .Q(memory_controller_0_COL_OUT[2]));
    DFN1E1 \mag_buffer[21]  (.D(constant_sensor_data_0_M_DATA_STACK_19)
        , .CLK(reset_pulse_0_CLK_OUT_48MHZ), .E(mag_buffer3_0), .Q(
        \mag_buffer[21]_net_1 ));
    MX2 \mag_buffer_RNIHKLH42[54]  (.A(\mag_buffer[54]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_52), .S(mag_buffer3_5), .Y(
        \mag_buffer_3[54] ));
    MX2 \data_buffer_RNITP2089[38]  (.A(N_530), .B(
        \data_buffer[38]_net_1 ), .S(data_buffer_4_sn_N_2_1), .Y(
        \data_buffer_4[38] ));
    DFN1E1 \geig_buffer[40]  (.D(
        constant_sensor_data_0_G_DATA_STACK_39), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(geig_buffer3_1), .Q(
        \geig_buffer[40]_net_1 ));
    XOR2 \mag_prev_RNITD2R[0]  (.A(\mag_prev[6] ), .B(
        constant_sensor_data_0_M_DATA_STACK_0), .Y(un1_MAG_DATA_6));
    MX2 \mag_buffer_RNI80EEH4[64]  (.A(\geig_buffer_3[64] ), .B(
        \mag_buffer_3[64] ), .S(num_cycles11_2), .Y(N_556));
    DFN1C0 \schedule[1]  (.D(\schedule_29[1] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_14), .Q(
        \schedule[1]_net_1 ));
    MX2 \mag_buffer_RNIJGFH42[28]  (.A(\mag_buffer[28]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_26), .S(mag_buffer3_4), .Y(
        \mag_buffer_3[28] ));
    DFN1E1 \mag_buffer[54]  (.D(constant_sensor_data_0_M_DATA_STACK_52)
        , .CLK(reset_pulse_0_CLK_OUT_48MHZ), .E(mag_buffer3_2), .Q(
        \mag_buffer[54]_net_1 ));
    MX2 \geig_buffer_RNIH5J44[34]  (.A(\geig_buffer[34]_net_1 ), .B(
        constant_sensor_data_0_G_DATA_STACK_33), .S(geig_buffer3_3), 
        .Y(\geig_buffer_3[34] ));
    DFN1E1 \data_buffer[29]  (.D(\data_buffer_7[29] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(num_cycles15_1), .Q(
        \data_buffer[29]_net_1 ));
    XO1 \mag_prev_RNI63BR1[69]  (.A(
        constant_sensor_data_0_M_DATA_STACK_67), .B(
        \mag_prev[69]_net_1 ), .C(un1_MAG_DATA_16), .Y(
        un1_MAG_DATA_NE_30));
    DFN1C0 \mag_prev[17]  (.D(constant_sensor_data_0_M_DATA_STACK_15), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_20)
        , .Q(\mag_prev[17]_net_1 ));
    XO1 \write_count_RNI3Q232[2]  (.A(\num_cycles_2[2] ), .B(
        \write_count[2]_net_1 ), .C(cmd_out13_NE_0), .Y(cmd_out13_NE));
    DFN1C0 \geig_prev[43]  (.D(constant_sensor_data_0_G_DATA_STACK_42), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_13)
        , .Q(\geig_prev[43]_net_1 ));
    XO1 \geig_prev_RNI6RME[8]  (.A(
        constant_sensor_data_0_G_DATA_STACK_7), .B(
        \geig_prev[8]_net_1 ), .C(un1_GEIG_DATA_9), .Y(
        un1_GEIG_DATA_NE_39_3));
    DFN1E1 \geig_buffer[72]  (.D(
        constant_sensor_data_0_G_DATA_STACK_0[1]), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(geig_buffer3_2), .Q(
        \geig_buffer[72]_net_1 ));
    MX2 \data_buffer_RNIL2LR39[51]  (.A(N_543), .B(
        \data_buffer[51]_net_1 ), .S(data_buffer_4_sn_N_2_2), .Y(
        \data_buffer_4[51] ));
    OA1C read_prev_RNI3T1JD2_0 (.A(schedule56), .B(\schedule_9[0] ), 
        .C(\schedule_15[1] ), .Y(\un1_schedule_12_m[1] ));
    DFN1C0 \mag_prev[57]  (.D(constant_sensor_data_0_M_DATA_STACK_55), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_21)
        , .Q(\mag_prev[57]_net_1 ));
    MX2 \mag_buffer_RNIFEHH42[35]  (.A(\mag_buffer[35]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_33), .S(mag_buffer3_4), .Y(
        \mag_buffer_3[35] ));
    MX2 \mag_buffer_RNI1SCH42[10]  (.A(\mag_buffer[10]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_8), .S(mag_buffer3_3), .Y(
        \mag_buffer_3[10] ));
    XOR2 \mag_prev_RNIJGKT[38]  (.A(\mag_prev[38]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_36), .Y(un1_MAG_DATA_38));
    XO1 \geig_prev_RNI2PL4[35]  (.A(
        constant_sensor_data_0_G_DATA_STACK_34), .B(
        \geig_prev[35]_net_1 ), .C(un1_GEIG_DATA_34), .Y(
        un1_GEIG_DATA_NE_39_12));
    MX2 \data_buffer_RNIMDJ189[62]  (.A(N_554), .B(
        \data_buffer[62]_net_1 ), .S(data_buffer_4_sn_N_2_2), .Y(
        \data_buffer_4[62] ));
    MX2 \mag_buffer_RNIIDRCH4[24]  (.A(\geig_buffer_3[24] ), .B(
        \mag_buffer_3[24] ), .S(num_cycles11_0), .Y(N_516));
    DFN1E1C0 \col_out[7]  (.D(\col_out_9[7] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_2), .E(
        un1_next_write8_1_0), .Q(memory_controller_0_COL_OUT[7]));
    XOR2 schedule72_3 (.A(read_address_traversal_0_ROW_READ_OUT[3]), 
        .B(write_address_traversal_0_ROW_WRITE_OUT[3]), .Y(
        schedule72_3_net_1));
    XOR2 \mag_prev_RNIF03R[9]  (.A(\mag_prev[9]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_7), .Y(un1_MAG_DATA_9));
    MX2 \geig_buffer_RNIJ3F44[17]  (.A(\geig_buffer[17]_net_1 ), .B(
        constant_sensor_data_0_G_DATA_STACK_16), .S(geig_buffer3_2), 
        .Y(\geig_buffer_3[17] ));
    GND GND_i (.Y(GND));
    DFN1E1 \geig_buffer[11]  (.D(
        constant_sensor_data_0_G_DATA_STACK_10), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(geig_buffer3_0), .Q(
        \geig_buffer[11]_net_1 ));
    MX2 \data_buffer_RNO[26]  (.A(\data_buffer_4[26] ), .B(
        \data_buffer_4[42] ), .S(data_buffer_0_sqmuxa_0), .Y(
        \data_buffer_7[26] ));
    MX2 \data_buffer_RNO[24]  (.A(\data_buffer_4[24] ), .B(
        \data_buffer_4[40] ), .S(data_buffer_0_sqmuxa_0), .Y(
        \data_buffer_7[24] ));
    XOR2 \mag_prev_RNI76MT[41]  (.A(\mag_prev[41]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_39), .Y(un1_MAG_DATA_41));
    MX2 \data_buffer_RNIJ7SR39[79]  (.A(N_571), .B(
        \data_buffer[79]_net_1 ), .S(data_buffer_4_sn_N_2), .Y(
        \data_buffer_4[79] ));
    DFN1E1 \mag_buffer[64]  (.D(constant_sensor_data_0_M_DATA_STACK_62)
        , .CLK(reset_pulse_0_CLK_OUT_48MHZ), .E(mag_buffer3_2), .Q(
        \mag_buffer[64]_net_1 ));
    AOI1B read_prev_RNISGTC8A (.A(schedule56), .B(schedule50), .C(
        \schedule_21_0_f1[4] ), .Y(\schedule_21[4] ));
    XO1 \mag_prev_RNIIGCR1[34]  (.A(
        constant_sensor_data_0_M_DATA_STACK_32), .B(
        \mag_prev[34]_net_1 ), .C(un1_MAG_DATA_50), .Y(
        un1_MAG_DATA_NE_26));
    MX2 \mag_buffer_RNILSPH42[74]  (.A(\mag_buffer[74]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_72), .S(mag_buffer3), .Y(
        \mag_buffer_3[74] ));
    DFN1E1 \data_buffer[21]  (.D(\data_buffer_7[21] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(num_cycles15_1), .Q(
        \data_buffer[21]_net_1 ));
    DFN1E0C0 \cmd_out[1]  (.D(next_write_1_sqmuxa), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_2), .E(
        un1_write_count_0_sqmuxa_4), .Q(memory_controller_0_CMD_OUT[1])
        );
    DFN1C0 \mag_prev[42]  (.D(constant_sensor_data_0_M_DATA_STACK_40), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_21)
        , .Q(\mag_prev[42]_net_1 ));
    MX2 \data_buffer_RNIG8AA89[52]  (.A(N_544), .B(
        \data_buffer[52]_net_1 ), .S(data_buffer_4_sn_N_2_2), .Y(
        \data_buffer_4[52] ));
    DFN1E1 \geig_buffer[21]  (.D(
        constant_sensor_data_0_G_DATA_STACK_20), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(geig_buffer3_0), .Q(
        \geig_buffer[21]_net_1 ));
    DFN1E1 \data_buffer[72]  (.D(\data_buffer_7[72] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(num_cycles15), .Q(
        \data_buffer[72]_net_1 ));
    DFN1E1 \mag_buffer[8]  (.D(constant_sensor_data_0_M_DATA_STACK_6), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .E(mag_buffer3_0), .Q(
        \mag_buffer[8]_net_1 ));
    XO1 \geig_prev_RNI4TN4[40]  (.A(
        constant_sensor_data_0_G_DATA_STACK_39), .B(
        \geig_prev[40]_net_1 ), .C(un1_GEIG_DATA_39), .Y(
        un1_GEIG_DATA_NE_39_9));
    MX2 \data_buffer_RNO[20]  (.A(\data_buffer_4[20] ), .B(
        \data_buffer_4[36] ), .S(data_buffer_0_sqmuxa_0), .Y(
        \data_buffer_7[20] ));
    MX2 \mag_buffer_RNID8DH42[16]  (.A(\mag_buffer[16]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_14), .S(mag_buffer3_3), .Y(
        \mag_buffer_3[16] ));
    NOR2B busy_hold_RNIKR7M3_1 (.A(cmd_out12), .B(next_write7), .Y(
        data_buffer_0_sqmuxa_2));
    XO1 \mag_prev_RNI2T8R1[29]  (.A(
        constant_sensor_data_0_M_DATA_STACK_27), .B(
        \mag_prev[29]_net_1 ), .C(un1_MAG_DATA_45), .Y(
        un1_MAG_DATA_NE_2));
    MX2 \data_buffer_RNO[8]  (.A(\data_buffer_4[8] ), .B(
        \data_buffer_4[24] ), .S(data_buffer_0_sqmuxa), .Y(
        \data_buffer_7[8] ));
    MX2 \mag_buffer_RNIHIJH42[45]  (.A(\mag_buffer[45]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_43), .S(mag_buffer3_5), .Y(
        \mag_buffer_3[45] ));
    OA1 \geig_prev_RNI40JU3_1[12]  (.A(un1_GEIG_DATA_NE_38), .B(
        un1_GEIG_DATA_NE_39), .C(reset_pulse_0_RESET_0), .Y(
        geig_buffer3_2));
    MX2 \mag_buffer_RNI3T5NH4[54]  (.A(\geig_buffer_3[54] ), .B(
        \mag_buffer_3[54] ), .S(num_cycles11_2), .Y(N_546));
    DFN1C0 \geig_prev[0]  (.D(constant_sensor_data_0_G_DATA_STACK_0[1])
        , .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(
        reset_pulse_0_RESET_16), .Q(\geig_prev[6] ));
    MX2 \row_out_RNO[9]  (.A(read_address_traversal_0_ROW_READ_OUT[9]), 
        .B(write_address_traversal_0_ROW_WRITE_OUT[9]), .S(
        un1_schedule_21), .Y(\row_out_9[9] ));
    OR3 schedule72_NE_20 (.A(schedule72_NE_11_net_1), .B(
        schedule72_NE_10_net_1), .C(schedule72_NE_16_net_1), .Y(
        schedule72_NE_20_net_1));
    MX2 \data_buffer_RNO[18]  (.A(\data_buffer_4[18] ), .B(
        \data_buffer_4[34] ), .S(data_buffer_0_sqmuxa_0), .Y(
        \data_buffer_7[18] ));
    DFN1E1 \mag_buffer[23]  (.D(constant_sensor_data_0_M_DATA_STACK_21)
        , .CLK(reset_pulse_0_CLK_OUT_48MHZ), .E(mag_buffer3_0), .Q(
        \mag_buffer[23]_net_1 ));
    MX2 \data_buffer_RNI1LRR39[73]  (.A(N_565), .B(
        \data_buffer[73]_net_1 ), .S(data_buffer_4_sn_N_2), .Y(
        \data_buffer_4[73] ));
    MX2 \mag_buffer_RNI936NH4[56]  (.A(\geig_buffer_3[56] ), .B(
        \mag_buffer_3[56] ), .S(num_cycles11_2), .Y(N_548));
    NOR2B \mag_buffer_RNI7QK8D4[71]  (.A(\mag_buffer_3[71] ), .B(
        num_cycles11), .Y(N_563));
    MX2 \geig_buffer_RNILBL44[45]  (.A(\geig_buffer[45]_net_1 ), .B(
        constant_sensor_data_0_G_DATA_STACK_44), .S(geig_buffer3_4), 
        .Y(\geig_buffer_3[45] ));
    DFN1E1 \mag_buffer[46]  (.D(constant_sensor_data_0_M_DATA_STACK_44)
        , .CLK(reset_pulse_0_CLK_OUT_48MHZ), .E(mag_buffer3_1), .Q(
        \mag_buffer[46]_net_1 ));
    MX2 \mag_buffer_RNI74FH42[22]  (.A(\mag_buffer[22]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_20), .S(mag_buffer3_4), .Y(
        \mag_buffer_3[22] ));
    XOR2 schedule72_2 (.A(read_address_traversal_0_ROW_READ_OUT[2]), 
        .B(write_address_traversal_0_ROW_WRITE_OUT[2]), .Y(
        schedule72_2_net_1));
    MX2 \mag_buffer_RNIA9VCH4[31]  (.A(\geig_buffer_3[31] ), .B(
        \mag_buffer_3[31] ), .S(num_cycles11_1), .Y(N_523));
    MX2 \geig_buffer_RNI7PG44[20]  (.A(\geig_buffer[20]_net_1 ), .B(
        constant_sensor_data_0_G_DATA_STACK_19), .S(geig_buffer3_3), 
        .Y(\geig_buffer_3[20] ));
    DFN1C0 \mag_prev[77]  (.D(constant_sensor_data_0_M_DATA_STACK_75), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_22)
        , .Q(\mag_prev[77]_net_1 ));
    DFN1E1 \geig_buffer[43]  (.D(
        constant_sensor_data_0_G_DATA_STACK_42), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(geig_buffer3_1), .Q(
        \geig_buffer[43]_net_1 ));
    OR3 \mag_prev_RNIGB887[26]  (.A(un1_MAG_DATA_NE_10), .B(
        un1_MAG_DATA_NE_9), .C(un1_MAG_DATA_NE_42), .Y(
        un1_MAG_DATA_NE_57));
    DFN1C0 \mag_prev[16]  (.D(constant_sensor_data_0_M_DATA_STACK_14), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_20)
        , .Q(\mag_prev[16]_net_1 ));
    DFN1E1 \data_buffer[8]  (.D(\data_buffer_7[8] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(num_cycles15_0), .Q(
        \data_buffer[8]_net_1 ));
    XOR2 \mag_prev_RNI98MT[42]  (.A(\mag_prev[42]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_40), .Y(un1_MAG_DATA_42));
    MX2 \geig_buffer_RNIF5L44[42]  (.A(\geig_buffer[42]_net_1 ), .B(
        constant_sensor_data_0_G_DATA_STACK_41), .S(geig_buffer3_4), 
        .Y(\geig_buffer_3[42] ));
    DFN1E1 \data_buffer[6]  (.D(\data_buffer_7[6] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(num_cycles15_0), .Q(
        \data_buffer[6]_net_1 ));
    MX2 \mag_buffer_RNIHCDH42[18]  (.A(\mag_buffer[18]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_16), .S(mag_buffer3_4), .Y(
        \mag_buffer_3[18] ));
    XOR2 busy_hold_RNI9P9K (.A(sdram_interface_0_STATUS), .B(
        busy_hold_net_1), .Y(cmd_out_1_sqmuxa));
    XOR2 \mag_prev_RNIJOST[74]  (.A(\mag_prev[74]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_72), .Y(un1_MAG_DATA_74));
    DFN1E0C0 \cmd_out[0]  (.D(next_read_1_sqmuxa), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_2), .E(
        un1_write_count_0_sqmuxa_4), .Q(memory_controller_0_CMD_OUT[0])
        );
    MX2 \data_buffer_RNIA6O189[76]  (.A(N_568), .B(
        \data_buffer[76]_net_1 ), .S(data_buffer_4_sn_N_2), .Y(
        \data_buffer_4[76] ));
    MX2 \data_buffer_RNO[39]  (.A(\data_buffer_4[39] ), .B(
        \data_buffer_4[55] ), .S(data_buffer_0_sqmuxa_1), .Y(
        \data_buffer_7[39] ));
    MX2 \mag_buffer_RNI6A4DH4[47]  (.A(\geig_buffer_3[47] ), .B(
        \mag_buffer_3[47] ), .S(num_cycles11_2), .Y(N_539));
    DFN1E1 \mag_buffer[38]  (.D(constant_sensor_data_0_M_DATA_STACK_36)
        , .CLK(reset_pulse_0_CLK_OUT_48MHZ), .E(mag_buffer3_1), .Q(
        \mag_buffer[38]_net_1 ));
    MX2 \geig_buffer_RNIO2LE4[52]  (.A(\geig_buffer[52]_net_1 ), .B(
        constant_sensor_data_0_G_DATA_STACK_0[1]), .S(geig_buffer3_4), 
        .Y(\geig_buffer_3[52] ));
    MX2 \data_buffer_RNI4LOR39[65]  (.A(N_557), .B(
        \data_buffer[65]_net_1 ), .S(data_buffer_4_sn_N_2), .Y(
        \data_buffer_4[65] ));
    DFN1C0 \mag_prev[56]  (.D(constant_sensor_data_0_M_DATA_STACK_54), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_21)
        , .Q(\mag_prev[56]_net_1 ));
    MX2 \data_buffer_RNO[25]  (.A(\data_buffer_4[25] ), .B(
        \data_buffer_4[41] ), .S(data_buffer_0_sqmuxa_0), .Y(
        \data_buffer_7[25] ));
    MX2 \mag_buffer_RNIQHNCH4[17]  (.A(\geig_buffer_3[17] ), .B(
        \mag_buffer_3[17] ), .S(num_cycles11_0), .Y(N_509));
    DFN1E1 \mag_buffer[47]  (.D(constant_sensor_data_0_M_DATA_STACK_45)
        , .CLK(reset_pulse_0_CLK_OUT_48MHZ), .E(mag_buffer3_1), .Q(
        \mag_buffer[47]_net_1 ));
    DFN1E1 \geig_buffer[2]  (.D(
        constant_sensor_data_0_G_DATA_STACK_0_d0), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(geig_buffer3), .Q(
        \geig_buffer[2]_net_1 ));
    XOR2 \mag_prev_RNIFAIT[27]  (.A(\mag_prev[27]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_25), .Y(un1_MAG_DATA_27));
    MX2 \mag_buffer_RNIJEDH42[19]  (.A(\mag_buffer[19]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_17), .S(mag_buffer3_4), .Y(
        \mag_buffer_3[19] ));
    DFN1E1 \mag_buffer[29]  (.D(constant_sensor_data_0_M_DATA_STACK_27)
        , .CLK(reset_pulse_0_CLK_OUT_48MHZ), .E(mag_buffer3_1), .Q(
        \mag_buffer[29]_net_1 ));
    DFN1E1 \data_buffer[7]  (.D(\data_buffer_7[7] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(num_cycles15_0), .Q(
        \data_buffer[7]_net_1 ));
    MX2 \mag_buffer_RNIMHRCH4[25]  (.A(\geig_buffer_3[25] ), .B(
        \mag_buffer_3[25] ), .S(num_cycles11_1), .Y(N_517));
    NOR2A \schedule_RNI7GOO5_0[4]  (.A(schedule_3_sqmuxa_1), .B(
        un1_schedule_6), .Y(schedule_3_sqmuxa));
    MX2 \data_buffer_RNID1SR39[77]  (.A(N_569), .B(
        \data_buffer[77]_net_1 ), .S(data_buffer_4_sn_N_2), .Y(
        \data_buffer_4[77] ));
    MX2 \mag_buffer_RNI2TQCH4[20]  (.A(\geig_buffer_3[20] ), .B(
        \mag_buffer_3[20] ), .S(num_cycles11_0), .Y(N_512));
    NOR2A \schedule_RNITMKIFA[6]  (.A(N_488), .B(\schedule_15[6] ), .Y(
        \schedule_15_i_m[6] ));
    NOR2 read_prev_RNI6Q36R4 (.A(\un1_schedule_12_m[1] ), .B(
        \un1_schedule_7_m[0] ), .Y(un1_schedule_18));
    MX2 \data_buffer_RNI248089[48]  (.A(N_540), .B(
        \data_buffer[48]_net_1 ), .S(data_buffer_4_sn_N_2_2), .Y(
        \data_buffer_4[48] ));
    DFN1E1 \data_buffer[35]  (.D(\data_buffer_7[35] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(num_cycles15_1), .Q(
        \data_buffer[35]_net_1 ));
    XO1 schedule72_NE_3 (.A(write_address_traversal_0_ROW_WRITE_OUT[1])
        , .B(read_address_traversal_0_ROW_READ_OUT[1]), .C(
        schedule72_0_net_1), .Y(schedule72_NE_3_net_1));
    MX2 \mag_buffer_RNIDAFH42[25]  (.A(\mag_buffer[25]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_23), .S(mag_buffer3_4), .Y(
        \mag_buffer_3[25] ));
    MX2 \mag_buffer_RNINOJH42[48]  (.A(\mag_buffer[48]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_46), .S(mag_buffer3_5), .Y(
        \mag_buffer_3[48] ));
    OR3 \mag_prev_RNI47IET[24]  (.A(un1_MAG_DATA_NE_58), .B(
        un1_MAG_DATA_NE_57), .C(un1_MAG_DATA_NE_66), .Y(
        un1_MAG_DATA_NE_69));
    MX2 \data_buffer_RNI81BA89[58]  (.A(N_550), .B(
        \data_buffer[58]_net_1 ), .S(data_buffer_4_sn_N_2_2), .Y(
        \data_buffer_4[58] ));
    XO1 \geig_prev_RNIE5M4[38]  (.A(
        constant_sensor_data_0_G_DATA_STACK_37), .B(
        \geig_prev[38]_net_1 ), .C(un1_GEIG_DATA_37), .Y(
        un1_GEIG_DATA_NE_39_10));
    MX2 \geig_buffer_RNIQ1S54[70]  (.A(\geig_buffer[70]_net_1 ), .B(
        constant_sensor_data_0_G_DATA_STACK_0_d0), .S(geig_buffer3_4), 
        .Y(\geig_buffer_3[70] ));
    DFN1E1 \geig_buffer[76]  (.D(
        constant_sensor_data_0_G_DATA_STACK_0[1]), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(geig_buffer3_2), .Q(
        \geig_buffer[76]_net_1 ));
    NOR2A read_prev_RNIIS7F (.A(read_buffer_0_READ_CMD), .B(
        read_prev_net_1), .Y(schedule56));
    MX2 \mag_buffer_RNIR0OH42[68]  (.A(\mag_buffer[68]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_66), .S(mag_buffer3), .Y(
        \mag_buffer_3[68] ));
    MX2 \mag_buffer_RNILOLH42[56]  (.A(\mag_buffer[56]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_54), .S(mag_buffer3_5), .Y(
        \mag_buffer_3[56] ));
    DFN1E1 \data_buffer[76]  (.D(\data_buffer_7[76] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(num_cycles15), .Q(
        \data_buffer[76]_net_1 ));
    DFN1C0 \schedule[7]  (.D(\schedule_29[7] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_15), .Q(
        \schedule[7]_net_1 ));
    MX2 \mag_buffer_RNIF51G42[8]  (.A(\mag_buffer[8]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_6), .S(mag_buffer3_3), .Y(
        \mag_buffer_3[8] ));
    NOR2B read_prev_RNIIQSTV4 (.A(schedule73), .B(un1_schedule_18), .Y(
        ba_out_1_sqmuxa));
    MX2 \data_buffer_RNO[46]  (.A(\data_buffer_4[46] ), .B(
        \data_buffer_4[62] ), .S(data_buffer_0_sqmuxa_1), .Y(
        \data_buffer_7[46] ));
    MX2 \data_buffer_RNO[44]  (.A(\data_buffer_4[44] ), .B(
        \data_buffer_4[60] ), .S(data_buffer_0_sqmuxa_1), .Y(
        \data_buffer_7[44] ));
    DFN1E1C0 \data_out[13]  (.D(\data_buffer_4[13] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_5), .E(
        next_write_1_sqmuxa), .Q(memory_controller_0_DATA_OUT[13]));
    MX2 \data_buffer_RNITKTV79[29]  (.A(N_521), .B(
        \data_buffer[29]_net_1 ), .S(data_buffer_4_sn_N_2_1), .Y(
        \data_buffer_4[29] ));
    MX2 \row_out_RNO[8]  (.A(read_address_traversal_0_ROW_READ_OUT[8]), 
        .B(write_address_traversal_0_ROW_WRITE_OUT[8]), .S(
        un1_schedule_21), .Y(\row_out_9[8] ));
    XOR2 \geig_prev_RNIQ5B2[39]  (.A(\geig_prev[39]_net_1 ), .B(
        constant_sensor_data_0_G_DATA_STACK_38), .Y(un1_GEIG_DATA_39));
    DFN1E1 \data_buffer[65]  (.D(\data_buffer_7[65] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(num_cycles15), .Q(
        \data_buffer[65]_net_1 ));
    MX2 \data_buffer_RNIQL1089[31]  (.A(N_523), .B(
        \data_buffer[31]_net_1 ), .S(data_buffer_4_sn_N_2_1), .Y(
        \data_buffer_4[31] ));
    MX2 \mag_buffer_RNIE5NCH4[14]  (.A(\geig_buffer_3[14] ), .B(
        \mag_buffer_3[14] ), .S(num_cycles11_0), .Y(N_506));
    NOR2 \schedule_RNIC3B36[5]  (.A(\schedule_9[4] ), .B(
        \schedule_3[5] ), .Y(un1_schedule_10));
    DFN1E1 \geig_buffer[1]  (.D(
        constant_sensor_data_0_G_DATA_STACK_0_d0), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(geig_buffer3), .Q(
        \geig_buffer[1]_net_1 ));
    XO1 \mag_prev_RNIMOGR1[44]  (.A(
        constant_sensor_data_0_M_DATA_STACK_42), .B(
        \mag_prev[44]_net_1 ), .C(un1_MAG_DATA_60), .Y(
        un1_MAG_DATA_NE_5));
    MX2 \geig_buffer_RNIPBH44[29]  (.A(\geig_buffer[29]_net_1 ), .B(
        constant_sensor_data_0_G_DATA_STACK_28), .S(geig_buffer3_3), 
        .Y(\geig_buffer_3[29] ));
    DFN1E1 \geig_buffer[10]  (.D(constant_sensor_data_0_G_DATA_STACK_9)
        , .CLK(reset_pulse_0_CLK_OUT_48MHZ), .E(geig_buffer3_0), .Q(
        \geig_buffer[10]_net_1 ));
    OA1 \mag_prev_RNI58VU32_2[17]  (.A(un1_MAG_DATA_NE_69), .B(
        un1_MAG_DATA_NE_70), .C(reset_pulse_0_RESET_0), .Y(
        mag_buffer3_3));
    DFN1C0 \write_count[0]  (.D(\write_count_6[0] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_16), .Q(
        \write_count[0]_net_1 ));
    MX2 \data_buffer_RNO[40]  (.A(\data_buffer_4[40] ), .B(
        \data_buffer_4[56] ), .S(data_buffer_0_sqmuxa_1), .Y(
        \data_buffer_7[40] ));
    OR2A cmd_out12_0_I_5 (.A(\num_cycles_2[2] ), .B(
        \write_count[2]_net_1 ), .Y(\ACT_LT3_E[4] ));
    DFN1C0 \mag_prev[40]  (.D(constant_sensor_data_0_M_DATA_STACK_38), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_21)
        , .Q(\mag_prev[40]_net_1 ));
    MX2 \data_buffer_RNO[56]  (.A(\data_buffer_4[56] ), .B(
        \data_buffer_4[72] ), .S(data_buffer_0_sqmuxa_2), .Y(
        \data_buffer_7[56] ));
    DFN1E1 \data_buffer[55]  (.D(\data_buffer_7[55] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(num_cycles15_2), .Q(
        \data_buffer[55]_net_1 ));
    MX2 \data_buffer_RNO[54]  (.A(\data_buffer_4[54] ), .B(
        \data_buffer_4[70] ), .S(data_buffer_0_sqmuxa_2), .Y(
        \data_buffer_7[54] ));
    DFN1C0 \mag_prev[29]  (.D(constant_sensor_data_0_M_DATA_STACK_27), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_20)
        , .Q(\mag_prev[29]_net_1 ));
    MX2 \geig_buffer_RNIU5S54[74]  (.A(\geig_buffer[74]_net_1 ), .B(
        constant_sensor_data_0_G_DATA_STACK_0_d0), .S(geig_buffer3), 
        .Y(\geig_buffer_3[74] ));
    MX2 \geig_buffer_RNI9F6H4[6]  (.A(\geig_buffer[6]_net_1 ), .B(
        constant_sensor_data_0_G_DATA_STACK_0_d0), .S(geig_buffer3), 
        .Y(\geig_buffer_3[6] ));
    MX2 \data_buffer_RNIG1PR39[69]  (.A(N_561), .B(
        \data_buffer[69]_net_1 ), .S(data_buffer_4_sn_N_2), .Y(
        \data_buffer_4[69] ));
    MX2 \ba_out_RNO[1]  (.A(read_address_traversal_0_BA_READ_OUT[1]), 
        .B(write_address_traversal_0_BA_WRITE_OUT[1]), .S(
        un1_schedule_21), .Y(\ba_out_9[1] ));
    DFN1E1 \geig_buffer[20]  (.D(
        constant_sensor_data_0_G_DATA_STACK_19), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(geig_buffer3_0), .Q(
        \geig_buffer[20]_net_1 ));
    DFN1E1 \geig_buffer[34]  (.D(
        constant_sensor_data_0_G_DATA_STACK_33), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(geig_buffer3_1), .Q(
        \geig_buffer[34]_net_1 ));
    NOR2 \schedule_RNIH0Q3D2_0[3]  (.A(\schedule_15[1] ), .B(
        \schedule_9[0] ), .Y(schedule50));
    XOR2 \geig_prev_RNI8JA2[30]  (.A(\geig_prev[30]_net_1 ), .B(
        constant_sensor_data_0_G_DATA_STACK_29), .Y(un1_GEIG_DATA_30));
    OA1 \schedule_RNI535D92[3]  (.A(\schedule_9[2] ), .B(
        \schedule_3[3] ), .C(mag_buffer3_3), .Y(schedule_15_sn_m1_0));
    DFN1E1 \data_buffer[73]  (.D(\data_buffer_7[73] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(num_cycles15), .Q(
        \data_buffer[73]_net_1 ));
    DFN1C0 \mag_prev[76]  (.D(constant_sensor_data_0_M_DATA_STACK_74), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_22)
        , .Q(\mag_prev[76]_net_1 ));
    DFN1E1 \mag_buffer[45]  (.D(constant_sensor_data_0_M_DATA_STACK_43)
        , .CLK(reset_pulse_0_CLK_OUT_48MHZ), .E(mag_buffer3_1), .Q(
        \mag_buffer[45]_net_1 ));
    DFN1C0 \geig_prev[36]  (.D(constant_sensor_data_0_G_DATA_STACK_35), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_13)
        , .Q(\geig_prev[36]_net_1 ));
    MX2 \geig_buffer_RNIF1H44[24]  (.A(\geig_buffer[24]_net_1 ), .B(
        constant_sensor_data_0_G_DATA_STACK_23), .S(geig_buffer3_3), 
        .Y(\geig_buffer_3[24] ));
    MX2 \data_buffer_RNO[50]  (.A(\data_buffer_4[50] ), .B(
        \data_buffer_4[66] ), .S(data_buffer_0_sqmuxa_2), .Y(
        \data_buffer_7[50] ));
    OR3 schedule72_NE_19 (.A(schedule72_NE_5_net_1), .B(
        schedule72_NE_4_net_1), .C(schedule72_NE_15_net_1), .Y(
        schedule72_NE_19_net_1));
    DFN1E1 \mag_buffer[50]  (.D(constant_sensor_data_0_M_DATA_STACK_48)
        , .CLK(reset_pulse_0_CLK_OUT_48MHZ), .E(mag_buffer3_2), .Q(
        \mag_buffer[50]_net_1 ));
    MX2 \data_buffer_RNO[32]  (.A(\data_buffer_4[32] ), .B(
        \data_buffer_4[48] ), .S(data_buffer_0_sqmuxa_1), .Y(
        \data_buffer_7[32] ));
    OR3 \mag_prev_RNIQHFD7[29]  (.A(un1_MAG_DATA_NE_2), .B(
        un1_MAG_DATA_NE_1), .C(un1_MAG_DATA_NE_38), .Y(
        un1_MAG_DATA_NE_55));
    DFN1E1 \mag_buffer[2]  (.D(constant_sensor_data_0_M_DATA_STACK_0), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .E(mag_buffer3_0), .Q(
        \mag_buffer[2]_net_1 ));
    DFN1E1C0 \col_out[0]  (.D(\col_out_9[0] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_2), .E(
        un1_next_write8_1_0), .Q(memory_controller_0_COL_OUT[0]));
    DFN1E1 \mag_buffer[34]  (.D(constant_sensor_data_0_M_DATA_STACK_32)
        , .CLK(reset_pulse_0_CLK_OUT_48MHZ), .E(mag_buffer3_1), .Q(
        \mag_buffer[34]_net_1 ));
    DFN1E1C0 \data_out[4]  (.D(\data_buffer_4[4] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_5), .E(
        next_write_1_sqmuxa), .Q(memory_controller_0_DATA_OUT[4]));
    XOR2 \mag_prev_RNIFEMT[45]  (.A(\mag_prev[45]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_43), .Y(un1_MAG_DATA_45));
    XOR2 schedule72_23 (.A(write_address_traversal_0_BA_WRITE_OUT[1]), 
        .B(read_address_traversal_0_BA_READ_OUT[1]), .Y(
        schedule72_23_net_1));
    MX2 \mag_buffer_RNIMDNCH4[16]  (.A(\geig_buffer_3[16] ), .B(
        \mag_buffer_3[16] ), .S(num_cycles11_0), .Y(N_508));
    DFN1E1 \geig_buffer[48]  (.D(
        constant_sensor_data_0_G_DATA_STACK_47), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(geig_buffer3_1), .Q(
        \geig_buffer[48]_net_1 ));
    MX2 \mag_buffer_RNIDCHH42[34]  (.A(\mag_buffer[34]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_32), .S(mag_buffer3_4), .Y(
        \mag_buffer_3[34] ));
    NOR2B \schedule_RNI2G5PL4_0[2]  (.A(reset_pulse_0_RESET_0), .B(
        un1_schedule_21_0), .Y(num_cycles15_1));
    XO1 \geig_prev_RNIQ8D4[14]  (.A(
        constant_sensor_data_0_G_DATA_STACK_13), .B(
        \geig_prev[14]_net_1 ), .C(un1_GEIG_DATA_15), .Y(
        un1_GEIG_DATA_NE_38_2));
    DFN1C0 \mag_prev[39]  (.D(constant_sensor_data_0_M_DATA_STACK_37), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_21)
        , .Q(\mag_prev[39]_net_1 ));
    DFN1C0 \geig_prev[17]  (.D(constant_sensor_data_0_G_DATA_STACK_16), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_12)
        , .Q(\geig_prev[17]_net_1 ));
    NOR2B \mag_buffer_RNIDUI8D4[65]  (.A(\mag_buffer_3[65] ), .B(
        num_cycles11), .Y(N_557));
    DFN1E1C0 \data_out[15]  (.D(\data_buffer_4[15] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_5), .E(
        next_write_1_sqmuxa), .Q(memory_controller_0_DATA_OUT[15]));
    NOR2A \data_buffer_RNO[66]  (.A(\data_buffer_4[66] ), .B(
        data_buffer_0_sqmuxa), .Y(\data_buffer_7[66] ));
    CLKINT next_read_RNIJTK4 (.A(next_read_i), .Y(
        memory_controller_0_NEXT_READ));
    MX2 \geig_buffer_RNI9RG44[21]  (.A(\geig_buffer[21]_net_1 ), .B(
        constant_sensor_data_0_G_DATA_STACK_20), .S(geig_buffer3_3), 
        .Y(\geig_buffer_3[21] ));
    NOR2A \data_buffer_RNO[64]  (.A(\data_buffer_4[64] ), .B(
        data_buffer_0_sqmuxa), .Y(\data_buffer_7[64] ));
    XOR2 un1_write_count_4_I_12 (.A(\write_count[1]_net_1 ), .B(
        \DWACT_ADD_CI_0_TMP[0] ), .Y(I_12_3));
    DFN1C0 \mag_prev[11]  (.D(constant_sensor_data_0_M_DATA_STACK_9), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_20)
        , .Q(\mag_prev[11]_net_1 ));
    DFN1E1 \mag_buffer[16]  (.D(constant_sensor_data_0_M_DATA_STACK_14)
        , .CLK(reset_pulse_0_CLK_OUT_48MHZ), .E(mag_buffer3_0), .Q(
        \mag_buffer[16]_net_1 ));
    XOR2 un1_write_count_4_I_9 (.A(\write_count[0]_net_1 ), .B(
        write_count_0_sqmuxa_1), .Y(\DWACT_ADD_CI_0_partial_sum[0] ));
    MX2 \data_buffer_RNIJ5OV79[18]  (.A(N_510), .B(
        \data_buffer[18]_net_1 ), .S(data_buffer_4_sn_N_2_0), .Y(
        \data_buffer_4[18] ));
    DFN1E1C0 \data_out[3]  (.D(\data_buffer_4[3] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_5), .E(
        next_write_1_sqmuxa), .Q(memory_controller_0_DATA_OUT[3]));
    MX2 \data_buffer_RNO[45]  (.A(\data_buffer_4[45] ), .B(
        \data_buffer_4[61] ), .S(data_buffer_0_sqmuxa_1), .Y(
        \data_buffer_7[45] ));
    DFN1C0 \schedule[5]  (.D(\schedule_29[5] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_15), .Q(
        \schedule[5]_net_1 ));
    MX2 \data_buffer_RNO[4]  (.A(\data_buffer_4[4] ), .B(
        \data_buffer_4[20] ), .S(data_buffer_0_sqmuxa_2), .Y(
        \data_buffer_7[4] ));
    DFN1E1 \data_buffer[47]  (.D(\data_buffer_7[47] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(num_cycles15_2), .Q(
        \data_buffer[47]_net_1 ));
    DFN1C0 \write_count[2]  (.D(\write_count_6[2] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_16), .Q(
        \write_count[2]_net_1 ));
    MX2 \mag_buffer_RNIPQJH42[49]  (.A(\mag_buffer[49]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_47), .S(mag_buffer3_5), .Y(
        \mag_buffer_3[49] ));
    DFN1E1 \mag_buffer[52]  (.D(constant_sensor_data_0_M_DATA_STACK_50)
        , .CLK(reset_pulse_0_CLK_OUT_48MHZ), .E(mag_buffer3_2), .Q(
        \mag_buffer[52]_net_1 ));
    XOR2 \mag_prev_RNIB4GT[16]  (.A(\mag_prev[16]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_14), .Y(un1_MAG_DATA_16));
    DFN1C0 \mag_prev[23]  (.D(constant_sensor_data_0_M_DATA_STACK_21), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_20)
        , .Q(\mag_prev[23]_net_1 ));
    NOR2 \write_count_RNI87QAM4_1[0]  (.A(num_cycles10), .B(
        num_cycles11), .Y(data_buffer_4_sn_N_2_2));
    MX2 \data_buffer_RNO[28]  (.A(\data_buffer_4[28] ), .B(
        \data_buffer_4[44] ), .S(data_buffer_0_sqmuxa_0), .Y(
        \data_buffer_7[28] ));
    DFN1C0 \mag_prev[14]  (.D(constant_sensor_data_0_M_DATA_STACK_12), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_20)
        , .Q(\mag_prev[14]_net_1 ));
    MX2 \data_buffer_RNO[60]  (.A(\data_buffer_4[60] ), .B(
        \data_buffer_4[76] ), .S(data_buffer_0_sqmuxa_2), .Y(
        \data_buffer_7[60] ));
    DFN1C0 \mag_prev[51]  (.D(constant_sensor_data_0_M_DATA_STACK_49), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_21)
        , .Q(\mag_prev[51]_net_1 ));
    OR3A \write_count_RNI88OD9J[2]  (.A(un1_num_cycles15), .B(
        schedule_1_sqmuxa_3), .C(schedule_0_sqmuxa_3), .Y(
        un1_num_cycles17));
    DFN1C0 \geig_prev[27]  (.D(constant_sensor_data_0_G_DATA_STACK_26), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_13)
        , .Q(\geig_prev[27]_net_1 ));
    MX2 \data_buffer_RNO[55]  (.A(\data_buffer_4[55] ), .B(
        \data_buffer_4[71] ), .S(data_buffer_0_sqmuxa_2), .Y(
        \data_buffer_7[55] ));
    DFN1E1 \mag_buffer[60]  (.D(constant_sensor_data_0_M_DATA_STACK_58)
        , .CLK(reset_pulse_0_CLK_OUT_48MHZ), .E(mag_buffer3_2), .Q(
        \mag_buffer[60]_net_1 ));
    MX2 \data_buffer_RNIOP7089[46]  (.A(N_538), .B(
        \data_buffer[46]_net_1 ), .S(data_buffer_4_sn_N_2_2), .Y(
        \data_buffer_4[46] ));
    DFN1E1 \mag_buffer[17]  (.D(constant_sensor_data_0_M_DATA_STACK_15)
        , .CLK(reset_pulse_0_CLK_OUT_48MHZ), .E(mag_buffer3_0), .Q(
        \mag_buffer[17]_net_1 ));
    MX2 \mag_buffer_RNISJDEH4[60]  (.A(\geig_buffer_3[60] ), .B(
        \mag_buffer_3[60] ), .S(num_cycles11_2), .Y(N_552));
    DFN1C0 \geig_prev[33]  (.D(constant_sensor_data_0_G_DATA_STACK_32), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_13)
        , .Q(\geig_prev[33]_net_1 ));
    MX2 \data_buffer_RNIQQ6089[40]  (.A(N_532), .B(
        \data_buffer[40]_net_1 ), .S(data_buffer_4_sn_N_2_1), .Y(
        \data_buffer_4[40] ));
    AO1A \schedule_RNIDNT7[2]  (.A(\schedule[1]_net_1 ), .B(
        \schedule[2]_net_1 ), .C(\schedule[0]_net_1 ), .Y(
        \schedule_3[0] ));
    DFN1C0 \mag_prev[54]  (.D(constant_sensor_data_0_M_DATA_STACK_52), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_21)
        , .Q(\mag_prev[54]_net_1 ));
    MX2 \data_buffer_RNIVQ1089[32]  (.A(N_524), .B(
        \data_buffer[32]_net_1 ), .S(data_buffer_4_sn_N_2_1), .Y(
        \data_buffer_4[32] ));
    XOR2 \mag_prev_RNIVNFT[10]  (.A(\mag_prev[10]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_8), .Y(un1_MAG_DATA_10));
    MX2 \data_buffer_RNI80AA89[50]  (.A(N_542), .B(
        \data_buffer[50]_net_1 ), .S(data_buffer_4_sn_N_2_2), .Y(
        \data_buffer_4[50] ));
    MX2A \schedule_RNO[4]  (.A(\schedule_15_i_m[6] ), .B(
        \schedule_21[4] ), .S(un1_num_cycles17), .Y(\schedule_29[4] ));
    XOR2 schedule72_8 (.A(read_address_traversal_0_ROW_READ_OUT[8]), 
        .B(write_address_traversal_0_ROW_WRITE_OUT[8]), .Y(
        schedule72_8_net_1));
    DFN1E1 \data_buffer[25]  (.D(\data_buffer_7[25] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(num_cycles15_1), .Q(
        \data_buffer[25]_net_1 ));
    DFN1E1 \data_buffer[17]  (.D(\data_buffer_7[17] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(num_cycles15_0), .Q(
        \data_buffer[17]_net_1 ));
    DFN1C0 \mag_prev[33]  (.D(constant_sensor_data_0_M_DATA_STACK_31), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_20)
        , .Q(\mag_prev[33]_net_1 ));
    MX2 \mag_buffer_RNIT4QH42[78]  (.A(\mag_buffer[78]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_76), .S(mag_buffer3), .Y(
        \mag_buffer_3[78] ));
    DFN1E1 \geig_buffer[13]  (.D(
        constant_sensor_data_0_G_DATA_STACK_12), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(geig_buffer3_0), .Q(
        \geig_buffer[13]_net_1 ));
    MX2 \data_buffer_RNO[3]  (.A(\data_buffer_4[3] ), .B(
        \data_buffer_4[19] ), .S(data_buffer_0_sqmuxa_2), .Y(
        \data_buffer_7[3] ));
    XOR2 \mag_prev_RNIDU2R[8]  (.A(\mag_prev[8]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_6), .Y(un1_MAG_DATA_8));
    MX2 \mag_buffer_RNIQT3DH4[44]  (.A(\geig_buffer_3[44] ), .B(
        \mag_buffer_3[44] ), .S(num_cycles11_1), .Y(N_536));
    DFN1C0 \geig_prev[40]  (.D(constant_sensor_data_0_G_DATA_STACK_39), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_13)
        , .Q(\geig_prev[40]_net_1 ));
    DFN1E1C0 \data_out[9]  (.D(\data_buffer_4[9] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_5), .E(
        next_write_1_sqmuxa), .Q(memory_controller_0_DATA_OUT[9]));
    XOR2 \geig_prev_RNICPC2[41]  (.A(\geig_prev[41]_net_1 ), .B(
        constant_sensor_data_0_G_DATA_STACK_40), .Y(un1_GEIG_DATA_41));
    XO1 \geig_prev_RNI2HD4[16]  (.A(
        constant_sensor_data_0_G_DATA_STACK_15), .B(
        \geig_prev[16]_net_1 ), .C(un1_GEIG_DATA_17), .Y(
        un1_GEIG_DATA_NE_38_3));
    AO1A \schedule_RNIPJRPQ7[4]  (.A(un1_schedule50_1), .B(
        schedule_2_sqmuxa_2_1), .C(\schedule_9[4] ), .Y(
        \schedule_21_0_f1[4] ));
    DFN1E1 \mag_buffer[62]  (.D(constant_sensor_data_0_M_DATA_STACK_60)
        , .CLK(reset_pulse_0_CLK_OUT_48MHZ), .E(mag_buffer3_2), .Q(
        \mag_buffer[62]_net_1 ));
    MX2 \geig_buffer_RNIFVE44[15]  (.A(\geig_buffer[15]_net_1 ), .B(
        constant_sensor_data_0_G_DATA_STACK_14), .S(geig_buffer3_2), 
        .Y(\geig_buffer_3[15] ));
    MX2 \geig_buffer_RNIH7L44[43]  (.A(\geig_buffer[43]_net_1 ), .B(
        constant_sensor_data_0_G_DATA_STACK_42), .S(geig_buffer3_4), 
        .Y(\geig_buffer_3[43] ));
    MX2 \mag_buffer_RNIAE4DH4[48]  (.A(\geig_buffer_3[48] ), .B(
        \mag_buffer_3[48] ), .S(num_cycles11_2), .Y(N_540));
    MX2 \geig_buffer_RNI08S54[76]  (.A(\geig_buffer[76]_net_1 ), .B(
        constant_sensor_data_0_G_DATA_STACK_0_d0), .S(geig_buffer3), 
        .Y(\geig_buffer_3[76] ));
    MX2 \data_buffer_RNI7LLR39[57]  (.A(N_549), .B(
        \data_buffer[57]_net_1 ), .S(data_buffer_4_sn_N_2_2), .Y(
        \data_buffer_4[57] ));
    NOR2A \data_buffer_RNO[79]  (.A(\data_buffer_4[79] ), .B(
        data_buffer_0_sqmuxa), .Y(\data_buffer_7[79] ));
    XO1 \mag_prev_RNIADHR1[49]  (.A(
        constant_sensor_data_0_M_DATA_STACK_47), .B(
        \mag_prev[49]_net_1 ), .C(un1_MAG_DATA_65), .Y(
        un1_MAG_DATA_NE_29));
    DFN1E1 \geig_buffer[23]  (.D(
        constant_sensor_data_0_G_DATA_STACK_22), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(geig_buffer3_0), .Q(
        \geig_buffer[23]_net_1 ));
    MX2 \mag_buffer_RNI6E2OH4[6]  (.A(\geig_buffer_3[6] ), .B(
        \mag_buffer_3[6] ), .S(num_cycles11_0), .Y(N_498));
    NOR2A \schedule_RNO[6]  (.A(un1_num_cycles17), .B(
        \schedule_15_i_m[6] ), .Y(\schedule_29[6] ));
    DFN1C0 \mag_prev[47]  (.D(constant_sensor_data_0_M_DATA_STACK_45), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_21)
        , .Q(\mag_prev[47]_net_1 ));
    NOR2A \data_buffer_RNO[65]  (.A(\data_buffer_4[65] ), .B(
        data_buffer_0_sqmuxa), .Y(\data_buffer_7[65] ));
    XOR2 schedule72_14 (.A(write_address_traversal_0_COL_WRITE_OUT[1]), 
        .B(read_address_traversal_0_COL_READ_OUT[1]), .Y(
        schedule72_14_net_1));
    MX2 \mag_buffer_RNIP0QH42[76]  (.A(\mag_buffer[76]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_74), .S(mag_buffer3), .Y(
        \mag_buffer_3[76] ));
    MX2 \mag_buffer_RNIAA0DH4[39]  (.A(\geig_buffer_3[39] ), .B(
        \mag_buffer_3[39] ), .S(num_cycles11_1), .Y(N_531));
    MX2 \data_buffer_RNIVV6089[41]  (.A(N_533), .B(
        \data_buffer[41]_net_1 ), .S(data_buffer_4_sn_N_2_1), .Y(
        \data_buffer_4[41] ));
    OR3 \geig_prev_RNI82UB2[18]  (.A(un1_GEIG_DATA_NE_39_21), .B(
        un1_GEIG_DATA_NE_39_20), .C(un1_GEIG_DATA_NE_39_22), .Y(
        un1_GEIG_DATA_NE_39));
    DFN1E1 \mag_buffer[9]  (.D(constant_sensor_data_0_M_DATA_STACK_7), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .E(mag_buffer3_0), .Q(
        \mag_buffer[9]_net_1 ));
    XOR2 \geig_prev_RNICL82[23]  (.A(\geig_prev[23]_net_1 ), .B(
        constant_sensor_data_0_G_DATA_STACK_22), .Y(un1_GEIG_DATA_23));
    DFN1E1C0 \col_out[4]  (.D(\col_out_9[4] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_2), .E(
        un1_next_write8_1_0), .Q(memory_controller_0_COL_OUT[4]));
    MX2 \data_buffer_RNO[33]  (.A(\data_buffer_4[33] ), .B(
        \data_buffer_4[49] ), .S(data_buffer_0_sqmuxa_1), .Y(
        \data_buffer_7[33] ));
    NOR2 \schedule_RNIT395[0]  (.A(\schedule[1]_net_1 ), .B(
        \schedule[0]_net_1 ), .Y(un1_schedule_1));
    DFN1E1C0 \row_out[1]  (.D(\row_out_9[1] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_4), .E(
        un1_next_write8_1_0), .Q(memory_controller_0_ROW_OUT[1]));
    NOR2B \mag_buffer_RNIJ2H8D4[59]  (.A(\mag_buffer_3[59] ), .B(
        num_cycles11), .Y(N_551));
    OR3 \mag_prev_RNIIHRM3[21]  (.A(un1_MAG_DATA_37), .B(
        un1_MAG_DATA_21), .C(un1_MAG_DATA_NE_20), .Y(
        un1_MAG_DATA_NE_46));
    MX2 \mag_buffer_RNIQLRCH4[26]  (.A(\geig_buffer_3[26] ), .B(
        \mag_buffer_3[26] ), .S(num_cycles11_1), .Y(N_518));
    MX2 \col_out_RNO[2]  (.A(read_address_traversal_0_COL_READ_OUT[2]), 
        .B(write_address_traversal_0_COL_WRITE_OUT[2]), .S(
        un1_schedule_21), .Y(\col_out_9[2] ));
    DFN1C0 \mag_prev[71]  (.D(constant_sensor_data_0_M_DATA_STACK_69), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_22)
        , .Q(\mag_prev[71]_net_1 ));
    OR3 \mag_prev_RNIK14K3[25]  (.A(un1_MAG_DATA_41), .B(
        un1_MAG_DATA_25), .C(un1_MAG_DATA_NE_12), .Y(
        un1_MAG_DATA_NE_42));
    DFN1E1 \mag_buffer[71]  (.D(constant_sensor_data_0_M_DATA_STACK_69)
        , .CLK(reset_pulse_0_CLK_OUT_48MHZ), .E(mag_buffer3_2), .Q(
        \mag_buffer[71]_net_1 ));
    DFN1E1 \geig_buffer[6]  (.D(
        constant_sensor_data_0_G_DATA_STACK_0_d0), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(geig_buffer3), .Q(
        \geig_buffer[6]_net_1 ));
    OA1 \mag_prev_RNI58VU32_5[17]  (.A(un1_MAG_DATA_NE_69), .B(
        un1_MAG_DATA_NE_70), .C(reset_pulse_0_RESET_11), .Y(
        mag_buffer3));
    DFN1E1C0 \data_out[6]  (.D(\data_buffer_4[6] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_5), .E(
        next_write_1_sqmuxa), .Q(memory_controller_0_DATA_OUT[6]));
    MX2 \col_out_RNO[1]  (.A(read_address_traversal_0_COL_READ_OUT[1]), 
        .B(write_address_traversal_0_COL_WRITE_OUT[1]), .S(
        un1_schedule_21), .Y(\col_out_9[1] ));
    DFN1E1C0 \data_out[0]  (.D(\data_buffer_4[0] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_5), .E(
        next_write_1_sqmuxa), .Q(memory_controller_0_DATA_OUT[0]));
    XOR2 \mag_prev_RNIFCKT[36]  (.A(\mag_prev[36]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_34), .Y(un1_MAG_DATA_36));
    NOR2B busy_hold_RNIRJ6I05_0 (.A(next_write7), .B(ba_out_1_sqmuxa), 
        .Y(next_read_0_sqmuxa));
    DFN1E1 \mag_buffer[15]  (.D(constant_sensor_data_0_M_DATA_STACK_13)
        , .CLK(reset_pulse_0_CLK_OUT_48MHZ), .E(mag_buffer3_0), .Q(
        \mag_buffer[15]_net_1 ));
    DFN1C0 \mag_prev[25]  (.D(constant_sensor_data_0_M_DATA_STACK_23), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_20)
        , .Q(\mag_prev[25]_net_1 ));
    MX2 \mag_buffer_RNI52FH42[21]  (.A(\mag_buffer[21]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_19), .S(mag_buffer3_4), .Y(
        \mag_buffer_3[21] ));
    MX2 \geig_buffer_RNIJ9L44[44]  (.A(\geig_buffer[44]_net_1 ), .B(
        constant_sensor_data_0_G_DATA_STACK_43), .S(geig_buffer3_4), 
        .Y(\geig_buffer_3[44] ));
    MX2 \mag_buffer_RNIF96NH4[58]  (.A(\geig_buffer_3[58] ), .B(
        \mag_buffer_3[58] ), .S(num_cycles11_2), .Y(N_550));
    MX2 \mag_buffer_RNI76HH42[31]  (.A(\mag_buffer[31]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_29), .S(mag_buffer3_4), .Y(
        \mag_buffer_3[31] ));
    DFN1C0 \mag_prev[74]  (.D(constant_sensor_data_0_M_DATA_STACK_72), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_22)
        , .Q(\mag_prev[74]_net_1 ));
    NOR2B \mag_buffer_RNIBQG8D4[55]  (.A(\mag_buffer_3[55] ), .B(
        num_cycles11), .Y(N_547));
    MX2 \data_buffer_RNIE0OV79[17]  (.A(N_509), .B(
        \data_buffer[17]_net_1 ), .S(data_buffer_4_sn_N_2_0), .Y(
        \data_buffer_4[17] ));
    XO1 \geig_prev_RNIE9Q4[47]  (.A(
        constant_sensor_data_0_G_DATA_STACK_46), .B(
        \geig_prev[47]_net_1 ), .C(un1_GEIG_DATA_46), .Y(
        un1_GEIG_DATA_NE_39_5));
    MX2 \data_buffer_RNI8HDA89[6]  (.A(N_498), .B(
        \data_buffer[6]_net_1 ), .S(data_buffer_4_sn_N_2_0), .Y(
        \data_buffer_4[6] ));
    XOR2 \mag_prev_RNIHEKT[37]  (.A(\mag_prev[37]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_35), .Y(un1_MAG_DATA_37));
    XOR2 \geig_prev_RNIMV82[28]  (.A(\geig_prev[28]_net_1 ), .B(
        constant_sensor_data_0_G_DATA_STACK_27), .Y(un1_GEIG_DATA_28));
    MX2 \data_buffer_RNO[48]  (.A(\data_buffer_4[48] ), .B(
        \data_buffer_4[64] ), .S(data_buffer_0_sqmuxa_1), .Y(
        \data_buffer_7[48] ));
    DFN1C0 \mag_prev[68]  (.D(constant_sensor_data_0_M_DATA_STACK_66), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_22)
        , .Q(\mag_prev[68]_net_1 ));
    MX2 \data_buffer_RNO[6]  (.A(\data_buffer_4[6] ), .B(
        \data_buffer_4[22] ), .S(data_buffer_0_sqmuxa), .Y(
        \data_buffer_7[6] ));
    XOR2 \geig_prev_RNI2SA7[0]  (.A(\geig_prev[6] ), .B(
        constant_sensor_data_0_G_DATA_STACK_0_d0), .Y(un1_GEIG_DATA_6));
    MX2 \geig_buffer_RNIPFL44[47]  (.A(\geig_buffer[47]_net_1 ), .B(
        constant_sensor_data_0_G_DATA_STACK_46), .S(geig_buffer3_4), 
        .Y(\geig_buffer_3[47] ));
    MX2 \mag_buffer_RNIQ12OH4[0]  (.A(\geig_buffer_3[0] ), .B(
        \mag_buffer_3[0] ), .S(num_cycles11_0), .Y(N_492));
    NOR3A \schedule_RNIUES6K2[5]  (.A(schedule_15_sn_m1_0), .B(
        schedule34), .C(un1_schedule_10), .Y(schedule_15_sn_N_3));
    OR3 schedule72_NE_18 (.A(schedule72_NE_1_net_1), .B(
        schedule72_NE_0_net_1), .C(schedule72_NE_13_net_1), .Y(
        schedule72_NE_18_net_1));
    OA1 busy_hold_RNI86ADP9_1 (.A(ba_out_1_sqmuxa), .B(
        write_count_0_sqmuxa), .C(next_write8), .Y(un1_next_write8_1_0)
        );
    NOR2A \schedule_RNIH0Q3D2[3]  (.A(\schedule_9[0] ), .B(
        \schedule_15[1] ), .Y(un1_schedule_19));
    MX2 \geig_buffer_RNIU8LE4[58]  (.A(\geig_buffer[58]_net_1 ), .B(
        constant_sensor_data_0_G_DATA_STACK_0[1]), .S(geig_buffer3_4), 
        .Y(\geig_buffer_3[58] ));
    MX2 \mag_buffer_RNIUTVCH4[36]  (.A(\geig_buffer_3[36] ), .B(
        \mag_buffer_3[36] ), .S(num_cycles11_1), .Y(N_528));
    DFN1C0 \mag_prev[35]  (.D(constant_sensor_data_0_M_DATA_STACK_33), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_21)
        , .Q(\mag_prev[35]_net_1 ));
    DFN1E1 \mag_buffer[26]  (.D(constant_sensor_data_0_M_DATA_STACK_24)
        , .CLK(reset_pulse_0_CLK_OUT_48MHZ), .E(mag_buffer3_0), .Q(
        \mag_buffer[26]_net_1 ));
    MX2 \data_buffer_RNO[0]  (.A(\data_buffer_4[0] ), .B(
        \data_buffer_4[16] ), .S(data_buffer_0_sqmuxa_2), .Y(
        \data_buffer_7[0] ));
    MX2 \data_buffer_RNO[58]  (.A(\data_buffer_4[58] ), .B(
        \data_buffer_4[74] ), .S(data_buffer_0_sqmuxa_2), .Y(
        \data_buffer_7[58] ));
    MX2 \data_buffer_RNIULJ189[64]  (.A(N_556), .B(
        \data_buffer[64]_net_1 ), .S(data_buffer_4_sn_N_2), .Y(
        \data_buffer_4[64] ));
    OA1 \mag_prev_RNI58VU32_3[17]  (.A(un1_MAG_DATA_NE_69), .B(
        un1_MAG_DATA_NE_70), .C(reset_pulse_0_RESET_0), .Y(
        mag_buffer3_4));
    NOR2A \data_buffer_RNO[72]  (.A(\data_buffer_4[72] ), .B(
        data_buffer_0_sqmuxa), .Y(\data_buffer_7[72] ));
    XOR2 \mag_prev_RNIHMST[73]  (.A(\mag_prev[73]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_71), .Y(un1_MAG_DATA_73));
    DFN1E1 \geig_buffer[32]  (.D(
        constant_sensor_data_0_G_DATA_STACK_31), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(geig_buffer3_1), .Q(
        \geig_buffer[32]_net_1 ));
    MX2 \mag_buffer_RNIMP3DH4[43]  (.A(\geig_buffer_3[43] ), .B(
        \mag_buffer_3[43] ), .S(num_cycles11_1), .Y(N_535));
    DFN1C0 \geig_prev[48]  (.D(constant_sensor_data_0_G_DATA_STACK_47), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_14)
        , .Q(\geig_prev[48]_net_1 ));
    DFN1E1 \geig_buffer[18]  (.D(
        constant_sensor_data_0_G_DATA_STACK_17), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(geig_buffer3_0), .Q(
        \geig_buffer[18]_net_1 ));
    AO1D busy_hold_RNI86ADP9 (.A(write_count_0_sqmuxa), .B(
        ba_out_1_sqmuxa), .C(cmd_out_1_sqmuxa), .Y(
        un1_write_count_0_sqmuxa_4));
    MX2 \data_buffer_RNIO8OR39[61]  (.A(N_553), .B(
        \data_buffer[61]_net_1 ), .S(data_buffer_4_sn_N_2_2), .Y(
        \data_buffer_4[61] ));
    DFN1E1 \geig_buffer[60]  (.D(
        constant_sensor_data_0_G_DATA_STACK_0[1]), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(geig_buffer3_2), .Q(
        \geig_buffer[60]_net_1 ));
    DFN1C0 \mag_prev[46]  (.D(constant_sensor_data_0_M_DATA_STACK_44), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_21)
        , .Q(\mag_prev[46]_net_1 ));
    DFN1E1 \mag_buffer[27]  (.D(constant_sensor_data_0_M_DATA_STACK_25)
        , .CLK(reset_pulse_0_CLK_OUT_48MHZ), .E(mag_buffer3_1), .Q(
        \mag_buffer[27]_net_1 ));
    DFN1E1 \data_buffer[38]  (.D(\data_buffer_7[38] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(num_cycles15_1), .Q(
        \data_buffer[38]_net_1 ));
    OA1C \schedule_RNIC4M0OC[5]  (.A(schedule_2_sqmuxa_2_1), .B(
        un1_schedule50_1), .C(\schedule_15[5] ), .Y(
        \un1_schedule_15_m[1] ));
    OA1C read_prev_RNI60OTE7 (.A(schedule_1_sqmuxa_2_0), .B(schedule50)
        , .C(\schedule_15[3] ), .Y(\un1_schedule_13_m[1] ));
    MX2 \mag_buffer_RNI96FH42[23]  (.A(\mag_buffer[23]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_21), .S(mag_buffer3_4), .Y(
        \mag_buffer_3[23] ));
    AO1A \schedule_RNIVFEE4[2]  (.A(\schedule_3[1] ), .B(geig_buffer3), 
        .C(\schedule_3[0] ), .Y(\schedule_9[0] ));
    XOR2 schedule72_13 (.A(read_address_traversal_0_COL_READ_OUT[0]), 
        .B(write_address_traversal_0_COL_WRITE_OUT[0]), .Y(
        schedule72_13_net_1));
    OR3 \mag_prev_RNIUPNM3[19]  (.A(un1_MAG_DATA_35), .B(
        un1_MAG_DATA_19), .C(un1_MAG_DATA_NE_24), .Y(
        un1_MAG_DATA_NE_48));
    DFN1E1 \geig_buffer[28]  (.D(
        constant_sensor_data_0_G_DATA_STACK_27), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(geig_buffer3_0), .Q(
        \geig_buffer[28]_net_1 ));
    XOR2 \geig_prev_RNIAH62[13]  (.A(\geig_prev[13]_net_1 ), .B(
        constant_sensor_data_0_G_DATA_STACK_12), .Y(un1_GEIG_DATA_13));
    MX2 \mag_buffer_RNIHEFH42[27]  (.A(\mag_buffer[27]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_25), .S(mag_buffer3_4), .Y(
        \mag_buffer_3[27] ));
    MX2 \geig_buffer_RNIJ5H44[26]  (.A(\geig_buffer[26]_net_1 ), .B(
        constant_sensor_data_0_G_DATA_STACK_25), .S(geig_buffer3_3), 
        .Y(\geig_buffer_3[26] ));
    MX2C \schedule_RNO[5]  (.A(\schedule_15_i_m[7] ), .B(
        \un1_schedule_15_m[1] ), .S(un1_num_cycles17), .Y(
        \schedule_29[5] ));
    DFN1E1 \mag_buffer[30]  (.D(constant_sensor_data_0_M_DATA_STACK_28)
        , .CLK(reset_pulse_0_CLK_OUT_48MHZ), .E(mag_buffer3_1), .Q(
        \mag_buffer[30]_net_1 ));
    XO1 schedule72_NE_9 (.A(read_address_traversal_0_BA_READ_OUT[0]), 
        .B(write_address_traversal_0_BA_WRITE_OUT[0]), .C(
        schedule72_10_net_1), .Y(schedule72_NE_9_net_1));
    MX2 \mag_buffer_RNIHCHEH4[76]  (.A(\geig_buffer_3[76] ), .B(
        \mag_buffer_3[76] ), .S(num_cycles11_2), .Y(N_568));
    DFN1C0 \schedule[4]  (.D(\schedule_29[4] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_15), .Q(
        \schedule[4]_net_1 ));
    DFN1E1 \mag_buffer[73]  (.D(constant_sensor_data_0_M_DATA_STACK_71)
        , .CLK(reset_pulse_0_CLK_OUT_48MHZ), .E(mag_buffer3_3), .Q(
        \mag_buffer[73]_net_1 ));
    NOR2A \data_buffer_RNO[68]  (.A(\data_buffer_4[68] ), .B(
        data_buffer_0_sqmuxa), .Y(\data_buffer_7[68] ));
    OR3 \geig_prev_RNIEI0E[31]  (.A(un1_GEIG_DATA_NE_39_1), .B(
        un1_GEIG_DATA_NE_39_0), .C(un1_GEIG_DATA_NE_39_12), .Y(
        un1_GEIG_DATA_NE_39_19));
    OR3 \mag_prev_RNIFM56N[15]  (.A(un1_MAG_DATA_NE_56), .B(
        un1_MAG_DATA_NE_55), .C(un1_MAG_DATA_NE_63), .Y(
        un1_MAG_DATA_NE_68));
    MX2 \mag_buffer_RNIA5RCH4[22]  (.A(\geig_buffer_3[22] ), .B(
        \mag_buffer_3[22] ), .S(num_cycles11_0), .Y(N_514));
    OA1 \geig_prev_RNI40JU3_3[12]  (.A(un1_GEIG_DATA_NE_38), .B(
        un1_GEIG_DATA_NE_39), .C(reset_pulse_0_RESET_0), .Y(
        geig_buffer3_4));
    DFN1E1 \data_buffer[68]  (.D(\data_buffer_7[68] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(num_cycles15), .Q(
        \data_buffer[68]_net_1 ));
    MX2 \mag_buffer_RNI30FH42[20]  (.A(\mag_buffer[20]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_18), .S(mag_buffer3_4), .Y(
        \mag_buffer_3[20] ));
    MX2 \data_buffer_RNIU7EA89[8]  (.A(N_500), .B(
        \data_buffer[8]_net_1 ), .S(data_buffer_4_sn_N_2_0), .Y(
        \data_buffer_4[8] ));
    MX2 \data_buffer_RNIEA2089[35]  (.A(N_527), .B(
        \data_buffer[35]_net_1 ), .S(data_buffer_4_sn_N_2_1), .Y(
        \data_buffer_4[35] ));
    MX2 \mag_buffer_RNIVPGEH4[70]  (.A(\geig_buffer_3[70] ), .B(
        \mag_buffer_3[70] ), .S(num_cycles11_2), .Y(N_562));
    MX2 \geig_buffer_RNID1J44[32]  (.A(\geig_buffer[32]_net_1 ), .B(
        constant_sensor_data_0_G_DATA_STACK_31), .S(geig_buffer3_3), 
        .Y(\geig_buffer_3[32] ));
    MX2 \mag_buffer_RNI61RCH4[21]  (.A(\geig_buffer_3[21] ), .B(
        \mag_buffer_3[21] ), .S(num_cycles11_0), .Y(N_513));
    MX2 \col_out_RNO[0]  (.A(read_address_traversal_0_COL_READ_OUT[0]), 
        .B(write_address_traversal_0_COL_WRITE_OUT[0]), .S(
        un1_schedule_21), .Y(\col_out_9[0] ));
    NOR2 \write_count_RNI87QAM4_0[0]  (.A(num_cycles10), .B(
        num_cycles11), .Y(data_buffer_4_sn_N_2_0));
    MX2 \mag_buffer_RNIH71G42[9]  (.A(\mag_buffer[9]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_7), .S(mag_buffer3_3), .Y(
        \mag_buffer_3[9] ));
    MX2 \data_buffer_RNO[19]  (.A(\data_buffer_4[19] ), .B(
        \data_buffer_4[35] ), .S(data_buffer_0_sqmuxa_0), .Y(
        \data_buffer_7[19] ));
    XO1 \mag_prev_RNIOI8R1[59]  (.A(
        constant_sensor_data_0_M_DATA_STACK_57), .B(
        \mag_prev[59]_net_1 ), .C(un1_MAG_DATA_10), .Y(
        un1_MAG_DATA_NE_8));
    DFN1E1 \data_buffer[5]  (.D(\data_buffer_7[5] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(num_cycles15_0), .Q(
        \data_buffer[5]_net_1 ));
    DFN1E1 \data_buffer[58]  (.D(\data_buffer_7[58] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(num_cycles15_2), .Q(
        \data_buffer[58]_net_1 ));
    MX2 \data_buffer_RNIR8LR39[53]  (.A(N_545), .B(
        \data_buffer[53]_net_1 ), .S(data_buffer_4_sn_N_2_2), .Y(
        \data_buffer_4[53] ));
    DFN1E1 \mag_buffer[32]  (.D(constant_sensor_data_0_M_DATA_STACK_30)
        , .CLK(reset_pulse_0_CLK_OUT_48MHZ), .E(mag_buffer3_1), .Q(
        \mag_buffer[32]_net_1 ));
    XOR2 un1_write_count_4_I_14 (.A(\write_count[2]_net_1 ), .B(
        \DWACT_ADD_CI_0_g_array_1[0] ), .Y(I_14_3));
    MX2 \mag_buffer_RNIA1NCH4[13]  (.A(\geig_buffer_3[13] ), .B(
        \mag_buffer_3[13] ), .S(num_cycles11_0), .Y(N_505));
    XOR2 schedule72_0 (.A(read_address_traversal_0_ROW_READ_OUT[0]), 
        .B(write_address_traversal_0_ROW_WRITE_OUT[0]), .Y(
        schedule72_0_net_1));
    MX2 \mag_buffer_RNIJONH42[64]  (.A(\mag_buffer[64]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_62), .S(mag_buffer3), .Y(
        \mag_buffer_3[64] ));
    NOR2B \schedule_RNIVBJ35_0[2]  (.A(schedule_3_sqmuxa_1_0), .B(
        geig_buffer3), .Y(schedule_3_sqmuxa_1));
    DFN1C0 \geig_prev[19]  (.D(constant_sensor_data_0_G_DATA_STACK_18), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_12)
        , .Q(\geig_prev[19]_net_1 ));
    MX2 \data_buffer_RNO[37]  (.A(\data_buffer_4[37] ), .B(
        \data_buffer_4[53] ), .S(data_buffer_0_sqmuxa_1), .Y(
        \data_buffer_7[37] ));
    DFN1C0 \geig_prev[8]  (.D(constant_sensor_data_0_G_DATA_STACK_7), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_16)
        , .Q(\geig_prev[8]_net_1 ));
    XOR2 \mag_prev_RNIF8GT[18]  (.A(\mag_prev[18]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_16), .Y(un1_MAG_DATA_18));
    NOR2B busy_hold_RNIKR7M3 (.A(cmd_out12), .B(next_write7), .Y(
        data_buffer_0_sqmuxa_0));
    DFN1E1 \mag_buffer[79]  (.D(constant_sensor_data_0_M_DATA_STACK_77)
        , .CLK(reset_pulse_0_CLK_OUT_48MHZ), .E(mag_buffer3_3), .Q(
        \mag_buffer[79]_net_1 ));
    DFN1E1 \mag_buffer[48]  (.D(constant_sensor_data_0_M_DATA_STACK_46)
        , .CLK(reset_pulse_0_CLK_OUT_48MHZ), .E(mag_buffer3_1), .Q(
        \mag_buffer[48]_net_1 ));
    XO1 \mag_prev_RNIMC4R1[17]  (.A(
        constant_sensor_data_0_M_DATA_STACK_15), .B(
        \mag_prev[17]_net_1 ), .C(un1_MAG_DATA_33), .Y(
        un1_MAG_DATA_NE_28));
    MX2B \schedule_RNO[2]  (.A(\schedule_21[4] ), .B(
        \un1_schedule_8_m[0] ), .S(un1_num_cycles17), .Y(
        \schedule_29[2] ));
    DFN1E1 \mag_buffer[25]  (.D(constant_sensor_data_0_M_DATA_STACK_23)
        , .CLK(reset_pulse_0_CLK_OUT_48MHZ), .E(mag_buffer3_0), .Q(
        \mag_buffer[25]_net_1 ));
    XOR2 \mag_prev_RNIDGQT[62]  (.A(\mag_prev[62]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_60), .Y(un1_MAG_DATA_62));
    AO1A \schedule_RNIIGBL82[3]  (.A(\schedule_9[0] ), .B(
        mag_buffer3_3), .C(\schedule_3[1] ), .Y(\schedule_15[1] ));
    OA1C read_prev_RNI3T1JD2 (.A(schedule56), .B(\schedule_15[1] ), .C(
        \schedule_9[0] ), .Y(\un1_schedule_7_m[0] ));
    DFN1C0 \geig_prev[29]  (.D(constant_sensor_data_0_G_DATA_STACK_28), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_13)
        , .Q(\geig_prev[29]_net_1 ));
    NOR2A \data_buffer_RNO[73]  (.A(\data_buffer_4[73] ), .B(
        data_buffer_0_sqmuxa), .Y(\data_buffer_7[73] ));
    DFN1E1 \data_buffer[40]  (.D(\data_buffer_7[40] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(num_cycles15_2), .Q(
        \data_buffer[40]_net_1 ));
    OR3 \mag_prev_RNILD7B8[15]  (.A(un1_MAG_DATA_NE_34), .B(
        un1_MAG_DATA_NE_33), .C(un1_MAG_DATA_NE_54), .Y(
        un1_MAG_DATA_NE_63));
    OA1 \geig_prev_RNI40JU3_4[12]  (.A(un1_GEIG_DATA_NE_38), .B(
        un1_GEIG_DATA_NE_39), .C(reset_pulse_0_RESET_0), .Y(
        geig_buffer3_3));
    DFN1E1 \geig_buffer[50]  (.D(
        constant_sensor_data_0_G_DATA_STACK_0[1]), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(geig_buffer3_1), .Q(
        \geig_buffer[50]_net_1 ));
    MX2 \mag_buffer_RNIFMPH42[71]  (.A(\mag_buffer[71]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_69), .S(mag_buffer3), .Y(
        \mag_buffer_3[71] ));
    XOR2 \geig_prev_RNIM1B2[37]  (.A(\geig_prev[37]_net_1 ), .B(
        constant_sensor_data_0_G_DATA_STACK_36), .Y(un1_GEIG_DATA_37));
    OA1A \write_count_RNO[2]  (.A(num_cycles15_0), .B(cmd_out13_NE), 
        .C(I_14_3), .Y(\write_count_6[2] ));
    DFN1E1 \data_buffer[44]  (.D(\data_buffer_7[44] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(num_cycles15_2), .Q(
        \data_buffer[44]_net_1 ));
    XO1 schedule72_NE_1 (.A(write_address_traversal_0_ROW_WRITE_OUT[5])
        , .B(read_address_traversal_0_ROW_READ_OUT[5]), .C(
        schedule72_4_net_1), .Y(schedule72_NE_1_net_1));
    OA1 \mag_prev_RNI58VU32_4[17]  (.A(un1_MAG_DATA_NE_69), .B(
        un1_MAG_DATA_NE_70), .C(reset_pulse_0_RESET_0), .Y(
        mag_buffer3_5));
    OA1 \mag_prev_RNI58VU32[17]  (.A(un1_MAG_DATA_NE_69), .B(
        un1_MAG_DATA_NE_70), .C(reset_pulse_0_RESET_0), .Y(
        mag_buffer3_0));
    AO1D \schedule_RNI2OUA05[3]  (.A(\schedule_15[3] ), .B(
        \schedule_9[2] ), .C(schedule50), .Y(un1_schedule50_1));
    DFN1C0 \geig_prev[15]  (.D(constant_sensor_data_0_G_DATA_STACK_14), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_12)
        , .Q(\geig_prev[15]_net_1 ));
    DFN1E1 \data_buffer[77]  (.D(\data_buffer_7[77] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(num_cycles15), .Q(
        \data_buffer[77]_net_1 ));
    DFN1E1 \geig_buffer[44]  (.D(
        constant_sensor_data_0_G_DATA_STACK_43), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(geig_buffer3_1), .Q(
        \geig_buffer[44]_net_1 ));
    DFN1E1 \data_buffer[0]  (.D(\data_buffer_7[0] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(num_cycles15_0), .Q(
        \data_buffer[0]_net_1 ));
    XOR2 \geig_prev_RNIIVC2[44]  (.A(\geig_prev[44]_net_1 ), .B(
        constant_sensor_data_0_G_DATA_STACK_43), .Y(un1_GEIG_DATA_44));
    DFN1E1 \data_buffer[32]  (.D(\data_buffer_7[32] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(num_cycles15_1), .Q(
        \data_buffer[32]_net_1 ));
    XOR2 \mag_prev_RNIBGST[70]  (.A(\mag_prev[70]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_68), .Y(un1_MAG_DATA_70));
    DFN1C0 \mag_prev[41]  (.D(constant_sensor_data_0_M_DATA_STACK_39), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_21)
        , .Q(\mag_prev[41]_net_1 ));
    DFN1E1 \geig_buffer[36]  (.D(
        constant_sensor_data_0_G_DATA_STACK_35), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(geig_buffer3_1), .Q(
        \geig_buffer[36]_net_1 ));
    XOR2 \mag_prev_RNILIKT[39]  (.A(\mag_prev[39]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_37), .Y(un1_MAG_DATA_39));
    MX2 \data_buffer_RNO[12]  (.A(\data_buffer_4[12] ), .B(
        \data_buffer_4[28] ), .S(data_buffer_0_sqmuxa_0), .Y(
        \data_buffer_7[12] ));
    DFN1C0 \geig_prev[30]  (.D(constant_sensor_data_0_G_DATA_STACK_29), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_13)
        , .Q(\geig_prev[30]_net_1 ));
    DFN1E1 \geig_buffer[39]  (.D(
        constant_sensor_data_0_G_DATA_STACK_38), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(geig_buffer3_1), .Q(
        \geig_buffer[39]_net_1 ));
    OR3A read_prev_RNI40BGL7 (.A(schedule56), .B(un1_schedule50_1), .C(
        schedule_2_sqmuxa_2_1), .Y(N_488));
    DFN1E1 \data_buffer[10]  (.D(\data_buffer_7[10] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(num_cycles15_0), .Q(
        \data_buffer[10]_net_1 ));
    MX2 \row_out_RNO[7]  (.A(read_address_traversal_0_ROW_READ_OUT[7]), 
        .B(write_address_traversal_0_ROW_WRITE_OUT[7]), .S(
        un1_schedule_21_0), .Y(\row_out_9[7] ));
    MX2 \geig_buffer_RNI5B6H4[2]  (.A(\geig_buffer[2]_net_1 ), .B(
        constant_sensor_data_0_G_DATA_STACK_0_d0), .S(geig_buffer3), 
        .Y(\geig_buffer_3[2] ));
    DFN1E1 \data_buffer[28]  (.D(\data_buffer_7[28] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(num_cycles15_1), .Q(
        \data_buffer[28]_net_1 ));
    MX2 \geig_buffer_RNID3L44[41]  (.A(\geig_buffer[41]_net_1 ), .B(
        constant_sensor_data_0_G_DATA_STACK_40), .S(geig_buffer3_4), 
        .Y(\geig_buffer_3[41] ));
    DFN1C0 \mag_prev[44]  (.D(constant_sensor_data_0_M_DATA_STACK_42), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_21)
        , .Q(\mag_prev[44]_net_1 ));
    DFN1C0 \geig_prev[25]  (.D(constant_sensor_data_0_G_DATA_STACK_24), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_13)
        , .Q(\geig_prev[25]_net_1 ));
    DFN1E1 \data_buffer[62]  (.D(\data_buffer_7[62] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(num_cycles15), .Q(
        \data_buffer[62]_net_1 ));
    DFN1E1 \data_buffer[14]  (.D(\data_buffer_7[14] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(num_cycles15_0), .Q(
        \data_buffer[14]_net_1 ));
    OR3 \mag_prev_RNI0DVA7[24]  (.A(un1_MAG_DATA_NE_14), .B(
        un1_MAG_DATA_NE_13), .C(un1_MAG_DATA_NE_44), .Y(
        un1_MAG_DATA_NE_58));
    MX2 \data_buffer_RNIBSMV79[10]  (.A(N_502), .B(
        \data_buffer[10]_net_1 ), .S(data_buffer_4_sn_N_2_0), .Y(
        \data_buffer_4[10] ));
    XO1 \geig_prev_RNIQGL4[33]  (.A(
        constant_sensor_data_0_G_DATA_STACK_32), .B(
        \geig_prev[33]_net_1 ), .C(un1_GEIG_DATA_32), .Y(
        un1_GEIG_DATA_NE_39_0));
    DFN1C0 \mag_prev[22]  (.D(constant_sensor_data_0_M_DATA_STACK_20), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_20)
        , .Q(\mag_prev[22]_net_1 ));
    MX2 \geig_buffer_RNIQ4LE4[54]  (.A(\geig_buffer[54]_net_1 ), .B(
        constant_sensor_data_0_G_DATA_STACK_0[1]), .S(geig_buffer3_4), 
        .Y(\geig_buffer_3[54] ));
    DFN1E1C0 \row_out[10]  (.D(\row_out_9[10] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_7), .E(
        un1_next_write8_1), .Q(memory_controller_0_ROW_OUT[10]));
    DFN1E1 \data_buffer[52]  (.D(\data_buffer_7[52] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(num_cycles15_2), .Q(
        \data_buffer[52]_net_1 ));
    NOR2B \data_buffer_RNI12BIM4[5]  (.A(\data_buffer[5]_net_1 ), .B(
        data_buffer_4_sn_N_2), .Y(\data_buffer_4[5] ));
    MX2 \data_buffer_RNIVGNV79[14]  (.A(N_506), .B(
        \data_buffer[14]_net_1 ), .S(data_buffer_4_sn_N_2_0), .Y(
        \data_buffer_4[14] ));
    XOR2 \mag_prev_RNIB6IT[25]  (.A(\mag_prev[25]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_23), .Y(un1_MAG_DATA_25));
    MX2 \col_out_RNO[5]  (.A(read_address_traversal_0_COL_READ_OUT[5]), 
        .B(write_address_traversal_0_COL_WRITE_OUT[5]), .S(
        un1_schedule_21), .Y(\col_out_9[5] ));
    DFN1E1 \mag_buffer[44]  (.D(constant_sensor_data_0_M_DATA_STACK_42)
        , .CLK(reset_pulse_0_CLK_OUT_48MHZ), .E(mag_buffer3_1), .Q(
        \mag_buffer[44]_net_1 ));
    DFN1C0 \geig_prev[14]  (.D(constant_sensor_data_0_G_DATA_STACK_13), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_12)
        , .Q(\geig_prev[14]_net_1 ));
    MX2 \mag_buffer_RNI2URCH4[28]  (.A(\geig_buffer_3[28] ), .B(
        \mag_buffer_3[28] ), .S(num_cycles11_1), .Y(N_520));
    NOR2B busy_hold_RNIKR7M3_0 (.A(cmd_out12), .B(next_write7), .Y(
        data_buffer_0_sqmuxa_1));
    DFN1E1 \geig_buffer[35]  (.D(
        constant_sensor_data_0_G_DATA_STACK_34), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(geig_buffer3_1), .Q(
        \geig_buffer[35]_net_1 ));
    MX2 \mag_buffer_RNIQPVCH4[35]  (.A(\geig_buffer_3[35] ), .B(
        \mag_buffer_3[35] ), .S(num_cycles11_1), .Y(N_527));
    MX2 \mag_buffer_RNIFGJH42[44]  (.A(\mag_buffer[44]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_42), .S(mag_buffer3_5), .Y(
        \mag_buffer_3[44] ));
    MX2 \mag_buffer_RNI2PMCH4[11]  (.A(\geig_buffer_3[11] ), .B(
        \mag_buffer_3[11] ), .S(num_cycles11_0), .Y(N_503));
    MX2 \data_buffer_RNIIDN189[70]  (.A(N_562), .B(
        \data_buffer[70]_net_1 ), .S(data_buffer_4_sn_N_2), .Y(
        \data_buffer_4[70] ));
    XO1 \mag_prev_RNI05JR1[51]  (.A(
        constant_sensor_data_0_M_DATA_STACK_49), .B(
        \mag_prev[51]_net_1 ), .C(un1_MAG_DATA_67), .Y(
        un1_MAG_DATA_NE_24));
    MX2 \data_buffer_RNIOGAA89[54]  (.A(N_546), .B(
        \data_buffer[54]_net_1 ), .S(data_buffer_4_sn_N_2_2), .Y(
        \data_buffer_4[54] ));
    MX2 \mag_buffer_RNINUPH42[75]  (.A(\mag_buffer[75]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_73), .S(mag_buffer3), .Y(
        \mag_buffer_3[75] ));
    XO1 \geig_prev_RNII8L4[31]  (.A(
        constant_sensor_data_0_G_DATA_STACK_30), .B(
        \geig_prev[31]_net_1 ), .C(un1_GEIG_DATA_30), .Y(
        un1_GEIG_DATA_NE_39_1));
    MX2 \data_buffer_RNIUEOR39[63]  (.A(N_555), .B(
        \data_buffer[63]_net_1 ), .S(data_buffer_4_sn_N_2), .Y(
        \data_buffer_4[63] ));
    DFN1C0 \mag_prev[32]  (.D(constant_sensor_data_0_M_DATA_STACK_30), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_20)
        , .Q(\mag_prev[32]_net_1 ));
    NOR3 \write_count_RNIV25G[0]  (.A(\write_count[0]_net_1 ), .B(
        \write_count[2]_net_1 ), .C(\write_count[1]_net_1 ), .Y(
        un1_write_count_3));
    NOR2B \schedule_RNIDI3RO4[2]  (.A(write_count_0_sqmuxa_0_net_1), 
        .B(un1_schedule_21), .Y(write_count_0_sqmuxa));
    MX2 \data_buffer_RNO[31]  (.A(\data_buffer_4[31] ), .B(
        \data_buffer_4[47] ), .S(data_buffer_0_sqmuxa_1), .Y(
        \data_buffer_7[31] ));
    MX2 \mag_buffer_RNIJKJH42[46]  (.A(\mag_buffer[46]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_44), .S(mag_buffer3_5), .Y(
        \mag_buffer_3[46] ));
    XOR2 schedule72_10 (.A(read_address_traversal_0_ROW_READ_OUT[10]), 
        .B(write_address_traversal_0_ROW_WRITE_OUT[10]), .Y(
        schedule72_10_net_1));
    NOR3A \geig_buffer_RNITASNC2[1]  (.A(\geig_buffer_3[1] ), .B(
        \schedule_RNIUGQM72[2]_net_1 ), .C(\schedule_RNIRFRF[2]_net_1 )
        , .Y(N_493));
    XOR2 \mag_prev_RNIFIQT[63]  (.A(\mag_prev[63]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_61), .Y(un1_MAG_DATA_63));
    OR3 \geig_prev_RNIIJCS[36]  (.A(un1_GEIG_DATA_NE_39_11), .B(
        un1_GEIG_DATA_NE_39_10), .C(un1_GEIG_DATA_NE_39_19), .Y(
        un1_GEIG_DATA_NE_39_22));
    DFN1C0 \geig_prev[24]  (.D(constant_sensor_data_0_G_DATA_STACK_23), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_13)
        , .Q(\geig_prev[24]_net_1 ));
    MX2 \data_buffer_RNO[29]  (.A(\data_buffer_4[29] ), .B(
        \data_buffer_4[45] ), .S(data_buffer_0_sqmuxa_0), .Y(
        \data_buffer_7[29] ));
    MX2 \mag_buffer_RNIBELH42[51]  (.A(\mag_buffer[51]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_49), .S(mag_buffer3_5), .Y(
        \mag_buffer_3[51] ));
    DFN1E1C0 \col_out[1]  (.D(\col_out_9[1] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_2), .E(
        un1_next_write8_1_0), .Q(memory_controller_0_COL_OUT[1]));
    XOR2 \mag_prev_RNI30KT[30]  (.A(\mag_prev[30]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_28), .Y(un1_MAG_DATA_30));
    DFN1E1 \data_buffer[36]  (.D(\data_buffer_7[36] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(num_cycles15_1), .Q(
        \data_buffer[36]_net_1 ));
    DFN1E1 \mag_buffer[18]  (.D(constant_sensor_data_0_M_DATA_STACK_16)
        , .CLK(reset_pulse_0_CLK_OUT_48MHZ), .E(mag_buffer3_0), .Q(
        \mag_buffer[18]_net_1 ));
    DFN1E1C0 \row_out[3]  (.D(\row_out_9[3] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_4), .E(
        un1_next_write8_1), .Q(memory_controller_0_ROW_OUT[3]));
    XO1 \mag_prev_RNI6PRO1[58]  (.A(
        constant_sensor_data_0_M_DATA_STACK_56), .B(
        \mag_prev[58]_net_1 ), .C(un1_MAG_DATA_9), .Y(
        un1_MAG_DATA_NE_10));
    MX2 \geig_buffer_RNI9PE44[12]  (.A(\geig_buffer[12]_net_1 ), .B(
        constant_sensor_data_0_G_DATA_STACK_11), .S(geig_buffer3_2), 
        .Y(\geig_buffer_3[12] ));
    OR2 next_write_RNO (.A(write_count_0_sqmuxa_1), .B(
        next_write_1_sqmuxa), .Y(un1_write_count_0_sqmuxa_3));
    MX2 \mag_buffer_RNIJIHH42[37]  (.A(\mag_buffer[37]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_35), .S(mag_buffer3_4), .Y(
        \mag_buffer_3[37] ));
    DFN1E1 \geig_buffer[68]  (.D(
        constant_sensor_data_0_G_DATA_STACK_0[1]), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(geig_buffer3_2), .Q(
        \geig_buffer[68]_net_1 ));
    MX2 \mag_buffer_RNIRULH42[59]  (.A(\mag_buffer[59]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_57), .S(mag_buffer3_5), .Y(
        \mag_buffer_3[59] ));
    AND2 un1_write_count_4_I_1 (.A(\write_count[0]_net_1 ), .B(
        write_count_0_sqmuxa_1), .Y(\DWACT_ADD_CI_0_TMP[0] ));
    XO1 \mag_prev_RNIK82R1[12]  (.A(
        constant_sensor_data_0_M_DATA_STACK_10), .B(
        \mag_prev[12]_net_1 ), .C(un1_MAG_DATA_28), .Y(
        un1_MAG_DATA_NE_4));
    AOI1A cmd_out12_0_I_7 (.A(\ACT_LT3_E[3] ), .B(\ACT_LT3_E[4] ), .C(
        \ACT_LT3_E[5] ), .Y(cmd_out12));
    OR3 \mag_prev_RNI0NED7[44]  (.A(un1_MAG_DATA_NE_6), .B(
        un1_MAG_DATA_NE_5), .C(un1_MAG_DATA_NE_40), .Y(
        un1_MAG_DATA_NE_56));
    OR2 \num_cycles_RNIIREP[0]  (.A(\num_cycles[0]_net_1 ), .B(
        un1_write_count_3), .Y(\num_cycles_2[2] ));
    DFN1E1 \data_buffer[66]  (.D(\data_buffer_7[66] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(num_cycles15), .Q(
        \data_buffer[66]_net_1 ));
    DFN1C0 \mag_prev[69]  (.D(constant_sensor_data_0_M_DATA_STACK_67), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_22)
        , .Q(\mag_prev[69]_net_1 ));
    MX2 \mag_buffer_RNIV6QH42[79]  (.A(\mag_buffer[79]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_77), .S(mag_buffer3), .Y(
        \mag_buffer_3[79] ));
    DFN1C0 \geig_prev[12]  (.D(constant_sensor_data_0_G_DATA_STACK_11), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_12)
        , .Q(\geig_prev[12]_net_1 ));
    NOR2A \geig_prev_RNISTKI1[12]  (.A(reset_pulse_0_RESET), .B(
        un1_GEIG_DATA_NE_38), .Y(un1_schedule_20_a0_0));
    MX2 \data_buffer_RNO[13]  (.A(\data_buffer_4[13] ), .B(
        \data_buffer_4[29] ), .S(data_buffer_0_sqmuxa_0), .Y(
        \data_buffer_7[13] ));
    NOR2A \data_buffer_RNO[77]  (.A(\data_buffer_4[77] ), .B(
        data_buffer_0_sqmuxa), .Y(\data_buffer_7[77] ));
    DFN1C0 \geig_prev[38]  (.D(constant_sensor_data_0_G_DATA_STACK_37), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_13)
        , .Q(\geig_prev[38]_net_1 ));
    NOR2B \mag_buffer_RNI3IG8D4[51]  (.A(\mag_buffer_3[51] ), .B(
        num_cycles11), .Y(N_543));
    XOR2 \geig_prev_RNIMT62[19]  (.A(\geig_prev[19]_net_1 ), .B(
        constant_sensor_data_0_G_DATA_STACK_18), .Y(un1_GEIG_DATA_19));
    XO1 \geig_prev_RNIM8H4[22]  (.A(
        constant_sensor_data_0_G_DATA_STACK_21), .B(
        \geig_prev[22]_net_1 ), .C(un1_GEIG_DATA_23), .Y(
        un1_GEIG_DATA_NE_38_0));
    MX2 \mag_buffer_RNIB6DH42[15]  (.A(\mag_buffer[15]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_13), .S(mag_buffer3_3), .Y(
        \mag_buffer_3[15] ));
    MX2 \mag_buffer_RNIEDVCH4[32]  (.A(\geig_buffer_3[32] ), .B(
        \mag_buffer_3[32] ), .S(num_cycles11_1), .Y(N_524));
    XOR2 \mag_prev_RNI9CQT[60]  (.A(\mag_prev[60]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_58), .Y(un1_MAG_DATA_60));
    DFN1E1 \data_buffer[33]  (.D(\data_buffer_7[33] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(num_cycles15_1), .Q(
        \data_buffer[33]_net_1 ));
    DFN1E1 \data_buffer[56]  (.D(\data_buffer_7[56] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(num_cycles15_2), .Q(
        \data_buffer[56]_net_1 ));
    OR3 \mag_prev_RNICBND7[22]  (.A(un1_MAG_DATA_NE_18), .B(
        un1_MAG_DATA_NE_17), .C(un1_MAG_DATA_NE_46), .Y(
        un1_MAG_DATA_NE_59));
    DFN1E1 \data_buffer[22]  (.D(\data_buffer_7[22] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(num_cycles15_1), .Q(
        \data_buffer[22]_net_1 ));
    XO1 \geig_prev_RNI61Q4[45]  (.A(
        constant_sensor_data_0_G_DATA_STACK_44), .B(
        \geig_prev[45]_net_1 ), .C(un1_GEIG_DATA_44), .Y(
        un1_GEIG_DATA_NE_39_6));
    DFN1C0 \mag_prev[18]  (.D(constant_sensor_data_0_M_DATA_STACK_16), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_20)
        , .Q(\mag_prev[18]_net_1 ));
    MX2 \data_buffer_RNIEF7089[44]  (.A(N_536), .B(
        \data_buffer[44]_net_1 ), .S(data_buffer_4_sn_N_2_2), .Y(
        \data_buffer_4[44] ));
    MX2 \geig_buffer_RNI5LE44[10]  (.A(\geig_buffer[10]_net_1 ), .B(
        constant_sensor_data_0_G_DATA_STACK_9), .S(geig_buffer3_2), .Y(
        \geig_buffer_3[10] ));
    OA1 \write_count_RNIO3RM82_1[0]  (.A(\schedule_RNIUGQM72[2]_net_1 )
        , .B(\schedule_RNIRFRF[2]_net_1 ), .C(un1_write_count_3), .Y(
        num_cycles11_2));
    NOR2A busy_hold_RNI9P9K_0 (.A(busy_hold_net_1), .B(
        sdram_interface_0_STATUS), .Y(next_write7));
    DFN1C0 \geig_prev[11]  (.D(constant_sensor_data_0_G_DATA_STACK_10), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_12)
        , .Q(\geig_prev[11]_net_1 ));
    MX2 \mag_buffer_RNIAD3DH4[40]  (.A(\geig_buffer_3[40] ), .B(
        \mag_buffer_3[40] ), .S(num_cycles11_1), .Y(N_532));
    MX2 \data_buffer_RNIJF2089[36]  (.A(N_528), .B(
        \data_buffer[36]_net_1 ), .S(data_buffer_4_sn_N_2_1), .Y(
        \data_buffer_4[36] ));
    MX2 \geig_buffer_RNIH1F44[16]  (.A(\geig_buffer[16]_net_1 ), .B(
        constant_sensor_data_0_G_DATA_STACK_15), .S(geig_buffer3_2), 
        .Y(\geig_buffer_3[16] ));
    DFN1C0 \write_count[1]  (.D(I_12_3), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_16), .Q(
        \write_count[1]_net_1 ));
    DFN1C0 \geig_prev[22]  (.D(constant_sensor_data_0_G_DATA_STACK_21), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_12)
        , .Q(\geig_prev[22]_net_1 ));
    MX2 \mag_buffer_RNIBGNH42[60]  (.A(\mag_buffer[60]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_58), .S(mag_buffer3_5), .Y(
        \mag_buffer_3[60] ));
    DFN1E1 \data_buffer[49]  (.D(\data_buffer_7[49] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(num_cycles15_2), .Q(
        \data_buffer[49]_net_1 ));
    DFN1C0 \mag_prev[58]  (.D(constant_sensor_data_0_M_DATA_STACK_56), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_21)
        , .Q(\mag_prev[58]_net_1 ));
    DFN1E1 \data_buffer[63]  (.D(\data_buffer_7[63] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(num_cycles15), .Q(
        \data_buffer[63]_net_1 ));
    MX2 \row_out_RNO[0]  (.A(read_address_traversal_0_ROW_READ_OUT[0]), 
        .B(write_address_traversal_0_ROW_WRITE_OUT[0]), .S(
        un1_schedule_21_0), .Y(\row_out_9[0] ));
    DFN1C0 \mag_prev[20]  (.D(constant_sensor_data_0_M_DATA_STACK_18), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_20)
        , .Q(\mag_prev[20]_net_1 ));
    DFN1E1 \mag_buffer[51]  (.D(constant_sensor_data_0_M_DATA_STACK_49)
        , .CLK(reset_pulse_0_CLK_OUT_48MHZ), .E(mag_buffer3_2), .Q(
        \mag_buffer[51]_net_1 ));
    MX2 \mag_buffer_RNI2QDEH4[62]  (.A(\geig_buffer_3[62] ), .B(
        \mag_buffer_3[62] ), .S(num_cycles11_2), .Y(N_554));
    MX2 \geig_buffer_RNI7NE44[11]  (.A(\geig_buffer[11]_net_1 ), .B(
        constant_sensor_data_0_G_DATA_STACK_10), .S(geig_buffer3_2), 
        .Y(\geig_buffer_3[11] ));
    MX2 \row_out_RNO[10]  (.A(
        read_address_traversal_0_ROW_READ_OUT[10]), .B(
        write_address_traversal_0_ROW_WRITE_OUT[10]), .S(
        un1_schedule_21_0), .Y(\row_out_9[10] ));
    XOR2 \geig_prev_RNIM3D2[46]  (.A(\geig_prev[46]_net_1 ), .B(
        constant_sensor_data_0_G_DATA_STACK_45), .Y(un1_GEIG_DATA_46));
    XOR2 \mag_prev_RNI5UFT[13]  (.A(\mag_prev[13]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_11), .Y(un1_MAG_DATA_13));
    MX2 \data_buffer_RNIE5J189[60]  (.A(N_552), .B(
        \data_buffer[60]_net_1 ), .S(data_buffer_4_sn_N_2_2), .Y(
        \data_buffer_4[60] ));
    MX2 \mag_buffer_RNI65VCH4[30]  (.A(\geig_buffer_3[30] ), .B(
        \mag_buffer_3[30] ), .S(num_cycles11_1), .Y(N_522));
    DFN1C0 \mag_prev[63]  (.D(constant_sensor_data_0_M_DATA_STACK_61), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_22)
        , .Q(\mag_prev[63]_net_1 ));
    DFN1C0 \geig_prev[47]  (.D(constant_sensor_data_0_G_DATA_STACK_46), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_14)
        , .Q(\geig_prev[47]_net_1 ));
    DFN1E1 \geig_buffer[14]  (.D(
        constant_sensor_data_0_G_DATA_STACK_13), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(geig_buffer3_0), .Q(
        \geig_buffer[14]_net_1 ));
    AO1A \schedule_RNINU3EE2[5]  (.A(schedule34), .B(
        schedule_15_sn_m1_0), .C(\schedule_3[5] ), .Y(N_477));
    MX2 \data_buffer_RNO[22]  (.A(\data_buffer_4[22] ), .B(
        \data_buffer_4[38] ), .S(data_buffer_0_sqmuxa_0), .Y(
        \data_buffer_7[22] ));
    DFN1E1 \data_buffer[53]  (.D(\data_buffer_7[53] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(num_cycles15_2), .Q(
        \data_buffer[53]_net_1 ));
    OA1C \schedule_RNIQN92Q2[7]  (.A(\schedule[7]_net_1 ), .B(
        schedule_3_sqmuxa), .C(schedule_15_sn_N_3), .Y(
        \schedule_15_i_m_0[7] ));
    MX2 \mag_buffer_RNIHOPH42[72]  (.A(\mag_buffer[72]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_70), .S(mag_buffer3), .Y(
        \mag_buffer_3[72] ));
    MX2 \geig_buffer_RNIPVQ54[60]  (.A(\geig_buffer[60]_net_1 ), .B(
        constant_sensor_data_0_G_DATA_STACK_0_d0), .S(geig_buffer3_4), 
        .Y(\geig_buffer_3[60] ));
    DFN1C0 \geig_prev[21]  (.D(constant_sensor_data_0_G_DATA_STACK_20), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_12)
        , .Q(\geig_prev[21]_net_1 ));
    MX2 \data_buffer_RNI2UN189[74]  (.A(N_566), .B(
        \data_buffer[74]_net_1 ), .S(data_buffer_4_sn_N_2), .Y(
        \data_buffer_4[74] ));
    DFN1C0 \mag_prev[8]  (.D(constant_sensor_data_0_M_DATA_STACK_6), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_19)
        , .Q(\mag_prev[8]_net_1 ));
    MX2 \mag_buffer_RNIQ23OH4[8]  (.A(\geig_buffer_3[8] ), .B(
        \mag_buffer_3[8] ), .S(num_cycles11_0), .Y(N_500));
    MX2 \row_out_RNO[12]  (.A(
        read_address_traversal_0_ROW_READ_OUT[12]), .B(
        write_address_traversal_0_ROW_WRITE_OUT[12]), .S(
        un1_schedule_21_0), .Y(\row_out_9[12] ));
    XOR2 \mag_prev_RNIDIST[71]  (.A(\mag_prev[71]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_69), .Y(un1_MAG_DATA_71));
    DFN1E1 \mag_buffer[14]  (.D(constant_sensor_data_0_M_DATA_STACK_12)
        , .CLK(reset_pulse_0_CLK_OUT_48MHZ), .E(mag_buffer3_0), .Q(
        \mag_buffer[14]_net_1 ));
    MX2 \row_out_RNO[3]  (.A(read_address_traversal_0_ROW_READ_OUT[3]), 
        .B(write_address_traversal_0_ROW_WRITE_OUT[3]), .S(
        un1_schedule_21_0), .Y(\row_out_9[3] ));
    CLKINT next_write_RNI2G2D (.A(next_write_i), .Y(
        memory_controller_0_NEXT_WRITE));
    MX2 \mag_buffer_RNIHMNH42[63]  (.A(\mag_buffer[63]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_61), .S(mag_buffer3_5), .Y(
        \mag_buffer_3[63] ));
    NOR3 busy_hold_RNO (.A(write_count_0_sqmuxa_1), .B(
        next_read_0_sqmuxa), .C(un1_next_write8_1), .Y(
        un1_next_write8_3));
    DFN1E1 \geig_buffer[42]  (.D(
        constant_sensor_data_0_G_DATA_STACK_41), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(geig_buffer3_1), .Q(
        \geig_buffer[42]_net_1 ));
    DFN1E1 \geig_buffer[24]  (.D(
        constant_sensor_data_0_G_DATA_STACK_23), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(geig_buffer3_0), .Q(
        \geig_buffer[24]_net_1 ));
    DFN1E1C0 \data_out[7]  (.D(\data_buffer_4[7] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_5), .E(
        next_write_1_sqmuxa), .Q(memory_controller_0_DATA_OUT[7]));
    DFN1C0 \mag_prev[30]  (.D(constant_sensor_data_0_M_DATA_STACK_28), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_20)
        , .Q(\mag_prev[30]_net_1 ));
    MX2 \geig_buffer_RNIBRE44[13]  (.A(\geig_buffer[13]_net_1 ), .B(
        constant_sensor_data_0_G_DATA_STACK_12), .S(geig_buffer3_2), 
        .Y(\geig_buffer_3[13] ));
    DFN1E1 \mag_buffer[76]  (.D(constant_sensor_data_0_M_DATA_STACK_74)
        , .CLK(reset_pulse_0_CLK_OUT_48MHZ), .E(mag_buffer3_3), .Q(
        \mag_buffer[76]_net_1 ));
    DFN1E1 \data_buffer[19]  (.D(\data_buffer_7[19] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(num_cycles15_1), .Q(
        \data_buffer[19]_net_1 ));
    MX2 \data_buffer_RNO[49]  (.A(\data_buffer_4[49] ), .B(
        \data_buffer_4[65] ), .S(data_buffer_0_sqmuxa_1), .Y(
        \data_buffer_7[49] ));
    XO1 \mag_prev_RNI25HR1[47]  (.A(
        constant_sensor_data_0_M_DATA_STACK_45), .B(
        \mag_prev[47]_net_1 ), .C(un1_MAG_DATA_63), .Y(
        un1_MAG_DATA_NE_34));
    NOR2B \mag_buffer_RNIHUE8D4[49]  (.A(\mag_buffer_3[49] ), .B(
        num_cycles11), .Y(N_541));
    MX2 \geig_buffer_RNIBVI44[31]  (.A(\geig_buffer[31]_net_1 ), .B(
        constant_sensor_data_0_G_DATA_STACK_30), .S(geig_buffer3_3), 
        .Y(\geig_buffer_3[31] ));
    DFN1E1 \geig_buffer[58]  (.D(
        constant_sensor_data_0_G_DATA_STACK_0[1]), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(geig_buffer3_2), .Q(
        \geig_buffer[58]_net_1 ));
    MX2 \geig_buffer_RNIN7F44[19]  (.A(\geig_buffer[19]_net_1 ), .B(
        constant_sensor_data_0_G_DATA_STACK_18), .S(geig_buffer3_3), 
        .Y(\geig_buffer_3[19] ));
    DFN1E1 \data_buffer[41]  (.D(\data_buffer_7[41] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(num_cycles15_2), .Q(
        \data_buffer[41]_net_1 ));
    DFN1C0 \mag_prev[0]  (.D(constant_sensor_data_0_M_DATA_STACK_0), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_19)
        , .Q(\mag_prev[6] ));
    DFN1E1 \mag_buffer[61]  (.D(constant_sensor_data_0_M_DATA_STACK_59)
        , .CLK(reset_pulse_0_CLK_OUT_48MHZ), .E(mag_buffer3_2), .Q(
        \mag_buffer[61]_net_1 ));
    NOR2 \schedule_RNI845L[4]  (.A(\schedule_3[4] ), .B(
        \schedule_3[5] ), .Y(un1_schedule_6));
    XOR2 \mag_prev_RNI70GT[14]  (.A(\mag_prev[14]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_12), .Y(un1_MAG_DATA_14));
    MX2 \data_buffer_RNO[5]  (.A(\data_buffer_4[5] ), .B(
        \data_buffer_4[21] ), .S(data_buffer_0_sqmuxa_2), .Y(
        \data_buffer_7[5] ));
    DFN1E1 \data_buffer[4]  (.D(\data_buffer_7[4] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(num_cycles15_0), .Q(
        \data_buffer[4]_net_1 ));
    MX2 \data_buffer_RNO[59]  (.A(\data_buffer_4[59] ), .B(
        \data_buffer_4[75] ), .S(data_buffer_0_sqmuxa_2), .Y(
        \data_buffer_7[59] ));
    DFN1E1 \mag_buffer[77]  (.D(constant_sensor_data_0_M_DATA_STACK_75)
        , .CLK(reset_pulse_0_CLK_OUT_48MHZ), .E(mag_buffer3_3), .Q(
        \mag_buffer[77]_net_1 ));
    DFN1E1 \data_buffer[26]  (.D(\data_buffer_7[26] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(num_cycles15_1), .Q(
        \data_buffer[26]_net_1 ));
    DFN1C0 \schedule[3]  (.D(\schedule_29[3] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_15), .Q(
        \schedule[3]_net_1 ));
    MX2 \col_out_RNO[8]  (.A(read_address_traversal_0_COL_READ_OUT[8]), 
        .B(write_address_traversal_0_COL_WRITE_OUT[8]), .S(
        un1_schedule_21), .Y(\col_out_9[8] ));
    DFN1E1 \mag_buffer[3]  (.D(constant_sensor_data_0_M_DATA_STACK_0), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .E(mag_buffer3_0), .Q(
        \mag_buffer[3]_net_1 ));
    XOR2 \mag_prev_RNI54MT[40]  (.A(\mag_prev[40]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_38), .Y(un1_MAG_DATA_40));
    DFN1C0 \mag_prev[78]  (.D(constant_sensor_data_0_M_DATA_STACK_76), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_22)
        , .Q(\mag_prev[78]_net_1 ));
    MX2 \data_buffer_RNI0PAA89[56]  (.A(N_548), .B(
        \data_buffer[56]_net_1 ), .S(data_buffer_4_sn_N_2_2), .Y(
        \data_buffer_4[56] ));
    MX2 \row_out_RNO[4]  (.A(read_address_traversal_0_ROW_READ_OUT[4]), 
        .B(write_address_traversal_0_ROW_WRITE_OUT[4]), .S(
        un1_schedule_21_0), .Y(\row_out_9[4] ));
    OR2 next_read_RNO (.A(next_read_1_sqmuxa), .B(next_read_0_sqmuxa), 
        .Y(un1_next_read_0_sqmuxa_1));
    DFN1E1 \mag_buffer[28]  (.D(constant_sensor_data_0_M_DATA_STACK_26)
        , .CLK(reset_pulse_0_CLK_OUT_48MHZ), .E(mag_buffer3_1), .Q(
        \mag_buffer[28]_net_1 ));
    DFN1E1 \geig_buffer[9]  (.D(constant_sensor_data_0_G_DATA_STACK_8), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .E(geig_buffer3), .Q(
        \geig_buffer[9]_net_1 ));
    NOR2B \data_buffer_RNI34BIM4[7]  (.A(\data_buffer[7]_net_1 ), .B(
        data_buffer_4_sn_N_2), .Y(\data_buffer_4[7] ));
    NOR2B \write_count_RNI5A8SN4[2]  (.A(cmd_out13_NE), .B(
        num_cycles15), .Y(schedule_0_sqmuxa_3));
    DFN1E1C0 \data_out[2]  (.D(\data_buffer_4[2] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_5), .E(
        next_write_1_sqmuxa), .Q(memory_controller_0_DATA_OUT[2]));
    XO1 \mag_prev_RNI2LRO1[57]  (.A(
        constant_sensor_data_0_M_DATA_STACK_55), .B(
        \mag_prev[57]_net_1 ), .C(un1_MAG_DATA_8), .Y(
        un1_MAG_DATA_NE_12));
    MX2 \data_buffer_RNIPR6P39[3]  (.A(N_495), .B(
        \data_buffer[3]_net_1 ), .S(data_buffer_4_sn_N_2_0), .Y(
        \data_buffer_4[3] ));
    DFN1E1 \data_buffer[11]  (.D(\data_buffer_7[11] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(num_cycles15_0), .Q(
        \data_buffer[11]_net_1 ));
    DFN1E1C0 \row_out[4]  (.D(\row_out_9[4] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_4), .E(
        un1_next_write8_1), .Q(memory_controller_0_ROW_OUT[4]));
    XOR2 \mag_prev_RNIHCIT[28]  (.A(\mag_prev[28]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_26), .Y(un1_MAG_DATA_28));
    DFN1E1 \mag_buffer[53]  (.D(constant_sensor_data_0_M_DATA_STACK_51)
        , .CLK(reset_pulse_0_CLK_OUT_48MHZ), .E(mag_buffer3_2), .Q(
        \mag_buffer[53]_net_1 ));
    DFN1C0 \mag_prev[9]  (.D(constant_sensor_data_0_M_DATA_STACK_7), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_19)
        , .Q(\mag_prev[9]_net_1 ));
    MX2 \data_buffer_RNIE5TV79[26]  (.A(N_518), .B(
        \data_buffer[26]_net_1 ), .S(data_buffer_4_sn_N_2_1), .Y(
        \data_buffer_4[26] ));
    DFN1E1 \data_buffer[70]  (.D(\data_buffer_7[70] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(num_cycles15), .Q(
        \data_buffer[70]_net_1 ));
    DFN1E1 \mag_buffer[40]  (.D(constant_sensor_data_0_M_DATA_STACK_38)
        , .CLK(reset_pulse_0_CLK_OUT_48MHZ), .E(mag_buffer3_1), .Q(
        \mag_buffer[40]_net_1 ));
    MX2 \data_buffer_RNO[9]  (.A(\data_buffer_4[9] ), .B(
        \data_buffer_4[25] ), .S(data_buffer_0_sqmuxa), .Y(
        \data_buffer_7[9] ));
    NOR2A \data_buffer_RNO[71]  (.A(\data_buffer_4[71] ), .B(
        data_buffer_0_sqmuxa), .Y(\data_buffer_7[71] ));
    DFN1E1 \data_buffer[74]  (.D(\data_buffer_7[74] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(num_cycles15), .Q(
        \data_buffer[74]_net_1 ));
    MX2 \geig_buffer_RNIDVG44[23]  (.A(\geig_buffer[23]_net_1 ), .B(
        constant_sensor_data_0_G_DATA_STACK_22), .S(geig_buffer3_3), 
        .Y(\geig_buffer_3[23] ));
    XO1 schedule72_NE_11 (.A(read_address_traversal_0_COL_READ_OUT[7]), 
        .B(write_address_traversal_0_COL_WRITE_OUT[7]), .C(
        schedule72_8_net_1), .Y(schedule72_NE_11_net_1));
    OR3 \geig_prev_RNIEO5J[45]  (.A(un1_GEIG_DATA_NE_39_7), .B(
        un1_GEIG_DATA_NE_39_6), .C(un1_GEIG_DATA_NE_39_17), .Y(
        un1_GEIG_DATA_NE_39_21));
    DFN1E1C0 \ba_out[1]  (.D(\ba_out_9[1] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_3), .E(
        un1_next_write8_1_0), .Q(memory_controller_0_BA_OUT[1]));
    MX2 \data_buffer_RNIDRLR39[59]  (.A(N_551), .B(
        \data_buffer[59]_net_1 ), .S(data_buffer_4_sn_N_2_2), .Y(
        \data_buffer_4[59] ));
    DFN1E1C0 \row_out[12]  (.D(\row_out_9[12] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_7), .E(
        un1_next_write8_1), .Q(memory_controller_0_ROW_OUT[12]));
    NOR2A \data_buffer_RNO[69]  (.A(\data_buffer_4[69] ), .B(
        data_buffer_0_sqmuxa), .Y(\data_buffer_7[69] ));
    XO1 schedule72_NE_5 (.A(read_address_traversal_0_COL_READ_OUT[5]), 
        .B(write_address_traversal_0_COL_WRITE_OUT[5]), .C(
        schedule72_14_net_1), .Y(schedule72_NE_5_net_1));
    DFN1C0 \mag_prev[65]  (.D(constant_sensor_data_0_M_DATA_STACK_63), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_22)
        , .Q(\mag_prev[65]_net_1 ));
    MX2 \mag_buffer_RNI98HH42[32]  (.A(\mag_buffer[32]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_30), .S(mag_buffer3_4), .Y(
        \mag_buffer_3[32] ));
    DFN1E1 \data_buffer[23]  (.D(\data_buffer_7[23] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(num_cycles15_1), .Q(
        \data_buffer[23]_net_1 ));
    MX2 \data_buffer_RNO[17]  (.A(\data_buffer_4[17] ), .B(
        \data_buffer_4[33] ), .S(data_buffer_0_sqmuxa_0), .Y(
        \data_buffer_7[17] ));
    MX2 \col_out_RNO[7]  (.A(read_address_traversal_0_COL_READ_OUT[7]), 
        .B(write_address_traversal_0_COL_WRITE_OUT[7]), .S(
        un1_schedule_21), .Y(\col_out_9[7] ));
    MX2 \data_buffer_RNI4RSV79[24]  (.A(N_516), .B(
        \data_buffer[24]_net_1 ), .S(data_buffer_4_sn_N_2_1), .Y(
        \data_buffer_4[24] ));
    OA1A \write_count_RNO[0]  (.A(num_cycles15_0), .B(cmd_out13_NE), 
        .C(\DWACT_ADD_CI_0_partial_sum[0] ), .Y(\write_count_6[0] ));
    MX2 \mag_buffer_RNI5R0G42[6]  (.A(\mag_buffer[6]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_0), .S(mag_buffer3_3), .Y(
        \mag_buffer_3[6] ));
    DFN1C0 \mag_prev[27]  (.D(constant_sensor_data_0_M_DATA_STACK_25), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_20)
        , .Q(\mag_prev[27]_net_1 ));
    MX2 \data_buffer_RNO[1]  (.A(\data_buffer_4[1] ), .B(
        \data_buffer_4[17] ), .S(data_buffer_0_sqmuxa_2), .Y(
        \data_buffer_7[1] ));
    XOR2 \mag_prev_RNILQST[75]  (.A(\mag_prev[75]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_73), .Y(un1_MAG_DATA_75));
    MX2 \data_buffer_RNO[23]  (.A(\data_buffer_4[23] ), .B(
        \data_buffer_4[39] ), .S(data_buffer_0_sqmuxa_0), .Y(
        \data_buffer_7[23] ));
    MX2 \mag_buffer_RNIIHVCH4[33]  (.A(\geig_buffer_3[33] ), .B(
        \mag_buffer_3[33] ), .S(num_cycles11_1), .Y(N_525));
    NOR2B \schedule_RNI2G5PL4_1[2]  (.A(reset_pulse_0_RESET_0), .B(
        un1_schedule_21_0), .Y(num_cycles15_0));
    NOR2B \write_count_RNIG3VJD2[0]  (.A(un1_schedule_19), .B(
        un1_write_count_3), .Y(num_cycles10));
    MX2 \data_buffer_RNO[42]  (.A(\data_buffer_4[42] ), .B(
        \data_buffer_4[58] ), .S(data_buffer_0_sqmuxa_1), .Y(
        \data_buffer_7[42] ));
    DFN1E1 \mag_buffer[42]  (.D(constant_sensor_data_0_M_DATA_STACK_40)
        , .CLK(reset_pulse_0_CLK_OUT_48MHZ), .E(mag_buffer3_1), .Q(
        \mag_buffer[42]_net_1 ));
    MX2 \mag_buffer_RNIU63OH4[9]  (.A(\geig_buffer_3[9] ), .B(
        \mag_buffer_3[9] ), .S(num_cycles11_0), .Y(N_501));
    MX2 \data_buffer_RNI9RNV79[16]  (.A(N_508), .B(
        \data_buffer[16]_net_1 ), .S(data_buffer_4_sn_N_2_0), .Y(
        \data_buffer_4[16] ));
    MX2 \data_buffer_RNIE6K189[68]  (.A(N_560), .B(
        \data_buffer[68]_net_1 ), .S(data_buffer_4_sn_N_2), .Y(
        \data_buffer_4[68] ));
    DFN1E1 \mag_buffer[59]  (.D(constant_sensor_data_0_M_DATA_STACK_57)
        , .CLK(reset_pulse_0_CLK_OUT_48MHZ), .E(mag_buffer3_2), .Q(
        \mag_buffer[59]_net_1 ));
    XO1 \geig_prev_RNIA5Q4[48]  (.A(
        constant_sensor_data_0_G_DATA_STACK_47), .B(
        \geig_prev[48]_net_1 ), .C(un1_GEIG_DATA_43), .Y(
        un1_GEIG_DATA_NE_39_7));
    DFN1E1 \mag_buffer[75]  (.D(constant_sensor_data_0_M_DATA_STACK_73)
        , .CLK(reset_pulse_0_CLK_OUT_48MHZ), .E(mag_buffer3_3), .Q(
        \mag_buffer[75]_net_1 ));
    MX2 \data_buffer_RNIALIR39[49]  (.A(N_541), .B(
        \data_buffer[49]_net_1 ), .S(data_buffer_4_sn_N_2_2), .Y(
        \data_buffer_4[49] ));
    DFN1E1 \mag_buffer[63]  (.D(constant_sensor_data_0_M_DATA_STACK_61)
        , .CLK(reset_pulse_0_CLK_OUT_48MHZ), .E(mag_buffer3_2), .Q(
        \mag_buffer[63]_net_1 ));
    XOR2 \geig_prev_RNIGRA2[34]  (.A(\geig_prev[34]_net_1 ), .B(
        constant_sensor_data_0_G_DATA_STACK_33), .Y(un1_GEIG_DATA_34));
    MX2 \data_buffer_RNIQLN189[72]  (.A(N_564), .B(
        \data_buffer[72]_net_1 ), .S(data_buffer_4_sn_N_2), .Y(
        \data_buffer_4[72] ));
    XOR2 \geig_prev_RNIEN82[24]  (.A(\geig_prev[24]_net_1 ), .B(
        constant_sensor_data_0_G_DATA_STACK_23), .Y(un1_GEIG_DATA_24));
    OR3 \mag_prev_RNI41LD7[17]  (.A(un1_MAG_DATA_NE_28), .B(
        un1_MAG_DATA_NE_27), .C(un1_MAG_DATA_NE_49), .Y(
        un1_MAG_DATA_NE_61));
    DFN1C0 \mag_prev[37]  (.D(constant_sensor_data_0_M_DATA_STACK_35), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_21)
        , .Q(\mag_prev[37]_net_1 ));
    OA1 \geig_prev_RNI40JU3[12]  (.A(un1_GEIG_DATA_NE_38), .B(
        un1_GEIG_DATA_NE_39), .C(reset_pulse_0_RESET_0), .Y(
        geig_buffer3_1));
    MX2 \data_buffer_RNO[52]  (.A(\data_buffer_4[52] ), .B(
        \data_buffer_4[68] ), .S(data_buffer_0_sqmuxa_2), .Y(
        \data_buffer_7[52] ));
    OR3 schedule72_NE_15 (.A(schedule72_12_net_1), .B(
        schedule72_17_net_1), .C(schedule72_NE_7_net_1), .Y(
        schedule72_NE_15_net_1));
    MX2 \geig_buffer_RNI18R54[68]  (.A(\geig_buffer[68]_net_1 ), .B(
        constant_sensor_data_0_G_DATA_STACK_0_d0), .S(geig_buffer3_4), 
        .Y(\geig_buffer_3[68] ));
    DFN1E1 \geig_buffer[70]  (.D(
        constant_sensor_data_0_G_DATA_STACK_0[1]), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(geig_buffer3_2), .Q(
        \geig_buffer[70]_net_1 ));
    MX2 \data_buffer_RNI2V2089[39]  (.A(N_531), .B(
        \data_buffer[39]_net_1 ), .S(data_buffer_4_sn_N_2_1), .Y(
        \data_buffer_4[39] ));
    MX2 \data_buffer_RNIG1NV79[11]  (.A(N_503), .B(
        \data_buffer[11]_net_1 ), .S(data_buffer_4_sn_N_2_0), .Y(
        \data_buffer_4[11] ));
    MX2 \mag_buffer_RNI1N0G42[2]  (.A(\mag_buffer[2]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_0), .S(mag_buffer3_3), .Y(
        \mag_buffer_3[2] ));
    MX2 \data_buffer_RNI952089[34]  (.A(N_526), .B(
        \data_buffer[34]_net_1 ), .S(data_buffer_4_sn_N_2_1), .Y(
        \data_buffer_4[34] ));
    OR2 read_prev_RNI8A9VG9 (.A(un1_schedule_18), .B(num_cycles15), .Y(
        un1_num_cycles15));
    MX2 \geig_buffer_RNIF3J44[33]  (.A(\geig_buffer[33]_net_1 ), .B(
        constant_sensor_data_0_G_DATA_STACK_32), .S(geig_buffer3_3), 
        .Y(\geig_buffer_3[33] ));
    DFN1E1 \geig_buffer[46]  (.D(
        constant_sensor_data_0_G_DATA_STACK_45), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(geig_buffer3_1), .Q(
        \geig_buffer[46]_net_1 ));
    DFN1E1 \mag_buffer[24]  (.D(constant_sensor_data_0_M_DATA_STACK_22)
        , .CLK(reset_pulse_0_CLK_OUT_48MHZ), .E(mag_buffer3_0), .Q(
        \mag_buffer[24]_net_1 ));
    XOR2 schedule72_4 (.A(read_address_traversal_0_ROW_READ_OUT[4]), 
        .B(write_address_traversal_0_ROW_WRITE_OUT[4]), .Y(
        schedule72_4_net_1));
    OA1 \mag_prev_RNI58VU32_0[17]  (.A(un1_MAG_DATA_NE_69), .B(
        un1_MAG_DATA_NE_70), .C(reset_pulse_0_RESET_0), .Y(
        mag_buffer3_2));
    DFN1E1 \data_buffer[2]  (.D(\data_buffer_7[2] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(num_cycles15_0), .Q(
        \data_buffer[2]_net_1 ));
    XO1 \mag_prev_RNI0VCR1[78]  (.A(
        constant_sensor_data_0_M_DATA_STACK_76), .B(
        \mag_prev[78]_net_1 ), .C(un1_MAG_DATA_13), .Y(
        un1_MAG_DATA_NE_1));
    XOR2 \mag_prev_RNIBCOT[52]  (.A(\mag_prev[52]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_50), .Y(un1_MAG_DATA_52));
    DFN1E0C0 busy_hold (.D(un1_next_write8_1), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_4), .E(
        un1_next_write8_3), .Q(busy_hold_net_1));
    XOR2 schedule72_12 (.A(read_address_traversal_0_ROW_READ_OUT[12]), 
        .B(write_address_traversal_0_ROW_WRITE_OUT[12]), .Y(
        schedule72_12_net_1));
    DFN1E1 \mag_buffer[69]  (.D(constant_sensor_data_0_M_DATA_STACK_67)
        , .CLK(reset_pulse_0_CLK_OUT_48MHZ), .E(mag_buffer3_2), .Q(
        \mag_buffer[69]_net_1 ));
    MX2 \geig_buffer_RNIS3S54[72]  (.A(\geig_buffer[72]_net_1 ), .B(
        constant_sensor_data_0_G_DATA_STACK_0_d0), .S(geig_buffer3_4), 
        .Y(\geig_buffer_3[72] ));
    MX2 \data_buffer_RNO[62]  (.A(\data_buffer_4[62] ), .B(
        \data_buffer_4[78] ), .S(data_buffer_0_sqmuxa_2), .Y(
        \data_buffer_7[62] ));
    MX2 \data_buffer_RNIG6SV79[20]  (.A(N_512), .B(
        \data_buffer[20]_net_1 ), .S(data_buffer_4_sn_N_2_0), .Y(
        \data_buffer_4[20] ));
    XO1 \geig_prev_RNIUGH4[25]  (.A(
        constant_sensor_data_0_G_DATA_STACK_24), .B(
        \geig_prev[25]_net_1 ), .C(un1_GEIG_DATA_24), .Y(
        un1_GEIG_DATA_NE_38_6));
    MX2 \geig_buffer_RNINDL44[46]  (.A(\geig_buffer[46]_net_1 ), .B(
        constant_sensor_data_0_G_DATA_STACK_45), .S(geig_buffer3_4), 
        .Y(\geig_buffer_3[46] ));
    MX2 \data_buffer_RNIL6NV79[12]  (.A(N_504), .B(
        \data_buffer[12]_net_1 ), .S(data_buffer_4_sn_N_2_0), .Y(
        \data_buffer_4[12] ));
    MX2 \mag_buffer_RNIBAHH42[33]  (.A(\mag_buffer[33]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_31), .S(mag_buffer3_4), .Y(
        \mag_buffer_3[33] ));
    XOR2 \geig_prev_RNI8H82[21]  (.A(\geig_prev[21]_net_1 ), .B(
        constant_sensor_data_0_G_DATA_STACK_20), .Y(un1_GEIG_DATA_21));
    OA1B \schedule_RNIRB051[2]  (.A(\schedule_3[3] ), .B(
        \schedule_3[2] ), .C(schedule18), .Y(schedule_3_sqmuxa_1_0));
    DFN1E1 \mag_buffer[31]  (.D(constant_sensor_data_0_M_DATA_STACK_29)
        , .CLK(reset_pulse_0_CLK_OUT_48MHZ), .E(mag_buffer3_1), .Q(
        \mag_buffer[31]_net_1 ));
    DFN1E1 \geig_buffer[12]  (.D(
        constant_sensor_data_0_G_DATA_STACK_11), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(geig_buffer3_0), .Q(
        \geig_buffer[12]_net_1 ));
    DFN1C0 \schedule[2]  (.D(\schedule_29[2] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_15), .Q(
        \schedule[2]_net_1 ));
    DFN1C0 \mag_prev[26]  (.D(constant_sensor_data_0_M_DATA_STACK_24), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_20)
        , .Q(\mag_prev[26]_net_1 ));
    MX2 \data_buffer_RNI457089[42]  (.A(N_534), .B(
        \data_buffer[42]_net_1 ), .S(data_buffer_4_sn_N_2_1), .Y(
        \data_buffer_4[42] ));
    XO1 \write_count_RNIRH741[0]  (.A(\num_cycles_2[2] ), .B(
        \write_count[0]_net_1 ), .C(\write_count[1]_net_1 ), .Y(
        cmd_out13_NE_0));
    MX2 \mag_buffer_RNIFILH42[53]  (.A(\mag_buffer[53]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_51), .S(mag_buffer3_5), .Y(
        \mag_buffer_3[53] ));
    DFN1E1 \geig_buffer[45]  (.D(
        constant_sensor_data_0_G_DATA_STACK_44), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(geig_buffer3_1), .Q(
        \geig_buffer[45]_net_1 ));
    MX2 \data_buffer_RNITU7089[47]  (.A(N_539), .B(
        \data_buffer[47]_net_1 ), .S(data_buffer_4_sn_N_2_2), .Y(
        \data_buffer_4[47] ));
    DFN1E1C0 \row_out[7]  (.D(\row_out_9[7] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_4), .E(
        un1_next_write8_1), .Q(memory_controller_0_ROW_OUT[7]));
    DFN1E1 \geig_buffer[37]  (.D(
        constant_sensor_data_0_G_DATA_STACK_36), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(geig_buffer3_1), .Q(
        \geig_buffer[37]_net_1 ));
    XOR2 \mag_prev_RNI1QFT[11]  (.A(\mag_prev[11]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_9), .Y(un1_MAG_DATA_11));
    OR3 \mag_prev_RNIEBPM3[18]  (.A(un1_MAG_DATA_18), .B(
        un1_MAG_DATA_71), .C(un1_MAG_DATA_NE_26), .Y(
        un1_MAG_DATA_NE_49));
    MX2 \geig_buffer_RNI9TI44[30]  (.A(\geig_buffer[30]_net_1 ), .B(
        constant_sensor_data_0_G_DATA_STACK_29), .S(geig_buffer3_3), 
        .Y(\geig_buffer_3[30] ));
    MX2 \row_out_RNO[1]  (.A(read_address_traversal_0_ROW_READ_OUT[1]), 
        .B(write_address_traversal_0_ROW_WRITE_OUT[1]), .S(
        un1_schedule_21_0), .Y(\row_out_9[1] ));
    NOR2B \mag_buffer_RNIBUK8D4[73]  (.A(\mag_buffer_3[73] ), .B(
        num_cycles11), .Y(N_565));
    MX2 \mag_buffer_RNI3UCH42[11]  (.A(\mag_buffer[11]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_9), .S(mag_buffer3_3), .Y(
        \mag_buffer_3[11] ));
    DFN1E1 \geig_buffer[22]  (.D(
        constant_sensor_data_0_G_DATA_STACK_21), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(geig_buffer3_0), .Q(
        \geig_buffer[22]_net_1 ));
    DFN1E1C0 \col_out[6]  (.D(\col_out_9[6] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_2), .E(
        un1_next_write8_1_0), .Q(memory_controller_0_COL_OUT[6]));
    DFN1E1 \mag_buffer[10]  (.D(constant_sensor_data_0_M_DATA_STACK_8), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .E(mag_buffer3_0), .Q(
        \mag_buffer[10]_net_1 ));
    XO1 \geig_prev_RNIAPD4[18]  (.A(
        constant_sensor_data_0_G_DATA_STACK_17), .B(
        \geig_prev[18]_net_1 ), .C(un1_GEIG_DATA_19), .Y(
        un1_GEIG_DATA_NE_39_2));
    MX2 \data_buffer_RNO[7]  (.A(\data_buffer_4[7] ), .B(
        \data_buffer_4[23] ), .S(data_buffer_0_sqmuxa), .Y(
        \data_buffer_7[7] ));
    MX2 \data_buffer_RNIIEO189[78]  (.A(N_570), .B(
        \data_buffer[78]_net_1 ), .S(data_buffer_4_sn_N_2), .Y(
        \data_buffer_4[78] ));
    MX2 \data_buffer_RNO[43]  (.A(\data_buffer_4[43] ), .B(
        \data_buffer_4[59] ), .S(data_buffer_0_sqmuxa_1), .Y(
        \data_buffer_7[43] ));
    AO1A \schedule_RNI7GOO5[4]  (.A(\schedule_3[5] ), .B(
        schedule_3_sqmuxa_1), .C(\schedule_3[4] ), .Y(\schedule_9[4] ));
    DFN1E1 \geig_buffer[64]  (.D(
        constant_sensor_data_0_G_DATA_STACK_0[1]), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(geig_buffer3_2), .Q(
        \geig_buffer[64]_net_1 ));
    MX2 \col_out_RNO[4]  (.A(read_address_traversal_0_COL_READ_OUT[4]), 
        .B(write_address_traversal_0_COL_WRITE_OUT[4]), .S(
        un1_schedule_21), .Y(\col_out_9[4] ));
    XO1 \mag_prev_RNIG86R1[20]  (.A(
        constant_sensor_data_0_M_DATA_STACK_18), .B(
        \mag_prev[20]_net_1 ), .C(un1_MAG_DATA_36), .Y(
        un1_MAG_DATA_NE_21));
    MX2 \data_buffer_RNO[11]  (.A(\data_buffer_4[11] ), .B(
        \data_buffer_4[27] ), .S(data_buffer_0_sqmuxa_0), .Y(
        \data_buffer_7[11] ));
    MX2 \mag_buffer_RNI78JH42[40]  (.A(\mag_buffer[40]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_38), .S(mag_buffer3_4), .Y(
        \mag_buffer_3[40] ));
    MX2 \data_buffer_RNIAROR39[67]  (.A(N_559), .B(
        \data_buffer[67]_net_1 ), .S(data_buffer_4_sn_N_2), .Y(
        \data_buffer_4[67] ));
    MX2 \mag_buffer_RNILQNH42[65]  (.A(\mag_buffer[65]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_63), .S(mag_buffer3), .Y(
        \mag_buffer_3[65] ));
    DFN1C0 \mag_prev[36]  (.D(constant_sensor_data_0_M_DATA_STACK_34), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_21)
        , .Q(\mag_prev[36]_net_1 ));
    DFN1C0 \mag_prev[19]  (.D(constant_sensor_data_0_M_DATA_STACK_17), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_20)
        , .Q(\mag_prev[19]_net_1 ));
    OR3 \mag_prev_RNI54IK4[30]  (.A(un1_MAG_DATA_NE_0), .B(
        un1_MAG_DATA_30), .C(un1_MAG_DATA_NE_35), .Y(
        un1_MAG_DATA_NE_54));
    MX2 \geig_buffer_RNINBJ44[37]  (.A(\geig_buffer[37]_net_1 ), .B(
        constant_sensor_data_0_G_DATA_STACK_36), .S(geig_buffer3_3), 
        .Y(\geig_buffer_3[37] ));
    NOR2 \write_count_RNI87QAM4[0]  (.A(num_cycles10), .B(num_cycles11)
        , .Y(data_buffer_4_sn_N_2_1));
    MX2 \mag_buffer_RNI6TMCH4[12]  (.A(\geig_buffer_3[12] ), .B(
        \mag_buffer_3[12] ), .S(num_cycles11_0), .Y(N_504));
    MX2 \data_buffer_RNO[53]  (.A(\data_buffer_4[53] ), .B(
        \data_buffer_4[69] ), .S(data_buffer_0_sqmuxa_2), .Y(
        \data_buffer_7[53] ));
    OR3 schedule72_NE (.A(schedule72_NE_19_net_1), .B(
        schedule72_NE_18_net_1), .C(schedule72_NE_20_net_1), .Y(
        schedule73));
    XOR2 \mag_prev_RNINQQT[67]  (.A(\mag_prev[67]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_65), .Y(un1_MAG_DATA_67));
    OR3 \mag_prev_RNI22SM3[23]  (.A(un1_MAG_DATA_39), .B(
        un1_MAG_DATA_23), .C(un1_MAG_DATA_NE_16), .Y(
        un1_MAG_DATA_NE_44));
    MX2 \mag_buffer_RNI2QNCH4[19]  (.A(\geig_buffer_3[19] ), .B(
        \mag_buffer_3[19] ), .S(num_cycles11_0), .Y(N_511));
    NOR2B \mag_buffer_RNI5MI8D4[61]  (.A(\mag_buffer_3[61] ), .B(
        num_cycles11), .Y(N_553));
    DFN1C0 \geig_prev[37]  (.D(constant_sensor_data_0_G_DATA_STACK_36), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_13)
        , .Q(\geig_prev[37]_net_1 ));
    DFN1E1 \mag_buffer[12]  (.D(constant_sensor_data_0_M_DATA_STACK_10)
        , .CLK(reset_pulse_0_CLK_OUT_48MHZ), .E(mag_buffer3_0), .Q(
        \mag_buffer[12]_net_1 ));
    MX2 \geig_buffer_RNI2AS54[78]  (.A(\geig_buffer[78]_net_1 ), .B(
        constant_sensor_data_0_G_DATA_STACK_0_d0), .S(geig_buffer3), 
        .Y(\geig_buffer_3[78] ));
    MX2 \mag_buffer_RNI264DH4[46]  (.A(\geig_buffer_3[46] ), .B(
        \mag_buffer_3[46] ), .S(num_cycles11_2), .Y(N_538));
    DFN1E1 \data_buffer[45]  (.D(\data_buffer_7[45] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(num_cycles15_2), .Q(
        \data_buffer[45]_net_1 ));
    MX2 \row_out_RNO[11]  (.A(
        read_address_traversal_0_ROW_READ_OUT[11]), .B(
        write_address_traversal_0_ROW_WRITE_OUT[11]), .S(
        un1_schedule_21_0), .Y(\row_out_9[11] ));
    MX2 \data_buffer_RNO[27]  (.A(\data_buffer_4[27] ), .B(
        \data_buffer_4[43] ), .S(data_buffer_0_sqmuxa_0), .Y(
        \data_buffer_7[27] ));
    DFN1E1 \data_buffer[79]  (.D(\data_buffer_7[79] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(num_cycles15), .Q(
        \data_buffer[79]_net_1 ));
    NOR2 \schedule_RNISUDQ[3]  (.A(\schedule_3[3] ), .B(schedule18), 
        .Y(schedule_1_sqmuxa_0));
    DFN1C0 \mag_prev[59]  (.D(constant_sensor_data_0_M_DATA_STACK_57), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_22)
        , .Q(\mag_prev[59]_net_1 ));
    XOR2 \geig_prev_RNIKEB7[9]  (.A(\geig_prev[9]_net_1 ), .B(
        constant_sensor_data_0_G_DATA_STACK_8), .Y(un1_GEIG_DATA_9));
    MX2 \mag_buffer_RNIEH3DH4[41]  (.A(\geig_buffer_3[41] ), .B(
        \mag_buffer_3[41] ), .S(num_cycles11_1), .Y(N_533));
    DFN1C0 \mag_prev[48]  (.D(constant_sensor_data_0_M_DATA_STACK_46), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_21)
        , .Q(\mag_prev[48]_net_1 ));
    MX2 \data_buffer_RNI402089[33]  (.A(N_525), .B(
        \data_buffer[33]_net_1 ), .S(data_buffer_4_sn_N_2_1), .Y(
        \data_buffer_4[33] ));
    MX2 \data_buffer_RNIOFTV79[28]  (.A(N_520), .B(
        \data_buffer[28]_net_1 ), .S(data_buffer_4_sn_N_2_1), .Y(
        \data_buffer_4[28] ));
    MX2 \mag_buffer_RNIR2QH42[77]  (.A(\mag_buffer[77]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_75), .S(mag_buffer3), .Y(
        \mag_buffer_3[77] ));
    MX2 \geig_buffer_RNIDTE44[14]  (.A(\geig_buffer[14]_net_1 ), .B(
        constant_sensor_data_0_G_DATA_STACK_13), .S(geig_buffer3_2), 
        .Y(\geig_buffer_3[14] ));
    DFN1E1C0 \data_out[1]  (.D(\data_buffer_4[1] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_5), .E(
        next_write_1_sqmuxa), .Q(memory_controller_0_DATA_OUT[1]));
    XOR2 \mag_prev_RNIHAGT[19]  (.A(\mag_prev[19]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_17), .Y(un1_MAG_DATA_19));
    DFN1E1 \data_buffer[37]  (.D(\data_buffer_7[37] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(num_cycles15_1), .Q(
        \data_buffer[37]_net_1 ));
    MX2 \mag_buffer_RNIDEJH42[43]  (.A(\mag_buffer[43]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_41), .S(mag_buffer3_5), .Y(
        \mag_buffer_3[43] ));
    MX2 \mag_buffer_RNIHGHH42[36]  (.A(\mag_buffer[36]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_34), .S(mag_buffer3_4), .Y(
        \mag_buffer_3[36] ));
    DFN1E1 \mag_buffer[0]  (.D(constant_sensor_data_0_M_DATA_STACK_0), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .E(mag_buffer3_0), .Q(
        \mag_buffer[0]_net_1 ));
    NOR2 \schedule_RNIRFRF_0[2]  (.A(\schedule_3[0] ), .B(
        \schedule_3[1] ), .Y(schedule18));
    XOR2 \mag_prev_RNI3UHT[21]  (.A(\mag_prev[21]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_19), .Y(un1_MAG_DATA_21));
    DFN1C0 \geig_prev[45]  (.D(constant_sensor_data_0_G_DATA_STACK_44), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_13)
        , .Q(\geig_prev[45]_net_1 ));
    MX2 \mag_buffer_RNI660DH4[38]  (.A(\geig_buffer_3[38] ), .B(
        \mag_buffer_3[38] ), .S(num_cycles11_1), .Y(N_530));
    DFN1E1 \mag_buffer[33]  (.D(constant_sensor_data_0_M_DATA_STACK_31)
        , .CLK(reset_pulse_0_CLK_OUT_48MHZ), .E(mag_buffer3_1), .Q(
        \mag_buffer[33]_net_1 ));
    OR2 \geig_prev_RNICH29[20]  (.A(un1_GEIG_DATA_NE_38_6), .B(
        un1_GEIG_DATA_NE_38_7), .Y(un1_GEIG_DATA_NE_38_11));
    MX2 \data_buffer_RNO[63]  (.A(\data_buffer_4[63] ), .B(
        \data_buffer_4[79] ), .S(data_buffer_0_sqmuxa_2), .Y(
        \data_buffer_7[63] ));
    DFN1E1C0 \col_out[5]  (.D(\col_out_9[5] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_2), .E(
        un1_next_write8_1_0), .Q(memory_controller_0_COL_OUT[5]));
    OA1 \write_count_RNIO3RM82_0[0]  (.A(\schedule_RNIUGQM72[2]_net_1 )
        , .B(\schedule_RNIRFRF[2]_net_1 ), .C(un1_write_count_3), .Y(
        num_cycles11_1));
    XO1 \geig_prev_RNII0D4[12]  (.A(
        constant_sensor_data_0_G_DATA_STACK_11), .B(
        \geig_prev[12]_net_1 ), .C(un1_GEIG_DATA_13), .Y(
        un1_GEIG_DATA_NE_38_1));
    DFN1C0 \mag_prev[13]  (.D(constant_sensor_data_0_M_DATA_STACK_11), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_20)
        , .Q(\mag_prev[13]_net_1 ));
    DFN1E1 \data_buffer[15]  (.D(\data_buffer_7[15] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(num_cycles15_0), .Q(
        \data_buffer[15]_net_1 ));
    MX2 \mag_buffer_RNI62SCH4[29]  (.A(\geig_buffer_3[29] ), .B(
        \mag_buffer_3[29] ), .S(num_cycles11_1), .Y(N_521));
    DFN1E1 \data_buffer[67]  (.D(\data_buffer_7[67] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(num_cycles15), .Q(
        \data_buffer[67]_net_1 ));
    XOR2 \geig_prev_RNICNA2[32]  (.A(\geig_prev[32]_net_1 ), .B(
        constant_sensor_data_0_G_DATA_STACK_31), .Y(un1_GEIG_DATA_32));
    OR3 \geig_prev_RNI8MBS[18]  (.A(un1_GEIG_DATA_NE_39_3), .B(
        un1_GEIG_DATA_NE_39_2), .C(un1_GEIG_DATA_NE_39_15), .Y(
        un1_GEIG_DATA_NE_39_20));
    DFN1E1 \mag_buffer[6]  (.D(constant_sensor_data_0_M_DATA_STACK_0), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .E(mag_buffer3_0), .Q(
        \mag_buffer[6]_net_1 ));
    MX2 \data_buffer_RNI4MNV79[15]  (.A(N_507), .B(
        \data_buffer[15]_net_1 ), .S(data_buffer_4_sn_N_2_0), .Y(
        \data_buffer_4[15] ));
    DFN1C0 \mag_prev[62]  (.D(constant_sensor_data_0_M_DATA_STACK_60), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_22)
        , .Q(\mag_prev[62]_net_1 ));
    MX2 \schedule_RNI3HIA[4]  (.A(\schedule[4]_net_1 ), .B(
        \schedule[6]_net_1 ), .S(un1_schedule_1), .Y(\schedule_3[4] ));
    OR3 \mag_prev_RNIKEARE[19]  (.A(un1_MAG_DATA_NE_48), .B(
        un1_MAG_DATA_NE_47), .C(un1_MAG_DATA_NE_59), .Y(
        un1_MAG_DATA_NE_66));
    DFN1E1 \data_buffer[71]  (.D(\data_buffer_7[71] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(num_cycles15), .Q(
        \data_buffer[71]_net_1 ));
    XOR2 schedule72_15 (.A(write_address_traversal_0_COL_WRITE_OUT[2]), 
        .B(read_address_traversal_0_COL_READ_OUT[2]), .Y(
        schedule72_15_net_1));
    DFN1C0 \mag_prev[53]  (.D(constant_sensor_data_0_M_DATA_STACK_51), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_21)
        , .Q(\mag_prev[53]_net_1 ));
    MX2 \mag_buffer_RNII9NCH4[15]  (.A(\geig_buffer_3[15] ), .B(
        \mag_buffer_3[15] ), .S(num_cycles11_0), .Y(N_507));
    DFN1E1 \data_buffer[57]  (.D(\data_buffer_7[57] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(num_cycles15_2), .Q(
        \data_buffer[57]_net_1 ));
    XOR2 \mag_prev_RNIPUST[77]  (.A(\mag_prev[77]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_75), .Y(un1_MAG_DATA_77));
    OA1 \geig_prev_RNI40JU3_2[12]  (.A(un1_GEIG_DATA_NE_38), .B(
        un1_GEIG_DATA_NE_39), .C(reset_pulse_0_RESET_17), .Y(
        geig_buffer3));
    MX2 \mag_buffer_RNIBCJH42[42]  (.A(\mag_buffer[42]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_40), .S(mag_buffer3_5), .Y(
        \mag_buffer_3[42] ));
    NOR2B un1_write_count_4_I_15 (.A(\DWACT_ADD_CI_0_TMP[0] ), .B(
        \write_count[1]_net_1 ), .Y(\DWACT_ADD_CI_0_g_array_1[0] ));
    MX2 \mag_buffer_RNI50HEH4[72]  (.A(\geig_buffer_3[72] ), .B(
        \mag_buffer_3[72] ), .S(num_cycles11_2), .Y(N_564));
    DFN1E1 \geig_buffer[54]  (.D(
        constant_sensor_data_0_G_DATA_STACK_0[1]), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(geig_buffer3_1), .Q(
        \geig_buffer[54]_net_1 ));
    DFN1C0 \mag_prev[21]  (.D(constant_sensor_data_0_M_DATA_STACK_19), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_20)
        , .Q(\mag_prev[21]_net_1 ));
    DFN1C0 \geig_prev[16]  (.D(constant_sensor_data_0_G_DATA_STACK_15), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_12)
        , .Q(\geig_prev[16]_net_1 ));
    XO1 \geig_prev_RNIE1I4[29]  (.A(
        constant_sensor_data_0_G_DATA_STACK_28), .B(
        \geig_prev[29]_net_1 ), .C(un1_GEIG_DATA_28), .Y(
        un1_GEIG_DATA_NE_38_4));
    OA1 \write_count_RNIO3RM82[0]  (.A(\schedule_RNIUGQM72[2]_net_1 ), 
        .B(\schedule_RNIRFRF[2]_net_1 ), .C(un1_write_count_3), .Y(
        num_cycles11_0));
    XO1 \mag_prev_RNIMG8R1[26]  (.A(
        constant_sensor_data_0_M_DATA_STACK_24), .B(
        \mag_prev[26]_net_1 ), .C(un1_MAG_DATA_42), .Y(
        un1_MAG_DATA_NE_9));
    XO1 \mag_prev_RNIE44R1[15]  (.A(
        constant_sensor_data_0_M_DATA_STACK_13), .B(
        \mag_prev[15]_net_1 ), .C(un1_MAG_DATA_31), .Y(
        un1_MAG_DATA_NE_33));
    DFN1E1C0 \data_out[14]  (.D(\data_buffer_4[14] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_5), .E(
        next_write_1_sqmuxa), .Q(memory_controller_0_DATA_OUT[14]));
    DFN1E1 \geig_buffer[16]  (.D(
        constant_sensor_data_0_G_DATA_STACK_15), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(geig_buffer3_0), .Q(
        \geig_buffer[16]_net_1 ));
    MX2 \mag_buffer_RNIB6HEH4[74]  (.A(\geig_buffer_3[74] ), .B(
        \mag_buffer_3[74] ), .S(num_cycles11_2), .Y(N_566));
    DFN1C0 \mag_prev[79]  (.D(constant_sensor_data_0_M_DATA_STACK_77), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_22)
        , .Q(\mag_prev[79]_net_1 ));
    DFN1E1 \mag_buffer[39]  (.D(constant_sensor_data_0_M_DATA_STACK_37)
        , .CLK(reset_pulse_0_CLK_OUT_48MHZ), .E(mag_buffer3_1), .Q(
        \mag_buffer[39]_net_1 ));
    DFN1E1 \geig_buffer[19]  (.D(
        constant_sensor_data_0_G_DATA_STACK_18), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(geig_buffer3_0), .Q(
        \geig_buffer[19]_net_1 ));
    DFN1E1C0 \col_out[8]  (.D(\col_out_9[8] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_2), .E(
        un1_next_write8_1_0), .Q(memory_controller_0_COL_OUT[8]));
    MX2 \mag_buffer_RNIFCFH42[26]  (.A(\mag_buffer[26]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_24), .S(mag_buffer3_4), .Y(
        \mag_buffer_3[26] ));
    DFN1C0 \mag_prev[24]  (.D(constant_sensor_data_0_M_DATA_STACK_22), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_20)
        , .Q(\mag_prev[24]_net_1 ));
    OR3 \mag_prev_RNIA9RM3[20]  (.A(un1_MAG_DATA_72), .B(
        un1_MAG_DATA_52), .C(un1_MAG_DATA_NE_21), .Y(
        un1_MAG_DATA_NE_47));
    MX2 \mag_buffer_RNI72DH42[13]  (.A(\mag_buffer[13]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_11), .S(mag_buffer3_3), .Y(
        \mag_buffer_3[13] ));
    DFN1C0 \geig_prev[44]  (.D(constant_sensor_data_0_G_DATA_STACK_43), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_13)
        , .Q(\geig_prev[44]_net_1 ));
    NOR2 \schedule_RNID8CM4[3]  (.A(\schedule_3[1] ), .B(
        \schedule_9[0] ), .Y(schedule34));
    DFN1E1C0 \row_out[8]  (.D(\row_out_9[8] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_4), .E(
        un1_next_write8_1), .Q(memory_controller_0_ROW_OUT[8]));
    MX2 \geig_buffer_RNIPDJ44[38]  (.A(\geig_buffer[38]_net_1 ), .B(
        constant_sensor_data_0_G_DATA_STACK_37), .S(geig_buffer3_3), 
        .Y(\geig_buffer_3[38] ));
    DFN1E1 \geig_buffer[26]  (.D(
        constant_sensor_data_0_G_DATA_STACK_25), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(geig_buffer3_0), .Q(
        \geig_buffer[26]_net_1 ));
    OA1 \mag_prev_RNI58VU32_1[17]  (.A(un1_MAG_DATA_NE_69), .B(
        un1_MAG_DATA_NE_70), .C(reset_pulse_0_RESET_0), .Y(
        mag_buffer3_1));
    DFN1E1C0 \row_out[2]  (.D(\row_out_9[2] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_4), .E(
        un1_next_write8_1), .Q(memory_controller_0_ROW_OUT[2]));
    DFN1E1 \geig_buffer[29]  (.D(
        constant_sensor_data_0_G_DATA_STACK_28), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(geig_buffer3_0), .Q(
        \geig_buffer[29]_net_1 ));
    XO1 \mag_prev_RNIU0HR1[46]  (.A(
        constant_sensor_data_0_M_DATA_STACK_44), .B(
        \mag_prev[46]_net_1 ), .C(un1_MAG_DATA_62), .Y(
        un1_MAG_DATA_NE_0));
    MX2 \geig_buffer_RNIH3H44[25]  (.A(\geig_buffer[25]_net_1 ), .B(
        constant_sensor_data_0_G_DATA_STACK_24), .S(geig_buffer3_3), 
        .Y(\geig_buffer_3[25] ));
    DFN1C0 \geig_prev[26]  (.D(constant_sensor_data_0_G_DATA_STACK_25), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_13)
        , .Q(\geig_prev[26]_net_1 ));
    DFN1E1 \mag_buffer[20]  (.D(constant_sensor_data_0_M_DATA_STACK_18)
        , .CLK(reset_pulse_0_CLK_OUT_48MHZ), .E(mag_buffer3_0), .Q(
        \mag_buffer[20]_net_1 ));
    DFN1C0 \mag_prev[31]  (.D(constant_sensor_data_0_M_DATA_STACK_29), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_20)
        , .Q(\mag_prev[31]_net_1 ));
    DFN1E1 \geig_buffer[78]  (.D(
        constant_sensor_data_0_G_DATA_STACK_0[1]), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(geig_buffer3_2), .Q(
        \geig_buffer[78]_net_1 ));
    DFN1E1C0 \data_out[12]  (.D(\data_buffer_4[12] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_5), .E(
        next_write_1_sqmuxa), .Q(memory_controller_0_DATA_OUT[12]));
    DFN1E1C0 \row_out[6]  (.D(\row_out_9[6] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_4), .E(
        un1_next_write8_1), .Q(memory_controller_0_ROW_OUT[6]));
    DFN1E1 \mag_buffer[56]  (.D(constant_sensor_data_0_M_DATA_STACK_54)
        , .CLK(reset_pulse_0_CLK_OUT_48MHZ), .E(mag_buffer3_2), .Q(
        \mag_buffer[56]_net_1 ));
    MX2 \schedule_RNIVCIA[2]  (.A(\schedule[2]_net_1 ), .B(
        \schedule[4]_net_1 ), .S(un1_schedule_1), .Y(\schedule_3[2] ));
    MX2 \data_buffer_RNO[47]  (.A(\data_buffer_4[47] ), .B(
        \data_buffer_4[63] ), .S(data_buffer_0_sqmuxa_1), .Y(
        \data_buffer_7[47] ));
    MX2 \mag_buffer_RNI220DH4[37]  (.A(\geig_buffer_3[37] ), .B(
        \mag_buffer_3[37] ), .S(num_cycles11_1), .Y(N_529));
    DFN1E1 read_prev (.D(read_buffer_0_READ_CMD), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(reset_pulse_0_RESET_18), .Q(
        read_prev_net_1));
    MX2 \geig_buffer_RNI4A6H4[1]  (.A(\geig_buffer[1]_net_1 ), .B(
        constant_sensor_data_0_G_DATA_STACK_0_d0), .S(geig_buffer3), 
        .Y(\geig_buffer_3[1] ));
    DFN1C0 \mag_prev[34]  (.D(constant_sensor_data_0_M_DATA_STACK_32), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_20)
        , .Q(\mag_prev[34]_net_1 ));
    MX2 \geig_buffer_RNIN9H44[28]  (.A(\geig_buffer[28]_net_1 ), .B(
        constant_sensor_data_0_G_DATA_STACK_27), .S(geig_buffer3_3), 
        .Y(\geig_buffer_3[28] ));
    DFN1E1 \geig_buffer[15]  (.D(
        constant_sensor_data_0_G_DATA_STACK_14), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(geig_buffer3_0), .Q(
        \geig_buffer[15]_net_1 ));
    NOR2B \schedule_RNI2G5PL4[2]  (.A(reset_pulse_0_RESET_0), .B(
        un1_schedule_21_0), .Y(num_cycles15_2));
    DFN1C0 \geig_prev[13]  (.D(constant_sensor_data_0_G_DATA_STACK_12), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_12)
        , .Q(\geig_prev[13]_net_1 ));
    OR3 \geig_prev_RNI0C6I[27]  (.A(un1_GEIG_DATA_NE_38_5), .B(
        un1_GEIG_DATA_NE_38_4), .C(un1_GEIG_DATA_NE_38_11), .Y(
        un1_GEIG_DATA_NE_38_13));
    VCC VCC_i (.Y(VCC));
    MX2 \geig_buffer_RNIBTG44[22]  (.A(\geig_buffer[22]_net_1 ), .B(
        constant_sensor_data_0_G_DATA_STACK_21), .S(geig_buffer3_3), 
        .Y(\geig_buffer_3[22] ));
    XOR2 \mag_prev_RNI72IT[23]  (.A(\mag_prev[23]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_21), .Y(un1_MAG_DATA_23));
    DFN1C0 \mag_prev[15]  (.D(constant_sensor_data_0_M_DATA_STACK_13), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_20)
        , .Q(\mag_prev[15]_net_1 ));
    NOR2B \mag_buffer_RNI9QI8D4[63]  (.A(\mag_buffer_3[63] ), .B(
        num_cycles11), .Y(N_555));
    DFN1E1 \geig_buffer[31]  (.D(
        constant_sensor_data_0_G_DATA_STACK_30), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(geig_buffer3_1), .Q(
        \geig_buffer[31]_net_1 ));
    MX2 \data_buffer_RNO[21]  (.A(\data_buffer_4[21] ), .B(
        \data_buffer_4[37] ), .S(data_buffer_0_sqmuxa_0), .Y(
        \data_buffer_7[21] ));
    OA1 \schedule_RNIUGQM72[2]  (.A(un1_MAG_DATA_NE_69), .B(
        un1_MAG_DATA_NE_70), .C(un1_schedule_20_a0_2), .Y(
        \schedule_RNIUGQM72[2]_net_1 ));
    DFN1C0 \mag_prev[73]  (.D(constant_sensor_data_0_M_DATA_STACK_71), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_22)
        , .Q(\mag_prev[73]_net_1 ));
    MX2 \data_buffer_RNO[57]  (.A(\data_buffer_4[57] ), .B(
        \data_buffer_4[73] ), .S(data_buffer_0_sqmuxa_2), .Y(
        \data_buffer_7[57] ));
    DFN1E1 \mag_buffer[22]  (.D(constant_sensor_data_0_M_DATA_STACK_20)
        , .CLK(reset_pulse_0_CLK_OUT_48MHZ), .E(mag_buffer3_0), .Q(
        \mag_buffer[22]_net_1 ));
    MX2 \mag_buffer_RNIPUNH42[67]  (.A(\mag_buffer[67]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_65), .S(mag_buffer3), .Y(
        \mag_buffer_3[67] ));
    DFN1E1 \mag_buffer[57]  (.D(constant_sensor_data_0_M_DATA_STACK_55)
        , .CLK(reset_pulse_0_CLK_OUT_48MHZ), .E(mag_buffer3_2), .Q(
        \mag_buffer[57]_net_1 ));
    DFN1E1 \geig_buffer[25]  (.D(
        constant_sensor_data_0_G_DATA_STACK_24), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(geig_buffer3_0), .Q(
        \geig_buffer[25]_net_1 ));
    XOR2 \mag_prev_RNI74KT[32]  (.A(\mag_prev[32]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_30), .Y(un1_MAG_DATA_32));
    MX2 \data_buffer_RNO[36]  (.A(\data_buffer_4[36] ), .B(
        \data_buffer_4[52] ), .S(data_buffer_0_sqmuxa_1), .Y(
        \data_buffer_7[36] ));
    DFN1E1 \mag_buffer[78]  (.D(constant_sensor_data_0_M_DATA_STACK_76)
        , .CLK(reset_pulse_0_CLK_OUT_48MHZ), .E(mag_buffer3_3), .Q(
        \mag_buffer[78]_net_1 ));
    MX2 \data_buffer_RNO[34]  (.A(\data_buffer_4[34] ), .B(
        \data_buffer_4[50] ), .S(data_buffer_0_sqmuxa_1), .Y(
        \data_buffer_7[34] ));
    MX2 \mag_buffer_RNIU14DH4[45]  (.A(\geig_buffer_3[45] ), .B(
        \mag_buffer_3[45] ), .S(num_cycles11_2), .Y(N_537));
    MX2 \geig_buffer_RNIL7H44[27]  (.A(\geig_buffer[27]_net_1 ), .B(
        constant_sensor_data_0_G_DATA_STACK_26), .S(geig_buffer3_3), 
        .Y(\geig_buffer_3[27] ));
    NOR2 \write_count_RNI87QAM4_2[0]  (.A(num_cycles10), .B(
        num_cycles11), .Y(data_buffer_4_sn_N_2));
    NOR3A \schedule_RNIHNG64[2]  (.A(un1_schedule_20_a0_0), .B(
        un1_GEIG_DATA_NE_39), .C(\schedule_3[0] ), .Y(
        un1_schedule_20_a0_2));
    DFN1E1 \data_buffer[27]  (.D(\data_buffer_7[27] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(num_cycles15_1), .Q(
        \data_buffer[27]_net_1 ));
    DFN1C0 \mag_prev[55]  (.D(constant_sensor_data_0_M_DATA_STACK_53), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_21)
        , .Q(\mag_prev[55]_net_1 ));
    DFN1E1C0 \row_out[11]  (.D(\row_out_9[11] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_7), .E(
        un1_next_write8_1), .Q(memory_controller_0_ROW_OUT[11]));
    XOR2 \mag_prev_RNIJMQT[65]  (.A(\mag_prev[65]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_63), .Y(un1_MAG_DATA_65));
    MX2 \schedule_RNIQ0JV25[5]  (.A(N_477), .B(\schedule_3[5] ), .S(
        schedule_15_sn_N_3), .Y(\schedule_15[5] ));
    DFN1C0 \geig_prev[42]  (.D(constant_sensor_data_0_G_DATA_STACK_41), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_13)
        , .Q(\geig_prev[42]_net_1 ));
    DFN1E1 \data_buffer[3]  (.D(\data_buffer_7[3] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(num_cycles15_0), .Q(
        \data_buffer[3]_net_1 ));
    MX2 \mag_buffer_RNIPSLH42[58]  (.A(\mag_buffer[58]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_56), .S(mag_buffer3_5), .Y(
        \mag_buffer_3[58] ));
    DFN1C0 \geig_prev[23]  (.D(constant_sensor_data_0_G_DATA_STACK_22), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_12)
        , .Q(\geig_prev[23]_net_1 ));
    DFN1E1 \geig_buffer[62]  (.D(
        constant_sensor_data_0_G_DATA_STACK_0[1]), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(geig_buffer3_2), .Q(
        \geig_buffer[62]_net_1 ));
    DFN1E1 \mag_buffer[66]  (.D(constant_sensor_data_0_M_DATA_STACK_64)
        , .CLK(reset_pulse_0_CLK_OUT_48MHZ), .E(mag_buffer3_2), .Q(
        \mag_buffer[66]_net_1 ));
    MX2 \data_buffer_RNO[30]  (.A(\data_buffer_4[30] ), .B(
        \data_buffer_4[46] ), .S(data_buffer_0_sqmuxa_1), .Y(
        \data_buffer_7[30] ));
    MX2 \mag_buffer_RNIIL3DH4[42]  (.A(\geig_buffer_3[42] ), .B(
        \mag_buffer_3[42] ), .S(num_cycles11_1), .Y(N_534));
    NOR2B \schedule_RNI2G5PL4_2[2]  (.A(reset_pulse_0_RESET), .B(
        un1_schedule_21), .Y(num_cycles15));
    OA1 \write_count_RNIO3RM82_2[0]  (.A(\schedule_RNIUGQM72[2]_net_1 )
        , .B(\schedule_RNIRFRF[2]_net_1 ), .C(un1_write_count_3), .Y(
        num_cycles11));
    DFN1C0 \mag_prev[60]  (.D(constant_sensor_data_0_M_DATA_STACK_58), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_22)
        , .Q(\mag_prev[60]_net_1 ));
    MX2 \mag_buffer_RNIFKNH42[62]  (.A(\mag_buffer[62]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_60), .S(mag_buffer3_5), .Y(
        \mag_buffer_3[62] ));
    MX2 \geig_buffer_RNIT3R54[64]  (.A(\geig_buffer[64]_net_1 ), .B(
        constant_sensor_data_0_G_DATA_STACK_0_d0), .S(geig_buffer3_4), 
        .Y(\geig_buffer_3[64] ));
    NOR2A \data_buffer_RNO[67]  (.A(\data_buffer_4[67] ), .B(
        data_buffer_0_sqmuxa), .Y(\data_buffer_7[67] ));
    AO1 \schedule_RNIVBJ35[2]  (.A(schedule_1_sqmuxa_0), .B(
        geig_buffer3), .C(\schedule_3[2] ), .Y(\schedule_9[2] ));
    NOR2B \mag_buffer_RNIL6J8D4[69]  (.A(\mag_buffer_3[69] ), .B(
        num_cycles11), .Y(N_561));
    MX2 \data_buffer_RNI6UJ189[66]  (.A(N_558), .B(
        \data_buffer[66]_net_1 ), .S(data_buffer_4_sn_N_2), .Y(
        \data_buffer_4[66] ));
    NOR2 busy_hold_RNI9P9K_1 (.A(busy_hold_net_1), .B(
        sdram_interface_0_STATUS), .Y(next_write8));
    XO1 schedule72_NE_0 (.A(write_address_traversal_0_ROW_WRITE_OUT[7])
        , .B(read_address_traversal_0_ROW_READ_OUT[7]), .C(
        schedule72_6_net_1), .Y(schedule72_NE_0_net_1));
    DFN1C0 \geig_prev[41]  (.D(constant_sensor_data_0_G_DATA_STACK_40), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_13)
        , .Q(\geig_prev[41]_net_1 ));
    NOR2B \mag_buffer_RNIFUG8D4[57]  (.A(\mag_buffer_3[57] ), .B(
        num_cycles11), .Y(N_549));
    DFN1E1 \mag_buffer[67]  (.D(constant_sensor_data_0_M_DATA_STACK_65)
        , .CLK(reset_pulse_0_CLK_OUT_48MHZ), .E(mag_buffer3_2), .Q(
        \mag_buffer[67]_net_1 ));
    XO1 \mag_prev_RNIAHLR1[64]  (.A(
        constant_sensor_data_0_M_DATA_STACK_62), .B(
        \mag_prev[64]_net_1 ), .C(un1_MAG_DATA_68), .Y(
        un1_MAG_DATA_NE_32));
    DFN1E1 \geig_buffer[8]  (.D(constant_sensor_data_0_G_DATA_STACK_7), 
        .CLK(reset_pulse_0_CLK_OUT_48MHZ), .E(geig_buffer3), .Q(
        \geig_buffer[8]_net_1 ));
    NOR2B \mag_buffer_RNI7MG8D4[53]  (.A(\mag_buffer_3[53] ), .B(
        num_cycles11), .Y(N_545));
    XOR2 schedule72_9 (.A(read_address_traversal_0_ROW_READ_OUT[9]), 
        .B(write_address_traversal_0_ROW_WRITE_OUT[9]), .Y(
        schedule72_9_net_1));
    MX2 \mag_buffer_RNINSNH42[66]  (.A(\mag_buffer[66]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_64), .S(mag_buffer3), .Y(
        \mag_buffer_3[66] ));
    MX2 \mag_buffer_RNINMHH42[39]  (.A(\mag_buffer[39]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_37), .S(mag_buffer3_4), .Y(
        \mag_buffer_3[39] ));
    MX2 \mag_buffer_RNIFADH42[17]  (.A(\mag_buffer[17]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_15), .S(mag_buffer3_3), .Y(
        \mag_buffer_3[17] ));
    MX2 \mag_buffer_RNIUPRCH4[27]  (.A(\geig_buffer_3[27] ), .B(
        \mag_buffer_3[27] ), .S(num_cycles11_1), .Y(N_519));
    MX2 \data_buffer_RNIQBNV79[13]  (.A(N_505), .B(
        \data_buffer[13]_net_1 ), .S(data_buffer_4_sn_N_2_0), .Y(
        \data_buffer_4[13] ));
    DFN1E1C0 \row_out[0]  (.D(\row_out_9[0] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_4), .E(
        un1_next_write8_1_0), .Q(memory_controller_0_ROW_OUT[0]));
    XOR2 schedule72_6 (.A(read_address_traversal_0_ROW_READ_OUT[6]), 
        .B(write_address_traversal_0_ROW_WRITE_OUT[6]), .Y(
        schedule72_6_net_1));
    XOR2 \mag_prev_RNIBEQT[61]  (.A(\mag_prev[61]_net_1 ), .B(
        constant_sensor_data_0_M_DATA_STACK_59), .Y(un1_MAG_DATA_61));
    DFN1E1 \mag_buffer[55]  (.D(constant_sensor_data_0_M_DATA_STACK_53)
        , .CLK(reset_pulse_0_CLK_OUT_48MHZ), .E(mag_buffer3_2), .Q(
        \mag_buffer[55]_net_1 ));
    MX2 \data_buffer_RNO[35]  (.A(\data_buffer_4[35] ), .B(
        \data_buffer_4[51] ), .S(data_buffer_0_sqmuxa_1), .Y(
        \data_buffer_7[35] ));
    
endmodule


module reset_pulse(
       reset_pulse_0_RESET_22,
       RESET_IN_L8_c_0,
       CLK_48MHZ_c_0,
       reset_pulse_0_RESET_21,
       reset_pulse_0_RESET_20,
       reset_pulse_0_RESET_19,
       reset_pulse_0_RESET_18,
       reset_pulse_0_RESET_17,
       reset_pulse_0_RESET_16,
       reset_pulse_0_RESET_15,
       reset_pulse_0_RESET_14,
       reset_pulse_0_RESET_13,
       reset_pulse_0_RESET_12,
       reset_pulse_0_RESET_11,
       reset_pulse_0_RESET_10,
       reset_pulse_0_RESET_9,
       RESET_IN_L8_c,
       CLK_48MHZ_c,
       reset_pulse_0_RESET_8,
       reset_pulse_0_RESET_7,
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
output reset_pulse_0_RESET_22;
input  RESET_IN_L8_c_0;
input  CLK_48MHZ_c_0;
output reset_pulse_0_RESET_21;
output reset_pulse_0_RESET_20;
output reset_pulse_0_RESET_19;
output reset_pulse_0_RESET_18;
output reset_pulse_0_RESET_17;
output reset_pulse_0_RESET_16;
output reset_pulse_0_RESET_15;
output reset_pulse_0_RESET_14;
output reset_pulse_0_RESET_13;
output reset_pulse_0_RESET_12;
output reset_pulse_0_RESET_11;
output reset_pulse_0_RESET_10;
output reset_pulse_0_RESET_9;
input  RESET_IN_L8_c;
input  CLK_48MHZ_c;
output reset_pulse_0_RESET_8;
output reset_pulse_0_RESET_7;
output reset_pulse_0_RESET_6;
output reset_pulse_0_RESET_5;
output reset_pulse_0_RESET_4;
output reset_pulse_0_RESET_3;
output reset_pulse_0_RESET_2;
output reset_pulse_0_RESET_1;
output reset_pulse_0_RESET_0;
output reset_pulse_0_CLK_OUT_48MHZ;
output reset_pulse_0_RESET;

    wire CLK_OUT_48MHZ_i, GND, VCC;
    
    OR2 RESET_1 (.A(RESET_IN_L8_c), .B(CLK_48MHZ_c), .Y(
        reset_pulse_0_RESET_1));
    OR2 RESET_7 (.A(RESET_IN_L8_c), .B(CLK_48MHZ_c), .Y(
        reset_pulse_0_RESET_7));
    OR2 RESET_6 (.A(RESET_IN_L8_c), .B(CLK_48MHZ_c), .Y(
        reset_pulse_0_RESET_6));
    OR2 RESET_8 (.A(RESET_IN_L8_c), .B(CLK_48MHZ_c), .Y(
        reset_pulse_0_RESET_8));
    NOR2B CLK_OUT_48MHZ (.A(RESET_IN_L8_c), .B(CLK_48MHZ_c), .Y(
        CLK_OUT_48MHZ_i));
    OR2 RESET_15 (.A(RESET_IN_L8_c_0), .B(CLK_48MHZ_c_0), .Y(
        reset_pulse_0_RESET_15));
    OR2 RESET_20 (.A(RESET_IN_L8_c_0), .B(CLK_48MHZ_c_0), .Y(
        reset_pulse_0_RESET_20));
    OR2 RESET_4 (.A(RESET_IN_L8_c), .B(CLK_48MHZ_c), .Y(
        reset_pulse_0_RESET_4));
    OR2 RESET_17 (.A(RESET_IN_L8_c_0), .B(CLK_48MHZ_c_0), .Y(
        reset_pulse_0_RESET_17));
    OR2 RESET_3 (.A(RESET_IN_L8_c), .B(CLK_48MHZ_c), .Y(
        reset_pulse_0_RESET_3));
    VCC VCC_i (.Y(VCC));
    OR2 RESET_12 (.A(RESET_IN_L8_c_0), .B(CLK_48MHZ_c_0), .Y(
        reset_pulse_0_RESET_12));
    CLKINT CLK_OUT_48MHZ_inferred_clock (.A(CLK_OUT_48MHZ_i), .Y(
        reset_pulse_0_CLK_OUT_48MHZ));
    OR2 RESET_9 (.A(RESET_IN_L8_c), .B(CLK_48MHZ_c), .Y(
        reset_pulse_0_RESET_9));
    OR2 RESET_2 (.A(RESET_IN_L8_c), .B(CLK_48MHZ_c), .Y(
        reset_pulse_0_RESET_2));
    OR2 RESET_19 (.A(RESET_IN_L8_c_0), .B(CLK_48MHZ_c_0), .Y(
        reset_pulse_0_RESET_19));
    OR2 RESET_5 (.A(RESET_IN_L8_c), .B(CLK_48MHZ_c), .Y(
        reset_pulse_0_RESET_5));
    OR2 RESET_18 (.A(RESET_IN_L8_c_0), .B(CLK_48MHZ_c_0), .Y(
        reset_pulse_0_RESET_18));
    GND GND_i (.Y(GND));
    OR2 RESET_11 (.A(RESET_IN_L8_c_0), .B(CLK_48MHZ_c_0), .Y(
        reset_pulse_0_RESET_11));
    OR2 RESET_14 (.A(RESET_IN_L8_c_0), .B(CLK_48MHZ_c_0), .Y(
        reset_pulse_0_RESET_14));
    OR2 RESET (.A(RESET_IN_L8_c), .B(CLK_48MHZ_c), .Y(
        reset_pulse_0_RESET));
    OR2 RESET_16 (.A(RESET_IN_L8_c_0), .B(CLK_48MHZ_c_0), .Y(
        reset_pulse_0_RESET_16));
    OR2 RESET_13 (.A(RESET_IN_L8_c_0), .B(CLK_48MHZ_c_0), .Y(
        reset_pulse_0_RESET_13));
    OR2 RESET_22 (.A(RESET_IN_L8_c_0), .B(CLK_48MHZ_c_0), .Y(
        reset_pulse_0_RESET_22));
    OR2 RESET_10 (.A(RESET_IN_L8_c_0), .B(CLK_48MHZ_c_0), .Y(
        reset_pulse_0_RESET_10));
    OR2 RESET_0 (.A(RESET_IN_L8_c), .B(CLK_48MHZ_c), .Y(
        reset_pulse_0_RESET_0));
    OR2 RESET_21 (.A(RESET_IN_L8_c_0), .B(CLK_48MHZ_c_0), .Y(
        reset_pulse_0_RESET_21));
    
endmodule


module timestamp(
       timestamp_0_TIMESTAMP,
       clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT,
       reset_pulse_0_RESET_12,
       reset_pulse_0_RESET_19
    );
output [23:0] timestamp_0_TIMESTAMP;
input  clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT;
input  reset_pulse_0_RESET_12;
input  reset_pulse_0_RESET_19;

    wire \timestamp_0_TIMESTAMP_i[0] , TIMESTAMP_c22_0, 
        TIMESTAMP_c20_1, TIMESTAMP_c18_out, TIMESTAMP_m6_0_a2_6, 
        TIMESTAMP_m6_0_a2_4, TIMESTAMP_m6_0_a2_5, TIMESTAMP_m6_0_a2_2, 
        TIMESTAMP_c20, TIMESTAMP_c16, TIMESTAMP_c12, TIMESTAMP_c3, 
        TIMESTAMP_n23, TIMESTAMP_n22, TIMESTAMP_n21, TIMESTAMP_n20, 
        TIMESTAMP_c18, TIMESTAMP_n19, TIMESTAMP_n18, TIMESTAMP_n17, 
        TIMESTAMP_n16, TIMESTAMP_c14, TIMESTAMP_n15, TIMESTAMP_n14, 
        TIMESTAMP_n13, TIMESTAMP_n12, TIMESTAMP_c10, TIMESTAMP_n11, 
        TIMESTAMP_n10, TIMESTAMP_c8, TIMESTAMP_n9, TIMESTAMP_n8, 
        TIMESTAMP_c6, TIMESTAMP_n7, TIMESTAMP_n6, TIMESTAMP_c4, 
        TIMESTAMP_n5, TIMESTAMP_n4, TIMESTAMP_n3, TIMESTAMP_c2, 
        TIMESTAMP_n2, TIMESTAMP_n1, GND, VCC;
    
    DFN1C0 \TIMESTAMP[20]  (.D(TIMESTAMP_n20), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_19), .Q(timestamp_0_TIMESTAMP[20]));
    DFN1C0 \TIMESTAMP[16]  (.D(TIMESTAMP_n16), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_19), .Q(timestamp_0_TIMESTAMP[16]));
    XOR2 \TIMESTAMP_RNO[15]  (.A(TIMESTAMP_c14), .B(
        timestamp_0_TIMESTAMP[15]), .Y(TIMESTAMP_n15));
    NOR3C \TIMESTAMP_RNIHM4O1[20]  (.A(timestamp_0_TIMESTAMP[19]), .B(
        timestamp_0_TIMESTAMP[20]), .C(TIMESTAMP_c18_out), .Y(
        TIMESTAMP_c20_1));
    DFN1C0 \TIMESTAMP[22]  (.D(TIMESTAMP_n22), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_19), .Q(timestamp_0_TIMESTAMP[22]));
    NOR2B \TIMESTAMP_RNIBB42[4]  (.A(TIMESTAMP_c3), .B(
        timestamp_0_TIMESTAMP[4]), .Y(TIMESTAMP_c4));
    NOR3C \TIMESTAMP_RNI6CSE[11]  (.A(timestamp_0_TIMESTAMP[7]), .B(
        timestamp_0_TIMESTAMP[11]), .C(timestamp_0_TIMESTAMP[6]), .Y(
        TIMESTAMP_m6_0_a2_4));
    XOR2 \TIMESTAMP_RNO[4]  (.A(TIMESTAMP_c3), .B(
        timestamp_0_TIMESTAMP[4]), .Y(TIMESTAMP_n4));
    DFN1C0 \TIMESTAMP[4]  (.D(TIMESTAMP_n4), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_12), .Q(timestamp_0_TIMESTAMP[4]));
    AX1C \TIMESTAMP_RNO[20]  (.A(timestamp_0_TIMESTAMP[19]), .B(
        TIMESTAMP_c18), .C(timestamp_0_TIMESTAMP[20]), .Y(
        TIMESTAMP_n20));
    DFN1C0 \TIMESTAMP[13]  (.D(TIMESTAMP_n13), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_19), .Q(timestamp_0_TIMESTAMP[13]));
    DFN1C0 \TIMESTAMP[11]  (.D(TIMESTAMP_n11), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_19), .Q(timestamp_0_TIMESTAMP[11]));
    AX1C \TIMESTAMP_RNO[22]  (.A(timestamp_0_TIMESTAMP[21]), .B(
        TIMESTAMP_c20), .C(timestamp_0_TIMESTAMP[22]), .Y(
        TIMESTAMP_n22));
    XOR2 \TIMESTAMP_RNO[1]  (.A(timestamp_0_TIMESTAMP[0]), .B(
        timestamp_0_TIMESTAMP[1]), .Y(TIMESTAMP_n1));
    NOR2B \TIMESTAMP_RNI7KR[5]  (.A(timestamp_0_TIMESTAMP[5]), .B(
        timestamp_0_TIMESTAMP[8]), .Y(TIMESTAMP_m6_0_a2_2));
    VCC VCC_i (.Y(VCC));
    AX1C \TIMESTAMP_RNO[6]  (.A(timestamp_0_TIMESTAMP[5]), .B(
        TIMESTAMP_c4), .C(timestamp_0_TIMESTAMP[6]), .Y(TIMESTAMP_n6));
    XOR2 \TIMESTAMP_RNO[17]  (.A(TIMESTAMP_c16), .B(
        timestamp_0_TIMESTAMP[17]), .Y(TIMESTAMP_n17));
    DFN1C0 \TIMESTAMP[19]  (.D(TIMESTAMP_n19), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_19), .Q(timestamp_0_TIMESTAMP[19]));
    DFN1C0 \TIMESTAMP[7]  (.D(TIMESTAMP_n7), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_12), .Q(timestamp_0_TIMESTAMP[7]));
    NOR2B \TIMESTAMP_RNIBT1S[17]  (.A(timestamp_0_TIMESTAMP[17]), .B(
        timestamp_0_TIMESTAMP[18]), .Y(TIMESTAMP_c18_out));
    XOR2 \TIMESTAMP_RNO[7]  (.A(TIMESTAMP_c6), .B(
        timestamp_0_TIMESTAMP[7]), .Y(TIMESTAMP_n7));
    DFN1C0 \TIMESTAMP[8]  (.D(TIMESTAMP_n8), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_12), .Q(timestamp_0_TIMESTAMP[8]));
    DFN1C0 \TIMESTAMP[2]  (.D(TIMESTAMP_n2), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_12), .Q(timestamp_0_TIMESTAMP[2]));
    NOR2B \TIMESTAMP_RNI7TJU4[20]  (.A(TIMESTAMP_c20_1), .B(
        TIMESTAMP_c16), .Y(TIMESTAMP_c20));
    AX1C \TIMESTAMP_RNO[2]  (.A(timestamp_0_TIMESTAMP[1]), .B(
        timestamp_0_TIMESTAMP[0]), .C(timestamp_0_TIMESTAMP[2]), .Y(
        TIMESTAMP_n2));
    DFN1C0 \TIMESTAMP[18]  (.D(TIMESTAMP_n18), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_19), .Q(timestamp_0_TIMESTAMP[18]));
    AX1C \TIMESTAMP_RNO[16]  (.A(timestamp_0_TIMESTAMP[15]), .B(
        TIMESTAMP_c14), .C(timestamp_0_TIMESTAMP[16]), .Y(
        TIMESTAMP_n16));
    NOR3C \TIMESTAMP_RNIFDDA2[14]  (.A(timestamp_0_TIMESTAMP[13]), .B(
        TIMESTAMP_c12), .C(timestamp_0_TIMESTAMP[14]), .Y(
        TIMESTAMP_c14));
    DFN1C0 \TIMESTAMP[17]  (.D(TIMESTAMP_n17), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_19), .Q(timestamp_0_TIMESTAMP[17]));
    NOR3C \TIMESTAMP_RNI54TS[10]  (.A(timestamp_0_TIMESTAMP[10]), .B(
        timestamp_0_TIMESTAMP[12]), .C(TIMESTAMP_m6_0_a2_2), .Y(
        TIMESTAMP_m6_0_a2_5));
    XOR2 \TIMESTAMP_RNO[13]  (.A(TIMESTAMP_c12), .B(
        timestamp_0_TIMESTAMP[13]), .Y(TIMESTAMP_n13));
    XOR2 \TIMESTAMP_RNO[11]  (.A(TIMESTAMP_c10), .B(
        timestamp_0_TIMESTAMP[11]), .Y(TIMESTAMP_n11));
    DFN1C0 \TIMESTAMP[15]  (.D(TIMESTAMP_n15), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_19), .Q(timestamp_0_TIMESTAMP[15]));
    XOR2 \TIMESTAMP_RNO[9]  (.A(TIMESTAMP_c8), .B(
        timestamp_0_TIMESTAMP[9]), .Y(TIMESTAMP_n9));
    NOR3C \TIMESTAMP_RNIPJR3[7]  (.A(timestamp_0_TIMESTAMP[7]), .B(
        TIMESTAMP_c6), .C(timestamp_0_TIMESTAMP[8]), .Y(TIMESTAMP_c8));
    DFN1C0 \TIMESTAMP[0]  (.D(\timestamp_0_TIMESTAMP_i[0] ), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_12), .Q(timestamp_0_TIMESTAMP[0]));
    NOR3C \TIMESTAMP_RNIGTV2[5]  (.A(timestamp_0_TIMESTAMP[5]), .B(
        TIMESTAMP_c4), .C(timestamp_0_TIMESTAMP[6]), .Y(TIMESTAMP_c6));
    DFN1C0 \TIMESTAMP[5]  (.D(TIMESTAMP_n5), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_12), .Q(timestamp_0_TIMESTAMP[5]));
    GND GND_i (.Y(GND));
    XOR2 \TIMESTAMP_RNO[19]  (.A(TIMESTAMP_c18), .B(
        timestamp_0_TIMESTAMP[19]), .Y(TIMESTAMP_n19));
    DFN1C0 \TIMESTAMP[10]  (.D(TIMESTAMP_n10), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_19), .Q(timestamp_0_TIMESTAMP[10]));
    NOR2B \TIMESTAMP_RNIQJM1[3]  (.A(TIMESTAMP_c2), .B(
        timestamp_0_TIMESTAMP[3]), .Y(TIMESTAMP_c3));
    NOR3C \TIMESTAMP_RNID7AI[10]  (.A(timestamp_0_TIMESTAMP[9]), .B(
        TIMESTAMP_c8), .C(timestamp_0_TIMESTAMP[10]), .Y(TIMESTAMP_c10)
        );
    DFN1C0 \TIMESTAMP[23]  (.D(TIMESTAMP_n23), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_19), .Q(timestamp_0_TIMESTAMP[23]));
    DFN1C0 \TIMESTAMP[12]  (.D(TIMESTAMP_n12), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_19), .Q(timestamp_0_TIMESTAMP[12]));
    DFN1C0 \TIMESTAMP[21]  (.D(TIMESTAMP_n21), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_19), .Q(timestamp_0_TIMESTAMP[21]));
    DFN1C0 \TIMESTAMP[3]  (.D(TIMESTAMP_n3), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_12), .Q(timestamp_0_TIMESTAMP[3]));
    DFN1C0 \TIMESTAMP[1]  (.D(TIMESTAMP_n1), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_12), .Q(timestamp_0_TIMESTAMP[1]));
    AX1C \TIMESTAMP_RNO[14]  (.A(timestamp_0_TIMESTAMP[13]), .B(
        TIMESTAMP_c12), .C(timestamp_0_TIMESTAMP[14]), .Y(
        TIMESTAMP_n14));
    XOR2 \TIMESTAMP_RNO[5]  (.A(TIMESTAMP_c4), .B(
        timestamp_0_TIMESTAMP[5]), .Y(TIMESTAMP_n5));
    NOR3C \TIMESTAMP_RNIAT81[2]  (.A(timestamp_0_TIMESTAMP[1]), .B(
        timestamp_0_TIMESTAMP[0]), .C(timestamp_0_TIMESTAMP[2]), .Y(
        TIMESTAMP_c2));
    AX1C \TIMESTAMP_RNO[10]  (.A(timestamp_0_TIMESTAMP[9]), .B(
        TIMESTAMP_c8), .C(timestamp_0_TIMESTAMP[10]), .Y(TIMESTAMP_n10)
        );
    NOR3C \TIMESTAMP_RNID0OF[4]  (.A(timestamp_0_TIMESTAMP[4]), .B(
        timestamp_0_TIMESTAMP[9]), .C(TIMESTAMP_m6_0_a2_4), .Y(
        TIMESTAMP_m6_0_a2_6));
    AX1C \TIMESTAMP_RNO[8]  (.A(timestamp_0_TIMESTAMP[7]), .B(
        TIMESTAMP_c6), .C(timestamp_0_TIMESTAMP[8]), .Y(TIMESTAMP_n8));
    AX1C \TIMESTAMP_RNO[18]  (.A(timestamp_0_TIMESTAMP[17]), .B(
        TIMESTAMP_c16), .C(timestamp_0_TIMESTAMP[18]), .Y(
        TIMESTAMP_n18));
    AX1C \TIMESTAMP_RNO[12]  (.A(timestamp_0_TIMESTAMP[11]), .B(
        TIMESTAMP_c10), .C(timestamp_0_TIMESTAMP[12]), .Y(
        TIMESTAMP_n12));
    DFN1C0 \TIMESTAMP[14]  (.D(TIMESTAMP_n14), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_19), .Q(timestamp_0_TIMESTAMP[14]));
    NOR3C \TIMESTAMP_RNIM6F63[16]  (.A(timestamp_0_TIMESTAMP[15]), .B(
        TIMESTAMP_c14), .C(timestamp_0_TIMESTAMP[16]), .Y(
        TIMESTAMP_c16));
    AX1C \TIMESTAMP_RNO[23]  (.A(TIMESTAMP_c20), .B(TIMESTAMP_c22_0), 
        .C(timestamp_0_TIMESTAMP[23]), .Y(TIMESTAMP_n23));
    XOR2 \TIMESTAMP_RNO[21]  (.A(TIMESTAMP_c20), .B(
        timestamp_0_TIMESTAMP[21]), .Y(TIMESTAMP_n21));
    NOR2B \TIMESTAMP_RNI14H24[17]  (.A(TIMESTAMP_c16), .B(
        TIMESTAMP_c18_out), .Y(TIMESTAMP_c18));
    NOR2B \TIMESTAMP_RNO_0[23]  (.A(timestamp_0_TIMESTAMP[22]), .B(
        timestamp_0_TIMESTAMP[21]), .Y(TIMESTAMP_c22_0));
    XOR2 \TIMESTAMP_RNO[3]  (.A(TIMESTAMP_c2), .B(
        timestamp_0_TIMESTAMP[3]), .Y(TIMESTAMP_n3));
    DFN1C0 \TIMESTAMP[9]  (.D(TIMESTAMP_n9), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_12), .Q(timestamp_0_TIMESTAMP[9]));
    NOR3C \TIMESTAMP_RNICOBE1[4]  (.A(TIMESTAMP_m6_0_a2_6), .B(
        TIMESTAMP_m6_0_a2_5), .C(TIMESTAMP_c3), .Y(TIMESTAMP_c12));
    INV \TIMESTAMP_RNO[0]  (.A(timestamp_0_TIMESTAMP[0]), .Y(
        \timestamp_0_TIMESTAMP_i[0] ));
    DFN1C0 \TIMESTAMP[6]  (.D(TIMESTAMP_n6), .CLK(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .CLR(
        reset_pulse_0_RESET_12), .Q(timestamp_0_TIMESTAMP[6]));
    
endmodule


module read_buffer(
       byte_out_cl,
       write_address_traversal_0_ROW_WRITE_OUT,
       byte_out,
       sdram_interface_0_DATA_READ,
       reset_pulse_0_RESET_15,
       N_22,
       reset_pulse_0_RESET_19,
       read_buffer_0_READ_CMD,
       reset_pulse_0_CLK_OUT_48MHZ,
       reset_pulse_0_RESET_3,
       constant_sensor_data_0_NEXT_BYTE,
       reset_pulse_0_RESET_18,
       reset_pulse_0_RESET_6,
       reset_pulse_0_RESET_7,
       reset_pulse_0_RESET_16
    );
output [0:0] byte_out_cl;
input  [12:0] write_address_traversal_0_ROW_WRITE_OUT;
output [7:0] byte_out;
input  [15:0] sdram_interface_0_DATA_READ;
input  reset_pulse_0_RESET_15;
output N_22;
input  reset_pulse_0_RESET_19;
output read_buffer_0_READ_CMD;
input  reset_pulse_0_CLK_OUT_48MHZ;
input  reset_pulse_0_RESET_3;
input  constant_sensor_data_0_NEXT_BYTE;
input  reset_pulse_0_RESET_18;
input  reset_pulse_0_RESET_6;
input  reset_pulse_0_RESET_7;
input  reset_pulse_0_RESET_16;

    wire buffer_b_0_sqmuxa_1, \position[0]_net_1 , \position[1]_net_1 , 
        init_wait_66_0, \init_wait[7]_net_1 , un1_init_wait, 
        \init_stage_ns_i_a2_0_0[1] , \init_stage_ns_i_a2_0_a3_0_2[1] , 
        \init_stage[1]_net_1 , \init_stage[0]_net_1 , 
        un1_init_waitlto8_0, \init_wait[8]_net_1 , buffer_a3lto7_0, 
        \init_wait[6]_net_1 , init_stage_tr3_10, init_stage_tr3_7, 
        init_stage_tr3_6, init_stage_tr3_8, read_cmd4_i_a3_1, 
        init_stage_tr3_3, init_stage_tr3_1, 
        \init_stage_ns_i_a2_0_a3_0_10_4[1]_net_1 , 
        \init_stage_ns_i_a2_0_a3_0_10_5[1]_net_1 , 
        \init_stage_ns_i_a2_0_a3_0_1[1] , N_28_5, 
        \init_stage_ns_i_a2_0_a3_0_10_3[1]_net_1 , 
        \init_stage_ns_i_a2_0_a3_0_10_1[1]_net_1 , 
        read_cmd4_i_a3_0_net_1, \init_stage_ns[0] , 
        \init_stage_RNO[1]_net_1 , un1_init_waitlt8, 
        \init_wait[4]_net_1 , \init_wait[5]_net_1 , buffer_b_0_sqmuxa, 
        un1_init_stage_1, init_wait_n7, init_wait_c6, init_wait_n6, 
        init_wait_c5, init_wait_n5, init_wait_c4, init_wait_n4, 
        init_wait_c3, init_wait_n3, \init_wait[3]_net_1 , N_348, 
        init_wait_n2, init_wait_n2_tz, \init_wait[1]_net_1 , 
        init_wait_c0, \init_wait[2]_net_1 , un1_read_cmd_0_sqmuxa_1, 
        un1_buffer_a10, read_cmd_1_sqmuxa, N_21, init_wait_n8, N_198, 
        init_wait_n1, N_368, buffer_a3lto3, buffer_a3lt7, buffer_a3, 
        \init_stage_2[1] , \init_stage_2[0] , init_stage_0_sqmuxa, 
        read_cmd_0_sqmuxa, buffer_a_0_sqmuxa, buffer_a14, 
        \byte_out_6[2] , N_61, N_69, \byte_out_6[1] , N_60, N_68, 
        \buffer_a[10]_net_1 , \buffer_b[10]_net_1 , 
        \buffer_a[9]_net_1 , \buffer_b[9]_net_1 , \buffer_a[2]_net_1 , 
        \buffer_b[2]_net_1 , \buffer_a[1]_net_1 , \buffer_b[1]_net_1 , 
        N_59, \buffer_a[0]_net_1 , \buffer_b[0]_net_1 , N_67, 
        \buffer_a[8]_net_1 , \buffer_b[8]_net_1 , \byte_out_6[0] , 
        N_62, \buffer_a[3]_net_1 , \buffer_b[3]_net_1 , N_63, 
        \buffer_a[4]_net_1 , \buffer_b[4]_net_1 , N_64, 
        \buffer_a[5]_net_1 , \buffer_b[5]_net_1 , N_70, 
        \buffer_a[11]_net_1 , \buffer_b[11]_net_1 , N_71, 
        \buffer_a[12]_net_1 , \buffer_b[12]_net_1 , N_72, 
        \buffer_a[13]_net_1 , \buffer_b[13]_net_1 , \byte_out_6[3] , 
        \byte_out_6[4] , \byte_out_6[5] , N_65, \buffer_a[6]_net_1 , 
        \buffer_b[6]_net_1 , N_66, \buffer_a[7]_net_1 , 
        \buffer_b[7]_net_1 , N_73, \buffer_a[14]_net_1 , 
        \buffer_b[14]_net_1 , N_74, \buffer_a[15]_net_1 , 
        \buffer_b[15]_net_1 , \byte_out_6[6] , \byte_out_6[7] , 
        init_stage_202_d, \byte_out_cl_RNO[0]_net_1 , 
        \DWACT_ADD_CI_0_partial_sum[0] , I_10, \DWACT_ADD_CI_0_TMP[0] , 
        GND, VCC;
    
    OA1 \position_RNI61OQ7[0]  (.A(buffer_a14), .B(read_cmd_0_sqmuxa), 
        .C(reset_pulse_0_RESET_19), .Y(buffer_a_0_sqmuxa));
    NOR3C \init_stage_RNO_1[1]  (.A(
        \init_stage_ns_i_a2_0_a3_0_10_4[1]_net_1 ), .B(
        \init_stage_ns_i_a2_0_a3_0_10_5[1]_net_1 ), .C(
        \init_stage_ns_i_a2_0_a3_0_1[1] ), .Y(
        \init_stage_ns_i_a2_0_a3_0_2[1] ));
    NOR2B \init_stage_RNISSSO[0]  (.A(N_21), .B(\init_stage[0]_net_1 ), 
        .Y(\init_stage_2[0] ));
    DFN1E1C0 \byte_out[6]  (.D(\byte_out_6[6] ), .CLK(
        constant_sensor_data_0_NEXT_BYTE), .CLR(reset_pulse_0_RESET_3), 
        .E(init_stage_202_d), .Q(byte_out[6]));
    NOR3A \init_stage_RNO_1[0]  (.A(init_stage_tr3_3), .B(
        write_address_traversal_0_ROW_WRITE_OUT[8]), .C(
        write_address_traversal_0_ROW_WRITE_OUT[7]), .Y(
        init_stage_tr3_7));
    MX2 \byte_out_RNO[1]  (.A(N_60), .B(N_68), .S(\position[0]_net_1 ), 
        .Y(\byte_out_6[1] ));
    NOR2 \init_stage_ns_i_a2_0_a3_0_10_1[1]  (.A(
        write_address_traversal_0_ROW_WRITE_OUT[7]), .B(
        write_address_traversal_0_ROW_WRITE_OUT[6]), .Y(
        \init_stage_ns_i_a2_0_a3_0_10_1[1]_net_1 ));
    MX2 \byte_out_RNO_1[6]  (.A(\buffer_a[14]_net_1 ), .B(
        \buffer_b[14]_net_1 ), .S(\position[1]_net_1 ), .Y(N_73));
    NOR3C \position_RNI02234[0]  (.A(\position[0]_net_1 ), .B(
        un1_init_stage_1), .C(\position[1]_net_1 ), .Y(buffer_a14));
    NOR3A \init_stage_RNO_3[0]  (.A(read_cmd4_i_a3_1), .B(
        write_address_traversal_0_ROW_WRITE_OUT[10]), .C(
        write_address_traversal_0_ROW_WRITE_OUT[9]), .Y(
        init_stage_tr3_8));
    XA1A \init_wait_RNO[3]  (.A(\init_wait[3]_net_1 ), .B(N_348), .C(
        un1_init_wait), .Y(init_wait_n3));
    DFN1E1 \buffer_a[0]  (.D(sdram_interface_0_DATA_READ[0]), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(buffer_a_0_sqmuxa), .Q(
        \buffer_a[0]_net_1 ));
    DFN1E1 \buffer_b[8]  (.D(sdram_interface_0_DATA_READ[8]), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(buffer_b_0_sqmuxa), .Q(
        \buffer_b[8]_net_1 ));
    OR2B \init_wait_RNIJJSM[8]  (.A(\init_wait[8]_net_1 ), .B(
        \init_wait[7]_net_1 ), .Y(un1_init_waitlto8_0));
    DFN1E1C0 \init_wait[1]  (.D(init_wait_n1), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_6), .E(
        \init_stage_2[1] ), .Q(\init_wait[1]_net_1 ));
    OR2B \init_stage_ns_i_a2_0_o2[1]  (.A(
        write_address_traversal_0_ROW_WRITE_OUT[0]), .B(
        write_address_traversal_0_ROW_WRITE_OUT[1]), .Y(N_22));
    DFN1E1 \buffer_b[14]  (.D(sdram_interface_0_DATA_READ[14]), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(buffer_b_0_sqmuxa), .Q(
        \buffer_b[14]_net_1 ));
    MX2 \byte_out_RNO[6]  (.A(N_65), .B(N_73), .S(\position[0]_net_1 ), 
        .Y(\byte_out_6[6] ));
    DFN1E1 \buffer_a[9]  (.D(sdram_interface_0_DATA_READ[9]), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(buffer_a_0_sqmuxa), .Q(
        \buffer_a[9]_net_1 ));
    DFN1C0 \position[0]  (.D(\DWACT_ADD_CI_0_partial_sum[0] ), .CLK(
        constant_sensor_data_0_NEXT_BYTE), .CLR(reset_pulse_0_RESET_18)
        , .Q(\position[0]_net_1 ));
    NOR2A \init_wait_RNO[0]  (.A(un1_init_wait), .B(init_wait_c0), .Y(
        N_368));
    NOR2B \init_wait_RNIRRK42[5]  (.A(init_wait_c4), .B(
        \init_wait[5]_net_1 ), .Y(init_wait_c5));
    NOR2B \init_wait_RNO_0[8]  (.A(\init_wait[7]_net_1 ), .B(
        un1_init_wait), .Y(init_wait_66_0));
    NOR2B \init_wait_RNO[2]  (.A(un1_init_wait), .B(init_wait_n2_tz), 
        .Y(init_wait_n2));
    DFN1E1C0 \init_wait[8]  (.D(init_wait_n8), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_7), .E(
        \init_stage_2[1] ), .Q(\init_wait[8]_net_1 ));
    DFN1E1 \buffer_a[1]  (.D(sdram_interface_0_DATA_READ[1]), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(buffer_a_0_sqmuxa), .Q(
        \buffer_a[1]_net_1 ));
    DFN1E1C0 \byte_out[2]  (.D(\byte_out_6[2] ), .CLK(
        constant_sensor_data_0_NEXT_BYTE), .CLR(reset_pulse_0_RESET_3), 
        .E(init_stage_202_d), .Q(byte_out[2]));
    DFN1E1 \buffer_b[11]  (.D(sdram_interface_0_DATA_READ[11]), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(buffer_b_0_sqmuxa), .Q(
        \buffer_b[11]_net_1 ));
    XA1 \init_wait_RNO[1]  (.A(\init_wait[1]_net_1 ), .B(init_wait_c0), 
        .C(un1_init_wait), .Y(init_wait_n1));
    DFN1E1 \buffer_a[10]  (.D(sdram_interface_0_DATA_READ[10]), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(buffer_a_0_sqmuxa), .Q(
        \buffer_a[10]_net_1 ));
    DFN1E1 \buffer_b[6]  (.D(sdram_interface_0_DATA_READ[6]), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(buffer_b_0_sqmuxa), .Q(
        \buffer_b[6]_net_1 ));
    NOR2 \init_stage_RNI141B3[0]  (.A(\init_stage_2[0] ), .B(
        init_stage_0_sqmuxa), .Y(un1_init_stage_1));
    DFN1E1C0 \byte_out[5]  (.D(\byte_out_6[5] ), .CLK(
        constant_sensor_data_0_NEXT_BYTE), .CLR(reset_pulse_0_RESET_3), 
        .E(init_stage_202_d), .Q(byte_out[5]));
    MX2 \byte_out_RNO_1[1]  (.A(\buffer_a[9]_net_1 ), .B(
        \buffer_b[9]_net_1 ), .S(\position[1]_net_1 ), .Y(N_68));
    MX2 \byte_out_RNO[2]  (.A(N_61), .B(N_69), .S(\position[0]_net_1 ), 
        .Y(\byte_out_6[2] ));
    DFN1E1 \buffer_b[0]  (.D(sdram_interface_0_DATA_READ[0]), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(buffer_b_0_sqmuxa), .Q(
        \buffer_b[0]_net_1 ));
    NOR3B read_cmd_RNO_0 (.A(un1_buffer_a10), .B(N_21), .C(
        un1_init_stage_1), .Y(read_cmd_1_sqmuxa));
    GND GND_i (.Y(GND));
    DFN1E1 \buffer_a[8]  (.D(sdram_interface_0_DATA_READ[8]), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(buffer_a_0_sqmuxa), .Q(
        \buffer_a[8]_net_1 ));
    MX2 \byte_out_RNO_1[5]  (.A(\buffer_a[13]_net_1 ), .B(
        \buffer_b[13]_net_1 ), .S(\position[1]_net_1 ), .Y(N_72));
    XA1 \init_wait_RNO[5]  (.A(init_wait_c4), .B(\init_wait[5]_net_1 ), 
        .C(un1_init_wait), .Y(init_wait_n5));
    NOR2A \init_stage_RNO[1]  (.A(un1_init_wait), .B(
        \init_stage_ns_i_a2_0_0[1] ), .Y(\init_stage_RNO[1]_net_1 ));
    DFN1E1C0 \init_wait[6]  (.D(init_wait_n6), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_6), .E(
        \init_stage_2[1] ), .Q(\init_wait[6]_net_1 ));
    DFN1E1C0 \byte_out[3]  (.D(\byte_out_6[3] ), .CLK(
        constant_sensor_data_0_NEXT_BYTE), .CLR(reset_pulse_0_RESET_3), 
        .E(init_stage_202_d), .Q(byte_out[3]));
    MX2 \byte_out_RNO_0[2]  (.A(\buffer_a[2]_net_1 ), .B(
        \buffer_b[2]_net_1 ), .S(\position[1]_net_1 ), .Y(N_61));
    NOR2B \init_wait_RNO_1[8]  (.A(\init_wait[8]_net_1 ), .B(
        un1_init_wait), .Y(N_198));
    DFN1E1C0 \byte_out[7]  (.D(\byte_out_6[7] ), .CLK(
        constant_sensor_data_0_NEXT_BYTE), .CLR(reset_pulse_0_RESET_3), 
        .E(init_stage_202_d), .Q(byte_out[7]));
    DFN1E1 \buffer_b[9]  (.D(sdram_interface_0_DATA_READ[9]), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(buffer_b_0_sqmuxa), .Q(
        \buffer_b[9]_net_1 ));
    VCC VCC_i (.Y(VCC));
    MX2 \byte_out_RNO_0[7]  (.A(\buffer_a[7]_net_1 ), .B(
        \buffer_b[7]_net_1 ), .S(\position[1]_net_1 ), .Y(N_66));
    MX2 \byte_out_RNO_0[4]  (.A(\buffer_a[4]_net_1 ), .B(
        \buffer_b[4]_net_1 ), .S(\position[1]_net_1 ), .Y(N_63));
    XOR2 un1_position_2_I_10 (.A(\position[1]_net_1 ), .B(
        \DWACT_ADD_CI_0_TMP[0] ), .Y(I_10));
    DFN1E1 \buffer_b[4]  (.D(sdram_interface_0_DATA_READ[4]), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(buffer_b_0_sqmuxa), .Q(
        \buffer_b[4]_net_1 ));
    DFN1C0 \init_stage[1]  (.D(\init_stage_RNO[1]_net_1 ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_16), .Q(
        \init_stage[1]_net_1 ));
    MX2 \byte_out_RNO[0]  (.A(N_59), .B(N_67), .S(\position[0]_net_1 ), 
        .Y(\byte_out_6[0] ));
    DFN1E1 \buffer_a[7]  (.D(sdram_interface_0_DATA_READ[7]), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(buffer_a_0_sqmuxa), .Q(
        \buffer_a[7]_net_1 ));
    OR3C \init_wait_RNI99A21[1]  (.A(\init_wait[1]_net_1 ), .B(
        init_wait_c0), .C(\init_wait[2]_net_1 ), .Y(N_348));
    DFN1E1 \buffer_b[10]  (.D(sdram_interface_0_DATA_READ[10]), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(buffer_b_0_sqmuxa), .Q(
        \buffer_b[10]_net_1 ));
    MX2 \byte_out_RNO[5]  (.A(N_64), .B(N_72), .S(\position[0]_net_1 ), 
        .Y(\byte_out_6[5] ));
    DFN1E1 \buffer_a[12]  (.D(sdram_interface_0_DATA_READ[12]), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(buffer_a_0_sqmuxa), .Q(
        \buffer_a[12]_net_1 ));
    XOR2 un1_position_2_I_8 (.A(\position[0]_net_1 ), .B(
        init_stage_202_d), .Y(\DWACT_ADD_CI_0_partial_sum[0] ));
    NOR2 \init_stage_RNI3HC6[1]  (.A(\init_stage[0]_net_1 ), .B(
        \init_stage[1]_net_1 ), .Y(init_stage_202_d));
    AO1B \init_stage_RNIRKML[0]  (.A(read_cmd4_i_a3_1), .B(
        read_cmd4_i_a3_0_net_1), .C(\init_stage[0]_net_1 ), .Y(N_21));
    NOR2B \init_wait_RNIEG093_0[8]  (.A(buffer_a3), .B(
        \init_stage_2[1] ), .Y(read_cmd_0_sqmuxa));
    NOR3A \init_stage_RNO_2[0]  (.A(init_stage_tr3_1), .B(
        write_address_traversal_0_ROW_WRITE_OUT[3]), .C(
        write_address_traversal_0_ROW_WRITE_OUT[4]), .Y(
        init_stage_tr3_6));
    DFN1E1 \buffer_b[2]  (.D(sdram_interface_0_DATA_READ[2]), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(buffer_b_0_sqmuxa), .Q(
        \buffer_b[2]_net_1 ));
    NOR3A \init_stage_ns_i_a2_0_a3_0_10_4[1]  (.A(
        \init_stage_ns_i_a2_0_a3_0_10_1[1]_net_1 ), .B(
        write_address_traversal_0_ROW_WRITE_OUT[4]), .C(
        write_address_traversal_0_ROW_WRITE_OUT[5]), .Y(
        \init_stage_ns_i_a2_0_a3_0_10_4[1]_net_1 ));
    DFN1E1 \buffer_a[15]  (.D(sdram_interface_0_DATA_READ[15]), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(buffer_a_0_sqmuxa), .Q(
        \buffer_a[15]_net_1 ));
    NOR2B \init_wait_RNIKK6P1[4]  (.A(init_wait_c3), .B(
        \init_wait[4]_net_1 ), .Y(init_wait_c4));
    AO1B \init_wait_RNIHI3G2[8]  (.A(buffer_a3lto7_0), .B(buffer_a3lt7)
        , .C(\init_wait[8]_net_1 ), .Y(buffer_a3));
    DFN1E1C0 \byte_out[0]  (.D(\byte_out_6[0] ), .CLK(
        constant_sensor_data_0_NEXT_BYTE), .CLR(reset_pulse_0_RESET_3), 
        .E(init_stage_202_d), .Q(byte_out[0]));
    AO1C \init_wait_RNIMMOD1[4]  (.A(\init_wait[4]_net_1 ), .B(
        buffer_a3lto3), .C(\init_wait[5]_net_1 ), .Y(buffer_a3lt7));
    MX2 \byte_out_RNO_0[3]  (.A(\buffer_a[3]_net_1 ), .B(
        \buffer_b[3]_net_1 ), .S(\position[1]_net_1 ), .Y(N_62));
    MX2 \byte_out_RNO_1[2]  (.A(\buffer_a[10]_net_1 ), .B(
        \buffer_b[10]_net_1 ), .S(\position[1]_net_1 ), .Y(N_69));
    MX2 \byte_out_RNO[3]  (.A(N_62), .B(N_70), .S(\position[0]_net_1 ), 
        .Y(\byte_out_6[3] ));
    DFN1E1C0 \init_wait[4]  (.D(init_wait_n4), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_6), .E(
        \init_stage_2[1] ), .Q(\init_wait[4]_net_1 ));
    NOR3B \init_stage_RNO[0]  (.A(\init_stage[0]_net_1 ), .B(
        init_stage_tr3_10), .C(\init_stage[1]_net_1 ), .Y(
        \init_stage_ns[0] ));
    NOR3A \init_stage_ns_i_a2_0_a3_0_10_5[1]  (.A(
        \init_stage_ns_i_a2_0_a3_0_10_3[1]_net_1 ), .B(
        write_address_traversal_0_ROW_WRITE_OUT[8]), .C(
        write_address_traversal_0_ROW_WRITE_OUT[9]), .Y(
        \init_stage_ns_i_a2_0_a3_0_10_5[1]_net_1 ));
    DFN1E1 \buffer_a[13]  (.D(sdram_interface_0_DATA_READ[13]), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(buffer_a_0_sqmuxa), .Q(
        \buffer_a[13]_net_1 ));
    NOR3 \init_wait_RNILLA21[4]  (.A(\init_wait[6]_net_1 ), .B(
        \init_wait[4]_net_1 ), .C(\init_wait[5]_net_1 ), .Y(
        un1_init_waitlt8));
    DFN1E1 \buffer_b[3]  (.D(sdram_interface_0_DATA_READ[3]), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(buffer_b_0_sqmuxa), .Q(
        \buffer_b[3]_net_1 ));
    MX2 \byte_out_RNO_1[4]  (.A(\buffer_a[12]_net_1 ), .B(
        \buffer_b[12]_net_1 ), .S(\position[1]_net_1 ), .Y(N_71));
    NOR2 \init_stage_RNO_5[0]  (.A(
        write_address_traversal_0_ROW_WRITE_OUT[5]), .B(
        write_address_traversal_0_ROW_WRITE_OUT[2]), .Y(
        init_stage_tr3_1));
    NOR2A \init_wait_RNIEEOD1[3]  (.A(\init_wait[3]_net_1 ), .B(N_348), 
        .Y(init_wait_c3));
    NOR2 \init_stage_ns_i_a2_0_a3_0_10_3[1]  (.A(
        write_address_traversal_0_ROW_WRITE_OUT[11]), .B(
        write_address_traversal_0_ROW_WRITE_OUT[10]), .Y(
        \init_stage_ns_i_a2_0_a3_0_10_3[1]_net_1 ));
    OR2 \byte_out_cl_RNO[0]  (.A(byte_out_cl[0]), .B(init_stage_202_d), 
        .Y(\byte_out_cl_RNO[0]_net_1 ));
    OR2A \init_wait_RNIEG093[8]  (.A(\init_stage_2[1] ), .B(buffer_a3), 
        .Y(un1_buffer_a10));
    NOR2B \position_RNIOGNH4[0]  (.A(buffer_b_0_sqmuxa_1), .B(
        un1_init_stage_1), .Y(buffer_b_0_sqmuxa));
    DFN1P0 \init_stage[0]  (.D(\init_stage_ns[0] ), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .PRE(reset_pulse_0_RESET_15), .Q(
        \init_stage[0]_net_1 ));
    DFN1E1C0 \init_wait[2]  (.D(init_wait_n2), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_6), .E(
        \init_stage_2[1] ), .Q(\init_wait[2]_net_1 ));
    DFN1E1 \buffer_a[4]  (.D(sdram_interface_0_DATA_READ[4]), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(buffer_a_0_sqmuxa), .Q(
        \buffer_a[4]_net_1 ));
    MX2 \byte_out_RNO_1[3]  (.A(\buffer_a[11]_net_1 ), .B(
        \buffer_b[11]_net_1 ), .S(\position[1]_net_1 ), .Y(N_70));
    MX2 \byte_out_RNO_1[0]  (.A(\buffer_a[8]_net_1 ), .B(
        \buffer_b[8]_net_1 ), .S(\position[1]_net_1 ), .Y(N_67));
    NOR3C read_cmd4_i_a3_0 (.A(
        \init_stage_ns_i_a2_0_a3_0_10_4[1]_net_1 ), .B(
        \init_stage_ns_i_a2_0_a3_0_10_5[1]_net_1 ), .C(N_28_5), .Y(
        read_cmd4_i_a3_0_net_1));
    DFN1E1 \buffer_a[3]  (.D(sdram_interface_0_DATA_READ[3]), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(buffer_a_0_sqmuxa), .Q(
        \buffer_a[3]_net_1 ));
    MX2 \byte_out_RNO[7]  (.A(N_66), .B(N_74), .S(\position[0]_net_1 ), 
        .Y(\byte_out_6[7] ));
    MX2 \byte_out_RNO[4]  (.A(N_63), .B(N_71), .S(\position[0]_net_1 ), 
        .Y(\byte_out_6[4] ));
    OR2A \init_stage_RNITTSO[1]  (.A(N_21), .B(\init_stage[1]_net_1 ), 
        .Y(\init_stage_2[1] ));
    DFN1E1 \buffer_b[12]  (.D(sdram_interface_0_DATA_READ[12]), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(buffer_b_0_sqmuxa), .Q(
        \buffer_b[12]_net_1 ));
    DFN1E1C0 \byte_out[4]  (.D(\byte_out_6[4] ), .CLK(
        constant_sensor_data_0_NEXT_BYTE), .CLR(reset_pulse_0_RESET_3), 
        .E(init_stage_202_d), .Q(byte_out[4]));
    XA1 \init_wait_RNO[7]  (.A(init_wait_c6), .B(\init_wait[7]_net_1 ), 
        .C(un1_init_wait), .Y(init_wait_n7));
    DFN1E1 \buffer_b[7]  (.D(sdram_interface_0_DATA_READ[7]), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(buffer_b_0_sqmuxa), .Q(
        \buffer_b[7]_net_1 ));
    NOR3B \position_RNINCM61[0]  (.A(\position[0]_net_1 ), .B(
        reset_pulse_0_RESET_15), .C(\position[1]_net_1 ), .Y(
        buffer_b_0_sqmuxa_1));
    OR2B \init_wait_RNI99SM[2]  (.A(\init_wait[2]_net_1 ), .B(
        \init_wait[3]_net_1 ), .Y(buffer_a3lto3));
    DFN1E1C0 \init_wait[0]  (.D(N_368), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_6), .E(
        \init_stage_2[1] ), .Q(init_wait_c0));
    NOR2 \init_stage_RNO_4[0]  (.A(
        write_address_traversal_0_ROW_WRITE_OUT[11]), .B(
        write_address_traversal_0_ROW_WRITE_OUT[6]), .Y(
        init_stage_tr3_3));
    DFN1E1 \buffer_b[15]  (.D(sdram_interface_0_DATA_READ[15]), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(buffer_b_0_sqmuxa), .Q(
        \buffer_b[15]_net_1 ));
    NOR2B \init_wait_RNI343G2[6]  (.A(init_wait_c5), .B(
        \init_wait[6]_net_1 ), .Y(init_wait_c6));
    DFN1C0 \position[1]  (.D(I_10), .CLK(
        constant_sensor_data_0_NEXT_BYTE), .CLR(reset_pulse_0_RESET_18)
        , .Q(\position[1]_net_1 ));
    DFN1E1 \buffer_a[6]  (.D(sdram_interface_0_DATA_READ[6]), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(buffer_a_0_sqmuxa), .Q(
        \buffer_a[6]_net_1 ));
    NOR2 \init_wait_RNIHHSM[6]  (.A(\init_wait[6]_net_1 ), .B(
        \init_wait[7]_net_1 ), .Y(buffer_a3lto7_0));
    NOR3C \init_stage_RNO_0[0]  (.A(init_stage_tr3_7), .B(
        init_stage_tr3_6), .C(init_stage_tr3_8), .Y(init_stage_tr3_10));
    NOR2B \init_stage_RNI574I2[1]  (.A(\init_stage_2[1] ), .B(
        un1_init_wait), .Y(init_stage_0_sqmuxa));
    MX2 \byte_out_RNO_0[0]  (.A(\buffer_a[0]_net_1 ), .B(
        \buffer_b[0]_net_1 ), .S(\position[1]_net_1 ), .Y(N_59));
    MX2 \byte_out_RNO_0[6]  (.A(\buffer_a[6]_net_1 ), .B(
        \buffer_b[6]_net_1 ), .S(\position[1]_net_1 ), .Y(N_65));
    DFN1E1 \buffer_b[13]  (.D(sdram_interface_0_DATA_READ[13]), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(buffer_b_0_sqmuxa), .Q(
        \buffer_b[13]_net_1 ));
    DFN1E1 \buffer_a[5]  (.D(sdram_interface_0_DATA_READ[5]), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(buffer_a_0_sqmuxa), .Q(
        \buffer_a[5]_net_1 ));
    DFN1E1 \buffer_a[14]  (.D(sdram_interface_0_DATA_READ[14]), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(buffer_a_0_sqmuxa), .Q(
        \buffer_a[14]_net_1 ));
    MX2 \byte_out_RNO_0[5]  (.A(\buffer_a[5]_net_1 ), .B(
        \buffer_b[5]_net_1 ), .S(\position[1]_net_1 ), .Y(N_64));
    DFN1E1 \buffer_b[1]  (.D(sdram_interface_0_DATA_READ[1]), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(buffer_b_0_sqmuxa), .Q(
        \buffer_b[1]_net_1 ));
    DFN1E1 \buffer_b[5]  (.D(sdram_interface_0_DATA_READ[5]), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(buffer_b_0_sqmuxa), .Q(
        \buffer_b[5]_net_1 ));
    DFN1E1C0 \init_wait[5]  (.D(init_wait_n5), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_6), .E(
        \init_stage_2[1] ), .Q(\init_wait[5]_net_1 ));
    OR2 \init_wait_RNI897P1[4]  (.A(un1_init_waitlto8_0), .B(
        un1_init_waitlt8), .Y(un1_init_wait));
    AXO6 \init_stage_RNO_0[1]  (.A(\init_stage_ns_i_a2_0_a3_0_2[1] ), 
        .B(\init_stage[1]_net_1 ), .C(\init_stage[0]_net_1 ), .Y(
        \init_stage_ns_i_a2_0_0[1] ));
    NOR2 \init_stage_ns_i_a2_0_a3_0_5[1]  (.A(
        write_address_traversal_0_ROW_WRITE_OUT[3]), .B(
        write_address_traversal_0_ROW_WRITE_OUT[2]), .Y(N_28_5));
    DFN1E1C0 \init_wait[3]  (.D(init_wait_n3), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_6), .E(
        \init_stage_2[1] ), .Q(\init_wait[3]_net_1 ));
    DFN1E1 \buffer_a[11]  (.D(sdram_interface_0_DATA_READ[11]), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(buffer_a_0_sqmuxa), .Q(
        \buffer_a[11]_net_1 ));
    MX2B read_cmd_RNO (.A(un1_buffer_a10), .B(\position[0]_net_1 ), .S(
        un1_init_stage_1), .Y(un1_read_cmd_0_sqmuxa_1));
    AND2 un1_position_2_I_1 (.A(\position[0]_net_1 ), .B(
        init_stage_202_d), .Y(\DWACT_ADD_CI_0_TMP[0] ));
    DFN1E1 \buffer_a[2]  (.D(sdram_interface_0_DATA_READ[2]), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .E(buffer_a_0_sqmuxa), .Q(
        \buffer_a[2]_net_1 ));
    DFN1E0C0 read_cmd (.D(un1_read_cmd_0_sqmuxa_1), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_3), .E(
        read_cmd_1_sqmuxa), .Q(read_buffer_0_READ_CMD));
    NOR2A init_stage_tr3_5 (.A(N_22), .B(
        write_address_traversal_0_ROW_WRITE_OUT[12]), .Y(
        read_cmd4_i_a3_1));
    NOR3B \init_stage_RNO_2[1]  (.A(N_28_5), .B(N_22), .C(
        write_address_traversal_0_ROW_WRITE_OUT[12]), .Y(
        \init_stage_ns_i_a2_0_a3_0_1[1] ));
    MX2 \byte_out_RNO_0[1]  (.A(\buffer_a[1]_net_1 ), .B(
        \buffer_b[1]_net_1 ), .S(\position[1]_net_1 ), .Y(N_60));
    AX1C \init_wait_RNO_0[2]  (.A(\init_wait[1]_net_1 ), .B(
        init_wait_c0), .C(\init_wait[2]_net_1 ), .Y(init_wait_n2_tz));
    XA1 \init_wait_RNO[6]  (.A(init_wait_c5), .B(\init_wait[6]_net_1 ), 
        .C(un1_init_wait), .Y(init_wait_n6));
    MX2 \byte_out_RNO_1[7]  (.A(\buffer_a[15]_net_1 ), .B(
        \buffer_b[15]_net_1 ), .S(\position[1]_net_1 ), .Y(N_74));
    DFN1C0 \byte_out_cl[0]  (.D(\byte_out_cl_RNO[0]_net_1 ), .CLK(
        constant_sensor_data_0_NEXT_BYTE), .CLR(reset_pulse_0_RESET_18)
        , .Q(byte_out_cl[0]));
    AX1C \init_wait_RNO[8]  (.A(init_wait_c6), .B(init_wait_66_0), .C(
        N_198), .Y(init_wait_n8));
    XA1 \init_wait_RNO[4]  (.A(\init_wait[4]_net_1 ), .B(init_wait_c3), 
        .C(un1_init_wait), .Y(init_wait_n4));
    DFN1E1C0 \init_wait[7]  (.D(init_wait_n7), .CLK(
        reset_pulse_0_CLK_OUT_48MHZ), .CLR(reset_pulse_0_RESET_6), .E(
        \init_stage_2[1] ), .Q(\init_wait[7]_net_1 ));
    DFN1E1C0 \byte_out[1]  (.D(\byte_out_6[1] ), .CLK(
        constant_sensor_data_0_NEXT_BYTE), .CLR(reset_pulse_0_RESET_3), 
        .E(init_stage_202_d), .Q(byte_out[1]));
    
endmodule


module memory_test(
       CLK_48MHZ,
       RESET_IN_L8,
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
input  CLK_48MHZ;
input  RESET_IN_L8;
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

    wire VCC, reset_pulse_0_CLK_OUT_48MHZ, GLA, reset_pulse_0_RESET, 
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT, \timestamp_0_TIMESTAMP[0] , 
        \timestamp_0_TIMESTAMP[1] , \timestamp_0_TIMESTAMP[2] , 
        \timestamp_0_TIMESTAMP[3] , \timestamp_0_TIMESTAMP[4] , 
        \timestamp_0_TIMESTAMP[5] , \timestamp_0_TIMESTAMP[6] , 
        \timestamp_0_TIMESTAMP[7] , \timestamp_0_TIMESTAMP[8] , 
        \timestamp_0_TIMESTAMP[9] , \timestamp_0_TIMESTAMP[10] , 
        \timestamp_0_TIMESTAMP[11] , \timestamp_0_TIMESTAMP[12] , 
        \timestamp_0_TIMESTAMP[13] , \timestamp_0_TIMESTAMP[14] , 
        \timestamp_0_TIMESTAMP[15] , \timestamp_0_TIMESTAMP[16] , 
        \timestamp_0_TIMESTAMP[17] , \timestamp_0_TIMESTAMP[18] , 
        \timestamp_0_TIMESTAMP[19] , \timestamp_0_TIMESTAMP[20] , 
        \timestamp_0_TIMESTAMP[21] , \timestamp_0_TIMESTAMP[22] , 
        \timestamp_0_TIMESTAMP[23] , 
        \constant_sensor_data_0_G_DATA_STACK[1] , 
        \constant_sensor_data_0_G_DATA_STACK[8] , 
        \constant_sensor_data_0_G_DATA_STACK[9] , 
        \constant_sensor_data_0_G_DATA_STACK[10] , 
        \constant_sensor_data_0_G_DATA_STACK[11] , 
        \constant_sensor_data_0_G_DATA_STACK[12] , 
        \constant_sensor_data_0_G_DATA_STACK[13] , 
        \constant_sensor_data_0_G_DATA_STACK[14] , 
        \constant_sensor_data_0_G_DATA_STACK[15] , 
        \constant_sensor_data_0_G_DATA_STACK[16] , 
        \constant_sensor_data_0_G_DATA_STACK[17] , 
        \constant_sensor_data_0_G_DATA_STACK[18] , 
        \constant_sensor_data_0_G_DATA_STACK[19] , 
        \constant_sensor_data_0_G_DATA_STACK[20] , 
        \constant_sensor_data_0_G_DATA_STACK[21] , 
        \constant_sensor_data_0_G_DATA_STACK[22] , 
        \constant_sensor_data_0_G_DATA_STACK[23] , 
        \constant_sensor_data_0_G_DATA_STACK[24] , 
        \constant_sensor_data_0_G_DATA_STACK[25] , 
        \constant_sensor_data_0_G_DATA_STACK[26] , 
        \constant_sensor_data_0_G_DATA_STACK[27] , 
        \constant_sensor_data_0_G_DATA_STACK[28] , 
        \constant_sensor_data_0_G_DATA_STACK[29] , 
        \constant_sensor_data_0_G_DATA_STACK[30] , 
        \constant_sensor_data_0_G_DATA_STACK[31] , 
        \constant_sensor_data_0_G_DATA_STACK[32] , 
        \constant_sensor_data_0_G_DATA_STACK[33] , 
        \constant_sensor_data_0_G_DATA_STACK[34] , 
        \constant_sensor_data_0_G_DATA_STACK[35] , 
        \constant_sensor_data_0_G_DATA_STACK[36] , 
        \constant_sensor_data_0_G_DATA_STACK[37] , 
        \constant_sensor_data_0_G_DATA_STACK[38] , 
        \constant_sensor_data_0_G_DATA_STACK[39] , 
        \constant_sensor_data_0_G_DATA_STACK[40] , 
        \constant_sensor_data_0_G_DATA_STACK[41] , 
        \constant_sensor_data_0_G_DATA_STACK[42] , 
        \constant_sensor_data_0_G_DATA_STACK[43] , 
        \constant_sensor_data_0_G_DATA_STACK[44] , 
        \constant_sensor_data_0_G_DATA_STACK[45] , 
        \constant_sensor_data_0_G_DATA_STACK[46] , 
        \constant_sensor_data_0_G_DATA_STACK[47] , 
        \constant_sensor_data_0_G_DATA_STACK[48] , 
        \constant_sensor_data_0_M_DATA_STACK[2] , 
        \constant_sensor_data_0_M_DATA_STACK[8] , 
        \constant_sensor_data_0_M_DATA_STACK[9] , 
        \constant_sensor_data_0_M_DATA_STACK[10] , 
        \constant_sensor_data_0_M_DATA_STACK[11] , 
        \constant_sensor_data_0_M_DATA_STACK[12] , 
        \constant_sensor_data_0_M_DATA_STACK[13] , 
        \constant_sensor_data_0_M_DATA_STACK[14] , 
        \constant_sensor_data_0_M_DATA_STACK[15] , 
        \constant_sensor_data_0_M_DATA_STACK[16] , 
        \constant_sensor_data_0_M_DATA_STACK[17] , 
        \constant_sensor_data_0_M_DATA_STACK[18] , 
        \constant_sensor_data_0_M_DATA_STACK[19] , 
        \constant_sensor_data_0_M_DATA_STACK[20] , 
        \constant_sensor_data_0_M_DATA_STACK[21] , 
        \constant_sensor_data_0_M_DATA_STACK[22] , 
        \constant_sensor_data_0_M_DATA_STACK[23] , 
        \constant_sensor_data_0_M_DATA_STACK[24] , 
        \constant_sensor_data_0_M_DATA_STACK[25] , 
        \constant_sensor_data_0_M_DATA_STACK[26] , 
        \constant_sensor_data_0_M_DATA_STACK[27] , 
        \constant_sensor_data_0_M_DATA_STACK[28] , 
        \constant_sensor_data_0_M_DATA_STACK[29] , 
        \constant_sensor_data_0_M_DATA_STACK[30] , 
        \constant_sensor_data_0_M_DATA_STACK[31] , 
        \constant_sensor_data_0_M_DATA_STACK[32] , 
        \constant_sensor_data_0_M_DATA_STACK[33] , 
        \constant_sensor_data_0_M_DATA_STACK[34] , 
        \constant_sensor_data_0_M_DATA_STACK[35] , 
        \constant_sensor_data_0_M_DATA_STACK[36] , 
        \constant_sensor_data_0_M_DATA_STACK[37] , 
        \constant_sensor_data_0_M_DATA_STACK[38] , 
        \constant_sensor_data_0_M_DATA_STACK[39] , 
        \constant_sensor_data_0_M_DATA_STACK[40] , 
        \constant_sensor_data_0_M_DATA_STACK[41] , 
        \constant_sensor_data_0_M_DATA_STACK[42] , 
        \constant_sensor_data_0_M_DATA_STACK[43] , 
        \constant_sensor_data_0_M_DATA_STACK[44] , 
        \constant_sensor_data_0_M_DATA_STACK[45] , 
        \constant_sensor_data_0_M_DATA_STACK[46] , 
        \constant_sensor_data_0_M_DATA_STACK[47] , 
        \constant_sensor_data_0_M_DATA_STACK[48] , 
        \constant_sensor_data_0_M_DATA_STACK[49] , 
        \constant_sensor_data_0_M_DATA_STACK[50] , 
        \constant_sensor_data_0_M_DATA_STACK[51] , 
        \constant_sensor_data_0_M_DATA_STACK[52] , 
        \constant_sensor_data_0_M_DATA_STACK[53] , 
        \constant_sensor_data_0_M_DATA_STACK[54] , 
        \constant_sensor_data_0_M_DATA_STACK[55] , 
        \constant_sensor_data_0_M_DATA_STACK[56] , 
        \constant_sensor_data_0_M_DATA_STACK[57] , 
        \constant_sensor_data_0_M_DATA_STACK[58] , 
        \constant_sensor_data_0_M_DATA_STACK[59] , 
        \constant_sensor_data_0_M_DATA_STACK[60] , 
        \constant_sensor_data_0_M_DATA_STACK[61] , 
        \constant_sensor_data_0_M_DATA_STACK[62] , 
        \constant_sensor_data_0_M_DATA_STACK[63] , 
        \constant_sensor_data_0_M_DATA_STACK[64] , 
        \constant_sensor_data_0_M_DATA_STACK[65] , 
        \constant_sensor_data_0_M_DATA_STACK[66] , 
        \constant_sensor_data_0_M_DATA_STACK[67] , 
        \constant_sensor_data_0_M_DATA_STACK[68] , 
        \constant_sensor_data_0_M_DATA_STACK[69] , 
        \constant_sensor_data_0_M_DATA_STACK[70] , 
        \constant_sensor_data_0_M_DATA_STACK[71] , 
        \constant_sensor_data_0_M_DATA_STACK[72] , 
        \constant_sensor_data_0_M_DATA_STACK[73] , 
        \constant_sensor_data_0_M_DATA_STACK[74] , 
        \constant_sensor_data_0_M_DATA_STACK[75] , 
        \constant_sensor_data_0_M_DATA_STACK[76] , 
        \constant_sensor_data_0_M_DATA_STACK[77] , 
        \constant_sensor_data_0_M_DATA_STACK[78] , 
        \constant_sensor_data_0_M_DATA_STACK[79] , 
        constant_sensor_data_0_NEXT_BYTE, sdram_interface_0_STATUS, 
        read_buffer_0_READ_CMD, 
        \read_address_traversal_0_BA_READ_OUT[0] , 
        \read_address_traversal_0_BA_READ_OUT[1] , 
        \read_address_traversal_0_COL_READ_OUT[0] , 
        \read_address_traversal_0_COL_READ_OUT[1] , 
        \read_address_traversal_0_COL_READ_OUT[2] , 
        \read_address_traversal_0_COL_READ_OUT[3] , 
        \read_address_traversal_0_COL_READ_OUT[4] , 
        \read_address_traversal_0_COL_READ_OUT[5] , 
        \read_address_traversal_0_COL_READ_OUT[6] , 
        \read_address_traversal_0_COL_READ_OUT[7] , 
        \read_address_traversal_0_COL_READ_OUT[8] , 
        \read_address_traversal_0_ROW_READ_OUT[0] , 
        \read_address_traversal_0_ROW_READ_OUT[1] , 
        \read_address_traversal_0_ROW_READ_OUT[2] , 
        \read_address_traversal_0_ROW_READ_OUT[3] , 
        \read_address_traversal_0_ROW_READ_OUT[4] , 
        \read_address_traversal_0_ROW_READ_OUT[5] , 
        \read_address_traversal_0_ROW_READ_OUT[6] , 
        \read_address_traversal_0_ROW_READ_OUT[7] , 
        \read_address_traversal_0_ROW_READ_OUT[8] , 
        \read_address_traversal_0_ROW_READ_OUT[9] , 
        \read_address_traversal_0_ROW_READ_OUT[10] , 
        \read_address_traversal_0_ROW_READ_OUT[11] , 
        \read_address_traversal_0_ROW_READ_OUT[12] , 
        \write_address_traversal_0_BA_WRITE_OUT[0] , 
        \write_address_traversal_0_BA_WRITE_OUT[1] , 
        \write_address_traversal_0_COL_WRITE_OUT[0] , 
        \write_address_traversal_0_COL_WRITE_OUT[1] , 
        \write_address_traversal_0_COL_WRITE_OUT[2] , 
        \write_address_traversal_0_COL_WRITE_OUT[3] , 
        \write_address_traversal_0_COL_WRITE_OUT[4] , 
        \write_address_traversal_0_COL_WRITE_OUT[5] , 
        \write_address_traversal_0_COL_WRITE_OUT[6] , 
        \write_address_traversal_0_COL_WRITE_OUT[7] , 
        \write_address_traversal_0_COL_WRITE_OUT[8] , 
        \write_address_traversal_0_ROW_WRITE_OUT[0] , 
        \write_address_traversal_0_ROW_WRITE_OUT[1] , 
        \write_address_traversal_0_ROW_WRITE_OUT[2] , 
        \write_address_traversal_0_ROW_WRITE_OUT[3] , 
        \write_address_traversal_0_ROW_WRITE_OUT[4] , 
        \write_address_traversal_0_ROW_WRITE_OUT[5] , 
        \write_address_traversal_0_ROW_WRITE_OUT[6] , 
        \write_address_traversal_0_ROW_WRITE_OUT[7] , 
        \write_address_traversal_0_ROW_WRITE_OUT[8] , 
        \write_address_traversal_0_ROW_WRITE_OUT[9] , 
        \write_address_traversal_0_ROW_WRITE_OUT[10] , 
        \write_address_traversal_0_ROW_WRITE_OUT[11] , 
        \write_address_traversal_0_ROW_WRITE_OUT[12] , 
        memory_controller_0_NEXT_READ, memory_controller_0_NEXT_WRITE, 
        \memory_controller_0_DATA_OUT[0] , 
        \memory_controller_0_DATA_OUT[1] , 
        \memory_controller_0_DATA_OUT[2] , 
        \memory_controller_0_DATA_OUT[3] , 
        \memory_controller_0_DATA_OUT[4] , 
        \memory_controller_0_DATA_OUT[5] , 
        \memory_controller_0_DATA_OUT[6] , 
        \memory_controller_0_DATA_OUT[7] , 
        \memory_controller_0_DATA_OUT[8] , 
        \memory_controller_0_DATA_OUT[9] , 
        \memory_controller_0_DATA_OUT[10] , 
        \memory_controller_0_DATA_OUT[11] , 
        \memory_controller_0_DATA_OUT[12] , 
        \memory_controller_0_DATA_OUT[13] , 
        \memory_controller_0_DATA_OUT[14] , 
        \memory_controller_0_DATA_OUT[15] , 
        \memory_controller_0_BA_OUT[0] , 
        \memory_controller_0_BA_OUT[1] , 
        \memory_controller_0_COL_OUT[0] , 
        \memory_controller_0_COL_OUT[1] , 
        \memory_controller_0_COL_OUT[2] , 
        \memory_controller_0_COL_OUT[3] , 
        \memory_controller_0_COL_OUT[4] , 
        \memory_controller_0_COL_OUT[5] , 
        \memory_controller_0_COL_OUT[6] , 
        \memory_controller_0_COL_OUT[7] , 
        \memory_controller_0_COL_OUT[8] , 
        \memory_controller_0_ROW_OUT[0] , 
        \memory_controller_0_ROW_OUT[1] , 
        \memory_controller_0_ROW_OUT[2] , 
        \memory_controller_0_ROW_OUT[3] , 
        \memory_controller_0_ROW_OUT[4] , 
        \memory_controller_0_ROW_OUT[5] , 
        \memory_controller_0_ROW_OUT[6] , 
        \memory_controller_0_ROW_OUT[7] , 
        \memory_controller_0_ROW_OUT[8] , 
        \memory_controller_0_ROW_OUT[9] , 
        \memory_controller_0_ROW_OUT[10] , 
        \memory_controller_0_ROW_OUT[11] , 
        \memory_controller_0_ROW_OUT[12] , 
        \memory_controller_0_CMD_OUT[0] , 
        \memory_controller_0_CMD_OUT[1] , \sdram_interface_0.dout[0] , 
        \sdram_interface_0.weVAL , \sdram_interface_0.dout[1] , 
        \sdram_interface_0.dout[2] , \sdram_interface_0.dout[3] , 
        \sdram_interface_0.dout[4] , \sdram_interface_0.dout[5] , 
        \sdram_interface_0.dout[6] , \sdram_interface_0.dout[7] , 
        \sdram_interface_0.dout[8] , \sdram_interface_0.dout[9] , 
        \sdram_interface_0.dout[10] , \sdram_interface_0.dout[11] , 
        \sdram_interface_0.address[2] , 
        \sdram_interface_0.address_cl_11[0] , 
        \sdram_interface_0.address[3] , 
        \sdram_interface_0.address_cl_4[0] , 
        \sdram_interface_0.address[0] , 
        \sdram_interface_0.address_cl_7[0] , 
        \sdram_interface_0.address[1] , 
        \sdram_interface_0.address_cl_6[0] , 
        \sdram_interface_0.address[6] , 
        \sdram_interface_0.address_cl_9[0] , 
        \sdram_interface_0.address[7] , 
        \sdram_interface_0.address_cl_8[0] , 
        \sdram_interface_0.address[4] , 
        \sdram_interface_0.address_cl_3[0] , 
        \sdram_interface_0.address[5] , 
        \sdram_interface_0.address_cl_10[0] , 
        \sdram_interface_0.address[10] , 
        \sdram_interface_0.address_cl_12[0] , 
        \sdram_interface_0.address[11] , 
        \sdram_interface_0.address_cl_2[0] , 
        \sdram_interface_0.address[8] , 
        \sdram_interface_0.address_cl_5[0] , 
        \sdram_interface_0.address[9] , 
        \sdram_interface_0.address_cl_1[0] , 
        \sdram_interface_0.address[12] , 
        \sdram_interface_0.address_cl[0] , 
        \sdram_interface_0.dout[12] , \sdram_interface_0.dout[13] , 
        \sdram_interface_0.dout[14] , \sdram_interface_0.dout[15] , 
        \read_buffer_0.byte_out[0] , \read_buffer_0.byte_out_cl[0] , 
        \read_buffer_0.byte_out[1] , \read_buffer_0.byte_out[2] , 
        \read_buffer_0.byte_out[3] , \read_buffer_0.byte_out[4] , 
        \read_buffer_0.byte_out[5] , \read_buffer_0.byte_out[6] , 
        \read_buffer_0.byte_out[7] , SDRAM_D0_in, SDRAM_D1_in, 
        SDRAM_D10_in, SDRAM_D11_in, SDRAM_D12_in, SDRAM_D13_in, 
        SDRAM_D14_in, SDRAM_D15_in, SDRAM_D2_in, SDRAM_D3_in, 
        SDRAM_D4_in, SDRAM_D5_in, SDRAM_D6_in, SDRAM_D7_in, 
        SDRAM_D8_in, SDRAM_D9_in, CLK_48MHZ_c, RESET_IN_L8_c, 
        SDRAM_BA0_c, SDRAM_BA1_c, SDRAM_CAS_c, SDRAM_CKE_c, 
        SDRAM_CLK_c, GND, SDRAM_DQMU_c_c, SDRAM_RAS_c, SDRAM_WE_c, 
        \read_buffer_0.N_22 , \sdram_interface_0_DATA_READ[10] , 
        \sdram_interface_0_DATA_READ[2] , 
        \sdram_interface_0_DATA_READ[1] , 
        \sdram_interface_0_DATA_READ[4] , 
        \sdram_interface_0_DATA_READ[6] , 
        \sdram_interface_0_DATA_READ[7] , 
        \sdram_interface_0_DATA_READ[8] , 
        \sdram_interface_0_DATA_READ[11] , 
        \sdram_interface_0_DATA_READ[12] , 
        \sdram_interface_0_DATA_READ[13] , 
        \sdram_interface_0_DATA_READ[14] , 
        \sdram_interface_0_DATA_READ[15] , 
        \sdram_interface_0_DATA_READ[9] , 
        \sdram_interface_0_DATA_READ[5] , 
        \sdram_interface_0_DATA_READ[3] , 
        \sdram_interface_0_DATA_READ[0] , 
        \constant_sensor_data_0_G_DATA_STACK_0[1] , 
        reset_pulse_0_RESET_0, reset_pulse_0_RESET_1, 
        reset_pulse_0_RESET_2, reset_pulse_0_RESET_3, 
        reset_pulse_0_RESET_4, reset_pulse_0_RESET_5, 
        reset_pulse_0_RESET_6, reset_pulse_0_RESET_7, 
        reset_pulse_0_RESET_8, reset_pulse_0_RESET_9, 
        reset_pulse_0_RESET_10, reset_pulse_0_RESET_11, 
        reset_pulse_0_RESET_12, reset_pulse_0_RESET_13, 
        reset_pulse_0_RESET_14, reset_pulse_0_RESET_15, 
        reset_pulse_0_RESET_16, reset_pulse_0_RESET_17, 
        reset_pulse_0_RESET_18, reset_pulse_0_RESET_19, 
        reset_pulse_0_RESET_20, reset_pulse_0_RESET_21, 
        reset_pulse_0_RESET_22, RESET_IN_L8_c_0, CLK_48MHZ_c_0;
    
    TRIBUFF SDRAM_A8_pad (.D(\sdram_interface_0.address[8] ), .E(
        \sdram_interface_0.address_cl_5[0] ), .PAD(SDRAM_A8));
    TRIBUFF DB4_pad (.D(\read_buffer_0.byte_out[4] ), .E(
        \read_buffer_0.byte_out_cl[0] ), .PAD(DB4));
    BIBUF SDRAM_D5_pad (.PAD(SDRAM_D5), .D(\sdram_interface_0.dout[5] )
        , .E(\sdram_interface_0.weVAL ), .Y(SDRAM_D5_in));
    OUTBUF SDRAM_RAS_pad (.D(SDRAM_RAS_c), .PAD(SDRAM_RAS));
    OUTBUF SDRAM_BA1_pad (.D(SDRAM_BA1_c), .PAD(SDRAM_BA1));
    read_address_traversal read_address_traversal_0 (
        .read_address_traversal_0_BA_READ_OUT({
        \read_address_traversal_0_BA_READ_OUT[1] , 
        \read_address_traversal_0_BA_READ_OUT[0] }), 
        .read_address_traversal_0_COL_READ_OUT({
        \read_address_traversal_0_COL_READ_OUT[8] , 
        \read_address_traversal_0_COL_READ_OUT[7] , 
        \read_address_traversal_0_COL_READ_OUT[6] , 
        \read_address_traversal_0_COL_READ_OUT[5] , 
        \read_address_traversal_0_COL_READ_OUT[4] , 
        \read_address_traversal_0_COL_READ_OUT[3] , 
        \read_address_traversal_0_COL_READ_OUT[2] , 
        \read_address_traversal_0_COL_READ_OUT[1] , 
        \read_address_traversal_0_COL_READ_OUT[0] }), 
        .read_address_traversal_0_ROW_READ_OUT({
        \read_address_traversal_0_ROW_READ_OUT[12] , 
        \read_address_traversal_0_ROW_READ_OUT[11] , 
        \read_address_traversal_0_ROW_READ_OUT[10] , 
        \read_address_traversal_0_ROW_READ_OUT[9] , 
        \read_address_traversal_0_ROW_READ_OUT[8] , 
        \read_address_traversal_0_ROW_READ_OUT[7] , 
        \read_address_traversal_0_ROW_READ_OUT[6] , 
        \read_address_traversal_0_ROW_READ_OUT[5] , 
        \read_address_traversal_0_ROW_READ_OUT[4] , 
        \read_address_traversal_0_ROW_READ_OUT[3] , 
        \read_address_traversal_0_ROW_READ_OUT[2] , 
        \read_address_traversal_0_ROW_READ_OUT[1] , 
        \read_address_traversal_0_ROW_READ_OUT[0] }), 
        .memory_controller_0_NEXT_READ(memory_controller_0_NEXT_READ), 
        .reset_pulse_0_RESET_14(reset_pulse_0_RESET_14), 
        .reset_pulse_0_RESET_16(reset_pulse_0_RESET_16), 
        .reset_pulse_0_RESET_17(reset_pulse_0_RESET_17));
    BIBUF SDRAM_D8_pad (.PAD(SDRAM_D8), .D(\sdram_interface_0.dout[8] )
        , .E(\sdram_interface_0.weVAL ), .Y(SDRAM_D8_in));
    TRIBUFF DB1_pad (.D(\read_buffer_0.byte_out[1] ), .E(
        \read_buffer_0.byte_out_cl[0] ), .PAD(DB1));
    BUFF CLK_48MHZ_pad_RNI8I08 (.A(CLK_48MHZ_c), .Y(CLK_48MHZ_c_0));
    TRIBUFF DB2_pad (.D(\read_buffer_0.byte_out[2] ), .E(
        \read_buffer_0.byte_out_cl[0] ), .PAD(DB2));
    write_address_traversal write_address_traversal_0 (
        .write_address_traversal_0_BA_WRITE_OUT({
        \write_address_traversal_0_BA_WRITE_OUT[1] , 
        \write_address_traversal_0_BA_WRITE_OUT[0] }), 
        .write_address_traversal_0_COL_WRITE_OUT({
        \write_address_traversal_0_COL_WRITE_OUT[8] , 
        \write_address_traversal_0_COL_WRITE_OUT[7] , 
        \write_address_traversal_0_COL_WRITE_OUT[6] , 
        \write_address_traversal_0_COL_WRITE_OUT[5] , 
        \write_address_traversal_0_COL_WRITE_OUT[4] , 
        \write_address_traversal_0_COL_WRITE_OUT[3] , 
        \write_address_traversal_0_COL_WRITE_OUT[2] , 
        \write_address_traversal_0_COL_WRITE_OUT[1] , 
        \write_address_traversal_0_COL_WRITE_OUT[0] }), 
        .write_address_traversal_0_ROW_WRITE_OUT({
        \write_address_traversal_0_ROW_WRITE_OUT[12] , 
        \write_address_traversal_0_ROW_WRITE_OUT[11] , 
        \write_address_traversal_0_ROW_WRITE_OUT[10] , 
        \write_address_traversal_0_ROW_WRITE_OUT[9] , 
        \write_address_traversal_0_ROW_WRITE_OUT[8] , 
        \write_address_traversal_0_ROW_WRITE_OUT[7] , 
        \write_address_traversal_0_ROW_WRITE_OUT[6] , 
        \write_address_traversal_0_ROW_WRITE_OUT[5] , 
        \write_address_traversal_0_ROW_WRITE_OUT[4] , 
        \write_address_traversal_0_ROW_WRITE_OUT[3] , 
        \write_address_traversal_0_ROW_WRITE_OUT[2] , 
        \write_address_traversal_0_ROW_WRITE_OUT[1] , 
        \write_address_traversal_0_ROW_WRITE_OUT[0] }), .N_22(
        \read_buffer_0.N_22 ), .memory_controller_0_NEXT_WRITE(
        memory_controller_0_NEXT_WRITE), .reset_pulse_0_RESET_14(
        reset_pulse_0_RESET_14), .reset_pulse_0_RESET_15(
        reset_pulse_0_RESET_15));
    CLK_1MHZ CLK_1MHZ_0 (.GLA(GLA), .reset_pulse_0_CLK_OUT_48MHZ(
        reset_pulse_0_CLK_OUT_48MHZ));
    BIBUF SDRAM_D11_pad (.PAD(SDRAM_D11), .D(
        \sdram_interface_0.dout[11] ), .E(\sdram_interface_0.weVAL ), 
        .Y(SDRAM_D11_in));
    VCC VCC_i (.Y(VCC));
    BIBUF SDRAM_D15_pad (.PAD(SDRAM_D15), .D(
        \sdram_interface_0.dout[15] ), .E(\sdram_interface_0.weVAL ), 
        .Y(SDRAM_D15_in));
    TRIBUFF DB6_pad (.D(\read_buffer_0.byte_out[6] ), .E(
        \read_buffer_0.byte_out_cl[0] ), .PAD(DB6));
    TRIBUFF SDRAM_A6_pad (.D(\sdram_interface_0.address[6] ), .E(
        \sdram_interface_0.address_cl_9[0] ), .PAD(SDRAM_A6));
    TRIBUFF SDRAM_A3_pad (.D(\sdram_interface_0.address[3] ), .E(
        \sdram_interface_0.address_cl_4[0] ), .PAD(SDRAM_A3));
    OUTBUF SDRAM_CAS_pad (.D(SDRAM_CAS_c), .PAD(SDRAM_CAS));
    TRIBUFF DB7_pad (.D(\read_buffer_0.byte_out[7] ), .E(
        \read_buffer_0.byte_out_cl[0] ), .PAD(DB7));
    clock_div_1MHZ_10HZ clock_div_1MHZ_10HZ_0 (
        .clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .GLA(GLA), 
        .reset_pulse_0_RESET_17(reset_pulse_0_RESET_17), 
        .reset_pulse_0_RESET_22(reset_pulse_0_RESET_22), 
        .reset_pulse_0_RESET(reset_pulse_0_RESET));
    INBUF RESET_IN_L8_pad (.PAD(RESET_IN_L8), .Y(RESET_IN_L8_c));
    BIBUF SDRAM_D6_pad (.PAD(SDRAM_D6), .D(\sdram_interface_0.dout[6] )
        , .E(\sdram_interface_0.weVAL ), .Y(SDRAM_D6_in));
    BIBUF SDRAM_D3_pad (.PAD(SDRAM_D3), .D(\sdram_interface_0.dout[3] )
        , .E(\sdram_interface_0.weVAL ), .Y(SDRAM_D3_in));
    TRIBUFF SDRAM_A0_pad (.D(\sdram_interface_0.address[0] ), .E(
        \sdram_interface_0.address_cl_7[0] ), .PAD(SDRAM_A0));
    TRIBUFF SDRAM_A12_pad (.D(\sdram_interface_0.address[12] ), .E(
        \sdram_interface_0.address_cl[0] ), .PAD(SDRAM_A12));
    BIBUF SDRAM_D12_pad (.PAD(SDRAM_D12), .D(
        \sdram_interface_0.dout[12] ), .E(\sdram_interface_0.weVAL ), 
        .Y(SDRAM_D12_in));
    GND GND_i (.Y(GND));
    BIBUF SDRAM_D0_pad (.PAD(SDRAM_D0), .D(\sdram_interface_0.dout[0] )
        , .E(\sdram_interface_0.weVAL ), .Y(SDRAM_D0_in));
    TRIBUFF SDRAM_A9_pad (.D(\sdram_interface_0.address[9] ), .E(
        \sdram_interface_0.address_cl_1[0] ), .PAD(SDRAM_A9));
    TRIBUFF SDRAM_A11_pad (.D(\sdram_interface_0.address[11] ), .E(
        \sdram_interface_0.address_cl_2[0] ), .PAD(SDRAM_A11));
    OUTBUF SDRAM_DQMU_pad (.D(SDRAM_DQMU_c_c), .PAD(SDRAM_DQMU));
    BIBUF SDRAM_D14_pad (.PAD(SDRAM_D14), .D(
        \sdram_interface_0.dout[14] ), .E(\sdram_interface_0.weVAL ), 
        .Y(SDRAM_D14_in));
    OUTBUF SDRAM_BA0_pad (.D(SDRAM_BA0_c), .PAD(SDRAM_BA0));
    TRIBUFF DB0_pad (.D(\read_buffer_0.byte_out[0] ), .E(
        \read_buffer_0.byte_out_cl[0] ), .PAD(DB0));
    BIBUF SDRAM_D13_pad (.PAD(SDRAM_D13), .D(
        \sdram_interface_0.dout[13] ), .E(\sdram_interface_0.weVAL ), 
        .Y(SDRAM_D13_in));
    TRIBUFF SDRAM_A1_pad (.D(\sdram_interface_0.address[1] ), .E(
        \sdram_interface_0.address_cl_6[0] ), .PAD(SDRAM_A1));
    OUTBUF SDRAM_CKE_pad (.D(SDRAM_CKE_c), .PAD(SDRAM_CKE));
    TRIBUFF DB5_pad (.D(\read_buffer_0.byte_out[5] ), .E(
        \read_buffer_0.byte_out_cl[0] ), .PAD(DB5));
    sdram_interface sdram_interface_0 (.address_cl_4({
        \sdram_interface_0.address_cl_4[0] }), .address_cl_2({
        \sdram_interface_0.address_cl_2[0] }), .address_cl({
        \sdram_interface_0.address_cl[0] }), .address_cl_1({
        \sdram_interface_0.address_cl_1[0] }), 
        .memory_controller_0_CMD_OUT({\memory_controller_0_CMD_OUT[1] , 
        \memory_controller_0_CMD_OUT[0] }), .timestamp_0_TIMESTAMP({
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
        .address_cl_12({\sdram_interface_0.address_cl_12[0] }), 
        .memory_controller_0_BA_OUT({\memory_controller_0_BA_OUT[1] , 
        \memory_controller_0_BA_OUT[0] }), .address_cl_8({
        \sdram_interface_0.address_cl_8[0] }), .address_cl_10({
        \sdram_interface_0.address_cl_10[0] }), .address_cl_7({
        \sdram_interface_0.address_cl_7[0] }), .address_cl_11({
        \sdram_interface_0.address_cl_11[0] }), .address_cl_3({
        \sdram_interface_0.address_cl_3[0] }), .address_cl_6({
        \sdram_interface_0.address_cl_6[0] }), .address_cl_5({
        \sdram_interface_0.address_cl_5[0] }), .address_cl_9({
        \sdram_interface_0.address_cl_9[0] }), 
        .sdram_interface_0_DATA_READ({
        \sdram_interface_0_DATA_READ[15] , 
        \sdram_interface_0_DATA_READ[14] , 
        \sdram_interface_0_DATA_READ[13] , 
        \sdram_interface_0_DATA_READ[12] , 
        \sdram_interface_0_DATA_READ[11] , 
        \sdram_interface_0_DATA_READ[10] , 
        \sdram_interface_0_DATA_READ[9] , 
        \sdram_interface_0_DATA_READ[8] , 
        \sdram_interface_0_DATA_READ[7] , 
        \sdram_interface_0_DATA_READ[6] , 
        \sdram_interface_0_DATA_READ[5] , 
        \sdram_interface_0_DATA_READ[4] , 
        \sdram_interface_0_DATA_READ[3] , 
        \sdram_interface_0_DATA_READ[2] , 
        \sdram_interface_0_DATA_READ[1] , 
        \sdram_interface_0_DATA_READ[0] }), 
        .memory_controller_0_DATA_OUT({
        \memory_controller_0_DATA_OUT[15] , 
        \memory_controller_0_DATA_OUT[14] , 
        \memory_controller_0_DATA_OUT[13] , 
        \memory_controller_0_DATA_OUT[12] , 
        \memory_controller_0_DATA_OUT[11] , 
        \memory_controller_0_DATA_OUT[10] , 
        \memory_controller_0_DATA_OUT[9] , 
        \memory_controller_0_DATA_OUT[8] , 
        \memory_controller_0_DATA_OUT[7] , 
        \memory_controller_0_DATA_OUT[6] , 
        \memory_controller_0_DATA_OUT[5] , 
        \memory_controller_0_DATA_OUT[4] , 
        \memory_controller_0_DATA_OUT[3] , 
        \memory_controller_0_DATA_OUT[2] , 
        \memory_controller_0_DATA_OUT[1] , 
        \memory_controller_0_DATA_OUT[0] }), .address({
        \sdram_interface_0.address[12] , 
        \sdram_interface_0.address[11] , 
        \sdram_interface_0.address[10] , 
        \sdram_interface_0.address[9] , \sdram_interface_0.address[8] , 
        \sdram_interface_0.address[7] , \sdram_interface_0.address[6] , 
        \sdram_interface_0.address[5] , \sdram_interface_0.address[4] , 
        \sdram_interface_0.address[3] , \sdram_interface_0.address[2] , 
        \sdram_interface_0.address[1] , \sdram_interface_0.address[0] })
        , .memory_controller_0_COL_OUT({
        \memory_controller_0_COL_OUT[8] , 
        \memory_controller_0_COL_OUT[7] , 
        \memory_controller_0_COL_OUT[6] , 
        \memory_controller_0_COL_OUT[5] , 
        \memory_controller_0_COL_OUT[4] , 
        \memory_controller_0_COL_OUT[3] , 
        \memory_controller_0_COL_OUT[2] , 
        \memory_controller_0_COL_OUT[1] , 
        \memory_controller_0_COL_OUT[0] }), 
        .memory_controller_0_ROW_OUT({
        \memory_controller_0_ROW_OUT[12] , 
        \memory_controller_0_ROW_OUT[11] , 
        \memory_controller_0_ROW_OUT[10] , 
        \memory_controller_0_ROW_OUT[9] , 
        \memory_controller_0_ROW_OUT[8] , 
        \memory_controller_0_ROW_OUT[7] , 
        \memory_controller_0_ROW_OUT[6] , 
        \memory_controller_0_ROW_OUT[5] , 
        \memory_controller_0_ROW_OUT[4] , 
        \memory_controller_0_ROW_OUT[3] , 
        \memory_controller_0_ROW_OUT[2] , 
        \memory_controller_0_ROW_OUT[1] , 
        \memory_controller_0_ROW_OUT[0] }), .dout({
        \sdram_interface_0.dout[15] , \sdram_interface_0.dout[14] , 
        \sdram_interface_0.dout[13] , \sdram_interface_0.dout[12] , 
        \sdram_interface_0.dout[11] , \sdram_interface_0.dout[10] , 
        \sdram_interface_0.dout[9] , \sdram_interface_0.dout[8] , 
        \sdram_interface_0.dout[7] , \sdram_interface_0.dout[6] , 
        \sdram_interface_0.dout[5] , \sdram_interface_0.dout[4] , 
        \sdram_interface_0.dout[3] , \sdram_interface_0.dout[2] , 
        \sdram_interface_0.dout[1] , \sdram_interface_0.dout[0] }), 
        .sdram_interface_0_STATUS(sdram_interface_0_STATUS), 
        .SDRAM_CLK_c(SDRAM_CLK_c), .reset_pulse_0_CLK_OUT_48MHZ(
        reset_pulse_0_CLK_OUT_48MHZ), .weVAL(\sdram_interface_0.weVAL )
        , .reset_pulse_0_RESET_16(reset_pulse_0_RESET_16), 
        .reset_pulse_0_RESET_22(reset_pulse_0_RESET_22), 
        .reset_pulse_0_RESET_19(reset_pulse_0_RESET_19), 
        .reset_pulse_0_RESET_17(reset_pulse_0_RESET_17), 
        .reset_pulse_0_RESET_18(reset_pulse_0_RESET_18), 
        .reset_pulse_0_RESET_13(reset_pulse_0_RESET_13), 
        .reset_pulse_0_RESET_15(reset_pulse_0_RESET_15), .SDRAM_RAS_c(
        SDRAM_RAS_c), .reset_pulse_0_RESET_6(reset_pulse_0_RESET_6), 
        .SDRAM_CKE_c(SDRAM_CKE_c), .reset_pulse_0_RESET_5(
        reset_pulse_0_RESET_5), .SDRAM_CAS_c(SDRAM_CAS_c), .SDRAM_WE_c(
        SDRAM_WE_c), .reset_pulse_0_RESET_3(reset_pulse_0_RESET_3), 
        .reset_pulse_0_RESET_7(reset_pulse_0_RESET_7), .SDRAM_DQMU_c_c(
        SDRAM_DQMU_c_c), .reset_pulse_0_RESET_11(
        reset_pulse_0_RESET_11), .SDRAM_BA1_c(SDRAM_BA1_c), 
        .SDRAM_BA0_c(SDRAM_BA0_c), .SDRAM_D15_in(SDRAM_D15_in), 
        .SDRAM_D14_in(SDRAM_D14_in), .SDRAM_D13_in(SDRAM_D13_in), 
        .SDRAM_D12_in(SDRAM_D12_in), .SDRAM_D11_in(SDRAM_D11_in), 
        .SDRAM_D10_in(SDRAM_D10_in), .SDRAM_D9_in(SDRAM_D9_in), 
        .SDRAM_D8_in(SDRAM_D8_in), .SDRAM_D7_in(SDRAM_D7_in), 
        .SDRAM_D6_in(SDRAM_D6_in), .SDRAM_D5_in(SDRAM_D5_in), 
        .SDRAM_D4_in(SDRAM_D4_in), .SDRAM_D3_in(SDRAM_D3_in), 
        .SDRAM_D2_in(SDRAM_D2_in), .SDRAM_D1_in(SDRAM_D1_in), 
        .SDRAM_D0_in(SDRAM_D0_in), .reset_pulse_0_RESET_10(
        reset_pulse_0_RESET_10), .reset_pulse_0_RESET_4(
        reset_pulse_0_RESET_4));
    BIBUF SDRAM_D9_pad (.PAD(SDRAM_D9), .D(\sdram_interface_0.dout[9] )
        , .E(\sdram_interface_0.weVAL ), .Y(SDRAM_D9_in));
    TRIBUFF SDRAM_A4_pad (.D(\sdram_interface_0.address[4] ), .E(
        \sdram_interface_0.address_cl_3[0] ), .PAD(SDRAM_A4));
    constant_sensor_data constant_sensor_data_0 (
        .constant_sensor_data_0_G_DATA_STACK_0({
        \constant_sensor_data_0_G_DATA_STACK_0[1] }), 
        .timestamp_0_TIMESTAMP({\timestamp_0_TIMESTAMP[23] , 
        \timestamp_0_TIMESTAMP[22] , \timestamp_0_TIMESTAMP[21] , 
        \timestamp_0_TIMESTAMP[20] , \timestamp_0_TIMESTAMP[19] , 
        \timestamp_0_TIMESTAMP[18] , \timestamp_0_TIMESTAMP[17] , 
        \timestamp_0_TIMESTAMP[16] , \timestamp_0_TIMESTAMP[15] , 
        \timestamp_0_TIMESTAMP[14] , \timestamp_0_TIMESTAMP[13] , 
        \timestamp_0_TIMESTAMP[12] , \timestamp_0_TIMESTAMP[11] , 
        \timestamp_0_TIMESTAMP[10] , \timestamp_0_TIMESTAMP[9] , 
        \timestamp_0_TIMESTAMP[8] , \timestamp_0_TIMESTAMP[7] , 
        \timestamp_0_TIMESTAMP[6] , \timestamp_0_TIMESTAMP[5] , 
        \timestamp_0_TIMESTAMP[4] , \timestamp_0_TIMESTAMP[3] , 
        \timestamp_0_TIMESTAMP[2] , \timestamp_0_TIMESTAMP[1] , 
        \timestamp_0_TIMESTAMP[0] }), 
        .constant_sensor_data_0_M_DATA_STACK_30(
        \constant_sensor_data_0_M_DATA_STACK[32] ), 
        .constant_sensor_data_0_M_DATA_STACK_31(
        \constant_sensor_data_0_M_DATA_STACK[33] ), 
        .constant_sensor_data_0_M_DATA_STACK_32(
        \constant_sensor_data_0_M_DATA_STACK[34] ), 
        .constant_sensor_data_0_M_DATA_STACK_37(
        \constant_sensor_data_0_M_DATA_STACK[39] ), 
        .constant_sensor_data_0_M_DATA_STACK_60(
        \constant_sensor_data_0_M_DATA_STACK[62] ), 
        .constant_sensor_data_0_M_DATA_STACK_62(
        \constant_sensor_data_0_M_DATA_STACK[64] ), 
        .constant_sensor_data_0_M_DATA_STACK_67(
        \constant_sensor_data_0_M_DATA_STACK[69] ), 
        .constant_sensor_data_0_M_DATA_STACK_0(
        \constant_sensor_data_0_M_DATA_STACK[2] ), 
        .constant_sensor_data_0_M_DATA_STACK_6(
        \constant_sensor_data_0_M_DATA_STACK[8] ), 
        .constant_sensor_data_0_M_DATA_STACK_7(
        \constant_sensor_data_0_M_DATA_STACK[9] ), 
        .constant_sensor_data_0_M_DATA_STACK_8(
        \constant_sensor_data_0_M_DATA_STACK[10] ), 
        .constant_sensor_data_0_M_DATA_STACK_9(
        \constant_sensor_data_0_M_DATA_STACK[11] ), 
        .constant_sensor_data_0_M_DATA_STACK_10(
        \constant_sensor_data_0_M_DATA_STACK[12] ), 
        .constant_sensor_data_0_M_DATA_STACK_11(
        \constant_sensor_data_0_M_DATA_STACK[13] ), 
        .constant_sensor_data_0_M_DATA_STACK_12(
        \constant_sensor_data_0_M_DATA_STACK[14] ), 
        .constant_sensor_data_0_M_DATA_STACK_13(
        \constant_sensor_data_0_M_DATA_STACK[15] ), 
        .constant_sensor_data_0_M_DATA_STACK_14(
        \constant_sensor_data_0_M_DATA_STACK[16] ), 
        .constant_sensor_data_0_M_DATA_STACK_15(
        \constant_sensor_data_0_M_DATA_STACK[17] ), 
        .constant_sensor_data_0_M_DATA_STACK_16(
        \constant_sensor_data_0_M_DATA_STACK[18] ), 
        .constant_sensor_data_0_M_DATA_STACK_17(
        \constant_sensor_data_0_M_DATA_STACK[19] ), 
        .constant_sensor_data_0_M_DATA_STACK_18(
        \constant_sensor_data_0_M_DATA_STACK[20] ), 
        .constant_sensor_data_0_M_DATA_STACK_19(
        \constant_sensor_data_0_M_DATA_STACK[21] ), 
        .constant_sensor_data_0_M_DATA_STACK_20(
        \constant_sensor_data_0_M_DATA_STACK[22] ), 
        .constant_sensor_data_0_M_DATA_STACK_21(
        \constant_sensor_data_0_M_DATA_STACK[23] ), 
        .constant_sensor_data_0_M_DATA_STACK_22(
        \constant_sensor_data_0_M_DATA_STACK[24] ), 
        .constant_sensor_data_0_M_DATA_STACK_23(
        \constant_sensor_data_0_M_DATA_STACK[25] ), 
        .constant_sensor_data_0_M_DATA_STACK_24(
        \constant_sensor_data_0_M_DATA_STACK[26] ), 
        .constant_sensor_data_0_M_DATA_STACK_25(
        \constant_sensor_data_0_M_DATA_STACK[27] ), 
        .constant_sensor_data_0_M_DATA_STACK_26(
        \constant_sensor_data_0_M_DATA_STACK[28] ), 
        .constant_sensor_data_0_M_DATA_STACK_27(
        \constant_sensor_data_0_M_DATA_STACK[29] ), 
        .constant_sensor_data_0_M_DATA_STACK_28(
        \constant_sensor_data_0_M_DATA_STACK[30] ), 
        .constant_sensor_data_0_M_DATA_STACK_29(
        \constant_sensor_data_0_M_DATA_STACK[31] ), 
        .constant_sensor_data_0_M_DATA_STACK_33(
        \constant_sensor_data_0_M_DATA_STACK[35] ), 
        .constant_sensor_data_0_M_DATA_STACK_34(
        \constant_sensor_data_0_M_DATA_STACK[36] ), 
        .constant_sensor_data_0_M_DATA_STACK_35(
        \constant_sensor_data_0_M_DATA_STACK[37] ), 
        .constant_sensor_data_0_M_DATA_STACK_36(
        \constant_sensor_data_0_M_DATA_STACK[38] ), 
        .constant_sensor_data_0_M_DATA_STACK_38(
        \constant_sensor_data_0_M_DATA_STACK[40] ), 
        .constant_sensor_data_0_M_DATA_STACK_39(
        \constant_sensor_data_0_M_DATA_STACK[41] ), 
        .constant_sensor_data_0_M_DATA_STACK_40(
        \constant_sensor_data_0_M_DATA_STACK[42] ), 
        .constant_sensor_data_0_M_DATA_STACK_41(
        \constant_sensor_data_0_M_DATA_STACK[43] ), 
        .constant_sensor_data_0_M_DATA_STACK_42(
        \constant_sensor_data_0_M_DATA_STACK[44] ), 
        .constant_sensor_data_0_M_DATA_STACK_43(
        \constant_sensor_data_0_M_DATA_STACK[45] ), 
        .constant_sensor_data_0_M_DATA_STACK_44(
        \constant_sensor_data_0_M_DATA_STACK[46] ), 
        .constant_sensor_data_0_M_DATA_STACK_45(
        \constant_sensor_data_0_M_DATA_STACK[47] ), 
        .constant_sensor_data_0_M_DATA_STACK_46(
        \constant_sensor_data_0_M_DATA_STACK[48] ), 
        .constant_sensor_data_0_M_DATA_STACK_47(
        \constant_sensor_data_0_M_DATA_STACK[49] ), 
        .constant_sensor_data_0_M_DATA_STACK_48(
        \constant_sensor_data_0_M_DATA_STACK[50] ), 
        .constant_sensor_data_0_M_DATA_STACK_49(
        \constant_sensor_data_0_M_DATA_STACK[51] ), 
        .constant_sensor_data_0_M_DATA_STACK_50(
        \constant_sensor_data_0_M_DATA_STACK[52] ), 
        .constant_sensor_data_0_M_DATA_STACK_51(
        \constant_sensor_data_0_M_DATA_STACK[53] ), 
        .constant_sensor_data_0_M_DATA_STACK_52(
        \constant_sensor_data_0_M_DATA_STACK[54] ), 
        .constant_sensor_data_0_M_DATA_STACK_53(
        \constant_sensor_data_0_M_DATA_STACK[55] ), 
        .constant_sensor_data_0_M_DATA_STACK_54(
        \constant_sensor_data_0_M_DATA_STACK[56] ), 
        .constant_sensor_data_0_M_DATA_STACK_55(
        \constant_sensor_data_0_M_DATA_STACK[57] ), 
        .constant_sensor_data_0_M_DATA_STACK_56(
        \constant_sensor_data_0_M_DATA_STACK[58] ), 
        .constant_sensor_data_0_M_DATA_STACK_57(
        \constant_sensor_data_0_M_DATA_STACK[59] ), 
        .constant_sensor_data_0_M_DATA_STACK_58(
        \constant_sensor_data_0_M_DATA_STACK[60] ), 
        .constant_sensor_data_0_M_DATA_STACK_59(
        \constant_sensor_data_0_M_DATA_STACK[61] ), 
        .constant_sensor_data_0_M_DATA_STACK_61(
        \constant_sensor_data_0_M_DATA_STACK[63] ), 
        .constant_sensor_data_0_M_DATA_STACK_63(
        \constant_sensor_data_0_M_DATA_STACK[65] ), 
        .constant_sensor_data_0_M_DATA_STACK_64(
        \constant_sensor_data_0_M_DATA_STACK[66] ), 
        .constant_sensor_data_0_M_DATA_STACK_65(
        \constant_sensor_data_0_M_DATA_STACK[67] ), 
        .constant_sensor_data_0_M_DATA_STACK_66(
        \constant_sensor_data_0_M_DATA_STACK[68] ), 
        .constant_sensor_data_0_M_DATA_STACK_68(
        \constant_sensor_data_0_M_DATA_STACK[70] ), 
        .constant_sensor_data_0_M_DATA_STACK_69(
        \constant_sensor_data_0_M_DATA_STACK[71] ), 
        .constant_sensor_data_0_M_DATA_STACK_70(
        \constant_sensor_data_0_M_DATA_STACK[72] ), 
        .constant_sensor_data_0_M_DATA_STACK_71(
        \constant_sensor_data_0_M_DATA_STACK[73] ), 
        .constant_sensor_data_0_M_DATA_STACK_72(
        \constant_sensor_data_0_M_DATA_STACK[74] ), 
        .constant_sensor_data_0_M_DATA_STACK_73(
        \constant_sensor_data_0_M_DATA_STACK[75] ), 
        .constant_sensor_data_0_M_DATA_STACK_74(
        \constant_sensor_data_0_M_DATA_STACK[76] ), 
        .constant_sensor_data_0_M_DATA_STACK_75(
        \constant_sensor_data_0_M_DATA_STACK[77] ), 
        .constant_sensor_data_0_M_DATA_STACK_76(
        \constant_sensor_data_0_M_DATA_STACK[78] ), 
        .constant_sensor_data_0_M_DATA_STACK_77(
        \constant_sensor_data_0_M_DATA_STACK[79] ), 
        .constant_sensor_data_0_G_DATA_STACK_0_d0(
        \constant_sensor_data_0_G_DATA_STACK[1] ), 
        .constant_sensor_data_0_G_DATA_STACK_7(
        \constant_sensor_data_0_G_DATA_STACK[8] ), 
        .constant_sensor_data_0_G_DATA_STACK_8(
        \constant_sensor_data_0_G_DATA_STACK[9] ), 
        .constant_sensor_data_0_G_DATA_STACK_9(
        \constant_sensor_data_0_G_DATA_STACK[10] ), 
        .constant_sensor_data_0_G_DATA_STACK_10(
        \constant_sensor_data_0_G_DATA_STACK[11] ), 
        .constant_sensor_data_0_G_DATA_STACK_11(
        \constant_sensor_data_0_G_DATA_STACK[12] ), 
        .constant_sensor_data_0_G_DATA_STACK_12(
        \constant_sensor_data_0_G_DATA_STACK[13] ), 
        .constant_sensor_data_0_G_DATA_STACK_13(
        \constant_sensor_data_0_G_DATA_STACK[14] ), 
        .constant_sensor_data_0_G_DATA_STACK_14(
        \constant_sensor_data_0_G_DATA_STACK[15] ), 
        .constant_sensor_data_0_G_DATA_STACK_15(
        \constant_sensor_data_0_G_DATA_STACK[16] ), 
        .constant_sensor_data_0_G_DATA_STACK_16(
        \constant_sensor_data_0_G_DATA_STACK[17] ), 
        .constant_sensor_data_0_G_DATA_STACK_17(
        \constant_sensor_data_0_G_DATA_STACK[18] ), 
        .constant_sensor_data_0_G_DATA_STACK_18(
        \constant_sensor_data_0_G_DATA_STACK[19] ), 
        .constant_sensor_data_0_G_DATA_STACK_19(
        \constant_sensor_data_0_G_DATA_STACK[20] ), 
        .constant_sensor_data_0_G_DATA_STACK_20(
        \constant_sensor_data_0_G_DATA_STACK[21] ), 
        .constant_sensor_data_0_G_DATA_STACK_21(
        \constant_sensor_data_0_G_DATA_STACK[22] ), 
        .constant_sensor_data_0_G_DATA_STACK_22(
        \constant_sensor_data_0_G_DATA_STACK[23] ), 
        .constant_sensor_data_0_G_DATA_STACK_23(
        \constant_sensor_data_0_G_DATA_STACK[24] ), 
        .constant_sensor_data_0_G_DATA_STACK_24(
        \constant_sensor_data_0_G_DATA_STACK[25] ), 
        .constant_sensor_data_0_G_DATA_STACK_25(
        \constant_sensor_data_0_G_DATA_STACK[26] ), 
        .constant_sensor_data_0_G_DATA_STACK_26(
        \constant_sensor_data_0_G_DATA_STACK[27] ), 
        .constant_sensor_data_0_G_DATA_STACK_27(
        \constant_sensor_data_0_G_DATA_STACK[28] ), 
        .constant_sensor_data_0_G_DATA_STACK_28(
        \constant_sensor_data_0_G_DATA_STACK[29] ), 
        .constant_sensor_data_0_G_DATA_STACK_29(
        \constant_sensor_data_0_G_DATA_STACK[30] ), 
        .constant_sensor_data_0_G_DATA_STACK_30(
        \constant_sensor_data_0_G_DATA_STACK[31] ), 
        .constant_sensor_data_0_G_DATA_STACK_31(
        \constant_sensor_data_0_G_DATA_STACK[32] ), 
        .constant_sensor_data_0_G_DATA_STACK_32(
        \constant_sensor_data_0_G_DATA_STACK[33] ), 
        .constant_sensor_data_0_G_DATA_STACK_33(
        \constant_sensor_data_0_G_DATA_STACK[34] ), 
        .constant_sensor_data_0_G_DATA_STACK_34(
        \constant_sensor_data_0_G_DATA_STACK[35] ), 
        .constant_sensor_data_0_G_DATA_STACK_35(
        \constant_sensor_data_0_G_DATA_STACK[36] ), 
        .constant_sensor_data_0_G_DATA_STACK_36(
        \constant_sensor_data_0_G_DATA_STACK[37] ), 
        .constant_sensor_data_0_G_DATA_STACK_37(
        \constant_sensor_data_0_G_DATA_STACK[38] ), 
        .constant_sensor_data_0_G_DATA_STACK_38(
        \constant_sensor_data_0_G_DATA_STACK[39] ), 
        .constant_sensor_data_0_G_DATA_STACK_39(
        \constant_sensor_data_0_G_DATA_STACK[40] ), 
        .constant_sensor_data_0_G_DATA_STACK_40(
        \constant_sensor_data_0_G_DATA_STACK[41] ), 
        .constant_sensor_data_0_G_DATA_STACK_41(
        \constant_sensor_data_0_G_DATA_STACK[42] ), 
        .constant_sensor_data_0_G_DATA_STACK_42(
        \constant_sensor_data_0_G_DATA_STACK[43] ), 
        .constant_sensor_data_0_G_DATA_STACK_43(
        \constant_sensor_data_0_G_DATA_STACK[44] ), 
        .constant_sensor_data_0_G_DATA_STACK_44(
        \constant_sensor_data_0_G_DATA_STACK[45] ), 
        .constant_sensor_data_0_G_DATA_STACK_45(
        \constant_sensor_data_0_G_DATA_STACK[46] ), 
        .constant_sensor_data_0_G_DATA_STACK_46(
        \constant_sensor_data_0_G_DATA_STACK[47] ), 
        .constant_sensor_data_0_G_DATA_STACK_47(
        \constant_sensor_data_0_G_DATA_STACK[48] ), 
        .clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT(
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .reset_pulse_0_RESET_0(
        reset_pulse_0_RESET_0), .constant_sensor_data_0_NEXT_BYTE(
        constant_sensor_data_0_NEXT_BYTE), .reset_pulse_0_RESET_19(
        reset_pulse_0_RESET_19), .reset_pulse_0_RESET_18(
        reset_pulse_0_RESET_18), .reset_pulse_0_RESET_15(
        reset_pulse_0_RESET_15), .reset_pulse_0_RESET_7(
        reset_pulse_0_RESET_7), .reset_pulse_0_RESET_8(
        reset_pulse_0_RESET_8), .reset_pulse_0_RESET_9(
        reset_pulse_0_RESET_9), .reset_pulse_0_RESET_10(
        reset_pulse_0_RESET_10), .reset_pulse_0_RESET_3(
        reset_pulse_0_RESET_3), .reset_pulse_0_RESET_1(
        reset_pulse_0_RESET_1), .reset_pulse_0_RESET_2(
        reset_pulse_0_RESET_2), .reset_pulse_0_RESET_4(
        reset_pulse_0_RESET_4), .reset_pulse_0_RESET_5(
        reset_pulse_0_RESET_5));
    TRIBUFF SDRAM_A2_pad (.D(\sdram_interface_0.address[2] ), .E(
        \sdram_interface_0.address_cl_11[0] ), .PAD(SDRAM_A2));
    BUFF RESET_IN_L8_pad_RNIGSK6 (.A(RESET_IN_L8_c), .Y(
        RESET_IN_L8_c_0));
    BIBUF SDRAM_D10_pad (.PAD(SDRAM_D10), .D(
        \sdram_interface_0.dout[10] ), .E(\sdram_interface_0.weVAL ), 
        .Y(SDRAM_D10_in));
    memory_controller memory_controller_0 (
        .constant_sensor_data_0_G_DATA_STACK_0({
        \constant_sensor_data_0_G_DATA_STACK_0[1] }), 
        .read_address_traversal_0_BA_READ_OUT({
        \read_address_traversal_0_BA_READ_OUT[1] , 
        \read_address_traversal_0_BA_READ_OUT[0] }), 
        .write_address_traversal_0_BA_WRITE_OUT({
        \write_address_traversal_0_BA_WRITE_OUT[1] , 
        \write_address_traversal_0_BA_WRITE_OUT[0] }), 
        .constant_sensor_data_0_M_DATA_STACK_77(
        \constant_sensor_data_0_M_DATA_STACK[79] ), 
        .constant_sensor_data_0_M_DATA_STACK_45(
        \constant_sensor_data_0_M_DATA_STACK[47] ), 
        .constant_sensor_data_0_M_DATA_STACK_13(
        \constant_sensor_data_0_M_DATA_STACK[15] ), 
        .constant_sensor_data_0_M_DATA_STACK_62(
        \constant_sensor_data_0_M_DATA_STACK[64] ), 
        .constant_sensor_data_0_M_DATA_STACK_67(
        \constant_sensor_data_0_M_DATA_STACK[69] ), 
        .constant_sensor_data_0_M_DATA_STACK_47(
        \constant_sensor_data_0_M_DATA_STACK[49] ), 
        .constant_sensor_data_0_M_DATA_STACK_15(
        \constant_sensor_data_0_M_DATA_STACK[17] ), 
        .constant_sensor_data_0_M_DATA_STACK_64(
        \constant_sensor_data_0_M_DATA_STACK[66] ), 
        .constant_sensor_data_0_M_DATA_STACK_32(
        \constant_sensor_data_0_M_DATA_STACK[34] ), 
        .constant_sensor_data_0_M_DATA_STACK_49(
        \constant_sensor_data_0_M_DATA_STACK[51] ), 
        .constant_sensor_data_0_M_DATA_STACK_18(
        \constant_sensor_data_0_M_DATA_STACK[20] ), 
        .constant_sensor_data_0_M_DATA_STACK_51(
        \constant_sensor_data_0_M_DATA_STACK[53] ), 
        .constant_sensor_data_0_M_DATA_STACK_52(
        \constant_sensor_data_0_M_DATA_STACK[54] ), 
        .constant_sensor_data_0_M_DATA_STACK_20(
        \constant_sensor_data_0_M_DATA_STACK[22] ), 
        .constant_sensor_data_0_M_DATA_STACK_53(
        \constant_sensor_data_0_M_DATA_STACK[55] ), 
        .constant_sensor_data_0_M_DATA_STACK_54(
        \constant_sensor_data_0_M_DATA_STACK[56] ), 
        .constant_sensor_data_0_M_DATA_STACK_22(
        \constant_sensor_data_0_M_DATA_STACK[24] ), 
        .constant_sensor_data_0_M_DATA_STACK_55(
        \constant_sensor_data_0_M_DATA_STACK[57] ), 
        .constant_sensor_data_0_M_DATA_STACK_56(
        \constant_sensor_data_0_M_DATA_STACK[58] ), 
        .constant_sensor_data_0_M_DATA_STACK_24(
        \constant_sensor_data_0_M_DATA_STACK[26] ), 
        .constant_sensor_data_0_M_DATA_STACK_57(
        \constant_sensor_data_0_M_DATA_STACK[59] ), 
        .constant_sensor_data_0_M_DATA_STACK_74(
        \constant_sensor_data_0_M_DATA_STACK[76] ), 
        .constant_sensor_data_0_M_DATA_STACK_42(
        \constant_sensor_data_0_M_DATA_STACK[44] ), 
        .constant_sensor_data_0_M_DATA_STACK_10(
        \constant_sensor_data_0_M_DATA_STACK[12] ), 
        .constant_sensor_data_0_M_DATA_STACK_27(
        \constant_sensor_data_0_M_DATA_STACK[29] ), 
        .constant_sensor_data_0_M_DATA_STACK_76(
        \constant_sensor_data_0_M_DATA_STACK[78] ), 
        .constant_sensor_data_0_M_DATA_STACK_44(
        \constant_sensor_data_0_M_DATA_STACK[46] ), 
        .constant_sensor_data_0_M_DATA_STACK_0(
        \constant_sensor_data_0_M_DATA_STACK[2] ), 
        .constant_sensor_data_0_M_DATA_STACK_6(
        \constant_sensor_data_0_M_DATA_STACK[8] ), 
        .constant_sensor_data_0_M_DATA_STACK_7(
        \constant_sensor_data_0_M_DATA_STACK[9] ), 
        .constant_sensor_data_0_M_DATA_STACK_8(
        \constant_sensor_data_0_M_DATA_STACK[10] ), 
        .constant_sensor_data_0_M_DATA_STACK_9(
        \constant_sensor_data_0_M_DATA_STACK[11] ), 
        .constant_sensor_data_0_M_DATA_STACK_11(
        \constant_sensor_data_0_M_DATA_STACK[13] ), 
        .constant_sensor_data_0_M_DATA_STACK_12(
        \constant_sensor_data_0_M_DATA_STACK[14] ), 
        .constant_sensor_data_0_M_DATA_STACK_14(
        \constant_sensor_data_0_M_DATA_STACK[16] ), 
        .constant_sensor_data_0_M_DATA_STACK_16(
        \constant_sensor_data_0_M_DATA_STACK[18] ), 
        .constant_sensor_data_0_M_DATA_STACK_17(
        \constant_sensor_data_0_M_DATA_STACK[19] ), 
        .constant_sensor_data_0_M_DATA_STACK_19(
        \constant_sensor_data_0_M_DATA_STACK[21] ), 
        .constant_sensor_data_0_M_DATA_STACK_21(
        \constant_sensor_data_0_M_DATA_STACK[23] ), 
        .constant_sensor_data_0_M_DATA_STACK_23(
        \constant_sensor_data_0_M_DATA_STACK[25] ), 
        .constant_sensor_data_0_M_DATA_STACK_25(
        \constant_sensor_data_0_M_DATA_STACK[27] ), 
        .constant_sensor_data_0_M_DATA_STACK_26(
        \constant_sensor_data_0_M_DATA_STACK[28] ), 
        .constant_sensor_data_0_M_DATA_STACK_30(
        \constant_sensor_data_0_M_DATA_STACK[32] ), 
        .constant_sensor_data_0_M_DATA_STACK_31(
        \constant_sensor_data_0_M_DATA_STACK[33] ), 
        .constant_sensor_data_0_M_DATA_STACK_34(
        \constant_sensor_data_0_M_DATA_STACK[36] ), 
        .constant_sensor_data_0_M_DATA_STACK_35(
        \constant_sensor_data_0_M_DATA_STACK[37] ), 
        .constant_sensor_data_0_M_DATA_STACK_37(
        \constant_sensor_data_0_M_DATA_STACK[39] ), 
        .constant_sensor_data_0_M_DATA_STACK_40(
        \constant_sensor_data_0_M_DATA_STACK[42] ), 
        .constant_sensor_data_0_M_DATA_STACK_43(
        \constant_sensor_data_0_M_DATA_STACK[45] ), 
        .constant_sensor_data_0_M_DATA_STACK_48(
        \constant_sensor_data_0_M_DATA_STACK[50] ), 
        .constant_sensor_data_0_M_DATA_STACK_50(
        \constant_sensor_data_0_M_DATA_STACK[52] ), 
        .constant_sensor_data_0_M_DATA_STACK_58(
        \constant_sensor_data_0_M_DATA_STACK[60] ), 
        .constant_sensor_data_0_M_DATA_STACK_59(
        \constant_sensor_data_0_M_DATA_STACK[61] ), 
        .constant_sensor_data_0_M_DATA_STACK_60(
        \constant_sensor_data_0_M_DATA_STACK[62] ), 
        .constant_sensor_data_0_M_DATA_STACK_61(
        \constant_sensor_data_0_M_DATA_STACK[63] ), 
        .constant_sensor_data_0_M_DATA_STACK_63(
        \constant_sensor_data_0_M_DATA_STACK[65] ), 
        .constant_sensor_data_0_M_DATA_STACK_65(
        \constant_sensor_data_0_M_DATA_STACK[67] ), 
        .constant_sensor_data_0_M_DATA_STACK_28(
        \constant_sensor_data_0_M_DATA_STACK[30] ), 
        .constant_sensor_data_0_M_DATA_STACK_29(
        \constant_sensor_data_0_M_DATA_STACK[31] ), 
        .constant_sensor_data_0_M_DATA_STACK_66(
        \constant_sensor_data_0_M_DATA_STACK[68] ), 
        .constant_sensor_data_0_M_DATA_STACK_68(
        \constant_sensor_data_0_M_DATA_STACK[70] ), 
        .constant_sensor_data_0_M_DATA_STACK_69(
        \constant_sensor_data_0_M_DATA_STACK[71] ), 
        .constant_sensor_data_0_M_DATA_STACK_70(
        \constant_sensor_data_0_M_DATA_STACK[72] ), 
        .constant_sensor_data_0_M_DATA_STACK_71(
        \constant_sensor_data_0_M_DATA_STACK[73] ), 
        .constant_sensor_data_0_M_DATA_STACK_72(
        \constant_sensor_data_0_M_DATA_STACK[74] ), 
        .constant_sensor_data_0_M_DATA_STACK_73(
        \constant_sensor_data_0_M_DATA_STACK[75] ), 
        .constant_sensor_data_0_M_DATA_STACK_75(
        \constant_sensor_data_0_M_DATA_STACK[77] ), 
        .constant_sensor_data_0_M_DATA_STACK_46(
        \constant_sensor_data_0_M_DATA_STACK[48] ), 
        .constant_sensor_data_0_M_DATA_STACK_41(
        \constant_sensor_data_0_M_DATA_STACK[43] ), 
        .constant_sensor_data_0_M_DATA_STACK_39(
        \constant_sensor_data_0_M_DATA_STACK[41] ), 
        .constant_sensor_data_0_M_DATA_STACK_38(
        \constant_sensor_data_0_M_DATA_STACK[40] ), 
        .constant_sensor_data_0_M_DATA_STACK_36(
        \constant_sensor_data_0_M_DATA_STACK[38] ), 
        .constant_sensor_data_0_M_DATA_STACK_33(
        \constant_sensor_data_0_M_DATA_STACK[35] ), 
        .constant_sensor_data_0_G_DATA_STACK_34(
        \constant_sensor_data_0_G_DATA_STACK[35] ), 
        .constant_sensor_data_0_G_DATA_STACK_35(
        \constant_sensor_data_0_G_DATA_STACK[36] ), 
        .constant_sensor_data_0_G_DATA_STACK_37(
        \constant_sensor_data_0_G_DATA_STACK[38] ), 
        .constant_sensor_data_0_G_DATA_STACK_39(
        \constant_sensor_data_0_G_DATA_STACK[40] ), 
        .constant_sensor_data_0_G_DATA_STACK_47(
        \constant_sensor_data_0_G_DATA_STACK[48] ), 
        .constant_sensor_data_0_G_DATA_STACK_44(
        \constant_sensor_data_0_G_DATA_STACK[45] ), 
        .constant_sensor_data_0_G_DATA_STACK_46(
        \constant_sensor_data_0_G_DATA_STACK[47] ), 
        .constant_sensor_data_0_G_DATA_STACK_9(
        \constant_sensor_data_0_G_DATA_STACK[10] ), 
        .constant_sensor_data_0_G_DATA_STACK_7(
        \constant_sensor_data_0_G_DATA_STACK[8] ), 
        .constant_sensor_data_0_G_DATA_STACK_17(
        \constant_sensor_data_0_G_DATA_STACK[18] ), 
        .constant_sensor_data_0_G_DATA_STACK_30(
        \constant_sensor_data_0_G_DATA_STACK[31] ), 
        .constant_sensor_data_0_G_DATA_STACK_32(
        \constant_sensor_data_0_G_DATA_STACK[33] ), 
        .constant_sensor_data_0_G_DATA_STACK_19(
        \constant_sensor_data_0_G_DATA_STACK[20] ), 
        .constant_sensor_data_0_G_DATA_STACK_24(
        \constant_sensor_data_0_G_DATA_STACK[25] ), 
        .constant_sensor_data_0_G_DATA_STACK_26(
        \constant_sensor_data_0_G_DATA_STACK[27] ), 
        .constant_sensor_data_0_G_DATA_STACK_28(
        \constant_sensor_data_0_G_DATA_STACK[29] ), 
        .constant_sensor_data_0_G_DATA_STACK_15(
        \constant_sensor_data_0_G_DATA_STACK[16] ), 
        .constant_sensor_data_0_G_DATA_STACK_13(
        \constant_sensor_data_0_G_DATA_STACK[14] ), 
        .constant_sensor_data_0_G_DATA_STACK_11(
        \constant_sensor_data_0_G_DATA_STACK[12] ), 
        .constant_sensor_data_0_G_DATA_STACK_21(
        \constant_sensor_data_0_G_DATA_STACK[22] ), 
        .constant_sensor_data_0_G_DATA_STACK_0_d0(
        \constant_sensor_data_0_G_DATA_STACK[1] ), 
        .constant_sensor_data_0_G_DATA_STACK_8(
        \constant_sensor_data_0_G_DATA_STACK[9] ), 
        .constant_sensor_data_0_G_DATA_STACK_10(
        \constant_sensor_data_0_G_DATA_STACK[11] ), 
        .constant_sensor_data_0_G_DATA_STACK_12(
        \constant_sensor_data_0_G_DATA_STACK[13] ), 
        .constant_sensor_data_0_G_DATA_STACK_14(
        \constant_sensor_data_0_G_DATA_STACK[15] ), 
        .constant_sensor_data_0_G_DATA_STACK_16(
        \constant_sensor_data_0_G_DATA_STACK[17] ), 
        .constant_sensor_data_0_G_DATA_STACK_18(
        \constant_sensor_data_0_G_DATA_STACK[19] ), 
        .constant_sensor_data_0_G_DATA_STACK_20(
        \constant_sensor_data_0_G_DATA_STACK[21] ), 
        .constant_sensor_data_0_G_DATA_STACK_22(
        \constant_sensor_data_0_G_DATA_STACK[23] ), 
        .constant_sensor_data_0_G_DATA_STACK_23(
        \constant_sensor_data_0_G_DATA_STACK[24] ), 
        .constant_sensor_data_0_G_DATA_STACK_25(
        \constant_sensor_data_0_G_DATA_STACK[26] ), 
        .constant_sensor_data_0_G_DATA_STACK_27(
        \constant_sensor_data_0_G_DATA_STACK[28] ), 
        .constant_sensor_data_0_G_DATA_STACK_31(
        \constant_sensor_data_0_G_DATA_STACK[32] ), 
        .constant_sensor_data_0_G_DATA_STACK_33(
        \constant_sensor_data_0_G_DATA_STACK[34] ), 
        .constant_sensor_data_0_G_DATA_STACK_36(
        \constant_sensor_data_0_G_DATA_STACK[37] ), 
        .constant_sensor_data_0_G_DATA_STACK_38(
        \constant_sensor_data_0_G_DATA_STACK[39] ), 
        .constant_sensor_data_0_G_DATA_STACK_40(
        \constant_sensor_data_0_G_DATA_STACK[41] ), 
        .constant_sensor_data_0_G_DATA_STACK_41(
        \constant_sensor_data_0_G_DATA_STACK[42] ), 
        .constant_sensor_data_0_G_DATA_STACK_42(
        \constant_sensor_data_0_G_DATA_STACK[43] ), 
        .constant_sensor_data_0_G_DATA_STACK_43(
        \constant_sensor_data_0_G_DATA_STACK[44] ), 
        .constant_sensor_data_0_G_DATA_STACK_29(
        \constant_sensor_data_0_G_DATA_STACK[30] ), 
        .constant_sensor_data_0_G_DATA_STACK_45(
        \constant_sensor_data_0_G_DATA_STACK[46] ), 
        .read_address_traversal_0_COL_READ_OUT({
        \read_address_traversal_0_COL_READ_OUT[8] , 
        \read_address_traversal_0_COL_READ_OUT[7] , 
        \read_address_traversal_0_COL_READ_OUT[6] , 
        \read_address_traversal_0_COL_READ_OUT[5] , 
        \read_address_traversal_0_COL_READ_OUT[4] , 
        \read_address_traversal_0_COL_READ_OUT[3] , 
        \read_address_traversal_0_COL_READ_OUT[2] , 
        \read_address_traversal_0_COL_READ_OUT[1] , 
        \read_address_traversal_0_COL_READ_OUT[0] }), 
        .write_address_traversal_0_COL_WRITE_OUT({
        \write_address_traversal_0_COL_WRITE_OUT[8] , 
        \write_address_traversal_0_COL_WRITE_OUT[7] , 
        \write_address_traversal_0_COL_WRITE_OUT[6] , 
        \write_address_traversal_0_COL_WRITE_OUT[5] , 
        \write_address_traversal_0_COL_WRITE_OUT[4] , 
        \write_address_traversal_0_COL_WRITE_OUT[3] , 
        \write_address_traversal_0_COL_WRITE_OUT[2] , 
        \write_address_traversal_0_COL_WRITE_OUT[1] , 
        \write_address_traversal_0_COL_WRITE_OUT[0] }), 
        .read_address_traversal_0_ROW_READ_OUT({
        \read_address_traversal_0_ROW_READ_OUT[12] , 
        \read_address_traversal_0_ROW_READ_OUT[11] , 
        \read_address_traversal_0_ROW_READ_OUT[10] , 
        \read_address_traversal_0_ROW_READ_OUT[9] , 
        \read_address_traversal_0_ROW_READ_OUT[8] , 
        \read_address_traversal_0_ROW_READ_OUT[7] , 
        \read_address_traversal_0_ROW_READ_OUT[6] , 
        \read_address_traversal_0_ROW_READ_OUT[5] , 
        \read_address_traversal_0_ROW_READ_OUT[4] , 
        \read_address_traversal_0_ROW_READ_OUT[3] , 
        \read_address_traversal_0_ROW_READ_OUT[2] , 
        \read_address_traversal_0_ROW_READ_OUT[1] , 
        \read_address_traversal_0_ROW_READ_OUT[0] }), 
        .write_address_traversal_0_ROW_WRITE_OUT({
        \write_address_traversal_0_ROW_WRITE_OUT[12] , 
        \write_address_traversal_0_ROW_WRITE_OUT[11] , 
        \write_address_traversal_0_ROW_WRITE_OUT[10] , 
        \write_address_traversal_0_ROW_WRITE_OUT[9] , 
        \write_address_traversal_0_ROW_WRITE_OUT[8] , 
        \write_address_traversal_0_ROW_WRITE_OUT[7] , 
        \write_address_traversal_0_ROW_WRITE_OUT[6] , 
        \write_address_traversal_0_ROW_WRITE_OUT[5] , 
        \write_address_traversal_0_ROW_WRITE_OUT[4] , 
        \write_address_traversal_0_ROW_WRITE_OUT[3] , 
        \write_address_traversal_0_ROW_WRITE_OUT[2] , 
        \write_address_traversal_0_ROW_WRITE_OUT[1] , 
        \write_address_traversal_0_ROW_WRITE_OUT[0] }), 
        .memory_controller_0_CMD_OUT({\memory_controller_0_CMD_OUT[1] , 
        \memory_controller_0_CMD_OUT[0] }), 
        .memory_controller_0_ROW_OUT({
        \memory_controller_0_ROW_OUT[12] , 
        \memory_controller_0_ROW_OUT[11] , 
        \memory_controller_0_ROW_OUT[10] , 
        \memory_controller_0_ROW_OUT[9] , 
        \memory_controller_0_ROW_OUT[8] , 
        \memory_controller_0_ROW_OUT[7] , 
        \memory_controller_0_ROW_OUT[6] , 
        \memory_controller_0_ROW_OUT[5] , 
        \memory_controller_0_ROW_OUT[4] , 
        \memory_controller_0_ROW_OUT[3] , 
        \memory_controller_0_ROW_OUT[2] , 
        \memory_controller_0_ROW_OUT[1] , 
        \memory_controller_0_ROW_OUT[0] }), 
        .memory_controller_0_COL_OUT({\memory_controller_0_COL_OUT[8] , 
        \memory_controller_0_COL_OUT[7] , 
        \memory_controller_0_COL_OUT[6] , 
        \memory_controller_0_COL_OUT[5] , 
        \memory_controller_0_COL_OUT[4] , 
        \memory_controller_0_COL_OUT[3] , 
        \memory_controller_0_COL_OUT[2] , 
        \memory_controller_0_COL_OUT[1] , 
        \memory_controller_0_COL_OUT[0] }), 
        .memory_controller_0_BA_OUT({\memory_controller_0_BA_OUT[1] , 
        \memory_controller_0_BA_OUT[0] }), 
        .memory_controller_0_DATA_OUT({
        \memory_controller_0_DATA_OUT[15] , 
        \memory_controller_0_DATA_OUT[14] , 
        \memory_controller_0_DATA_OUT[13] , 
        \memory_controller_0_DATA_OUT[12] , 
        \memory_controller_0_DATA_OUT[11] , 
        \memory_controller_0_DATA_OUT[10] , 
        \memory_controller_0_DATA_OUT[9] , 
        \memory_controller_0_DATA_OUT[8] , 
        \memory_controller_0_DATA_OUT[7] , 
        \memory_controller_0_DATA_OUT[6] , 
        \memory_controller_0_DATA_OUT[5] , 
        \memory_controller_0_DATA_OUT[4] , 
        \memory_controller_0_DATA_OUT[3] , 
        \memory_controller_0_DATA_OUT[2] , 
        \memory_controller_0_DATA_OUT[1] , 
        \memory_controller_0_DATA_OUT[0] }), .reset_pulse_0_RESET_0(
        reset_pulse_0_RESET_0), .memory_controller_0_NEXT_READ(
        memory_controller_0_NEXT_READ), 
        .memory_controller_0_NEXT_WRITE(memory_controller_0_NEXT_WRITE)
        , .reset_pulse_0_RESET(reset_pulse_0_RESET), 
        .reset_pulse_0_RESET_11(reset_pulse_0_RESET_11), 
        .reset_pulse_0_RESET_17(reset_pulse_0_RESET_17), 
        .read_buffer_0_READ_CMD(read_buffer_0_READ_CMD), 
        .sdram_interface_0_STATUS(sdram_interface_0_STATUS), 
        .reset_pulse_0_CLK_OUT_48MHZ(reset_pulse_0_CLK_OUT_48MHZ), 
        .reset_pulse_0_RESET_7(reset_pulse_0_RESET_7), 
        .reset_pulse_0_RESET_3(reset_pulse_0_RESET_3), 
        .reset_pulse_0_RESET_4(reset_pulse_0_RESET_4), 
        .reset_pulse_0_RESET_6(reset_pulse_0_RESET_6), 
        .reset_pulse_0_RESET_18(reset_pulse_0_RESET_18), 
        .reset_pulse_0_RESET_2(reset_pulse_0_RESET_2), 
        .reset_pulse_0_RESET_5(reset_pulse_0_RESET_5), 
        .reset_pulse_0_RESET_16(reset_pulse_0_RESET_16), 
        .reset_pulse_0_RESET_14(reset_pulse_0_RESET_14), 
        .reset_pulse_0_RESET_15(reset_pulse_0_RESET_15), 
        .reset_pulse_0_RESET_12(reset_pulse_0_RESET_12), 
        .reset_pulse_0_RESET_13(reset_pulse_0_RESET_13), 
        .reset_pulse_0_RESET_19(reset_pulse_0_RESET_19), 
        .reset_pulse_0_RESET_20(reset_pulse_0_RESET_20), 
        .reset_pulse_0_RESET_21(reset_pulse_0_RESET_21), 
        .reset_pulse_0_RESET_22(reset_pulse_0_RESET_22));
    BIBUF SDRAM_D1_pad (.PAD(SDRAM_D1), .D(\sdram_interface_0.dout[1] )
        , .E(\sdram_interface_0.weVAL ), .Y(SDRAM_D1_in));
    OUTBUF SDRAM_DQML_pad (.D(SDRAM_DQMU_c_c), .PAD(SDRAM_DQML));
    TRIBUFF SDRAM_A7_pad (.D(\sdram_interface_0.address[7] ), .E(
        \sdram_interface_0.address_cl_8[0] ), .PAD(SDRAM_A7));
    reset_pulse reset_pulse_0 (.reset_pulse_0_RESET_22(
        reset_pulse_0_RESET_22), .RESET_IN_L8_c_0(RESET_IN_L8_c_0), 
        .CLK_48MHZ_c_0(CLK_48MHZ_c_0), .reset_pulse_0_RESET_21(
        reset_pulse_0_RESET_21), .reset_pulse_0_RESET_20(
        reset_pulse_0_RESET_20), .reset_pulse_0_RESET_19(
        reset_pulse_0_RESET_19), .reset_pulse_0_RESET_18(
        reset_pulse_0_RESET_18), .reset_pulse_0_RESET_17(
        reset_pulse_0_RESET_17), .reset_pulse_0_RESET_16(
        reset_pulse_0_RESET_16), .reset_pulse_0_RESET_15(
        reset_pulse_0_RESET_15), .reset_pulse_0_RESET_14(
        reset_pulse_0_RESET_14), .reset_pulse_0_RESET_13(
        reset_pulse_0_RESET_13), .reset_pulse_0_RESET_12(
        reset_pulse_0_RESET_12), .reset_pulse_0_RESET_11(
        reset_pulse_0_RESET_11), .reset_pulse_0_RESET_10(
        reset_pulse_0_RESET_10), .reset_pulse_0_RESET_9(
        reset_pulse_0_RESET_9), .RESET_IN_L8_c(RESET_IN_L8_c), 
        .CLK_48MHZ_c(CLK_48MHZ_c), .reset_pulse_0_RESET_8(
        reset_pulse_0_RESET_8), .reset_pulse_0_RESET_7(
        reset_pulse_0_RESET_7), .reset_pulse_0_RESET_6(
        reset_pulse_0_RESET_6), .reset_pulse_0_RESET_5(
        reset_pulse_0_RESET_5), .reset_pulse_0_RESET_4(
        reset_pulse_0_RESET_4), .reset_pulse_0_RESET_3(
        reset_pulse_0_RESET_3), .reset_pulse_0_RESET_2(
        reset_pulse_0_RESET_2), .reset_pulse_0_RESET_1(
        reset_pulse_0_RESET_1), .reset_pulse_0_RESET_0(
        reset_pulse_0_RESET_0), .reset_pulse_0_CLK_OUT_48MHZ(
        reset_pulse_0_CLK_OUT_48MHZ), .reset_pulse_0_RESET(
        reset_pulse_0_RESET));
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
        clock_div_1MHZ_10HZ_0_CLK_10HZ_OUT), .reset_pulse_0_RESET_12(
        reset_pulse_0_RESET_12), .reset_pulse_0_RESET_19(
        reset_pulse_0_RESET_19));
    TRIBUFF DB3_pad (.D(\read_buffer_0.byte_out[3] ), .E(
        \read_buffer_0.byte_out_cl[0] ), .PAD(DB3));
    OUTBUF SDRAM_CS_pad (.D(GND), .PAD(SDRAM_CS));
    BIBUF SDRAM_D4_pad (.PAD(SDRAM_D4), .D(\sdram_interface_0.dout[4] )
        , .E(\sdram_interface_0.weVAL ), .Y(SDRAM_D4_in));
    BIBUF SDRAM_D2_pad (.PAD(SDRAM_D2), .D(\sdram_interface_0.dout[2] )
        , .E(\sdram_interface_0.weVAL ), .Y(SDRAM_D2_in));
    INBUF CLK_48MHZ_pad (.PAD(CLK_48MHZ), .Y(CLK_48MHZ_c));
    OUTBUF SDRAM_WE_pad (.D(SDRAM_WE_c), .PAD(SDRAM_WE));
    TRIBUFF SDRAM_A5_pad (.D(\sdram_interface_0.address[5] ), .E(
        \sdram_interface_0.address_cl_10[0] ), .PAD(SDRAM_A5));
    BIBUF SDRAM_D7_pad (.PAD(SDRAM_D7), .D(\sdram_interface_0.dout[7] )
        , .E(\sdram_interface_0.weVAL ), .Y(SDRAM_D7_in));
    TRIBUFF SDRAM_A10_pad (.D(\sdram_interface_0.address[10] ), .E(
        \sdram_interface_0.address_cl_12[0] ), .PAD(SDRAM_A10));
    read_buffer read_buffer_0 (.byte_out_cl({
        \read_buffer_0.byte_out_cl[0] }), 
        .write_address_traversal_0_ROW_WRITE_OUT({
        \write_address_traversal_0_ROW_WRITE_OUT[12] , 
        \write_address_traversal_0_ROW_WRITE_OUT[11] , 
        \write_address_traversal_0_ROW_WRITE_OUT[10] , 
        \write_address_traversal_0_ROW_WRITE_OUT[9] , 
        \write_address_traversal_0_ROW_WRITE_OUT[8] , 
        \write_address_traversal_0_ROW_WRITE_OUT[7] , 
        \write_address_traversal_0_ROW_WRITE_OUT[6] , 
        \write_address_traversal_0_ROW_WRITE_OUT[5] , 
        \write_address_traversal_0_ROW_WRITE_OUT[4] , 
        \write_address_traversal_0_ROW_WRITE_OUT[3] , 
        \write_address_traversal_0_ROW_WRITE_OUT[2] , 
        \write_address_traversal_0_ROW_WRITE_OUT[1] , 
        \write_address_traversal_0_ROW_WRITE_OUT[0] }), .byte_out({
        \read_buffer_0.byte_out[7] , \read_buffer_0.byte_out[6] , 
        \read_buffer_0.byte_out[5] , \read_buffer_0.byte_out[4] , 
        \read_buffer_0.byte_out[3] , \read_buffer_0.byte_out[2] , 
        \read_buffer_0.byte_out[1] , \read_buffer_0.byte_out[0] }), 
        .sdram_interface_0_DATA_READ({
        \sdram_interface_0_DATA_READ[15] , 
        \sdram_interface_0_DATA_READ[14] , 
        \sdram_interface_0_DATA_READ[13] , 
        \sdram_interface_0_DATA_READ[12] , 
        \sdram_interface_0_DATA_READ[11] , 
        \sdram_interface_0_DATA_READ[10] , 
        \sdram_interface_0_DATA_READ[9] , 
        \sdram_interface_0_DATA_READ[8] , 
        \sdram_interface_0_DATA_READ[7] , 
        \sdram_interface_0_DATA_READ[6] , 
        \sdram_interface_0_DATA_READ[5] , 
        \sdram_interface_0_DATA_READ[4] , 
        \sdram_interface_0_DATA_READ[3] , 
        \sdram_interface_0_DATA_READ[2] , 
        \sdram_interface_0_DATA_READ[1] , 
        \sdram_interface_0_DATA_READ[0] }), .reset_pulse_0_RESET_15(
        reset_pulse_0_RESET_15), .N_22(\read_buffer_0.N_22 ), 
        .reset_pulse_0_RESET_19(reset_pulse_0_RESET_19), 
        .read_buffer_0_READ_CMD(read_buffer_0_READ_CMD), 
        .reset_pulse_0_CLK_OUT_48MHZ(reset_pulse_0_CLK_OUT_48MHZ), 
        .reset_pulse_0_RESET_3(reset_pulse_0_RESET_3), 
        .constant_sensor_data_0_NEXT_BYTE(
        constant_sensor_data_0_NEXT_BYTE), .reset_pulse_0_RESET_18(
        reset_pulse_0_RESET_18), .reset_pulse_0_RESET_6(
        reset_pulse_0_RESET_6), .reset_pulse_0_RESET_7(
        reset_pulse_0_RESET_7), .reset_pulse_0_RESET_16(
        reset_pulse_0_RESET_16));
    OUTBUF SDRAM_CLK_pad (.D(SDRAM_CLK_c), .PAD(SDRAM_CLK));
    
endmodule
