/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : LogisimToplevelShell                                         **
 **                                                                          **
 ******************************************************************************/

`timescale 1ns/1ps
module LogisimToplevelShell( FPGA_GlobalClock,
                             //bit_addr,
                             //kb_ch,
                             //kb_in,
                             go,
                             //kb_en,
                             rgb,
                             hsync,
                             vsync,
                             seg,
                             na,
                             keyboard_in);
   localparam WAIT = 2'b00, HOLD = 2'b01, INPUT_RCVD = 2'b10, ACK_DONE = 2'b11;
   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input  FPGA_GlobalClock;
   //input[6:0]  kb_ch;
   //input  kb_in;
   input  go;
   input [3:0] keyboard_in;


   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output[7:0] seg;
   output[7:0] na;
   output[11:0] rgb;
   //output kb_en;
   output hsync;
   output vsync;
   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire s_FPGA_Tick;
   wire s_Go;
   wire[6:0] s_KB_CH;
   wire s_KB_EN;
   wire s_KB_IN;
   wire fifo_empty;
   wire[4:0] s_LOGISIM_CLOCK_TREE_0;
   wire[7:0] s_NA;
   wire[7:0] s_SEG;
   wire[8:0] bit_addr;
   wire s_bitin;
   wire input_exist;
   wire[1:0] keyborad_in_sel;
   wire [6:0] keyboard_ascii;
   wire [6:0] fifo_out;
   wire fifo_wr_ack;
   
   reg [1:0] keyboard_status = 2'b00;
   reg [16:0] kb_in_hold = 17'h000000;
   reg fifo_wr_en = 0;
   /***************************************************************************
    ** Here all signal adaptations are performed                             **
    ***************************************************************************/

   assign s_KB_IN = ~fifo_empty;
   assign s_Go = go;
   assign seg = s_SEG;
   assign na = s_NA;
   assign s_KB_CH = fifo_out;
   /***************************************************************************
    ** Here all inlined adaptations are performed                            **
    ***************************************************************************/
   always @(posedge s_LOGISIM_CLOCK_TREE_0[4]) begin
         case(keyboard_status)
            WAIT:begin
               if(input_exist) begin
                  keyboard_status <= HOLD;
               end
            end
            HOLD:begin
               if(input_exist)
                  if(kb_in_hold == 17'd99999) begin 
                     kb_in_hold <= 17'h000000;
                     keyboard_status <= INPUT_RCVD;
                     fifo_wr_en <= 1;
                  end
                  else
                     kb_in_hold <= kb_in_hold + 1;
               else
                  keyboard_status <= WAIT;
            end
            INPUT_RCVD:begin
               if(fifo_wr_ack) begin
                  fifo_wr_en <= 0;
                  keyboard_status <= ACK_DONE;
               end
            end
            ACK_DONE:begin
               if(~input_exist)
                  keyboard_status <= WAIT;
            end
         endcase
   end
   /***************************************************************************
    ** Here the clock tree components are defined                            **
    ***************************************************************************/
   LogisimTickGenerator #(.NrOfBits(32),
                          .ReloadValue(10))
      LogisimTickGenerator_0 (.FPGAClock(FPGA_GlobalClock),
                              .FPGATick(s_FPGA_Tick));

   LogisimClockComponent #(.HighTicks(1),
                           .LowTicks(1),
                           .NrOfBits(1))
      CLOCKGEN_0 (.ClockBus(s_LOGISIM_CLOCK_TREE_0),
                  .ClockTick(s_FPGA_Tick),
                  .GlobalClock(FPGA_GlobalClock));


   /***************************************************************************
    ** Here the toplevel component is connected                              **
    ***************************************************************************/
   tetris_main      tetris_main_0 (.Bit_Addr(bit_addr),
                                   .Go(s_Go),
                                   .KB_CH(s_KB_CH),
                                   .KB_EN(s_KB_EN),
                                   .KB_IN(s_KB_IN),
                                   .LOGISIM_CLOCK_TREE_0(s_LOGISIM_CLOCK_TREE_0),
                                   .NA(s_NA),
                                   .SEG(s_SEG),
                                   .bitin(s_bitin));

   vga_ToplevelShell vga_top_ctrl_0 (
      .FPGA_GlobalClock(FPGA_GlobalClock),
      .bitin(s_bitin),
      .rgb(rgb),
      .hsync(hsync),
      .vsync(vsync),
      .addr(bit_addr));
   Priority_Encoder #(.NrOfInputBits(4),
                      .NrOfSelectBits(2))
      PRIENC_1 (.Address(keyborad_in_sel),
                .EnableOut(),
                .GroupSelect(input_exist),
                .enable(1'b1),
                .input_vector({keyboard_in[3],
                               keyboard_in[2],
                               keyboard_in[1],
                               keyboard_in[0]}));

   Multiplexer_bus_4 #(.NrOfBits(7))
      MUX_1 (.Enable(input_exist),
             .MuxIn_0(7'h57),
             .MuxIn_1(7'h44),
             .MuxIn_2(7'h53),
             .MuxIn_3(7'h41),
             .MuxOut(keyboard_ascii),
             .Sel(keyborad_in_sel)
            );

   tetris_with_input keyboard_fifo_simulator(
      .din(keyboard_ascii),
      .dout(fifo_out),
      .empty(fifo_empty),
      .fifo_rst(1'b0),
      .fifo_clk(s_LOGISIM_CLOCK_TREE_0[0]),
      .rd_en(s_KB_EN),
      .wr_en(fifo_wr_en),
      .wr_ack(fifo_wr_ack)
   );
endmodule
