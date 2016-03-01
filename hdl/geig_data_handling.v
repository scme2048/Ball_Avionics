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

module geig_data_handling( CLK_100KHZ,CLK_10HZ,RESET, TIMESTAMP, GSTREAM, G_DATA_STACK );
input CLK_100KHZ,CLK_10HZ,GSTREAM,RESET;
input [23:0] TIMESTAMP;
output [79:0] G_DATA_STACK;
reg [79:0] G_DATA_STACK;
reg [7:0] ID_GEIG;

// Output data stack every 60 seconds, 600 deciseconds.
parameter [31:0] filler_data = 32'b10101010101010101010101010101010;
reg [15:0] geig_counts;
reg [9:0] min_counter; //Count to 600
always @(posedge CLK_10HZ or negedge RESET)
begin
    if (RESET==1'b0) begin
        ID_GEIG = 8'h47;
        min_counter = 10'b0000000000;
        G_DATA_STACK=80'b0;
    end else if (min_counter==599) begin
        //Output G_Data_Stack
        G_DATA_STACK={filler_data,geig_counts,TIMESTAMP,ID_GEIG};
        min_counter=min_counter+1;
    end else if (min_counter==600) begin
        min_counter=1;
    end else begin
        min_counter=min_counter+1;
    end
end

// Detect spikes in geiger input. Debounce and account for holds. Use shift regester to catch low to high.
// Careful of debounce. Adjust CLK_XXHZ as needed to account for debounce and 
// NOTE: Check sampling frequency as geiger characterization continues.
// - Initial geiger testing shows spikes of about 180 microsecs. Sampling at 100 kHz captures this. 
// - Lower sampling frequency desirable for efficiency and ease of simulation/data accumulation.
reg [1:0] shift_reg;
always @(posedge CLK_100KHZ or negedge RESET)
begin
// PUT IN RESETS HERE!
//Shift all bits left by 1
shift_reg=shift_reg<<1;
//Assign first bit to Geiger Counter input
shift_reg[0]=GSTREAM;

// Catches up edge with a little buffer (6 ms) to account for debouncing.
if (RESET==1'b0) begin
    shift_reg=2'b00;
    geig_counts = 16'b0000000000000000;
end else if (shift_reg == 2'b01) begin
    geig_counts=geig_counts+1; // THIS IS WRONG! WILL NOT SYNTHESIZE
end
if (min_counter ==600) begin
    geig_counts=0;
end



end

endmodule

