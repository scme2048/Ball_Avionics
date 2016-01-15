///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <ELSA>
//
// File: clock_div_1MHZ_100KHZ.v
//
// Description: Turns 1MHZ clock into 100KHZ clock
//
// Targeted device: <Family::ProASIC3L> <Die::A3PE3000L> <Package::484 FBGA>
// Author: <Scott Mende>
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 

module clock_div_1MHZ_100KHZ(CLK_1MHZ_IN,CLK_100KHZ_OUT);
input CLK_1MHZ_IN;
output CLK_100KHZ_OUT;
wire CLK_10HZ_OUT;

reg [16:0] counter=1;
reg clk_out=1;
parameter factor=10; // Change this number for proper clock. Period in relation to nanoseconds.
assign CLK_100KHZ_OUT = clk_out;
always @(posedge CLK_1MHZ_IN)
begin
    if (counter == factor/2) begin
        clk_out = ~clk_out;
        counter <=1;
    end else begin
        counter <= counter+1;
    end
    
end


endmodule

