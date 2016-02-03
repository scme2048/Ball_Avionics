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

module clock_div_26MHZ_1MHZ(CLK_26MHZ_IN,CLK_1MHZ_OUT);
input CLK_26MHZ_IN;
output CLK_1MHZ_OUT;
wire CLK_1MHZ_OUT;

reg [16:0] counter=1;
reg clk_out=1;
parameter factor=26;
assign CLK_1MHZ_OUT = clk_out;
always @(posedge CLK_26MHZ_IN)
begin
    if (counter == factor/2) begin
        clk_out = ~clk_out;
        counter <=1;
    end else begin
        counter <= counter+1;
    end
    
end


endmodule

