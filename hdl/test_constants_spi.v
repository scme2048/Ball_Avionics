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
input CLK_1KHZ;
output [7:0] DATA;
output RESET,START;

reg st = 1'b0;
reg [7:0] da = 8'b0;
reg res = 1'b0;
assign RESET=res;
assign START=st;
assign DATA=da;

reg beg = 1'b1;
reg beg1 = 1'b0;

always @(posedge CLK_1KHZ) 
begin

if ((beg ==1'b1) && (beg1==1'b1)) begin
    res<=1'b0;
end
if ((beg ==1'b1) && (beg1==1'b0)) begin
    res<=1'b1;
    beg1=1'b1;
end
st<=!st;
da<=da+1;

end
endmodule

