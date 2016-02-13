///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: reset_pulse.v
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

module reset_pulse( CLK_48MHZ, EXT_RESET, RESET,CLK_OUT_48MHZ);
input CLK_48MHZ,EXT_RESET;
output RESET, CLK_OUT_48MHZ;

assign CLK_OUT_48MHZ = (EXT_RESET===1'b1) ? CLK_48MHZ : 1'b0;
assign RESET = (EXT_RESET===1'b0) ? CLK_48MHZ  : 1'b1;
endmodule

