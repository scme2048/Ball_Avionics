///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: read_buffer.v
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

module read_buffer( CLK_48MHZ,RESET,NEXT_BYTE,DATA_READ,READ_CMD,BYTE_OUT);

// Inputs and Outputs
input CLK_48MHZ, RESET, NEXT_BYTE;
input [15:0] DATA_READ;

output READ_CMD;
output [7:0] BYTE_OUT;

// Registers and Assignments
reg read_cmd;
reg byte_high;

assign BYTE_OUT = (byte_high==1'b1) ? DATA_READ[15:8] : DATA_READ[7:0];
assign READ_CMD = read_cmd;





always @(posedge NEXT_BYTE or negedge RESET) begin
    if (RESET==1'b0) begin
        read_cmd<=1'b0;
        byte_high<=1'b0;
    end else begin
        if (byte_high ==1'b1) begin
            byte_high<=1'b0;
            read_cmd<=1'b1;
        end else if (byte_high ==1'b0) begin
            byte_high<=1'b1;
            read_cmd<=1'b0;
        end
    end

end
endmodule

