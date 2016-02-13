///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <ELSA>
//
// File: clock_div_1MHZ_1KHZ.v
//
// Description: Turns 1MHZ clock into 1kHZ clock
//
// Targeted device: <Family::ProASIC3L> <Die::A3PE3000L> <Package::484 FBGA>
// Author: <Scott Mende>
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 

module clock_div_1MHZ_1KHZ(CLK_1MHZ_IN,RESET,CLK_1KHZ_OUT);
input CLK_1MHZ_IN;
input RESET;
output CLK_1KHZ_OUT;
wire CLK_1KHZ_OUT;

reg [16:0] counter;
reg clk_out;
parameter factor=1000;
assign CLK_1KHZ_OUT = clk_out;
always @(posedge CLK_1MHZ_IN or negedge RESET)
begin
    if (RESET==1'b0) begin
        clk_out<=1;
        counter<=1;
    end else if (counter == factor/2) begin
        clk_out <= ~clk_out;
        counter <=1;
    end else begin
        counter <= counter+1;
    end
    
end


endmodule

