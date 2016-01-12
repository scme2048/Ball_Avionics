///////////////////////////////////////////////////////////////////////////////////////////////////
//
// File: dummy_state.v
// File history:
//
// Description: 
//
// <Dummy data output for early testing of spi transciever interface>
//
// Targeted device: <Family::ProASIC3L> <Die::A3PE3000L> <Package::484 FBGA>
// Author: <Scott Mende>
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 

//`timescale <time_units> / <precision>

module dummy_state(datapacket);

output datapacket;

wire [15:0] data=16'h27;
wire [23:0] TS=24'hB3C5B;
wire [7:0] ID=7'h47;
wire [47:0] datapacket={data,TS,ID};

//<statements>

endmodule

