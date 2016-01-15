///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <ELSA>
//
// File: test_harness.v
// Description: Test harness used to tap into data stream and output to 8 channels for collection by logic analyzer 
//Output data at TBD Hz. Must be within logic analyzer specs and reqs. Output data in 8 bit chunks for TBD sec.
//
// NOTE: THIS IS JUST A PLACEHOLDER FOR SPECIFIC SECTION
//  specific modules will be needed for the data size that is being input
//
// Targeted device: <Family::ProASIC3L> <Die::A3PE3000L> <Package::484 FBGA>
// Author: <Name>
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 

//`timescale <time_units> / <precision>

module test_harness( CLK_48MHZ,CLK_DOUT, TEST_DATA,D0,D1,D2,D3,D4,D5,D6,D7);
input CLK_48MHZ, CLK_DATA, TEST_DATA;
output D0,D1,D2,D3,D4,D5,D6,D7;

// Output types
wire D0,D1,D2,D3,D4,D5,D6,D7;

reg [7:0] data_chunk;


always @ (posedge CLK_48MHZ) begin
//if TEST_DATA has data to be sent, parse into 8 bit chunks, output for given time.

end


endmodule

