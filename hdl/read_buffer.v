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
reg [1:0] init_stage;
reg [8:0] init_wait;
reg [7:0] byte_out;
reg [1:0] position;
reg [15:0] buffer_a;
reg [15:0] buffer_b;

assign BYTE_OUT = byte_out;
assign READ_CMD = read_cmd;

always @(posedge NEXT_BYTE or negedge RESET) begin
    if (RESET==1'b0) begin
        position= 2'b00;
        byte_out<=8'b0;
    end else if (init_stage==0) begin
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
            byte_out<=buffer_b[15:8];
            position=2'b00;
        end

    end

end

always @(posedge CLK_48MHZ or negedge RESET) begin
    if (RESET==1'b0) begin
        read_cmd<=1'b0;
        init_stage=1;
        init_wait=0;
        buffer_a<=0;
        buffer_b<=0;
    end else begin
        if ((init_stage==1) && (ROW_WRITE>=13'b0000000000011)) begin
            read_cmd<=1'b1;
            init_stage=2;
            // HERE NEED TO GET FIRST 2 WORDS OF DATA FROM MEMORY TO FILL THE CACHE!!!!
            // Really just need first word, then normal logic should handle the rest...
        end
        if (init_stage==2) begin
            if (init_wait<300) begin
                buffer_a<=DATA_READ;
                init_wait=init_wait+1;
            end else if ((init_wait>=300) && (init_wait<400)) begin
                read_cmd<=1'b0;
                init_wait=init_wait+1;
            end else if (init_wait>=400) begin
                read_cmd<=1'b1;
                init_wait=0;
                init_stage=0;
            end 
        end
        if ((position==2'b00) && (init_stage==0)) begin
            read_cmd<=1'b1;
        end
        if ((position==2'b01) && (init_stage==0)) begin
            read_cmd<=1'b0;
            buffer_b<=DATA_READ;
        end
        if ((position==2'b10) && (init_stage==0)) begin
            read_cmd<=1'b1;
        end
        if ((position==2'b11) && (init_stage==0)) begin
            buffer_a<=DATA_READ;
            read_cmd<=1'b0;
        end
            
    end

end
endmodule

