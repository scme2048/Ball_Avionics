///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <ELSA>
//
// File: timestamp.v

//
// Description: Inputs 10 Hz clock, outputs timestamp since NeoPod power up. 24 bit timestamp, count at each clock tick.
//
// Targeted device: <Family::ProASIC3L> <Die::A3PE3000L> <Package::484 FBGA>
// Author: <Scott Mende>


module timestamp( CLK_10HZ,TIMESTAMP);
input CLK_10HZ;
output TIMESTAMP;

reg [23:0] TIMESTAMP=0;

always @(posedge CLK_10HZ)
begin
    TIMESTAMP<=TIMESTAMP+1;
end

endmodule

