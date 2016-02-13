///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <ELSA>
//
// File: timestamp.v

//
// Description: Inputs 10 Hz clock, outputs timestamp since NeoPod power up. 24 bit timestamp, count at each clock tick.
//
// Targeted device: <Family::ProASIC3L> <Die::A3PE3000L> <Package::484 FBGA>
// Author: <Scott Mende>


module timestamp( CLK_10HZ,RESET,TIMESTAMP);
input CLK_10HZ,RESET;
output TIMESTAMP;

reg [23:0] TIMESTAMP;

always @(posedge CLK_10HZ or negedge RESET)
begin
    if (RESET==1'b0) begin
        TIMESTAMP<=24'b000000000000000000000000;
    end else begin
    TIMESTAMP<=TIMESTAMP+1;
    end
end


endmodule

