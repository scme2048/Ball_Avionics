///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <ELSA>
//
// File: read_address_traversal.v
// File history:
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//
// Description: 
//
// <This module will traverse the memory space of the SDRAM. This module will output the current address to be read
// from.
//          Memory Space:
//              Banks:      4    (2^2)
//              Rows:       8192 (2^13)
//              Columns:    512  (2^9)
//              Data Width: 16 bits (1 Word)>
//
// Targeted device: <Family::ProASIC3L> <Die::A3PE3000L> <Package::484 FBGA>
// Author: <Scott Mende>
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 

//`timescale <time_units> / <precision>

module read_address_traversal( NEXT,RESET, BA_READ_OUT, ROW_READ_OUT,COL_READ_OUT );

// Possibly add write addresses for tracking position
input NEXT,RESET;
//input [4:0] REPLAY;
output [1:0] BA_READ_OUT;
output [8:0] COL_READ_OUT;
output [12:0] ROW_READ_OUT;


// Data Replay
// THIS STILL NEEDS SOME WORK
//parameter first_pass = 540360;
//parameter typical_pass = 576384;

// Statements
reg [23:0] current_count;

assign BA_READ_OUT = current_count[23:22];
assign COL_READ_OUT = current_count[21:13];
assign ROW_READ_OUT = current_count[12:0];

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

