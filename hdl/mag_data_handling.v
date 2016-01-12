///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <ELSA>
//
// File: mag_data_handling.v
//
// Description: Inputs magnetometer data from I2C interface, waits for all 3 vectors, outputs data stack.
//
// Targeted device: <Family::ProASIC3L> <Die::A3PE3000L> <Package::484 FBGA>
// Author: <Scott Mende>
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 

//`timescale <time_units> / <precision>

module mag_data_handling(CLK_48MHZ, TIMESTAMP, MDATA, MDATA_PACKET );
input CLK_48MHZ, TIMESTAMP, MDATA;
output MDATA_PACKET;

endmodule

