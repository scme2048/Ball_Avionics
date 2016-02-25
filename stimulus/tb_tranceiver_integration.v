///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: tb_tranceiver_integration.v
// File history:
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//
// Description: 
//
// <Description here>
//
// Targeted device: <Family::ProASIC3L> <Die::M1A3P1000L> <Package::484 FBGA>
// Author: <Name>
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 

`timescale 1ns/100ps

module tb_tranceiver_integration;

parameter SYSCLK_PERIOD = 20.8333;// 48.0001MHZ

reg SYSCLK;
reg NSYSRESET;
reg miso;
reg init;
reg [1:0] count;


initial
begin
    SYSCLK = 1'b0;
    NSYSRESET = 1'b0;
    miso = 1'b1;
    init = 1'b1;
    count = 2'b00;
end

//////////////////////////////////////////////////////////////////////
// Reset Pulse
//////////////////////////////////////////////////////////////////////
initial
begin
    #(SYSCLK_PERIOD * 10 )
        NSYSRESET = 1'b1;
end


//////////////////////////////////////////////////////////////////////
// Clock Driver
//////////////////////////////////////////////////////////////////////
always @(SYSCLK)
    #(SYSCLK_PERIOD / 2.0) SYSCLK <= !SYSCLK;

wire ss,mosi,sclk;

always @(negedge ss ) begin
    if (init==1'b1) begin
        if (ss==1'b0) begin
            count=count+1;
        end
        if (count==2'b10) begin
            miso=1'b0;
            init=1'b0;
            #(SYSCLK_PERIOD *2) miso=1'b1;
    
        end
    end

end


//////////////////////////////////////////////////////////////////////
// Instantiate Unit Under Test:  transceiver_integration
//////////////////////////////////////////////////////////////////////
transceiver_integration transceiver_integration_0 (
    // Inputs
    .CLK_48MHZ(SYSCLK),
    .BUF2_PBRST_T9(NSYSRESET),
    .MISO(miso),

    // Outputs
    .SS(ss ),
    .MOSI( mosi),
    .SCLK( sclk)

    // Inouts

);

endmodule

