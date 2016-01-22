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

// Timing Parameters (Given in 48MHZ (20.833) clock cycles needed to surpass)
parameter t_rc = 4; // Ref/active -> ref/active command period 70ns
parameter t_ras = 3; // Active -> Precharge 50ns     max 120000 ns
parameter t_rcd= 1; // Active command -> Collumn cmd 20 ns
parameter t_rp = 1; // Precharge -> active command 20ns
parameter t_dpl = 1; // write recovery or data in -> precharge lead time 20 ns
parameter t_rrd =1; // Active(a) -> Active(b) cmd period 20ns
parameter t_ref = 2; // Refresh period tbd...

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

// Data Assignment
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

// Address Assignment
reg [12:0] address;
assign SDRAM_A0 = address[0];
assign SDRAM_A1 = address[1];
assign SDRAM_A2 = address[2];
assign SDRAM_A3 = address[3];
assign SDRAM_A4 = address[4];
assign SDRAM_A5 = address[5];
assign SDRAM_A6 = address[6];
assign SDRAM_A7 = address[7];
assign SDRAM_A8 = address[8];
assign SDRAM_A9 = address[9];
assign SDRAM_A10 = address[10];
assign SDRAM_A11 = address[11];
assign SDRAM_A12 = address[12];

// Power Up and Initialization Control Variables
reg pwr_up_hold =1'b1;
reg pwr_stabalize=1'b0;
reg [3:0] init_counter = 4'b0;
assign SDRAM_CLK = (pwr_stabalize===1'b0) ? 1'b0  : CLK_48MHZ; // Hold clock low while power stabalizes

// Control Variables
reg cke = 1'b0;
reg cs  = 1'b0;
reg ras = 1'b0;
reg cas = 1'b0;
reg we  = 1'b0;
reg ba0 = 1'b0;
reg ba1 = 1'b0;
reg a10 = 1'b0;
reg dqmu = 1'b0;
reg dqml = 1'b0;
// Control Output Assignments
assign SDRAM_CKE = cke;
assign SDRAM_CS =  cs;
assign SDRAM_RAS=  ras;
assign SDRAM_CAS=  cas;
assign SDRAM_WE=   we;
assign SDRAM_BA0=  ba0;
assign SDRAM_BA1=  ba1;
assign SDRAM_DQMU= dqmu;
assign SDRAM_DQML= dqml;

always @(negedge CLK_48MHZ)
begin

// Write Cycle

// Read Cycle

// Idle and Precharge/Refresh States

// Power Up and Initialization
if (pwr_up_hold===1'b1) begin
    // Power stabalization wait. Just use 2 timestamps .2 sec
    if (TIMESTAMP < 2) begin
        // Keep things low. Control outs are initially low.
        // NOTE: Check if assignment necessary for output ports.
        cke<=1'b0;
        cs<=1'b0;
        dqml<=1'b0;
        dqmu<=1'b0;
        dout<=16'b0;
    end else if ((TIMESTAMP>=2)&&(TIMESTAMP<4)) begin
        pwr_stabalize=1'b1;
        cke<=1'b1;
        dqml<=1'b1;
        dqmu<=1'b1;
    end else if (TIMESTAMP>=4) begin // Initialization Sequence. Wait 200 ms after power stabalization
        if (init_counter==t_ras+t_rp+8+1+2) begin
            // NOP but pull cke low to enter self refresh.
            cke<=0;
            cs<=0;
            ras<=1;
            cas<=1;
            we<=1;
            address=13'bz;
            pwr_up_hold=1'b0; // Remove power up sequence hold.
        end

        if (init_counter==t_ras+t_rp+8+1+1) begin
            // NOP
            cke<=1;
            cs<=0;
            ras<=1;
            cas<=1;
            we<=1;
            address=13'bz;
            init_counter=init_counter+1;
        end
        if (init_counter==t_ras+t_rp+8+1) begin
            // Set MRS
            cke<=1;
            cs<=0;
            ras<=0;
            cas<=0;
            we<=0;
            ba1<=0;
            ba0<=1;
            address=13'b0001000100000;
            init_counter=init_counter+1;
        end
        if (init_counter==t_ras+t_rp+8) begin
            //Set cke high for a cycle
            cke<=1;
            init_counter=init_counter+1;
        end
        if ((init_counter>t_ras+t_rp) && (init_counter<t_ras+t_rp+8)) begin
            // Let self refresh run for 8 cycles
            // NOP
            cke<=0;
            cs<=0;
            ras<=1;
            cas<=1;
            we<=1;
            address=13'bz;
            init_counter=init_counter+1;
        end
        if (init_counter==t_ras+t_rp) begin
            // Set self refresh cmd
            cke<=0;
            cs<=0;
            ras<=0;
            cas<=0;
            we<=1;
            address=13'bz;
            init_counter=init_counter+1;
        end
        if ((init_counter>t_ras) && (init_counter<t_ras+t_rp)) begin
            // Wait t_rp, NOP
            cke<=1;
            cs<=0;
            ras<=1;
            cas<=1;
            we<=1;
            address=14'bz;
            init_counter=init_counter+1;
        end
        if (init_counter==t_ras) begin
            //PALL command to precharge all banks
            cke<=1;
            cs<=0;
            ras<=0;
            cas<=1;
            we<=0;
            a10=1;
            address[10]=a10;
            init_counter=init_counter+1;
        end
        if ((init_counter>0) && (init_counter<t_ras)) begin
            //NOP
            cke<=1;
            cs<=0;
            ras<=1;
            cas<=1;
            we<=1;
            address=13'bz;
            init_counter=init_counter+1;
        end
        if (init_counter==0) begin
            //ACTV Command
            cke<=1;
            cs<=0;
            ras<=0;
            cas<=1;
            we<=1;
            ba0<=0;
            ba1<=0;
            a10<=0;
            address=13'b0;
            address[10]=a10;
            init_counter=init_counter+1;
        end 
        
        
        

        // Set Mode Register MRS

        // NOTE: Recommended to keep DQMU/DQML and CKE High

    end

end

// Mode Register Set Cycle




end
endmodule

