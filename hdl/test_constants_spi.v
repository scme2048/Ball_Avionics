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

module test_constants_spi(CLK_1KHZ,RESET,DATA, START);
input CLK_1KHZ,RESET;
output [7:0] DATA;
output START;

reg st;
reg [7:0] da;
assign START=st;
assign DATA=da;



always @(posedge CLK_1KHZ or posedge RESET) 
begin

if (RESET) begin
    da <= 8'b0;
    st <= 1'b0;
end else begin

st<=!st;
da<=da+1;
end
end
endmodule

