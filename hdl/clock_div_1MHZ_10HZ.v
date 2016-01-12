///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: clock_div.v
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

module clock_div_1MHZ_10HZ(CLK_1MHZ_IN,CLK_10HZ_OUT);
input CLK_1MHZ_IN;
output CLK_10HZ_OUT;
wire CLK_10HZ_OUT;

reg [16:0] counter=1;
reg clk_out=1;
parameter factor=100000;
assign CLK_10HZ_OUT = clk_out;
always @(posedge CLK_1MHZ_IN)
begin
    if (counter == factor/2) begin
        clk_out = ~clk_out;
        counter <=1;
    end else begin
        counter <= counter+1;
    end
    
end

//<statements>

endmodule

