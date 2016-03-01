///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <ELSA>
//
// File: test_harness_geiger_stack.v
// Description: Test harness used to tap into data stream and output to 8 channels for collection by logic analyzer 
//Output data at TBD Hz. Must be within logic analyzer specs and reqs. Output data in 8 bit chunks for TBD sec.
//
//
// Targeted device: <Family::ProASIC3L> <Die::A3PE3000L> <Package::484 FBGA>
// Author: <Scott Mende> 
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 

//`timescale <time_units> / <precision>

module test_harness_geiger_stack( CLK_1MHZ,RESET, TEST_DATA,D0,D1,D2,D3,D4,D5,D6,D7);
input CLK_1MHZ,RESET;
input [79:0] TEST_DATA;

output D0,D1,D2,D3,D4,D5,D6,D7;

// Output types
wire D0,D1,D2,D3,D4,D5,D6,D7;

reg [7:0] data_chunk;
reg set;
reg [79:0] data_buffer;
reg [79:0] data_prev;
reg [2:0] counter;

assign D0 = data_chunk[0];
assign D1 = data_chunk[1];
assign D2 = data_chunk[2];
assign D3 = data_chunk[3];
assign D4 = data_chunk[4];
assign D5 = data_chunk[5];
assign D6 = data_chunk[6];
assign D7 = data_chunk[7];


always @ (posedge CLK_1MHZ or negedge RESET) 
begin

if (RESET==1'b0) begin
    counter=0;
    set=0;
    data_chunk=0;
end else begin
    if ((set==1 ) && (counter<10)) begin
        data_chunk=data_buffer[7:0];
        data_buffer=data_buffer>>8;
        counter=counter+1;
    end else if ((data_prev != TEST_DATA) && (set==0)) begin
        data_buffer=TEST_DATA;
        set=1;
    end
    if (counter==10) begin
        counter=0;
        set=0;
    end
    data_prev=TEST_DATA;
end

end
endmodule

