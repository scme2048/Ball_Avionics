////////////////////////////////////////////////////////////////////////////////////////////////////
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

module read_buffer( CLK_48MHZ,RESET,NEXT_BYTE,DATA_READ,ROW_WRITE,READ_CMD,BYTE_OUT);

// Inputs and Outputs
input CLK_48MHZ, RESET, NEXT_BYTE;
input [15:0] DATA_READ;
input [12:0] ROW_WRITE;

output READ_CMD;
output [7:0] BYTE_OUT;

// Registers and Assignments
reg read_cmd;
reg init;
reg [7:0] byte_out;
reg [1:0] position;
reg [15:0] buffer_a;
reg [15:0] buffer_b;

assign BYTE_OUT = byte_out;
assign READ_CMD = read_cmd;

always @(posedge NEXT_BYTE or negedge RESET) begin
    if (RESET==1'b0) begin
        position= 2'b00;
        byte_out=8'bZ;
    end else begin
        if (position==2'b00) begin
            byte_out<=buffer_a[7:0];
            position=position+1;
        end else if (position==2'b01) begin
            byte_out<=buffer_a[15:8];
            position=position+1;
        end else if (position==2'b10) begin
            byte_out<=buffer_b[7:0];
            position=position+1;
        end else begin
            byte_out<=buffer_b[15:0];
            position=2'b00;
        end

    end

end

always @(posedge CLK_48MHZ or negedge RESET) begin
    if (RESET==1'b0) begin
        read_cmd<=1'b0;
        init=1'b1;
    end else begin
        if ((init==1'b1) && (ROW_WRITE>=13'b0000000000011)) begin
            read_cmd<=1'b1;
            init=1'b0;
            // HERE NEED TO GET FIRST 2 WORDS OF DATA FROM MEMORY TO FILL THE CACHE!!!!
            // Really just need first word, then normal logic should handle the rest...
        end
        if ((position==2'b00) && (init==1'b0)) begin
            read_cmd<=1'b1;
        end
        if ((position==2'b01) && (init==1'b0)) begin
            read_cmd<=1'b0;
            buffer_b<=DATA_READ;
        end
        if ((position==2'b10) && (init==1'b0)) begin
            read_cmd<=1'b1;
        end
        if ((position==2'b11) && (init==1'b0)) begin
            buffer_a<=DATA_READ;
        end
            
    end

end
endmodule

