/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : pipeline_conflict_deal_logic                                 **
 **                                                                          **
 ******************************************************************************/

`timescale 1ns/1ps
module pipeline_conflict_deal_logic( AluSrc,
                                     CLR,
                                     LOGISIM_CLOCK_TREE_0,
                                     R1Adr,
                                     R2Adr,
                                     RegWrite,
                                     WAdr,
                                     R1_CF,
                                     R2_CF,
                                     Stall_PC_ID);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input  AluSrc;
   input  CLR;
   input[4:0]  LOGISIM_CLOCK_TREE_0;
   input[4:0]  R1Adr;
   input[4:0]  R2Adr;
   input  RegWrite;
   input[4:0]  WAdr;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output R1_CF;
   output R2_CF;
   output Stall_PC_ID;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire[4:0] s_LOGISIM_BUS_1;
   wire[4:0] s_LOGISIM_BUS_11;
   wire[4:0] s_LOGISIM_BUS_12;
   wire[4:0] s_LOGISIM_BUS_2;
   wire[4:0] s_LOGISIM_BUS_5;
   wire s_LOGISIM_NET_0;
   wire s_LOGISIM_NET_10;
   wire s_LOGISIM_NET_13;
   wire s_LOGISIM_NET_14;
   wire s_LOGISIM_NET_15;
   wire s_LOGISIM_NET_3;
   wire s_LOGISIM_NET_4;
   wire s_LOGISIM_NET_6;
   wire s_LOGISIM_NET_7;
   wire s_LOGISIM_NET_8;
   wire s_LOGISIM_NET_9;


   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_NET_10                   = RegWrite;
   assign s_LOGISIM_BUS_1[4:0]               = R2Adr;
   assign s_LOGISIM_BUS_2[4:0]               = WAdr;
   assign s_LOGISIM_NET_13                   = CLR;
   assign s_LOGISIM_BUS_5[4:0]               = R1Adr;
   assign s_LOGISIM_NET_0                    = AluSrc;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign Stall_PC_ID                        = s_LOGISIM_NET_15;
   assign R2_CF                              = s_LOGISIM_NET_8;
   assign R1_CF                              = s_LOGISIM_NET_7;

   /***************************************************************************
    ** Here all in-lined components are defined                              **
    ***************************************************************************/
   assign s_LOGISIM_BUS_11[4:0] = 5'd0;

   assign s_LOGISIM_BUS_12[4:0] = 5'd0;


   /***************************************************************************
    ** Here all normal components are defined                                **
    ***************************************************************************/
   Comparator #(.NrOfBits(5),
                .TwosComplement(1))
      Comparator_1 (.A_EQ_B(s_LOGISIM_NET_3),
                    .A_GT_B(),
                    .A_LT_B(),
                    .DataA(s_LOGISIM_BUS_2[4:0]),
                    .DataB(s_LOGISIM_BUS_5[4:0]));

   AND_GATE_3_INPUTS #(.BubblesMask(6))
      GATE_1 (.Input_1(s_LOGISIM_NET_4),
              .Input_2(s_LOGISIM_NET_0),
              .Input_3(s_LOGISIM_NET_9),
              .Result(s_LOGISIM_NET_8));

   Comparator #(.NrOfBits(5),
                .TwosComplement(1))
      Comparator_2 (.A_EQ_B(s_LOGISIM_NET_6),
                    .A_GT_B(),
                    .A_LT_B(),
                    .DataA(s_LOGISIM_BUS_11[4:0]),
                    .DataB(s_LOGISIM_BUS_5[4:0]));

   OR_GATE #(.BubblesMask(0))
      GATE_2 (.Input_1(s_LOGISIM_NET_7),
              .Input_2(s_LOGISIM_NET_8),
              .Result(s_LOGISIM_NET_14));

   AND_GATE #(.BubblesMask(1))
      GATE_3 (.Input_1(s_LOGISIM_NET_6),
              .Input_2(s_LOGISIM_NET_3),
              .Result(s_LOGISIM_NET_7));

   AND_GATE_3_INPUTS #(.BubblesMask(2))
      GATE_4 (.Input_1(s_LOGISIM_NET_14),
              .Input_2(s_LOGISIM_NET_13),
              .Input_3(s_LOGISIM_NET_10),
              .Result(s_LOGISIM_NET_15));

   Comparator #(.NrOfBits(5),
                .TwosComplement(1))
      Comparator_3 (.A_EQ_B(s_LOGISIM_NET_9),
                    .A_GT_B(),
                    .A_LT_B(),
                    .DataA(s_LOGISIM_BUS_1[4:0]),
                    .DataB(s_LOGISIM_BUS_12[4:0]));

   Comparator #(.NrOfBits(5),
                .TwosComplement(1))
      Comparator_4 (.A_EQ_B(s_LOGISIM_NET_4),
                    .A_GT_B(),
                    .A_LT_B(),
                    .DataA(s_LOGISIM_BUS_2[4:0]),
                    .DataB(s_LOGISIM_BUS_1[4:0]));



endmodule
