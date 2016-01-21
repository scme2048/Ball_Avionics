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

module sdram_interface(CLK_48MHZ,TIMESTAMP,A_IN_BANK,A_IN_COL,A_IN_ROW,D_IN,CMD_IN,
SDRAM_D0,SDRAM_D1,SDRAM_D2,SDRAM_D3,SDRAM_D4,SDRAM_D5,SDRAM_D6,SDRAM_D7,SDRAM_D8,SDRAM_D9,SDRAM_D10,SDRAM_D11,
SDRAM_D12,SDRAM_D13,SDRAM_D14,SDRAM_D15,
SDRAM_A0,SDRAM_A1,SDRAM_A2,SDRAM_A3,SDRAM_A4,SDRAM_A5,SDRAM_A6,SDRAM_A7,SDRAM_A8,SDRAM_A9,SDRAM_A10,SDRAM_A11,
SDRAM_A12,
SDRAM_CLK,SDRAM_BA0,SDRAM_BA1,SDRAM_CKE,SDRAM_CS,SDRAM_RAS,SDRAM_CAS,SDRAM_WE,SDRAM_DQML,SDRAM_DQMU,
STATUS,DATA_READ);

// Inputs

input CLK_48MHZ;
// For now CMD_IN Options: 0-Idle, 1-Read, 2-Write 
input [23:0] TIMESTAMP;
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

// Handle inouts
reg [15:0] dout; // This should be set to the input data
reg weVAL; // This will be commanded during a write cycle

assign SDRAM_D0 = (weVAL==1'b0) ? dout[0] : 1'bz;
assign SDRAM_D1 = (weVAL==1'b0) ? dout[1] : 1'bz;
assign SDRAM_D2 = (weVAL==1'b0) ? dout[2] : 1'bz;
assign SDRAM_D3 = (weVAL==1'b0) ? dout[3] : 1'bz;
assign SDRAM_D4 = (weVAL==1'b0) ? dout[4] : 1'bz;
assign SDRAM_D5 = (weVAL==1'b0) ? dout[5] : 1'bz;
assign SDRAM_D6 = (weVAL==1'b0) ? dout[6] : 1'bz;
assign SDRAM_D7 = (weVAL==1'b0) ? dout[7] : 1'bz;
assign SDRAM_D8 = (weVAL==1'b0) ? dout[8] : 1'bz;
assign SDRAM_D9 = (weVAL==1'b0) ? dout[9] : 1'bz;
assign SDRAM_D10 = (weVAL==1'b0) ? dout[10] : 1'bz;
assign SDRAM_D11 = (weVAL==1'b0) ? dout[11] : 1'bz;
assign SDRAM_D12 = (weVAL==1'b0) ? dout[12] : 1'bz;
assign SDRAM_D13 = (weVAL==1'b0) ? dout[13] : 1'bz;
assign SDRAM_D14 = (weVAL==1'b0) ? dout[14] : 1'bz;
assign SDRAM_D15 = (weVAL==1'b0) ? dout[15] : 1'bz;

// Read Data
reg [15:0] dread; // this will be set during a read cycle where dread[*]=SDRAM_D*

assign DATA_READ[0] = dread[0];
assign DATA_READ[1] = dread[1];
assign DATA_READ[2] = dread[2];
assign DATA_READ[3] = dread[3];
assign DATA_READ[4] = dread[4];
assign DATA_READ[5] = dread[5];
assign DATA_READ[6] = dread[6];
assign DATA_READ[7] = dread[7];
assign DATA_READ[8] = dread[8];
assign DATA_READ[9] = dread[9];
assign DATA_READ[10] = dread[10];
assign DATA_READ[11] = dread[11];
assign DATA_READ[12] = dread[12];
assign DATA_READ[13] = dread[13];
assign DATA_READ[14] = dread[14];
assign DATA_READ[15] = dread[15];

reg pwr_up_hold =1'b1;
reg pwr_stabalize=1'b0;
assign SDRAM_CLK = (pwr_stabalize===1'b0) ? 1'b0  : CLK_48MHZ;

always @(negedge CLK_48MHZ)
begin

// Write Cycle

// Read Cycle

// Idle and Precharge/Refresh States

// Power Up and Initialization
if (pwr_up_hold===1'b1) begin
    // Keep everything low until power stabalizes. Just use 2 timestamps .122 sec
    if (TIMESTAMP < 2) begin
        // Keep things low
    end else begin
        pwr_stabalize=1'b1;
    end

end

// Mode Register Set Cycle




end
endmodule

