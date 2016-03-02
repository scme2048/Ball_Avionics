///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: buffer_data_out.v
// File history:
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//
// Description: 
//
// <Description here>
//
// Targeted device: <Family::ProASIC3L> <Die::A3PE3000L> <Package::484 FBGA>
// Author: <Name>
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 

//`timescale <time_units> / <precision>

module buffer_data_out( DATA_IN, DB0,DB1,DB2,DB3,DB4,DB5,DB6,DB7);
input [7:0] DATA_IN;
output DB0,DB1,DB2,DB3,DB4,DB5,DB6,DB7;

assign DB0 = DATA_IN[0];
assign DB1 = DATA_IN[1];
assign DB2 = DATA_IN[2];
assign DB3 = DATA_IN[3];
assign DB4 = DATA_IN[4];
assign DB5 = DATA_IN[5];
assign DB6 = DATA_IN[6];
assign DB7 = DATA_IN[7];


endmodule

