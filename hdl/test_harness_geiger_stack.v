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

module test_harness_geiger_stack( CLK_1MHZ, TEST_DATA,D0,D1,D2,D3,D4,D5,D6,D7);
input CLK_1MHZ;
parameter bits = 48;
input [47:0] TEST_DATA;

output D0,D1,D2,D3,D4,D5,D6,D7;

// Output types
wire D0,D1,D2,D3,D4,D5,D6,D7;

reg [7:0] data_chunk;
reg set=0;
reg [47:0] data_buffer;
reg [47:0] data_orig;
reg [2:0] counter=0;

assign D0 = data_chunk[0];
assign D1 = data_chunk[1];
assign D2 = data_chunk[2];
assign D3 = data_chunk[3];
assign D4 = data_chunk[4];
assign D5 = data_chunk[5];
assign D6 = data_chunk[6];
assign D7 = data_chunk[7];


always @ (posedge CLK_1MHZ) 
begin
if ((counter==6) && (data_orig !== TEST_DATA)) begin
    set=0;
    counter=0;
end 
if (counter==6) begin
    data_chunk[7:0] = 8'bz;
end

if (((TEST_DATA !== 48'bz) || (TEST_DATA !== 48'bx)) && (set==0)) begin
    data_buffer[47:0] = TEST_DATA[47:0];
    data_orig[47:0] = TEST_DATA[47:0];
    set=1;
end 
if ((set==1 ) && (counter<6)) begin
    data_chunk[7:0]=data_buffer[7:0];
    data_buffer=data_buffer>>8;
    counter=counter+1;
end


end

endmodule

