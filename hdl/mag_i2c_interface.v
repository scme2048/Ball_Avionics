///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <ELSA>
//
// File: mag_i2c_interface.v
//
// Description: Standard I2C interface for magnetometer, output XYZ data to mag_data_handling.
// THIS IS A PLACEHOLDER FOR BLACK BOX POSSIBLY
//
// Targeted device: <Family::ProASIC3L> <Die::A3PE3000L> <Package::484 FBGA>
// Author: <Scott Mende/Sarah Grandone/ >
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 

//`timescale <time_units> / <precision>

module mag_i2c_interface( CLK_48MHZ,SCLK, SDA, MDATA );
//Magnetometer I2C interface
//SCLK at TBD Hz
input CLK_48MHZ;
output SCLK,MDATA;
inout SDA;




endmodule


