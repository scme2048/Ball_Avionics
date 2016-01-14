///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <ELSA>
//
// File: geig_data_handling.v
//
// Description: Inputs geiger counter data stream, counts events over 60 s. Outputs data stack every 60 s.
//
// Targeted device: <Family::ProASIC3L> <Die::A3PE3000L> <Package::484 FBGA>
// Author: <Scott Mende>
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 

module geig_data_handling( CLK_1KHZ,CLK_10HZ, TIMESTAMP, GSTREAM, G_DATA_STACK );
input CLK_1KHZ,CLK_10HZ,GSTREAM;
input [23:0] TIMESTAMP;
output G_DATA_STACK;
reg [47:0] G_DATA_STACK;
reg [7:0] ID_GEIG=8'h47;

// Output data stack every 60 seconds, 600 deciseconds.
reg [15:0] geig_counts=0;
reg [9:0] min_counter=0; //Count to 600
always @(posedge CLK_10HZ)
begin
    if (min_counter==600) begin
        //Output G_Data_Stack
        G_DATA_STACK={geig_counts,TIMESTAMP,ID_GEIG};
        min_counter=1;
        geig_counts=0;
    end else begin
    G_DATA_STACK=48'bZ;
    min_counter=min_counter+1;
    end
end

// Detect spikes in geiger input. Debounce and account for holds. Use shift regester to catch low to high.
// Careful of debounce. Adjust CLK_XXHZ as needed to account for debounce and 

reg [9:0] shift_reg=0;
always @(posedge CLK_1KHZ)
begin
//Shift all bits left by 1
shift_reg=shift_reg<<1;
//Assign first bit to Geiger Counter input
shift_reg[0]=GSTREAM;

// Catches up edge with a little buffer (6 ms) to account for debouncing.
if (shift_reg == 10'b0000111111) begin
    geig_counts=geig_counts+1;
end



end

endmodule

