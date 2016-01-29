///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <ELSA>
//
// File: read_address_traversal.v
// File history:
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//
// Description: 
//
// <This module will traverse the memory space of the SDRAM. This module will output the current address to be read
// from.
//          Memory Space:
//              Banks:      4    (2^2)
//              Rows:       8192 (2^13)
//              Columns:    512  (2^9)
//              Data Width: 16 bits (1 Word)>
//
// Targeted device: <Family::ProASIC3L> <Die::A3PE3000L> <Package::484 FBGA>
// Author: <Scott Mende>
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 

//`timescale <time_units> / <precision>

module read_address_traversal( CLK_48MHZ, NEXT, BA_READ_OUT, ROW_READ_OUT,COL_READ_OUT );

// Possibly add write addresses for tracking position
input CLK_48MHZ,NEXT;
output BA_READ_OUT,ROW_READ_OUT,COL_READ_OUT;

//<statements>

endmodule

