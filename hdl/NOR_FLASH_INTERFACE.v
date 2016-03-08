

module NOR_FLASH_INTERFACE( CLK,RESET,CMD_IN,A_in,D_in,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,
A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,D0,D1,D2,D3,D4,D5,D6,D7,D8,D9,D10,D11,D12,D13,D14,D15,CE0, RP,OE,WE,D_read);





// Inputs
input CLK;
input RESET;
input CMD_IN;
input A_in;
input D_in;

// In Types
wire CLK;
wire [21:0] A_in; 
wire [15:0] D_in;

//////// Outputs
// Addresses to Flash from input address register
output A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,
A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24;

assign A1=A_in[0],A2=A_in[1],A3=A_in[2],A4=A_in[3],A5=A_in[4],A6=A_in[5],A7=A_in[6],A8=A_in[7],
A9=A_in[8],A10=A_in[9],A11=A_in[10],A12=A_in[11],A13=A_in[12],A14=A_in[13],A15=A_in[14],A16=A_in[15],
A17=A_in[16],A18=A_in[17],A19=A_in[18],A20=A_in[19],A21=A_in[20],A22=A_in[21],A23=1'b0,A24=1'b0; 
inout D0,D1,D2,D3,D4,D5,D6,D7,D8,D9,D10,D11,D12,D13,D14,D15;  // IO for data write/read.
output CE0;                   // Chip Enable is ACTIVE on first edge
output RP;                    // Reset/Power Down is DISABLED High
output [15:0] D_read;                  // Data out to user

// Out Types
wire CE0;                       // Chip Enable
wire RP;                        // Reset/Power Down
wire OE;                        // Output Enable
wire WE;                        // Write Enable
// Individual Addresses [23:0]
wire A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24;



output OE;                // Output Enable Output
output WE;                // Write Enable Output

// Internal Vars
reg enVAL;              // Chip Enable Var
reg weVAL;              // Write Enable Var
reg reVAL;              // Read Enable Var
reg d0,d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,d11,d12,d13,d14,d15;
reg dr0,dr1,dr2,dr3,dr4,dr5,dr6,dr7,dr8,dr9,dr10,dr11,dr12,dr13,dr14,dr15;

