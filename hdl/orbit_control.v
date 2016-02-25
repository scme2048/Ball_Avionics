///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: orbit_control.v
// File history:
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//
// Description: 
//
// <Description here>
//
// Targeted device: <Family::ProASIC3L> <Die::A3P1000L> <Package::484 FBGA>
// Author: <Name>
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 

//`timescale <time_units> / <precision>

module orbit_control(cntr_enable,clk,reset,tx_enable

);
input cntr_enable,clk,reset; //10 Hz clk --> 4800 cycles in 8 min
output tx_enable;

reg [13:0] cntr;
reg tx_enable_reg;

assign tx_enable = tx_enable_reg;

always @(posedge clk or negedge reset) begin
    if (reset==1'b0) begin
        cntr = 0;
        tx_enable_reg = 1'b0;
    end
    else if ((cntr_enable) && (cntr<4800)) begin
        cntr = cntr + 1;
        tx_enable_reg = 1'b1;
    end
    else if ((cntr >= 4800)||(!cntr_enable)) begin // if 8 min reached, stop counter, reset
        cntr = 0;
        tx_enable_reg = 1'b0;
        
    end
end
//always @(*) begin
//    if ((cntr_enable) && (cntr<4800)) begin
//        cntr = cntr + 1;
//        tx_enable_reg = 1'b1;
//    end
//    else if (cntr >= 4800) begin // if 8 min reached, stop counter, reset
//        cntr = 0;
//        tx_enable_reg = 1'b0;
        
//    end
//end
//always @(posedge cntr_begin) begin
//        cntr_enable <= 1'b1;

    

//end

endmodule

