/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : dual_bit_predction_with_state_shifting_logic                 **
 **                                                                          **
 ******************************************************************************/

`timescale 1ns/1ps
module dual_bit_predction_with_state_shifting_logic( CLK,
                                                     EX_Hit,
                                                     Hit,
                                                     LOGISIM_CLOCK_TREE_0,
                                                     Preset,
                                                     Success,
                                                     JumpPredict);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input  CLK;
   input  EX_Hit;
   input  Hit;
   input[4:0]  LOGISIM_CLOCK_TREE_0;
   input  Preset;
   input  Success;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output JumpPredict;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire[1:0] s_LOGISIM_BUS_17;
   wire[1:0] s_LOGISIM_BUS_19;
   wire[1:0] s_LOGISIM_BUS_23;
   wire[1:0] s_LOGISIM_BUS_24;
   wire s_LOGISIM_NET_1;
   wire s_LOGISIM_NET_10;
   wire s_LOGISIM_NET_11;
   wire s_LOGISIM_NET_12;
   wire s_LOGISIM_NET_13;
   wire s_LOGISIM_NET_14;
   wire s_LOGISIM_NET_18;
   wire s_LOGISIM_NET_2;
   wire s_LOGISIM_NET_20;
   wire s_LOGISIM_NET_21;
   wire s_LOGISIM_NET_22;
   wire s_LOGISIM_NET_25;
   wire s_LOGISIM_NET_3;
   wire s_LOGISIM_NET_4;
   wire s_LOGISIM_NET_5;
   wire s_LOGISIM_NET_6;
   wire s_LOGISIM_NET_8;
   wire s_LOGISIM_NET_9;


   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_NET_18                   = EX_Hit;
   assign s_LOGISIM_NET_6                    = Success;
   assign s_LOGISIM_NET_9                    = CLK;
   assign s_LOGISIM_NET_5                    = Preset;
   assign s_LOGISIM_NET_10                   = Hit;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign JumpPredict                        = s_LOGISIM_NET_20;

   /***************************************************************************
    ** Here all in-lined components are defined                              **
    ***************************************************************************/
   assign s_LOGISIM_BUS_24[1:0] = 2'd3;

   assign s_LOGISIM_NET_25 = 1'd1;


   /***************************************************************************
    ** Here all normal components are defined                                **
    ***************************************************************************/
   REGISTER_LATCH #(.ActiveLevel(1),
                    .NrOfBits(1))
      REGISTER_FILE_1 (.Clock(s_LOGISIM_NET_9),
                       .ClockEnable(s_LOGISIM_NET_25),
                       .D(s_LOGISIM_NET_4),
                       .Q(s_LOGISIM_NET_20),
                       .Reset(1'b0),
                       .Tick(1'b1),
                       .cs(1'b1),
                       .pre(1'b0));

   NOT_GATE      GATE_1 (.Input_1(s_LOGISIM_BUS_23[0]),
                         .Result(s_LOGISIM_NET_22));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(2))
      REGISTER_FILE_2 (.Clock(s_LOGISIM_NET_9),
                       .ClockEnable(s_LOGISIM_NET_14),
                       .D(s_LOGISIM_BUS_19[1:0]),
                       .Q(s_LOGISIM_BUS_23[1:0]),
                       .Reset(1'b0),
                       .Tick(1'b1),
                       .cs(1'b1),
                       .pre(1'b0));

   OR_GATE #(.BubblesMask(0))
      GATE_2 (.Input_1(s_LOGISIM_NET_13),
              .Input_2(s_LOGISIM_NET_3),
              .Result(s_LOGISIM_BUS_17[1]));

   NOT_GATE      GATE_3 (.Input_1(s_LOGISIM_BUS_23[0]),
                         .Result(s_LOGISIM_NET_21));

   OR_GATE #(.BubblesMask(0))
      GATE_4 (.Input_1(s_LOGISIM_NET_5),
              .Input_2(s_LOGISIM_NET_18),
              .Result(s_LOGISIM_NET_14));

   AND_GATE #(.BubblesMask(0))
      GATE_5 (.Input_1(s_LOGISIM_BUS_23[0]),
              .Input_2(s_LOGISIM_NET_6),
              .Result(s_LOGISIM_NET_13));

   NOT_GATE      GATE_6 (.Input_1(s_LOGISIM_BUS_23[0]),
                         .Result(s_LOGISIM_NET_8));

   OR_GATE #(.BubblesMask(0))
      GATE_7 (.Input_1(s_LOGISIM_NET_12),
              .Input_2(s_LOGISIM_NET_2),
              .Result(s_LOGISIM_BUS_17[0]));

   AND_GATE_3_INPUTS #(.BubblesMask(0))
      GATE_8 (.Input_1(s_LOGISIM_NET_11),
              .Input_2(s_LOGISIM_NET_21),
              .Input_3(s_LOGISIM_NET_6),
              .Result(s_LOGISIM_NET_12));

   Multiplexer_bus_2 #(.NrOfBits(2))
      MUX_1 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_17[1:0]),
             .MuxIn_1(s_LOGISIM_BUS_24[1:0]),
             .MuxOut(s_LOGISIM_BUS_19[1:0]),
             .Sel(s_LOGISIM_NET_5));

   AND_GATE #(.BubblesMask(0))
      GATE_9 (.Input_1(s_LOGISIM_BUS_23[1]),
              .Input_2(s_LOGISIM_NET_22),
              .Result(s_LOGISIM_NET_3));

   NOT_GATE      GATE_10 (.Input_1(s_LOGISIM_NET_6),
                          .Result(s_LOGISIM_NET_1));

   AND_GATE_3_INPUTS #(.BubblesMask(0))
      GATE_11 (.Input_1(s_LOGISIM_BUS_23[1]),
               .Input_2(s_LOGISIM_NET_8),
               .Input_3(s_LOGISIM_NET_1),
               .Result(s_LOGISIM_NET_2));

   AND_GATE #(.BubblesMask(0))
      GATE_12 (.Input_1(s_LOGISIM_BUS_23[1]),
               .Input_2(s_LOGISIM_NET_10),
               .Result(s_LOGISIM_NET_4));

   NOT_GATE      GATE_13 (.Input_1(s_LOGISIM_BUS_23[1]),
                          .Result(s_LOGISIM_NET_11));



endmodule
