/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : PC_update_logic                                              **
 **                                                                          **
 ******************************************************************************/

`timescale 1ns/1ps
module PC_update_logic( BAddr,
                        Beq,
                        Blez,
                        Bne,
                        Equal,
                        JAL,
                        JAddr,
                        JMP,
                        JR,
                        JRAddr,
                        LOGISIM_CLOCK_TREE_0,
                        Less,
                        PC_plus_four,
                        BranchSig,
                        Branched,
                        PC_Next);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input[31:0]  BAddr;
   input  Beq;
   input  Blez;
   input  Bne;
   input  Equal;
   input  JAL;
   input[31:0]  JAddr;
   input  JMP;
   input  JR;
   input[31:0]  JRAddr;
   input[4:0]  LOGISIM_CLOCK_TREE_0;
   input  Less;
   input[31:0]  PC_plus_four;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output BranchSig;
   output Branched;
   output[31:0] PC_Next;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire[31:0] s_LOGISIM_BUS_14;
   wire[1:0] s_LOGISIM_BUS_15;
   wire[31:0] s_LOGISIM_BUS_17;
   wire[31:0] s_LOGISIM_BUS_18;
   wire[31:0] s_LOGISIM_BUS_20;
   wire[31:0] s_LOGISIM_BUS_4;
   wire s_LOGISIM_NET_0;
   wire s_LOGISIM_NET_1;
   wire s_LOGISIM_NET_10;
   wire s_LOGISIM_NET_11;
   wire s_LOGISIM_NET_12;
   wire s_LOGISIM_NET_13;
   wire s_LOGISIM_NET_16;
   wire s_LOGISIM_NET_19;
   wire s_LOGISIM_NET_2;
   wire s_LOGISIM_NET_21;
   wire s_LOGISIM_NET_22;
   wire s_LOGISIM_NET_3;
   wire s_LOGISIM_NET_5;
   wire s_LOGISIM_NET_6;
   wire s_LOGISIM_NET_7;
   wire s_LOGISIM_NET_8;
   wire s_LOGISIM_NET_9;


   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_BUS_4[31:0]              = BAddr;
   assign s_LOGISIM_NET_5                    = JMP;
   assign s_LOGISIM_NET_10                   = Less;
   assign s_LOGISIM_NET_6                    = JR;
   assign s_LOGISIM_NET_1                    = JAL;
   assign s_LOGISIM_NET_13                   = Beq;
   assign s_LOGISIM_BUS_14[31:0]             = PC_plus_four;
   assign s_LOGISIM_BUS_17[31:0]             = JRAddr;
   assign s_LOGISIM_BUS_18[31:0]             = JAddr;
   assign s_LOGISIM_NET_7                    = Bne;
   assign s_LOGISIM_NET_12                   = Blez;
   assign s_LOGISIM_NET_9                    = Equal;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign BranchSig                          = s_LOGISIM_NET_2;
   assign Branched                           = s_LOGISIM_NET_21;
   assign PC_Next                            = s_LOGISIM_BUS_20[31:0];

   /***************************************************************************
    ** Here all normal components are defined                                **
    ***************************************************************************/
   Priority_Encoder #(.NrOfInputBits(4),
                      .NrOfSelectBits(2))
      PRIENC_1 (.Address(s_LOGISIM_BUS_15[1:0]),
                .EnableOut(),
                .GroupSelect(),
                .enable(1'b1),
                .input_vector({s_LOGISIM_NET_6,
                               s_LOGISIM_NET_3,
                               s_LOGISIM_NET_8,
                               s_LOGISIM_NET_11}));

   OR_GATE_3_INPUTS #(.BubblesMask(0))
      GATE_1 (.Input_1(s_LOGISIM_NET_8),
              .Input_2(s_LOGISIM_NET_3),
              .Input_3(s_LOGISIM_NET_6),
              .Result(s_LOGISIM_NET_21));

   NOR_GATE_5_INPUTS #(.BubblesMask(0))
      GATE_2 (.Input_1(s_LOGISIM_NET_16),
              .Input_2(s_LOGISIM_NET_19),
              .Input_3(s_LOGISIM_NET_0),
              .Input_4(s_LOGISIM_NET_6),
              .Input_5(s_LOGISIM_NET_3),
              .Result(s_LOGISIM_NET_11));

   Multiplexer_bus_4 #(.NrOfBits(32))
      MUX_1 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_14[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_4[31:0]),
             .MuxIn_2(s_LOGISIM_BUS_18[31:0]),
             .MuxIn_3(s_LOGISIM_BUS_17[31:0]),
             .MuxOut(s_LOGISIM_BUS_20[31:0]),
             .Sel(s_LOGISIM_BUS_15[1:0]));

   OR_GATE #(.BubblesMask(0))
      GATE_3 (.Input_1(s_LOGISIM_NET_10),
              .Input_2(s_LOGISIM_NET_9),
              .Result(s_LOGISIM_NET_22));

   OR_GATE_3_INPUTS #(.BubblesMask(0))
      GATE_4 (.Input_1(s_LOGISIM_NET_16),
              .Input_2(s_LOGISIM_NET_19),
              .Input_3(s_LOGISIM_NET_0),
              .Result(s_LOGISIM_NET_8));

   OR_GATE_6_INPUTS #(.BubblesMask(0))
      GATE_5 (.Input_1(s_LOGISIM_NET_12),
              .Input_2(s_LOGISIM_NET_13),
              .Input_3(s_LOGISIM_NET_7),
              .Input_4(s_LOGISIM_NET_1),
              .Input_5(s_LOGISIM_NET_5),
              .Input_6(s_LOGISIM_NET_6),
              .Result(s_LOGISIM_NET_2));

   AND_GATE #(.BubblesMask(0))
      GATE_6 (.Input_1(s_LOGISIM_NET_12),
              .Input_2(s_LOGISIM_NET_22),
              .Result(s_LOGISIM_NET_16));

   AND_GATE #(.BubblesMask(0))
      GATE_7 (.Input_1(s_LOGISIM_NET_9),
              .Input_2(s_LOGISIM_NET_13),
              .Result(s_LOGISIM_NET_19));

   AND_GATE #(.BubblesMask(1))
      GATE_8 (.Input_1(s_LOGISIM_NET_9),
              .Input_2(s_LOGISIM_NET_7),
              .Result(s_LOGISIM_NET_0));

   OR_GATE #(.BubblesMask(0))
      GATE_9 (.Input_1(s_LOGISIM_NET_1),
              .Input_2(s_LOGISIM_NET_5),
              .Result(s_LOGISIM_NET_3));



endmodule
