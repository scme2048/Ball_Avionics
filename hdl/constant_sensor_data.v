///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: constant_sensor_data.v
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
// Author: <Name>
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 

//`timescale <time_units> / <precision>

module constant_sensor_data( CLK_10HZ,RESET, TIMESTAMP,G_DATA_STACK, M_DATA_STACK, NEXT_BYTE);
input CLK_10HZ, RESET;
input [23:0] TIMESTAMP;
output [79:0] G_DATA_STACK;
output [79:0] M_DATA_STACK;
output NEXT_BYTE;

parameter [7:0] g_id = 8'h47;
parameter [31:0] g_filler = 32'b10101010101010101010101010101010;
parameter [7:0] m_id = 8'h4d;

reg [9:0] g_counter;
reg [79:0] geiger_stack;
reg [16:0] g_data;

reg [79:0] mag_stack;
reg [47:0] mag_data;

reg next_byte_control;


assign G_DATA_STACK=geiger_stack;
assign M_DATA_STACK = mag_stack;
assign NEXT_BYTE=next_byte_control;


always @(posedge CLK_10HZ or negedge RESET)
begin

if (RESET==1'b0) begin
    geiger_stack=80'b0;
    mag_stack=80'b0;
    g_counter=0;
    g_data=0;
    mag_data=0;
    next_byte_control=1;


end else begin
    if (g_counter==600) begin
        g_data=g_data+1;
        geiger_stack={g_filler,g_data,TIMESTAMP,g_id};
        g_counter=0;
    end else begin
        g_counter=g_counter+1;
        mag_data=mag_data+1;
        mag_stack={mag_data,TIMESTAMP,m_id};
        next_byte_control = !next_byte_control;
    end
        

end


end
endmodule

