///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: test_constants_spi.v
// File history:
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//
// Description: 
//
// <Description here>
//
// Targeted device: <Family::ProASIC3L> <Die::M1A3P1000L> <Package::484 FBGA>
// Author: <Name>
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 

//`timescale <time_units> / <precision>

module test_constants_spi(DATA,ROW_WRITE);
output [15:0] DATA;
output [12:0] ROW_WRITE;
parameter dat= 15'b0100110101000111;
parameter row = 12'b000000011101;

assign DATA=dat;
assign ROW_WRITE=row;

endmodule

