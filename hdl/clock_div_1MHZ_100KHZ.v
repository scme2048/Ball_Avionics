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

module clock_div_1MHZ_100KHZ(CLK_1MHZ_IN,RESET,CLK_100KHZ_OUT);
input CLK_1MHZ_IN,RESET;
output CLK_100KHZ_OUT;

reg [16:0] counter;
reg clk_out;
parameter factor=10; // Change this number for proper clock. Period in relation to nanoseconds.
assign CLK_100KHZ_OUT = clk_out;
always @(posedge CLK_1MHZ_IN or negedge RESET)
begin
    if (RESET==1'b0) begin
        counter<=1;
        clk_out<=1;
    end else if (counter == factor/2) begin
        clk_out <= ~clk_out;
        counter <=1;
    end else begin
        counter <= counter+1;
    end
    
end


endmodule