// Data driver to chip, Write Latch
assign D0 = (weVAL==1'b0) ? d0 : 1'bz;
assign D1 = (weVAL==1'b0) ? d1 : 1'bz;
assign D2 = (weVAL==1'b0) ? d2 : 1'bz;
assign D3 = (weVAL==1'b0) ? d3 : 1'bz;
assign D4 = (weVAL==1'b0) ? d4 : 1'bz;
assign D5 = (weVAL==1'b0) ? d5 : 1'bz;
assign D6 = (weVAL==1'b0) ? d6 : 1'bz;
assign D7 = (weVAL==1'b0) ? d7 : 1'bz;
assign D8 = (weVAL==1'b0) ? d8 : 1'bz;
assign D9 = (weVAL==1'b0) ? d9 : 1'bz;
assign D10 = (weVAL==1'b0) ? d10 : 1'bz;
assign D11 = (weVAL==1'b0) ? d11 : 1'bz;
assign D12 = (weVAL==1'b0) ? d12 : 1'bz;
assign D13 = (weVAL==1'b0) ? d13 : 1'bz;
assign D14 = (weVAL==1'b0) ? d14 : 1'bz;
assign D15 = (weVAL==1'b0) ? d15 : 1'bz;

assign D_read[0] = dr0;
assign D_read[1] = dr1;
assign D_read[2] = dr2;
assign D_read[3] = dr3;
assign D_read[4] = dr4;
assign D_read[5] = dr5;
assign D_read[6] = dr6;
assign D_read[7] = dr7;
assign D_read[8] = dr8;
assign D_read[9] = dr9;
assign D_read[10] = dr10;
assign D_read[11] = dr11;
assign D_read[12] = dr12;
assign D_read[13] = dr13;
assign D_read[14] = dr14;
assign D_read[15] = dr15;

assign OE=reVAL;
assign WE=weVAL;
assign CE0=enVAL;                   
assign RP=1'b1; 
////// Logic


reg [15:0] write_cmd;
reg [1:0] w_station;
reg [2:0] w_count;
reg [1:0] w_cycle_count;
reg [15:0] w_d_assign;

reg [15:0] read_cmd;
reg [1:0] r_station;
reg [2:0] r_count;
reg [1:0] r_cycle_count;
reg [15:0] r_d_assign;

reg busy;
reg read;
reg write;

always @ (posedge CLK or negedge RESET)
begin

if (RESET==1'b0) begin
    w_station =2'b00;
    w_count = 3'b000;
    w_cycle_count = 2'b00;
    write_cmd = 16'h0010; //16'h0010 WORKED!!! Not sure if get the whole 16 bits of data but will check... Word write not quite working
    enVAL=1'b1;
    weVAL=1'b1;
    reVAL=1'b1;
    r_station = 2'b00;
    r_count = 3'b000;
    r_cycle_count = 2'b00;
    read_cmd = 16'h00FF;
    busy=1'b0;
    read = 1'b0;
    write=1'b0;
end else begin

//// This needs to be replaced.
    //if (!write) begin
        //w_station =2'b00;
        //w_count = 3'b000;
        //w_cycle_count = 2'b00;
        //write_cmd = 16'h0010; //16'h0010 WORKED!!! Not sure if get the whole 16 bits of data but will check... Word write not quite working
//
        //
    //end
//
    //if (!read) begin
        //r_station = 2'b00;
        //r_count = 3'b000;
        //r_cycle_count = 2'b00;
        //read_cmd = 16'h00FF;
    //end
//
    //if (write==1'b0 && read==1'b0) begin
        //enVAL=1'b1;
        //weVAL=1'b1;
        //reVAL=1'b1;
    //end
        
// Cycle and Command Select
    if (busy==0) begin
        if (CMD_IN==2) begin
            write=1;
        end else if (CMD_IN==1) begin
            read=1;
        end
    end


    ////// Write
    // 1st cycle is cmd, second is data.
    if(write==1) begin
        if(w_cycle_count==2'b00) begin
            w_d_assign = write_cmd;
        end
        else if(w_cycle_count==2'b01) begin
            w_d_assign[15:0] = D_in[15:0];

        end

        if(w_station==2'b10 && (w_cycle_count==2'b00 || w_cycle_count==2'b01)) begin
            weVAL=1'b1;
            enVAL=1'b1;
            w_count = w_count+1;
            if(w_count==3'b010) begin
                w_station=2'b00;
                w_count = 3'b000;
                if (w_cycle_count==2'b00) begin
                    w_cycle_count=w_cycle_count+1;
                end else begin
                    w_cycle_count=2'b00;
                    busy=1'b0;
                    write=1'b0;
                end
            end
        end
        else if(w_station==2'b01 && (w_cycle_count==2'b00 || w_cycle_count==2'b01)) begin
            d0 = w_d_assign[0];
            d1 = w_d_assign[1];
            d2 = w_d_assign[2];
            d3 = w_d_assign[3];
            d4 = w_d_assign[4];
            d5 = w_d_assign[5];
            d6 = w_d_assign[6];
            d7 = w_d_assign[7];
            d8 = w_d_assign[8];
            d9 = w_d_assign[9];
            d10 = w_d_assign[10];   
            d11 = w_d_assign[11];
            d12 = w_d_assign[12];
            d13 = w_d_assign[13];
            d14 = w_d_assign[14];
            d15 = w_d_assign[15];
            w_count = w_count+1;
            if(w_count== 3'b100) begin
                w_station = 2'b10;
                w_count = 3'b000;
            end
        end
        else if(w_station==2'b00 && (w_cycle_count==2'b00 || w_cycle_count==2'b01)) begin
            d0 = 1'bz;
            d1 = 1'bz;
            d2 = 1'bz;
            d3 = 1'bz;
            d4 = 1'bz;
            d5 = 1'bz;
            d6 = 1'bz;
            d7 = 1'bz;
            d8 = 1'bz;
            d9 = 1'bz;
            d10 = 1'bz;   
            d11 = 1'bz;
            d12 = 1'bz;
            d13 = 1'bz;
            d14 = 1'bz;
            d15 = 1'bz;
            enVAL=1'b0;
            weVAL=1'b0;
            w_station = 2'b01;
            busy=1'b1;
        end
    end


    ////// Read Cycle
    // One Cycle then Output!
    if(read==1'b1) begin
        if(r_cycle_count==2'b00) begin
            r_d_assign = read_cmd;
        end
        if(r_station ==2'b01 && r_cycle_count==2'b01) begin
            enVAL=1'b0;
            reVAL=1'b0;
            dr0 = D0;
            dr1 = D1;
            dr2 = D2;
            dr3 = D3;
            dr4 = D4;
            dr5 = D5;
            dr6 = D6;
            dr7 = D7;
            dr8 = D8;
            dr9 = D9;
            dr10 = D10;   
            dr11 = D11;
            dr12 = D12;
            dr13 = D13;
            dr14 = D14;
            dr15 = D15;
            //r_count=r_count+1;    // This is what made it work before, commenting this out...
            if(r_count==3'b101) begin
                enVAL=1'b1;
                reVAL=1'b1;
                r_cycle_count=2'b00;
                read = 0;
                busy=0;
            end
        end
        if(r_station ==2'b00 && r_cycle_count==2'b01) begin // Makes sure 2 cycles pass between command write and read
            r_station = r_station + 1;
            // need 1 more cycle here???
        end
        if(r_station==2'b10 && r_cycle_count==2'b00) begin
            weVAL=1'b1;
            enVAL=1'b1;
            //r_count = r_count+1;
       //     if(r_count==3'b010) begin
                r_station=2'b00;
                r_count = 3'b000;
                r_cycle_count=r_cycle_count+1;
         //   end
        end
        else if(r_station==2'b01 && r_cycle_count==2'b00) begin
            d0 = r_d_assign[0];
            d1 = r_d_assign[1];
            d2 = r_d_assign[2];
            d3 = r_d_assign[3];
            d4 = r_d_assign[4];
            d5 = r_d_assign[5];
            d6 = r_d_assign[6];
            d7 = r_d_assign[7];
            d8 = r_d_assign[8];
            d9 = r_d_assign[9];
            d10 = r_d_assign[10];   
            d11 = r_d_assign[11];
            d12 = r_d_assign[12];
            d13 = r_d_assign[13];
            d14 = r_d_assign[14];
            d15 = r_d_assign[15];
            r_count = r_count+3'b1;
            if(r_count== 3'b100) begin
                r_station = 2'b10;
                r_count = 3'b000;
            end
        end else if(r_station==2'b00 && r_cycle_count==2'b00) begin
            d0 = 1'bz;
            d1 = 1'bz;
            d2 = 1'bz;
            d3 = 1'bz;
            d4 = 1'bz;
            d5 = 1'bz;
            d6 = 1'bz;
            d7 = 1'bz;
            d8 = 1'bz;
            d9 = 1'bz;
            d10 = 1'bz;   
            d11 = 1'bz;
            d12 = 1'bz;
            d13 = 1'bz;
            d14 = 1'bz;
            d15 = 1'bz; // Possibly change back to values...?
            enVAL=1'b0;
            weVAL=1'b0;
            r_station = 2'b01;
            busy =1'b1;
        end
    end

end 

end
endmodule

