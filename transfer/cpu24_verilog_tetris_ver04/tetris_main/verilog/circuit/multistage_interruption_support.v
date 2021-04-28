/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : multistage_interruption_support                              **
 **                                                                          **
 ******************************************************************************/

`timescale 1ns/1ps
module multistage_interruption_support( CLK,
                                        ERET,
                                        EX_IR,
                                        IR1,
                                        IR2,
                                        IR3,
                                        LOGISIM_CLOCK_TREE_0,
                                        MFC0,
                                        MTC0,
                                        PC_in,
                                        RST,
                                        BreakPoint,
                                        INT_NUM,
                                        INT_SIG,
                                        W1,
                                        W2,
                                        W3);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input  CLK;
   input  ERET;
   input[31:0]  EX_IR;
   input  IR1;
   input  IR2;
   input  IR3;
   input[4:0]  LOGISIM_CLOCK_TREE_0;
   input  MFC0;
   input  MTC0;
   input[31:0]  PC_in;
   input  RST;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output[31:0] BreakPoint;
   output[1:0] INT_NUM;
   output INT_SIG;
   output W1;
   output W2;
   output W3;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire[31:0] s_LOGISIM_BUS_0;
   wire[2:0] s_LOGISIM_BUS_12;
   wire[2:0] s_LOGISIM_BUS_13;
   wire[2:0] s_LOGISIM_BUS_18;
   wire[2:0] s_LOGISIM_BUS_19;
   wire[2:0] s_LOGISIM_BUS_20;
   wire[2:0] s_LOGISIM_BUS_23;
   wire[2:0] s_LOGISIM_BUS_24;
   wire[31:0] s_LOGISIM_BUS_25;
   wire[31:0] s_LOGISIM_BUS_26;
   wire[31:0] s_LOGISIM_BUS_27;
   wire[1:0] s_LOGISIM_BUS_28;
   wire[1:0] s_LOGISIM_BUS_31;
   wire[1:0] s_LOGISIM_BUS_32;
   wire[1:0] s_LOGISIM_BUS_33;
   wire[31:0] s_LOGISIM_BUS_35;
   wire[2:0] s_LOGISIM_BUS_4;
   wire[2:0] s_LOGISIM_BUS_41;
   wire[2:0] s_LOGISIM_BUS_43;
   wire[31:0] s_LOGISIM_BUS_48;
   wire[2:0] s_LOGISIM_BUS_49;
   wire[2:0] s_LOGISIM_BUS_50;
   wire[2:0] s_LOGISIM_BUS_51;
   wire[2:0] s_LOGISIM_BUS_53;
   wire[31:0] s_LOGISIM_BUS_54;
   wire[2:0] s_LOGISIM_BUS_57;
   wire[2:0] s_LOGISIM_BUS_58;
   wire[31:0] s_LOGISIM_BUS_60;
   wire[2:0] s_LOGISIM_BUS_61;
   wire[31:0] s_LOGISIM_BUS_62;
   wire[1:0] s_LOGISIM_BUS_64;
   wire[1:0] s_LOGISIM_BUS_65;
   wire[31:0] s_LOGISIM_BUS_75;
   wire[1:0] s_LOGISIM_BUS_76;
   wire[1:0] s_LOGISIM_BUS_8;
   wire[2:0] s_LOGISIM_BUS_9;
   wire s_LOGISIM_NET_1;
   wire s_LOGISIM_NET_10;
   wire s_LOGISIM_NET_11;
   wire s_LOGISIM_NET_14;
   wire s_LOGISIM_NET_16;
   wire s_LOGISIM_NET_17;
   wire s_LOGISIM_NET_22;
   wire s_LOGISIM_NET_30;
   wire s_LOGISIM_NET_34;
   wire s_LOGISIM_NET_36;
   wire s_LOGISIM_NET_37;
   wire s_LOGISIM_NET_38;
   wire s_LOGISIM_NET_39;
   wire s_LOGISIM_NET_40;
   wire s_LOGISIM_NET_42;
   wire s_LOGISIM_NET_44;
   wire s_LOGISIM_NET_45;
   wire s_LOGISIM_NET_46;
   wire s_LOGISIM_NET_47;
   wire s_LOGISIM_NET_5;
   wire s_LOGISIM_NET_52;
   wire s_LOGISIM_NET_55;
   wire s_LOGISIM_NET_56;
   wire s_LOGISIM_NET_59;
   wire s_LOGISIM_NET_6;
   wire s_LOGISIM_NET_63;
   wire s_LOGISIM_NET_66;
   wire s_LOGISIM_NET_67;
   wire s_LOGISIM_NET_68;
   wire s_LOGISIM_NET_69;
   wire s_LOGISIM_NET_70;
   wire s_LOGISIM_NET_71;
   wire s_LOGISIM_NET_72;
   wire s_LOGISIM_NET_73;
   wire s_LOGISIM_NET_74;


   /***************************************************************************
    ** Here all wiring is defined                                            **
    ***************************************************************************/
   assign s_LOGISIM_BUS_43[0]                = s_LOGISIM_NET_66;
   assign s_LOGISIM_BUS_43[1]                = s_LOGISIM_NET_66;
   assign s_LOGISIM_BUS_43[2]                = s_LOGISIM_NET_66;

   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_NET_73                   = MFC0;
   assign s_LOGISIM_NET_45                   = IR2;
   assign s_LOGISIM_BUS_75[31:0]             = PC_in;
   assign s_LOGISIM_NET_47                   = MTC0;
   assign s_LOGISIM_NET_66                   = ERET;
   assign s_LOGISIM_NET_72                   = IR1;
   assign s_LOGISIM_NET_46                   = RST;
   assign s_LOGISIM_NET_71                   = IR3;
   assign s_LOGISIM_BUS_60[31:0]             = EX_IR;
   assign s_LOGISIM_NET_39                   = CLK;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign INT_SIG                            = s_LOGISIM_NET_68;
   assign INT_NUM                            = s_LOGISIM_BUS_76[1:0];
   assign W1                                 = s_LOGISIM_NET_56;
   assign BreakPoint                         = s_LOGISIM_BUS_48[31:0];
   assign W2                                 = s_LOGISIM_NET_69;
   assign W3                                 = s_LOGISIM_NET_44;

   /***************************************************************************
    ** Here all in-lined components are defined                              **
    ***************************************************************************/
   assign s_LOGISIM_BUS_41[2:0] = 3'd3;

   assign s_LOGISIM_NET_1 = 1'd1;

   assign s_LOGISIM_NET_67 = 1'd0;

   assign s_LOGISIM_BUS_64[1:0] = 2'd0;

   assign s_LOGISIM_BUS_49[2:0] = 3'd7;

   assign s_LOGISIM_BUS_12[2:0] = 3'd0;

   assign s_LOGISIM_BUS_27[31:0] = 32'd0;

   assign s_LOGISIM_BUS_24[2:0] = 3'd1;

   assign s_LOGISIM_BUS_20[2:0] = 3'd0;

   assign s_LOGISIM_BUS_54[31:0] = 32'd0;


   /***************************************************************************
    ** Here all normal components are defined                                **
    ***************************************************************************/
   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(2))
      REGISTER_FILE_1 (.Clock(s_LOGISIM_NET_39),
                       .ClockEnable(s_LOGISIM_NET_10),
                       .D(s_LOGISIM_BUS_32[1:0]),
                       .Q(s_LOGISIM_BUS_31[1:0]),
                       .Reset(s_LOGISIM_NET_46),
                       .Tick(1'b1),
                       .cs(1'b1),
                       .pre(1'b0));

   AND_GATE_3_INPUTS #(.BubblesMask(4))
      GATE_1 (.Input_1(s_LOGISIM_NET_22),
              .Input_2(s_LOGISIM_NET_36),
              .Input_3(s_LOGISIM_NET_59),
              .Result(s_LOGISIM_NET_68));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(2))
      REGISTER_FILE_2 (.Clock(s_LOGISIM_NET_39),
                       .ClockEnable(s_LOGISIM_NET_10),
                       .D(s_LOGISIM_BUS_65[1:0]),
                       .Q(s_LOGISIM_BUS_28[1:0]),
                       .Reset(s_LOGISIM_NET_46),
                       .Tick(1'b1),
                       .cs(1'b1),
                       .pre(1'b0));

   Multiplexer_bus_2 #(.NrOfBits(2))
      MUX_1 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_8[1:0]),
             .MuxIn_1(s_LOGISIM_BUS_31[1:0]),
             .MuxOut(s_LOGISIM_BUS_65[1:0]),
             .Sel(s_LOGISIM_NET_66));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(1))
      REGISTER_FILE_3 (.Clock(s_LOGISIM_NET_39),
                       .ClockEnable(1'b1),
                       .D(s_LOGISIM_NET_14),
                       .Q(s_LOGISIM_BUS_61[1]),
                       .Reset(s_LOGISIM_NET_46),
                       .Tick(1'b1),
                       .cs(1'b1),
                       .pre(1'b0));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(1))
      REGISTER_FILE_4 (.Clock(s_LOGISIM_NET_71),
                       .ClockEnable(1'b1),
                       .D(s_LOGISIM_NET_1),
                       .Q(s_LOGISIM_NET_55),
                       .Reset(s_LOGISIM_BUS_61[2]),
                       .Tick(1'b1),
                       .cs(1'b1),
                       .pre(1'b0));

   Comparator #(.NrOfBits(32),
                .TwosComplement(1))
      Comparator_1 (.A_EQ_B(s_LOGISIM_NET_42),
                    .A_GT_B(),
                    .A_LT_B(),
                    .DataA(s_LOGISIM_BUS_60[31:0]),
                    .DataB(s_LOGISIM_BUS_54[31:0]));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_5 (.Clock(s_LOGISIM_NET_39),
                       .ClockEnable(s_LOGISIM_NET_6),
                       .D(s_LOGISIM_BUS_62[31:0]),
                       .Q(s_LOGISIM_BUS_25[31:0]),
                       .Reset(s_LOGISIM_NET_46),
                       .Tick(1'b1),
                       .cs(1'b1),
                       .pre(1'b0));

   Priority_Encoder #(.NrOfInputBits(4),
                      .NrOfSelectBits(2))
      PRIENC_1 (.Address(s_LOGISIM_BUS_76[1:0]),
                .EnableOut(s_LOGISIM_NET_59),
                .GroupSelect(),
                .enable(1'b1),
                .input_vector({s_LOGISIM_BUS_51[2],
                               s_LOGISIM_BUS_51[1],
                               s_LOGISIM_BUS_51[0],
                               1'b0}));

   Decoder_4      DECODER_1 (.DecoderOut_0(),
                             .DecoderOut_1(s_LOGISIM_BUS_9[0]),
                             .DecoderOut_2(s_LOGISIM_BUS_9[1]),
                             .DecoderOut_3(s_LOGISIM_BUS_9[2]),
                             .Enable(1'b1),
                             .Sel(s_LOGISIM_BUS_8[1:0]));

   OR_GATE #(.BubblesMask(0))
      GATE_2 (.Input_1(s_LOGISIM_BUS_61[2]),
              .Input_2(s_LOGISIM_NET_55),
              .Result(s_LOGISIM_NET_44));

   Multiplexer_bus_2 #(.NrOfBits(2))
      MUX_2 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_76[1:0]),
             .MuxIn_1(s_LOGISIM_BUS_28[1:0]),
             .MuxOut(s_LOGISIM_BUS_33[1:0]),
             .Sel(s_LOGISIM_NET_66));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_3 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_48[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_25[31:0]),
             .MuxOut(s_LOGISIM_BUS_26[31:0]),
             .Sel(s_LOGISIM_NET_66));

   NOT_GATE      GATE_3 (.Input_1(s_LOGISIM_NET_16),
                         .Result(s_LOGISIM_NET_22));

   OR_GATE #(.BubblesMask(0))
      GATE_4 (.Input_1(s_LOGISIM_NET_34),
              .Input_2(s_LOGISIM_BUS_61[1]),
              .Result(s_LOGISIM_NET_74));

   OR_GATE #(.BubblesMask(0))
      GATE_5 (.Input_1(s_LOGISIM_BUS_61[1]),
              .Input_2(s_LOGISIM_NET_34),
              .Result(s_LOGISIM_NET_69));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(1))
      REGISTER_FILE_6 (.Clock(s_LOGISIM_NET_45),
                       .ClockEnable(1'b1),
                       .D(s_LOGISIM_NET_1),
                       .Q(s_LOGISIM_NET_34),
                       .Reset(s_LOGISIM_BUS_61[1]),
                       .Tick(1'b1),
                       .cs(1'b1),
                       .pre(1'b0));

   OR_GATE #(.BubblesMask(0))
      GATE_6 (.Input_1(s_LOGISIM_NET_46),
              .Input_2(s_LOGISIM_NET_66),
              .Result(s_LOGISIM_NET_37));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_4 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_75[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_0[31:0]),
             .MuxOut(s_LOGISIM_BUS_35[31:0]),
             .Sel(s_LOGISIM_NET_66));

   Multiplexer_bus_2 #(.NrOfBits(3))
      MUX_5 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_19[2:0]),
             .MuxIn_1(s_LOGISIM_BUS_23[2:0]),
             .MuxOut(s_LOGISIM_BUS_4[2:0]),
             .Sel(s_LOGISIM_NET_66));

   OR_GATE #(.BubblesMask(0))
      GATE_7 (.Input_1(s_LOGISIM_NET_55),
              .Input_2(s_LOGISIM_BUS_61[2]),
              .Result(s_LOGISIM_NET_30));

   Multiplexer_2      MUX_6 (.Enable(1'b1),
                             .MuxIn_0(s_LOGISIM_NET_70),
                             .MuxIn_1(s_LOGISIM_NET_67),
                             .MuxOut(s_LOGISIM_NET_17),
                             .Sel(s_LOGISIM_NET_73));

   REGISTER_FLIP_FLOP_INT #(.ActiveLevel(1),
                            .NrOfBits(2))
      REGISTER_FILE_7 (.Clock(s_LOGISIM_NET_39),
                       .ClockEnable(s_LOGISIM_NET_10),
                       .D(s_LOGISIM_BUS_33[1:0]),
                       .Q(s_LOGISIM_BUS_8[1:0]),
                       .Reset(s_LOGISIM_NET_46),
                       .Tick(1'b1),
                       .cs(1'b1),
                       .pre(1'b0));

   Multiplexer_bus_2 #(.NrOfBits(2))
      MUX_7 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_28[1:0]),
             .MuxIn_1(s_LOGISIM_BUS_64[1:0]),
             .MuxOut(s_LOGISIM_BUS_32[1:0]),
             .Sel(s_LOGISIM_NET_66));

   Multiplexer_bus_2 #(.NrOfBits(3))
      MUX_8 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_13[2:0]),
             .MuxIn_1(s_LOGISIM_BUS_18[2:0]),
             .MuxOut(s_LOGISIM_BUS_57[2:0]),
             .Sel(s_LOGISIM_NET_66));

   OR_GATE #(.BubblesMask(0))
      GATE_8 (.Input_1(s_LOGISIM_NET_68),
              .Input_2(s_LOGISIM_NET_66),
              .Result(s_LOGISIM_NET_6));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_9 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_0[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_27[31:0]),
             .MuxOut(s_LOGISIM_BUS_62[31:0]),
             .Sel(s_LOGISIM_NET_66));

   REGISTER_FLIP_FLOP_INM #(.ActiveLevel(1),
                            .NrOfBits(3))
      REGISTER_FILE_8 (.Clock(s_LOGISIM_NET_39),
                       .ClockEnable(s_LOGISIM_NET_52),
                       .D(s_LOGISIM_BUS_57[2:0]),
                       .Q(s_LOGISIM_BUS_19[2:0]),
                       .Reset(s_LOGISIM_NET_46),
                       .Tick(1'b1),
                       .cs(1'b1),
                       .pre(1'b0));

   NOT_GATE      GATE_9 (.Input_1(s_LOGISIM_NET_42),
                         .Result(s_LOGISIM_NET_36));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(1))
      REGISTER_FILE_9 (.Clock(s_LOGISIM_NET_39),
                       .ClockEnable(1'b1),
                       .D(s_LOGISIM_NET_17),
                       .Q(s_LOGISIM_NET_16),
                       .Reset(s_LOGISIM_NET_37),
                       .Tick(1'b1),
                       .cs(1'b1),
                       .pre(1'b0));

   AND_GATE_BUS #(.BubblesMask(0),
                  .NrOfBits(3))
      GATE_10 (.Input_1(s_LOGISIM_BUS_9[2:0]),
               .Input_2(s_LOGISIM_BUS_43[2:0]),
               .Result(s_LOGISIM_BUS_50[2:0]));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(1))
      REGISTER_FILE_10 (.Clock(s_LOGISIM_NET_39),
                        .ClockEnable(1'b1),
                        .D(s_LOGISIM_NET_38),
                        .Q(s_LOGISIM_BUS_61[2]),
                        .Reset(s_LOGISIM_NET_46),
                        .Tick(1'b1),
                        .cs(1'b1),
                        .pre(1'b0));

   AND_GATE #(.BubblesMask(2))
      GATE_11 (.Input_1(s_LOGISIM_NET_74),
               .Input_2(s_LOGISIM_BUS_50[1]),
               .Result(s_LOGISIM_NET_14));

   OR_GATE #(.BubblesMask(0))
      GATE_12 (.Input_1(s_LOGISIM_BUS_61[0]),
               .Input_2(s_LOGISIM_NET_5),
               .Result(s_LOGISIM_NET_56));

   AND_GATE #(.BubblesMask(2))
      GATE_13 (.Input_1(s_LOGISIM_NET_63),
               .Input_2(s_LOGISIM_BUS_50[0]),
               .Result(s_LOGISIM_NET_11));

   Multiplexer_2      MUX_10 (.Enable(1'b1),
                              .MuxIn_0(s_LOGISIM_NET_16),
                              .MuxIn_1(s_LOGISIM_NET_1),
                              .MuxOut(s_LOGISIM_NET_70),
                              .Sel(s_LOGISIM_NET_40));

   REGISTER_FLIP_FLOP_EPC_Top #(.ActiveLevel(1),
                                .NrOfBits(32))
      REGISTER_FILE_11 (.Clock(s_LOGISIM_NET_39),
                        .ClockEnable(s_LOGISIM_NET_6),
                        .D(s_LOGISIM_BUS_35[31:0]),
                        .Q(s_LOGISIM_BUS_48[31:0]),
                        .Reset(s_LOGISIM_NET_46),
                        .Tick(1'b1),
                        .cs(1'b1),
                        .pre(1'b0));

   OR_GATE #(.BubblesMask(0))
      GATE_14 (.Input_1(s_LOGISIM_NET_47),
               .Input_2(s_LOGISIM_NET_68),
               .Result(s_LOGISIM_NET_40));

   Multiplexer_bus_4 #(.NrOfBits(3))
      MUX_11 (.Enable(1'b1),
              .MuxIn_0(s_LOGISIM_BUS_20[2:0]),
              .MuxIn_1(s_LOGISIM_BUS_24[2:0]),
              .MuxIn_2(s_LOGISIM_BUS_41[2:0]),
              .MuxIn_3(s_LOGISIM_BUS_49[2:0]),
              .MuxOut(s_LOGISIM_BUS_13[2:0]),
              .Sel(s_LOGISIM_BUS_76[1:0]));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(3))
      REGISTER_FILE_12 (.Clock(s_LOGISIM_NET_39),
                        .ClockEnable(s_LOGISIM_NET_52),
                        .D(s_LOGISIM_BUS_58[2:0]),
                        .Q(s_LOGISIM_BUS_23[2:0]),
                        .Reset(s_LOGISIM_NET_46),
                        .Tick(1'b1),
                        .cs(1'b1),
                        .pre(1'b0));

   Multiplexer_bus_2 #(.NrOfBits(3))
      MUX_12 (.Enable(1'b1),
              .MuxIn_0(s_LOGISIM_BUS_18[2:0]),
              .MuxIn_1(s_LOGISIM_BUS_12[2:0]),
              .MuxOut(s_LOGISIM_BUS_58[2:0]),
              .Sel(s_LOGISIM_NET_66));

   OR_GATE #(.BubblesMask(0))
      GATE_15 (.Input_1(s_LOGISIM_NET_68),
               .Input_2(s_LOGISIM_NET_66),
               .Result(s_LOGISIM_NET_10));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(3))
      REGISTER_FILE_13 (.Clock(s_LOGISIM_NET_39),
                        .ClockEnable(s_LOGISIM_NET_52),
                        .D(s_LOGISIM_BUS_4[2:0]),
                        .Q(s_LOGISIM_BUS_18[2:0]),
                        .Reset(s_LOGISIM_NET_46),
                        .Tick(1'b1),
                        .cs(1'b1),
                        .pre(1'b0));

   OR_GATE #(.BubblesMask(0))
      GATE_16 (.Input_1(s_LOGISIM_NET_5),
               .Input_2(s_LOGISIM_BUS_61[0]),
               .Result(s_LOGISIM_NET_63));

   NOT_GATE_BUS #(.NrOfBits(3))
      GATE_17 (.Input_1(s_LOGISIM_BUS_19[2:0]),
               .Result(s_LOGISIM_BUS_53[2:0]));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(1))
      REGISTER_FILE_14 (.Clock(s_LOGISIM_NET_72),
                        .ClockEnable(1'b1),
                        .D(s_LOGISIM_NET_1),
                        .Q(s_LOGISIM_NET_5),
                        .Reset(s_LOGISIM_BUS_61[0]),
                        .Tick(1'b1),
                        .cs(1'b1),
                        .pre(1'b0));

   AND_GATE #(.BubblesMask(2))
      GATE_18 (.Input_1(s_LOGISIM_NET_30),
               .Input_2(s_LOGISIM_BUS_50[2]),
               .Result(s_LOGISIM_NET_38));

   OR_GATE #(.BubblesMask(0))
      GATE_19 (.Input_1(s_LOGISIM_NET_68),
               .Input_2(s_LOGISIM_NET_66),
               .Result(s_LOGISIM_NET_52));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(1))
      REGISTER_FILE_15 (.Clock(s_LOGISIM_NET_39),
                        .ClockEnable(1'b1),
                        .D(s_LOGISIM_NET_11),
                        .Q(s_LOGISIM_BUS_61[0]),
                        .Reset(s_LOGISIM_NET_46),
                        .Tick(1'b1),
                        .cs(1'b1),
                        .pre(1'b0));

   AND_GATE_BUS #(.BubblesMask(0),
                  .NrOfBits(3))
      GATE_20 (.Input_1(s_LOGISIM_BUS_61[2:0]),
               .Input_2(s_LOGISIM_BUS_53[2:0]),
               .Result(s_LOGISIM_BUS_51[2:0]));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_16 (.Clock(s_LOGISIM_NET_39),
                        .ClockEnable(s_LOGISIM_NET_6),
                        .D(s_LOGISIM_BUS_26[31:0]),
                        .Q(s_LOGISIM_BUS_0[31:0]),
                        .Reset(s_LOGISIM_NET_46),
                        .Tick(1'b1),
                        .cs(1'b1),
                        .pre(1'b0));



endmodule
