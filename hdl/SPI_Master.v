module spi_master #(parameter CLK_DIV = 2)(
    input clk,
    input rst,
    input miso,
    output mosi,
    output sck,
    input start,
    input[7:0] data_in,
    output[7:0] data_out,
    output busy, chip_rdy,
    output new_data
  );
   
  localparam STATE_SIZE = 2;
  localparam IDLE = 2'd0,
    WAIT_HALF = 2'd1,
    TRANSFER = 2'd2;

  reg [STATE_SIZE-1:0] state_d, state_q; 
  reg [7:0] data_d, data_q;
  reg [1:0] sck_d, sck_q;
  reg mosi_d, mosi_q;
  reg [2:0] ctr_d, ctr_q;
  reg new_data_d, new_data_q;
  reg [7:0] data_out_d, data_out_q;
  //reg count;
  reg [3:0] test;
  reg chip_rdy_a/*, wait_q, wait_d*/;
   
  assign mosi = mosi_q;
  //assign sck = (~sck_q) & (state_q == TRANSFER);
  assign sck = (sck_q[1]) & (state_q == TRANSFER) & (~chip_rdy); //(start == 1'b1);
  assign busy = (state_q == TRANSFER) & (start == 1'b1) & (~chip_rdy);
  assign data_out = data_out_q;
  assign new_data = new_data_q;
  assign chip_rdy = chip_rdy_a;
   
  //always @(*) begin
    //sck_d = sck_q;
    //data_d = data_q;
    //mosi_d = mosi_q;
    //ctr_d = ctr_q;
    //new_data_d = 1'b0;
    //data_out_d = data_out_q;
    //state_d = state_q;
    //
    //if (start == 1'b0) begin
        //state_d = IDLE;
        //mosi_d = 1'b0;
    //end
    ////if (start == 1'b1) begin
    //case (state_q)
      //IDLE: begin
        //sck_d = 4'b0;              // reset clock counter
        //ctr_d = 3'b0;              // reset bit counter
        //if (start == 1'b1) begin   // if start command
          //data_d = data_in;        // copy data to send
          //state_d = WAIT_HALF;     // change state
        //end
      //end
      //WAIT_HALF: begin
        //sck_d = sck_q + 1'b1;                  // increment clock counter
        //if (sck_q == {CLK_DIV-1{1'b1}}) begin  // if clock is half full (about to fall)
          //sck_d = 1'b0;                        // reset to 0
          //state_d = TRANSFER;                  // change state
          //mosi_d = data_q[7];
//
        //end
      //end
      //TRANSFER: begin
        //if (sck_q == 2'b11) begin
            //sck_d = 2'b0;
            //mosi_d = data_q[7];
        //end
        //else
            //sck_d = sck_q + 1'b1;                       // increment clock counter
        //if (sck_q == 4'b0000) begin                     // if clock counter is 0
          //mosi_d = data_q[7];                           // output the MSB of data
        //end else if (sck_q == {CLK_DIV-1{1'b1}}) begin  // else if it's half full (about to fall)
          //data_d = {data_q[6:0], miso};                 // read in data (shift in)
        //end else if (sck_q == {CLK_DIV{1'b1}}) begin    // else if it's full (about to rise)
          //ctr_d = ctr_q + 1'b1;                         // increment bit counter
          //if (ctr_q == 3'b111) begin                    // if we are on the last bit
            //state_d = IDLE;                             // change state
            //mosi_d = 1'b0;
            //data_out_d = data_q;                        // output data
            //new_data_d = 1'b1;                          // signal data is valid
          //end
        //end
      //end
//
  //end



  always @(*) begin
    if (rst == 1'b0) begin
      ctr_d = 3'b0;
      data_d = 8'b0;
      sck_d = 2'b01;
      mosi_d = 1'b0;
      state_d = IDLE;
      data_out_d = 8'b0;
      new_data_d = 1'b0;
      test = 4'd0;
      chip_rdy_a = miso;
      //wait_d = 1'b1;
    end

    else begin
        sck_d = sck_q;
        data_d = data_q;
        mosi_d = mosi_q;
        ctr_d = ctr_q;
        new_data_d = 1'b0;
        data_out_d = data_out_q;
        state_d = state_q;
        
        //if (start == 1'b0) begin
          //  state_d = IDLE;
            //mosi_d = 1'b0;
        //end
        //if (start == 1'b1) begin
        case (state_q)
          IDLE: begin
            sck_d = 4'b0;              // reset clock counter
            test = 0;
            ctr_d = 3'b0;              // reset bit counter
            if ((start == 1'b1)) begin   // if start command
              test = 1;
              //data_d = data_in;        // copy data to send
              state_d = WAIT_HALF;     // change state
            end
          end
          WAIT_HALF: begin
            test = 2;
            sck_d = sck_q + 1'b1;                  // increment clock counter
            if (sck_q == {CLK_DIV-1{1'b1}}) begin  // if clock is half full (about to fall)
              data_d = data_in;
              test = 3;
              sck_d = 1'b0;                        // reset to 0
              state_d = TRANSFER;                  // change state
              mosi_d = data_q[7];

            end
          end
          TRANSFER: begin
            test = 4;
            if (ctr_q == 3'b0)
                chip_rdy_a = miso;
            if (sck_q == 2'b11) begin
                test = 5;
                sck_d = 2'b0;
                mosi_d = data_q[7];
            end
            else
                test = 6;
                sck_d = sck_q + 1'b1;                       // increment clock counter
            if (sck_q == 4'b0000) begin                     // if clock counter is 0
                test = 7;
                //chip_rdy = miso;
                //if (miso == 1'b0)
                    mosi_d = data_q[7];                           // output the MSB of data
                //else begin
                    //state_d = IDLE;
                //    mosi_d = 1'b0;
            end else if (sck_q == {CLK_DIV-1{1'b1}}) begin  // else if it's half full (about to fall)
              test = 8;
              data_d = {data_q[6:0], miso};                 // read in data (shift in)
            end else if (sck_q == {CLK_DIV{1'b1}}) begin    // else if it's full (about to rise)
              test = 9;
              ctr_d = ctr_q + 1'b1;                         // increment bit counter
              if (ctr_q == 3'b111) begin                    // if we are on the last bit
                test = 9;
                state_d = IDLE;                             // change state
                mosi_d = 1'b0;
                data_out_d = data_q;                        // output data
                new_data_d = 1'b1;                          // signal data is valid
                //wait_d = wait_q;
              end
            end
          end
        endcase
    end
  end


   
    always @(posedge clk or negedge rst) begin
        if (rst == 1'b0) begin
          ctr_q <= 3'b0;
          data_q <= 8'b0;
          sck_q <= 2'b01;
          mosi_q <= 1'b0;
          state_q <= IDLE;
          data_out_q <= 8'b0;
          new_data_q <= 1'b0;
          //wait_q <= 1'b1;
      end else begin
        if (~chip_rdy_a) begin
            ctr_q <= ctr_d;
            data_q <= data_d;
            sck_q <= sck_d;
            mosi_q <= mosi_d;
            state_q <= state_d;
            data_out_q <= data_out_d;
            new_data_q <= new_data_d;
            //wait_q <= 1'b0;
        end
        else begin
            ctr_q <= ctr_d;
            data_q <= data_d;
            sck_q <= sck_d;
            mosi_q <= 1'b0;
            state_q <= state_d;
            data_out_q <= data_out_d;
            new_data_q <= new_data_d;
            //wait_q <= 1'b1;
        end
      end
  end


endmodule
