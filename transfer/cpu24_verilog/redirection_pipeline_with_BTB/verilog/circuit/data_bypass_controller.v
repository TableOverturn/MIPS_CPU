/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : data_bypass_controller                                       **
 **                                                                          **
 ******************************************************************************/

`timescale 1ns/1ps
module data_bypass_controller( BranchCLR,
                               EX_IR,
                               EX_RegWrite,
                               EX_WAdr,
                               ID_AluSrc,
                               ID_IR,
                               ID_R1Adr,
                               ID_R2Adr,
                               LOGISIM_CLOCK_TREE_0,
                               MEM_MemToReg,
                               MEM_RegWrite,
                               MEM_WAdr,
                               R1_Forward,
                               R2_Forward,
                               Stall);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input  BranchCLR;
   input[31:0]  EX_IR;
   input  EX_RegWrite;
   input[4:0]  EX_WAdr;
   input  ID_AluSrc;
   input[31:0]  ID_IR;
   input[4:0]  ID_R1Adr;
   input[4:0]  ID_R2Adr;
   input[4:0]  LOGISIM_CLOCK_TREE_0;
   input  MEM_MemToReg;
   input  MEM_RegWrite;
   input[4:0]  MEM_WAdr;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output[1:0] R1_Forward;
   output[1:0] R2_Forward;
   output Stall;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire[1:0] s_LOGISIM_BUS_11;
   wire[31:0] s_LOGISIM_BUS_12;
   wire[4:0] s_LOGISIM_BUS_13;
   wire[31:0] s_LOGISIM_BUS_17;
   wire[4:0] s_LOGISIM_BUS_20;
   wire[4:0] s_LOGISIM_BUS_34;
   wire[4:0] s_LOGISIM_BUS_35;
   wire[5:0] s_LOGISIM_BUS_37;
   wire[5:0] s_LOGISIM_BUS_39;
   wire[5:0] s_LOGISIM_BUS_43;
   wire[1:0] s_LOGISIM_BUS_46;
   wire s_LOGISIM_NET_0;
   wire s_LOGISIM_NET_1;
   wire s_LOGISIM_NET_10;
   wire s_LOGISIM_NET_14;
   wire s_LOGISIM_NET_15;
   wire s_LOGISIM_NET_16;
   wire s_LOGISIM_NET_18;
   wire s_LOGISIM_NET_19;
   wire s_LOGISIM_NET_2;
   wire s_LOGISIM_NET_21;
   wire s_LOGISIM_NET_22;
   wire s_LOGISIM_NET_23;
   wire s_LOGISIM_NET_24;
   wire s_LOGISIM_NET_25;
   wire s_LOGISIM_NET_26;
   wire s_LOGISIM_NET_27;
   wire s_LOGISIM_NET_28;
   wire s_LOGISIM_NET_3;
   wire s_LOGISIM_NET_30;
   wire s_LOGISIM_NET_31;
   wire s_LOGISIM_NET_32;
   wire s_LOGISIM_NET_33;
   wire s_LOGISIM_NET_36;
   wire s_LOGISIM_NET_4;
   wire s_LOGISIM_NET_40;
   wire s_LOGISIM_NET_42;
   wire s_LOGISIM_NET_45;
   wire s_LOGISIM_NET_5;
   wire s_LOGISIM_NET_6;
   wire s_LOGISIM_NET_8;
   wire s_LOGISIM_NET_9;


   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_BUS_13[4:0]              = ID_R1Adr;
   assign s_LOGISIM_NET_33                   = EX_RegWrite;
   assign s_LOGISIM_BUS_12[31:0]             = EX_IR;
   assign s_LOGISIM_NET_4                    = MEM_MemToReg;
   assign s_LOGISIM_NET_3                    = MEM_RegWrite;
   assign s_LOGISIM_BUS_35[4:0]              = EX_WAdr;
   assign s_LOGISIM_BUS_34[4:0]              = MEM_WAdr;
   assign s_LOGISIM_BUS_20[4:0]              = ID_R2Adr;
   assign s_LOGISIM_NET_19                   = ID_AluSrc;
   assign s_LOGISIM_NET_15                   = BranchCLR;
   assign s_LOGISIM_BUS_17[31:0]             = ID_IR;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign Stall                              = s_LOGISIM_NET_45;
   assign R2_Forward                         = s_LOGISIM_BUS_46[1:0];
   assign R1_Forward                         = s_LOGISIM_BUS_11[1:0];

   /***************************************************************************
    ** Here all in-lined components are defined                              **
    ***************************************************************************/
   assign s_LOGISIM_NET_28 = 1'd1;

   assign s_LOGISIM_BUS_43[5:0] = 6'd35;

   assign s_LOGISIM_NET_16 = 1'd1;

   assign s_LOGISIM_BUS_39[5:0] = 6'd43;

   assign s_LOGISIM_BUS_37[5:0] = 6'd35;


   /***************************************************************************
    ** Here all normal components are defined                                **
    ***************************************************************************/
   AND_GATE #(.BubblesMask(0))
      GATE_1 (.Input_1(s_LOGISIM_NET_0),
              .Input_2(s_LOGISIM_NET_31),
              .Result(s_LOGISIM_NET_14));

   Priority_Encoder #(.NrOfInputBits(4),
                      .NrOfSelectBits(2))
      PRIENC_1 (.Address(s_LOGISIM_BUS_11[1:0]),
                .EnableOut(),
                .GroupSelect(),
                .enable(1'b1),
                .input_vector({s_LOGISIM_NET_23,
                               s_LOGISIM_NET_27,
                               s_LOGISIM_NET_8,
                               s_LOGISIM_NET_16}));

   AND_GATE #(.BubblesMask(1))
      GATE_2 (.Input_1(s_LOGISIM_NET_30),
              .Input_2(s_LOGISIM_NET_19),
              .Result(s_LOGISIM_NET_9));

   OR_GATE #(.BubblesMask(0))
      GATE_3 (.Input_1(s_LOGISIM_NET_18),
              .Input_2(s_LOGISIM_NET_42),
              .Result(s_LOGISIM_NET_30));

   AND_GATE #(.BubblesMask(0))
      GATE_4 (.Input_1(s_LOGISIM_NET_10),
              .Input_2(s_LOGISIM_NET_0),
              .Result(s_LOGISIM_NET_24));

   AND_GATE #(.BubblesMask(1))
      GATE_5 (.Input_1(s_LOGISIM_NET_4),
              .Input_2(s_LOGISIM_NET_14),
              .Result(s_LOGISIM_NET_32));

   AND_GATE #(.BubblesMask(1))
      GATE_6 (.Input_1(s_LOGISIM_NET_4),
              .Input_2(s_LOGISIM_NET_24),
              .Result(s_LOGISIM_NET_8));

   Comparator #(.NrOfBits(5),
                .TwosComplement(1))
      Comparator_1 (.A_EQ_B(s_LOGISIM_NET_1),
                    .A_GT_B(),
                    .A_LT_B(),
                    .DataA(s_LOGISIM_BUS_12[20:16]),
                    .DataB(s_LOGISIM_BUS_17[20:16]));

   Comparator #(.NrOfBits(6),
                .TwosComplement(1))
      Comparator_2 (.A_EQ_B(s_LOGISIM_NET_6),
                    .A_GT_B(),
                    .A_LT_B(),
                    .DataA(s_LOGISIM_BUS_43[5:0]),
                    .DataB(s_LOGISIM_BUS_12[31:26]));

   AND_GATE #(.BubblesMask(0))
      GATE_7 (.Input_1(s_LOGISIM_NET_4),
              .Input_2(s_LOGISIM_NET_14),
              .Result(s_LOGISIM_NET_21));

   Comparator #(.NrOfBits(5),
                .TwosComplement(1))
      Comparator_3 (.A_EQ_B(s_LOGISIM_NET_5),
                    .A_GT_B(),
                    .A_LT_B(),
                    .DataA(s_LOGISIM_BUS_12[20:16]),
                    .DataB(s_LOGISIM_BUS_17[25:21]));

   Comparator #(.NrOfBits(6),
                .TwosComplement(1))
      Comparator_4 (.A_EQ_B(s_LOGISIM_NET_18),
                    .A_GT_B(),
                    .A_LT_B(),
                    .DataA(s_LOGISIM_BUS_37[5:0]),
                    .DataB(s_LOGISIM_BUS_17[31:26]));

   AND_GATE #(.BubblesMask(0))
      GATE_8 (.Input_1(s_LOGISIM_NET_4),
              .Input_2(s_LOGISIM_NET_24),
              .Result(s_LOGISIM_NET_27));

   AND_GATE #(.BubblesMask(2))
      GATE_9 (.Input_1(s_LOGISIM_NET_1),
              .Input_2(s_LOGISIM_NET_19),
              .Result(s_LOGISIM_NET_40));

   OR_GATE #(.BubblesMask(0))
      GATE_10 (.Input_1(s_LOGISIM_NET_5),
               .Input_2(s_LOGISIM_NET_40),
               .Result(s_LOGISIM_NET_36));

   Comparator #(.NrOfBits(6),
                .TwosComplement(1))
      Comparator_5 (.A_EQ_B(s_LOGISIM_NET_42),
                    .A_GT_B(),
                    .A_LT_B(),
                    .DataA(s_LOGISIM_BUS_17[31:26]),
                    .DataB(s_LOGISIM_BUS_39[5:0]));

   AND_GATE #(.BubblesMask(0))
      GATE_11 (.Input_1(s_LOGISIM_NET_25),
               .Input_2(s_LOGISIM_NET_22),
               .Result(s_LOGISIM_NET_2));

   AND_GATE #(.BubblesMask(0))
      GATE_12 (.Input_1(s_LOGISIM_NET_6),
               .Input_2(s_LOGISIM_NET_36),
               .Result(s_LOGISIM_NET_45));

   Priority_Encoder #(.NrOfInputBits(4),
                      .NrOfSelectBits(2))
      PRIENC_2 (.Address(s_LOGISIM_BUS_46[1:0]),
                .EnableOut(),
                .GroupSelect(),
                .enable(1'b1),
                .input_vector({s_LOGISIM_NET_2,
                               s_LOGISIM_NET_21,
                               s_LOGISIM_NET_32,
                               s_LOGISIM_NET_28}));

   AND_GATE #(.BubblesMask(0))
      GATE_13 (.Input_1(s_LOGISIM_NET_26),
               .Input_2(s_LOGISIM_NET_25),
               .Result(s_LOGISIM_NET_23));


   /***************************************************************************
    ** Here all sub-circuits are defined                                     **
    ***************************************************************************/
   pipeline_conflict_deal_logic      pipeline_conflict_deal_logic_1 (.AluSrc(s_LOGISIM_NET_9),
                                                                     .CLR(s_LOGISIM_NET_15),
                                                                     .LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                                                                     .R1Adr(s_LOGISIM_BUS_13[4:0]),
                                                                     .R1_CF(s_LOGISIM_NET_10),
                                                                     .R2Adr(s_LOGISIM_BUS_20[4:0]),
                                                                     .R2_CF(s_LOGISIM_NET_31),
                                                                     .RegWrite(s_LOGISIM_NET_3),
                                                                     .Stall_PC_ID(s_LOGISIM_NET_0),
                                                                     .WAdr(s_LOGISIM_BUS_34[4:0]));

   pipeline_conflict_deal_logic      pipeline_conflict_deal_logic_2 (.AluSrc(s_LOGISIM_NET_9),
                                                                     .CLR(s_LOGISIM_NET_15),
                                                                     .LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                                                                     .R1Adr(s_LOGISIM_BUS_13[4:0]),
                                                                     .R1_CF(s_LOGISIM_NET_26),
                                                                     .R2Adr(s_LOGISIM_BUS_20[4:0]),
                                                                     .R2_CF(s_LOGISIM_NET_22),
                                                                     .RegWrite(s_LOGISIM_NET_33),
                                                                     .Stall_PC_ID(s_LOGISIM_NET_25),
                                                                     .WAdr(s_LOGISIM_BUS_35[4:0]));



endmodule
