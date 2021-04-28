/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : MIPS_MEM                                                     **
 **                                                                          **
 ******************************************************************************/

`timescale 1ns/1ps
module MIPS_MEM( AluResult,
                 CLK,
                 HalfW,
                 LOGISIM_CLOCK_TREE_0,
                 MemWrite,
                 WriteData,
                 MemReadData);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input[31:0]  AluResult;
   input  CLK;
   input  HalfW;
   input[4:0]  LOGISIM_CLOCK_TREE_0;
   input  MemWrite;
   input[31:0]  WriteData;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output[31:0] MemReadData;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire[31:0] s_LOGISIM_BUS_15;
   wire[15:0] s_LOGISIM_BUS_16;
   wire[31:0] s_LOGISIM_BUS_17;
   wire[31:0] s_LOGISIM_BUS_18;
   wire[15:0] s_LOGISIM_BUS_21;
   wire[15:0] s_LOGISIM_BUS_3;
   wire[15:0] s_LOGISIM_BUS_5;
   wire s_LOGISIM_NET_1;
   wire s_LOGISIM_NET_11;
   wire s_LOGISIM_NET_12;
   wire s_LOGISIM_NET_14;
   wire s_LOGISIM_NET_19;
   wire s_LOGISIM_NET_20;
   wire s_LOGISIM_NET_22;
   wire s_LOGISIM_NET_23;
   wire s_LOGISIM_NET_4;
   wire s_LOGISIM_NET_6;
   wire s_LOGISIM_NET_7;


   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_NET_4                    = HalfW;
   assign s_LOGISIM_NET_7                    = CLK;
   assign s_LOGISIM_BUS_18[31:0]             = WriteData;
   assign s_LOGISIM_BUS_17[31:0]             = AluResult;
   assign s_LOGISIM_NET_1                    = MemWrite;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign MemReadData                        = s_LOGISIM_BUS_15[31:0];

   /***************************************************************************
    ** Here all in-lined components are defined                              **
    ***************************************************************************/
   assign s_LOGISIM_NET_22 = 1'd1;

   assign s_LOGISIM_NET_23 = 1'd1;


   /***************************************************************************
    ** Here all normal components are defined                                **
    ***************************************************************************/
   RAM_lower_byte_RAM      RAM_1 (.addr(s_LOGISIM_BUS_17[11:2]),
                                  .clk(s_LOGISIM_NET_7),
                                  .d(s_LOGISIM_BUS_21[15:0]),
                                  .q(s_LOGISIM_BUS_15[15:0]),
                                  .we(s_LOGISIM_NET_1),
                                  .sel(s_LOGISIM_NET_11));

   Decoder_2      DECODER_1 (.DecoderOut_0(s_LOGISIM_NET_20),
                             .DecoderOut_1(s_LOGISIM_NET_19),
                             .Enable(1'b1),
                             .Sel(s_LOGISIM_BUS_17[1]));

   Multiplexer_bus_2 #(.NrOfBits(16))
      MUX_1 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_18[31:16]),
             .MuxIn_1(s_LOGISIM_BUS_3[15:0]),
             .MuxOut(s_LOGISIM_BUS_16[15:0]),
             .Sel(s_LOGISIM_NET_4));

   NOT_GATE      GATE_1 (.Input_1(s_LOGISIM_NET_19),
                         .Result(s_LOGISIM_NET_12));

   NOT_GATE      GATE_2 (.Input_1(s_LOGISIM_NET_20),
                         .Result(s_LOGISIM_NET_14));

   Multiplexer_2      MUX_2 (.Enable(1'b1),
                             .MuxIn_0(s_LOGISIM_NET_22),
                             .MuxIn_1(s_LOGISIM_NET_14),
                             .MuxOut(s_LOGISIM_NET_6),
                             .Sel(s_LOGISIM_NET_4));

   Multiplexer_bus_2 #(.NrOfBits(16))
      MUX_3 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_18[15:0]),
             .MuxIn_1(s_LOGISIM_BUS_5[15:0]),
             .MuxOut(s_LOGISIM_BUS_21[15:0]),
             .Sel(s_LOGISIM_NET_4));

   Multiplexer_2      MUX_4 (.Enable(1'b1),
                             .MuxIn_0(s_LOGISIM_NET_23),
                             .MuxIn_1(s_LOGISIM_NET_12),
                             .MuxOut(s_LOGISIM_NET_11),
                             .Sel(s_LOGISIM_NET_4));

   Demultiplexer_bus_2 #(.NrOfBits(16))
      DEMUX_1 (.DemuxIn(s_LOGISIM_BUS_18[15:0]),
               .DemuxOut_0(s_LOGISIM_BUS_5[15:0]),
               .DemuxOut_1(s_LOGISIM_BUS_3[15:0]),
               .Enable(1'b1),
               .Sel(s_LOGISIM_BUS_17[1]));

   RAM_upper_byte_RAM      RAM_2 (.addr(s_LOGISIM_BUS_17[11:2]),
                                  .clk(s_LOGISIM_NET_7),
                                  .d(s_LOGISIM_BUS_16[15:0]),
                                  .q(s_LOGISIM_BUS_15[31:16]),
                                  .we(s_LOGISIM_NET_1),
                                  .sel(s_LOGISIM_NET_6));



endmodule
