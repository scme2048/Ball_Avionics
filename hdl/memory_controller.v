///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <ELSA>
//
// File: memory_controller.v
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
// Author: <Scott>
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 

//`timescale <time_units> / <precision>

module memory_controller( CLK_48MHZ,STATUS, GEIG_DATA, MAG_DATA, BA_READ,COL_READ, ROW_READ, BA_WRITE, COL_WRITE, ROW_WRITE,
,NEXT_READ,NEXT_WRITE,DATA_OUT,BA_OUT,COL_OUT,ROW_OUT);

// Inputs
input CLK_48MHZ,STATUS;
input [47:0] GEIG_DATA;
input [79:0] MAG_DATA;
input [1:0] BA_READ;
input [8:0] COL_READ;
input [12:0] ROW_READ;
input [1:0] BA_WRITE;
input [8:0] COL_WRITE;
input [12:0] ROW_WRITE;

// Outputs
output NEXT_READ, NEXT_WRITE;
output [15:0] DATA_OUT;
output [1:0] BA_OUT;
output [8:0] COL_OUT;
output [12:0] ROW_OUT;


//Statements

always @(posedge CLK_48MHZ)
begin

// Check for unique or new data for both sources


// Then break data into 16 bit chunks.


// Then send each chunk and wait for interface to complete cycle.


end

endmodule

