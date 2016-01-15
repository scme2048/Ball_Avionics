///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <ELSA>
//
// File: sdram_interface.v
//
// Description: This module serves as the primary controller of the SDRAM. Memory traversal and commanding will be
// handled elsewhere. This module is purely used to read and write data to memory.
//
//
// Targeted device: <Family::ProASIC3L> <Die::A3PE3000L> <Package::484 FBGA>
// Author: <Scott Mende>
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 

//`timescale <time_units> / <precision>

module sdram_interface(CLK_48MHZ,A_IN_BANK,A_IN_COL,A_IN_ROW,D_IN,CMD_IN,
SDRAM_D0,SDRAM_D1,SDRAM_D2,SDRAM_D3,SDRAM_D4,SDRAM_D5,SDRAM_D6,SDRAM_D7,SDRAM_D8,SDRAM_D9,SDRAM_D10,SDRAM_D11,
SDRAM_D12,SDRAM_D13,SDRAM_D14,SDRAM_D15,
SDRAM_A0,SDRAM_A1,SDRAM_A2,SDRAM_A3,SDRAM_A4,SDRAM_A5,SDRAM_A6,SDRAM_A7,SDRAM_A8,SDRAM_A9,SDRAM_A10,SDRAM_A11,
SDRAM_A12,
SDRAM_CLK,SDRAM_BA0,SDRAM_BA1,SDRAM_CKE,SDRAM_CS,SDRAM_RAS,SDRAM_CAS,SDRAM_WE,SDRAM_DQML,SDRAM_DQMU,
STATUS,DATA_READ);

// Inputs

input CLK_48MHZ;
// For now CMD_IN Options: 0-Idle, 1-Read, 2-Write 
input [1:0] CMD_IN; 
input [1:0] A_IN_BANK;
input [8:0] A_IN_COL;
input [12:0] A_IN_ROW;
input [15:0] D_IN;
// Inouts
inout SDRAM_D0,SDRAM_D1,SDRAM_D2,SDRAM_D3,SDRAM_D4,SDRAM_D5,SDRAM_D6,SDRAM_D7,SDRAM_D8,SDRAM_D9,SDRAM_D10,SDRAM_D11,
SDRAM_D12,SDRAM_D13,SDRAM_D14,SDRAM_D15;
// Outputs
output SDRAM_A0,SDRAM_A1,SDRAM_A2,SDRAM_A3,SDRAM_A4,SDRAM_A5,SDRAM_A6,SDRAM_A7,SDRAM_A8,SDRAM_A9,SDRAM_A10,
SDRAM_A11,SDRAM_A12,
SDRAM_CLK,SDRAM_BA0,SDRAM_BA1,SDRAM_CKE,SDRAM_CS,SDRAM_RAS,SDRAM_CAS,SDRAM_WE,SDRAM_DQML,SDRAM_DQMU;
output STATUS;
output [15:0] DATA_READ;


endmodule

