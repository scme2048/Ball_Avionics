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

//`timescale <time_units> / <precision>

module geig_data_handling( CLK_48MHZ,CLK_10HZ, TIMESTAMP, GSTREAM, G_DATA_STACK );
input CLK_48MHZ,CLK_10HZ,TIMESTAMP,GSTREAM;
output G_DATA_STACK;
reg [47:0] G_DATA_STACK;
reg [7:0] ID_GEIG=8'h47;

// Output data stack every 60 seconds, 600 deciseconds.
reg [7:0] geig_counts=0;
reg [9:0] min_counter=0; //Count to 600
always @(posedge CLK_10HZ)
begin
    if (min_counter==600) begin
        //Output G_Data_Stack
        G_DATA_STACK={geig_counts,TIMESTAMP,ID_GEIG};
        min_counter=1;
        geig_counts=0;
    end else begin
    G_DATA_STACK=47'bZ;
    min_counter=min_counter+1;
    end
end

// Detect spikes in geiger input. Debounce and account for holds.
always @(posedge CLK_48MHZ)
begin
//Do stuff to detect changes 
    
end

endmodule

