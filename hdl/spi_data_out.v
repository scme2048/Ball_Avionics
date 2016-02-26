///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: spi_data_out.v
// File history:
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//
// Description: 
//
// <Description here>
//
// Targeted device: <Family::ProASIC3L> <Die::M1A3P1000L> <Package::484 FBGA>
// Author: <Name>
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 

//`timescale <time_units> / <precision>

module spi_data_out( data_from_spi,ds0, ds1,ds2,ds3,ds4,ds5,ds6,ds7 );
input [7:0] data_from_spi;
output ds0,ds1,ds2,ds3,ds4,ds5,ds6,ds7;

assign ds0 = data_from_spi[0];
assign ds1 = data_from_spi[1];
assign ds2 = data_from_spi[2];
assign ds3 = data_from_spi[3];
assign ds4 = data_from_spi[4];
assign ds5 = data_from_spi[5];
assign ds6 = data_from_spi[6];
assign ds7 = data_from_spi[7];

endmodule

