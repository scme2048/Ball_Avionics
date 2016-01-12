///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <ELSA>
//
// File: mode_control.v
//
// Description: Controls state of NeoPod. Enables data collection, transmission, and reception. 
//Parses commands from ground station and outputs transmission type/offset 
//
//
// Targeted device: <Family::ProASIC3L> <Die::A3PE3000L> <Package::484 FBGA>
// Author: <Scott Mende>
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 

//`timescale <time_units> / <precision>

module mode_control( CLK_48MHZ,TIMESTAMP,CMD,DATA_en, TX_en,TX_PASS_OFFSET, RX_en);
input CLK_48MHZ,TIMESTAMP,CMD;
output DATA_en, TX_en, TX_PASS_OFFSET, RX_en;

endmodule

