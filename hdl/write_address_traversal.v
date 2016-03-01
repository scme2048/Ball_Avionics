///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: write_address_traversal.v
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

module write_address_traversal( RESET,NEXT, BA_WRITE_OUT, ROW_WRITE_OUT,COL_WRITE_OUT );

//CLK is not used
input NEXT, RESET;
output [1:0] BA_WRITE_OUT;
output [8:0] COL_WRITE_OUT;
output [12:0] ROW_WRITE_OUT;

// Statements
reg [23:0] current_count;

assign BA_WRITE_OUT = current_count[23:22];
assign COL_WRITE_OUT = current_count[21:13];
assign ROW_WRITE_OUT = current_count[12:0];

always @(posedge NEXT or negedge RESET)
begin
if (RESET==1'b0) begin
    current_count=24'b0;
end else begin

    // Counter equal to 16777216
    if (current_count == 24'b111111111111111111111111) begin
        current_count = 24'b0;
    end else begin
        current_count = current_count+1;
    end

end

end
endmodule