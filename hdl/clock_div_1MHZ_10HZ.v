///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <ELSA>
//
// File: clock_div_1MHZ_10HZ.v
//
// Description: Turns 1MHZ clock into 10Hz clock
//
// Targeted device: <Family::ProASIC3L> <Die::A3PE3000L> <Package::484 FBGA>
// Author: <Scott Mende>
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 

module clock_div_1MHZ_10HZ(CLK_1MHZ_IN,RESET,CLK_10HZ_OUT);
input CLK_1MHZ_IN,RESET;
output CLK_10HZ_OUT;
wire CLK_10HZ_OUT;

reg [16:0] counter;
reg clk_out;
parameter factor=50000; // 100000/2
assign CLK_10HZ_OUT = clk_out;
always @(posedge CLK_1MHZ_IN or negedge RESET)
begin
    if (RESET==1'b0) begin
        clk_out<=1;
        counter<=1;
    end else if (counter == factor) begin
        clk_out <= !clk_out;
        counter <=1;
    end else begin
        counter <= counter+1;
    end
    
end


endmodule

