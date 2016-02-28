///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: dummy_mem.v
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

module dummy_mem(

    input NEXT_CMD, CLK, RST,
    output [7:0] data
    );

reg [7:0] data_a, data_b, data_c;

assign data = data_c;


always @(posedge NEXT_CMD) begin
    if (NEXT_CMD == 1'b1)
        data_a <= data_c + 1;
end

always @(negedge NEXT_CMD) begin
    if (NEXT_CMD == 1'b0)
        data_b <= data_a;
end    


always @(posedge CLK or negedge RST) begin
    if (RST == 1'b0) begin
        data_c <= 8'd0;
    end
    else begin
        if (data_b > 0)
            data_c <= data_b;
        
    end    
        
end


//<statements>

endmodule

