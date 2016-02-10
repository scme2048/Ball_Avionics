///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: reset_pulse.v
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

module reset_pulse( CLK_48MHZ, EXT_RESET, RESET);
input CLK_48MHZ,EXT_RESET;
output RESET;


reg pulse;
reg rst;
always @(posedge CLK_48MHZ) 
begin
    rst=1'b1;
    if (pulse ==1'b1) begin
        rst=1'b0;
    end 
end

always @(posedge EXT_RESET)
begin
    pulse<=1'b1;
end
endmodule

