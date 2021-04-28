/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : BTB                                                          **
 **                                                                          **
 ******************************************************************************/

`timescale 1ns/1ps
module BTB( BranchAddr,
            BranchSig,
            Branched,
            CLK,
            EX_PC,
            IF_PC,
            LOGISIM_CLOCK_TREE_0,
            JumpAddr,
            PredictJump);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input[31:0]  BranchAddr;
   input  BranchSig;
   input  Branched;
   input  CLK;
   input[31:0]  EX_PC;
   input[31:0]  IF_PC;
   input[4:0]  LOGISIM_CLOCK_TREE_0;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output[31:0] JumpAddr;
   output PredictJump;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire[15:0] s_LOGISIM_BUS_0;
   wire[15:0] s_LOGISIM_BUS_1;
   wire[31:0] s_LOGISIM_BUS_101;
   wire[31:0] s_LOGISIM_BUS_103;
   wire[31:0] s_LOGISIM_BUS_106;
   wire[15:0] s_LOGISIM_BUS_109;
   wire[2:0] s_LOGISIM_BUS_114;
   wire[2:0] s_LOGISIM_BUS_116;
   wire[31:0] s_LOGISIM_BUS_118;
   wire[2:0] s_LOGISIM_BUS_119;
   wire[15:0] s_LOGISIM_BUS_121;
   wire[15:0] s_LOGISIM_BUS_125;
   wire[15:0] s_LOGISIM_BUS_128;
   wire[2:0] s_LOGISIM_BUS_129;
   wire[15:0] s_LOGISIM_BUS_13;
   wire[15:0] s_LOGISIM_BUS_132;
   wire[2:0] s_LOGISIM_BUS_133;
   wire[2:0] s_LOGISIM_BUS_142;
   wire[2:0] s_LOGISIM_BUS_146;
   wire[2:0] s_LOGISIM_BUS_156;
   wire[2:0] s_LOGISIM_BUS_159;
   wire[2:0] s_LOGISIM_BUS_162;
   wire[2:0] s_LOGISIM_BUS_176;
   wire[31:0] s_LOGISIM_BUS_18;
   wire[15:0] s_LOGISIM_BUS_182;
   wire[15:0] s_LOGISIM_BUS_183;
   wire[15:0] s_LOGISIM_BUS_184;
   wire[15:0] s_LOGISIM_BUS_185;
   wire[15:0] s_LOGISIM_BUS_186;
   wire[15:0] s_LOGISIM_BUS_187;
   wire[15:0] s_LOGISIM_BUS_188;
   wire[15:0] s_LOGISIM_BUS_189;
   wire[15:0] s_LOGISIM_BUS_24;
   wire[15:0] s_LOGISIM_BUS_25;
   wire[31:0] s_LOGISIM_BUS_26;
   wire[2:0] s_LOGISIM_BUS_29;
   wire[31:0] s_LOGISIM_BUS_3;
   wire[15:0] s_LOGISIM_BUS_30;
   wire[31:0] s_LOGISIM_BUS_32;
   wire[2:0] s_LOGISIM_BUS_35;
   wire[15:0] s_LOGISIM_BUS_36;
   wire[15:0] s_LOGISIM_BUS_38;
   wire[2:0] s_LOGISIM_BUS_39;
   wire[31:0] s_LOGISIM_BUS_42;
   wire[15:0] s_LOGISIM_BUS_50;
   wire[31:0] s_LOGISIM_BUS_52;
   wire[15:0] s_LOGISIM_BUS_54;
   wire[31:0] s_LOGISIM_BUS_55;
   wire[15:0] s_LOGISIM_BUS_57;
   wire[31:0] s_LOGISIM_BUS_6;
   wire[2:0] s_LOGISIM_BUS_60;
   wire[31:0] s_LOGISIM_BUS_61;
   wire[31:0] s_LOGISIM_BUS_65;
   wire[15:0] s_LOGISIM_BUS_68;
   wire[2:0] s_LOGISIM_BUS_69;
   wire[31:0] s_LOGISIM_BUS_70;
   wire[15:0] s_LOGISIM_BUS_78;
   wire[31:0] s_LOGISIM_BUS_8;
   wire[31:0] s_LOGISIM_BUS_80;
   wire[31:0] s_LOGISIM_BUS_85;
   wire[31:0] s_LOGISIM_BUS_89;
   wire[31:0] s_LOGISIM_BUS_90;
   wire[2:0] s_LOGISIM_BUS_92;
   wire[15:0] s_LOGISIM_BUS_93;
   wire[15:0] s_LOGISIM_BUS_94;
   wire[15:0] s_LOGISIM_BUS_95;
   wire[15:0] s_LOGISIM_BUS_99;
   wire s_LOGISIM_NET_10;
   wire s_LOGISIM_NET_100;
   wire s_LOGISIM_NET_102;
   wire s_LOGISIM_NET_104;
   wire s_LOGISIM_NET_105;
   wire s_LOGISIM_NET_107;
   wire s_LOGISIM_NET_108;
   wire s_LOGISIM_NET_11;
   wire s_LOGISIM_NET_110;
   wire s_LOGISIM_NET_111;
   wire s_LOGISIM_NET_112;
   wire s_LOGISIM_NET_113;
   wire s_LOGISIM_NET_115;
   wire s_LOGISIM_NET_117;
   wire s_LOGISIM_NET_12;
   wire s_LOGISIM_NET_120;
   wire s_LOGISIM_NET_122;
   wire s_LOGISIM_NET_123;
   wire s_LOGISIM_NET_124;
   wire s_LOGISIM_NET_126;
   wire s_LOGISIM_NET_127;
   wire s_LOGISIM_NET_130;
   wire s_LOGISIM_NET_131;
   wire s_LOGISIM_NET_134;
   wire s_LOGISIM_NET_135;
   wire s_LOGISIM_NET_136;
   wire s_LOGISIM_NET_137;
   wire s_LOGISIM_NET_138;
   wire s_LOGISIM_NET_139;
   wire s_LOGISIM_NET_14;
   wire s_LOGISIM_NET_140;
   wire s_LOGISIM_NET_141;
   wire s_LOGISIM_NET_143;
   wire s_LOGISIM_NET_144;
   wire s_LOGISIM_NET_145;
   wire s_LOGISIM_NET_147;
   wire s_LOGISIM_NET_148;
   wire s_LOGISIM_NET_149;
   wire s_LOGISIM_NET_15;
   wire s_LOGISIM_NET_150;
   wire s_LOGISIM_NET_151;
   wire s_LOGISIM_NET_152;
   wire s_LOGISIM_NET_153;
   wire s_LOGISIM_NET_154;
   wire s_LOGISIM_NET_155;
   wire s_LOGISIM_NET_157;
   wire s_LOGISIM_NET_158;
   wire s_LOGISIM_NET_16;
   wire s_LOGISIM_NET_160;
   wire s_LOGISIM_NET_161;
   wire s_LOGISIM_NET_163;
   wire s_LOGISIM_NET_164;
   wire s_LOGISIM_NET_165;
   wire s_LOGISIM_NET_166;
   wire s_LOGISIM_NET_167;
   wire s_LOGISIM_NET_168;
   wire s_LOGISIM_NET_169;
   wire s_LOGISIM_NET_17;
   wire s_LOGISIM_NET_170;
   wire s_LOGISIM_NET_171;
   wire s_LOGISIM_NET_172;
   wire s_LOGISIM_NET_173;
   wire s_LOGISIM_NET_174;
   wire s_LOGISIM_NET_175;
   wire s_LOGISIM_NET_177;
   wire s_LOGISIM_NET_178;
   wire s_LOGISIM_NET_179;
   wire s_LOGISIM_NET_180;
   wire s_LOGISIM_NET_181;
   wire s_LOGISIM_NET_19;
   wire s_LOGISIM_NET_2;
   wire s_LOGISIM_NET_20;
   wire s_LOGISIM_NET_21;
   wire s_LOGISIM_NET_22;
   wire s_LOGISIM_NET_23;
   wire s_LOGISIM_NET_27;
   wire s_LOGISIM_NET_28;
   wire s_LOGISIM_NET_31;
   wire s_LOGISIM_NET_33;
   wire s_LOGISIM_NET_34;
   wire s_LOGISIM_NET_37;
   wire s_LOGISIM_NET_4;
   wire s_LOGISIM_NET_40;
   wire s_LOGISIM_NET_41;
   wire s_LOGISIM_NET_43;
   wire s_LOGISIM_NET_44;
   wire s_LOGISIM_NET_45;
   wire s_LOGISIM_NET_46;
   wire s_LOGISIM_NET_47;
   wire s_LOGISIM_NET_48;
   wire s_LOGISIM_NET_49;
   wire s_LOGISIM_NET_5;
   wire s_LOGISIM_NET_51;
   wire s_LOGISIM_NET_53;
   wire s_LOGISIM_NET_56;
   wire s_LOGISIM_NET_58;
   wire s_LOGISIM_NET_59;
   wire s_LOGISIM_NET_62;
   wire s_LOGISIM_NET_63;
   wire s_LOGISIM_NET_64;
   wire s_LOGISIM_NET_66;
   wire s_LOGISIM_NET_67;
   wire s_LOGISIM_NET_7;
   wire s_LOGISIM_NET_71;
   wire s_LOGISIM_NET_72;
   wire s_LOGISIM_NET_73;
   wire s_LOGISIM_NET_74;
   wire s_LOGISIM_NET_75;
   wire s_LOGISIM_NET_76;
   wire s_LOGISIM_NET_77;
   wire s_LOGISIM_NET_79;
   wire s_LOGISIM_NET_81;
   wire s_LOGISIM_NET_82;
   wire s_LOGISIM_NET_83;
   wire s_LOGISIM_NET_84;
   wire s_LOGISIM_NET_86;
   wire s_LOGISIM_NET_87;
   wire s_LOGISIM_NET_88;
   wire s_LOGISIM_NET_9;
   wire s_LOGISIM_NET_91;
   wire s_LOGISIM_NET_96;
   wire s_LOGISIM_NET_97;
   wire s_LOGISIM_NET_98;


   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_BUS_18[31:0]             = BranchAddr;
   assign s_LOGISIM_NET_81                   = Branched;
   assign s_LOGISIM_BUS_3[31:0]              = EX_PC;
   assign s_LOGISIM_BUS_6[31:0]              = IF_PC;
   assign s_LOGISIM_NET_74                   = BranchSig;
   assign s_LOGISIM_NET_12                   = CLK;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign JumpAddr                           = s_LOGISIM_BUS_8[31:0];
   assign PredictJump                        = s_LOGISIM_NET_180;

   /***************************************************************************
    ** Here all in-lined components are defined                              **
    ***************************************************************************/
   assign s_LOGISIM_BUS_60[2:0] = 3'd7;

   assign s_LOGISIM_BUS_186[15:0] = 16'd0;

   assign s_LOGISIM_BUS_162[2:0] = 3'd4;

   assign s_LOGISIM_BUS_114[2:0] = 3'd5;

   assign s_LOGISIM_BUS_176[2:0] = 3'd2;

   assign s_LOGISIM_BUS_182[15:0] = 16'd0;

   assign s_LOGISIM_BUS_159[2:0] = 3'd1;

   assign s_LOGISIM_BUS_39[2:0] = 3'd0;

   assign s_LOGISIM_BUS_142[2:0] = 3'd3;

   assign s_LOGISIM_BUS_184[15:0] = 16'd0;

   assign s_LOGISIM_BUS_183[15:0] = 16'd0;

   assign s_LOGISIM_BUS_188[15:0] = 16'd0;

   assign s_LOGISIM_BUS_185[15:0] = 16'd0;

   assign s_LOGISIM_NET_163 = 1'd1;

   assign s_LOGISIM_BUS_187[15:0] = 16'd0;

   assign s_LOGISIM_BUS_146[2:0] = 3'd6;

   assign s_LOGISIM_BUS_189[15:0] = 16'd0;


   /***************************************************************************
    ** Here all normal components are defined                                **
    ***************************************************************************/
   AND_GATE #(.BubblesMask(0))
      GATE_1 (.Input_1(s_LOGISIM_NET_175),
              .Input_2(s_LOGISIM_NET_168),
              .Result(s_LOGISIM_NET_158));

   Comparator #(.NrOfBits(32),
                .TwosComplement(1))
      Comparator_1 (.A_EQ_B(s_LOGISIM_NET_157),
                    .A_GT_B(),
                    .A_LT_B(),
                    .DataA(s_LOGISIM_BUS_101[31:0]),
                    .DataB(s_LOGISIM_BUS_6[31:0]));

   OR_GATE #(.BubblesMask(0))
      GATE_2 (.Input_1(s_LOGISIM_NET_164),
              .Input_2(s_LOGISIM_NET_17),
              .Result(s_LOGISIM_NET_48));

   Multiplexer_2      MUX_1 (.Enable(1'b1),
                             .MuxIn_0(s_LOGISIM_NET_73),
                             .MuxIn_1(s_LOGISIM_NET_46),
                             .MuxOut(s_LOGISIM_NET_165),
                             .Sel(s_LOGISIM_NET_15));

   Multiplexer_2      MUX_2 (.Enable(1'b1),
                             .MuxIn_0(s_LOGISIM_NET_43),
                             .MuxIn_1(s_LOGISIM_NET_45),
                             .MuxOut(s_LOGISIM_NET_115),
                             .Sel(s_LOGISIM_NET_15));

   LogisimCounter #(.ClkEdge(1),
                    .max_val(65535),
                    .mode(0),
                    .width(16))
      COUNTER_1 (.ClockEnable(1'b1),
                 .CompareOut(),
                 .CountValue(s_LOGISIM_BUS_54[15:0]),
                 .Enable(1'b1),
                 .GlobalClock(s_LOGISIM_NET_12),
                 .LoadData(s_LOGISIM_BUS_78[15:0]),
                 .Up_n_Down(1'b1),
                 .clear(1'b0),
                 .load(s_LOGISIM_NET_7),
                 .pre(1'b0));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(1))
      REGISTER_FILE_1 (.Clock(s_LOGISIM_NET_12),
                       .ClockEnable(s_LOGISIM_NET_10),
                       .D(s_LOGISIM_NET_10),
                       .Q(s_LOGISIM_NET_140),
                       .Reset(1'b0),
                       .Tick(1'b1),
                       .cs(1'b1),
                       .pre(1'b0));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(1))
      REGISTER_FILE_2 (.Clock(s_LOGISIM_NET_12),
                       .ClockEnable(s_LOGISIM_NET_53),
                       .D(s_LOGISIM_NET_53),
                       .Q(s_LOGISIM_NET_153),
                       .Reset(1'b0),
                       .Tick(1'b1),
                       .cs(1'b1),
                       .pre(1'b0));

   OR_GATE_8_INPUTS #(.BubblesMask(0))
      GATE_3 (.Input_1(s_LOGISIM_NET_158),
              .Input_2(s_LOGISIM_NET_47),
              .Input_3(s_LOGISIM_NET_138),
              .Input_4(s_LOGISIM_NET_174),
              .Input_5(s_LOGISIM_NET_167),
              .Input_6(s_LOGISIM_NET_160),
              .Input_7(s_LOGISIM_NET_77),
              .Input_8(s_LOGISIM_NET_143),
              .Result(s_LOGISIM_NET_171));

   Multiplexer_2      MUX_3 (.Enable(1'b1),
                             .MuxIn_0(s_LOGISIM_NET_41),
                             .MuxIn_1(s_LOGISIM_NET_22),
                             .MuxOut(s_LOGISIM_NET_144),
                             .Sel(s_LOGISIM_NET_15));

   AND_GATE #(.BubblesMask(0))
      GATE_4 (.Input_1(s_LOGISIM_NET_140),
              .Input_2(s_LOGISIM_NET_130),
              .Result(s_LOGISIM_NET_167));

   Multiplexer_2      MUX_4 (.Enable(1'b1),
                             .MuxIn_0(s_LOGISIM_NET_134),
                             .MuxIn_1(s_LOGISIM_NET_44),
                             .MuxOut(s_LOGISIM_NET_63),
                             .Sel(s_LOGISIM_NET_15));

   Multiplexer_bus_2 #(.NrOfBits(16))
      MUX_5 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_0[15:0]),
             .MuxIn_1(s_LOGISIM_BUS_187[15:0]),
             .MuxOut(s_LOGISIM_BUS_13[15:0]),
             .Sel(s_LOGISIM_NET_59));

   AND_GATE #(.BubblesMask(0))
      GATE_5 (.Input_1(s_LOGISIM_NET_83),
              .Input_2(s_LOGISIM_NET_76),
              .Result(s_LOGISIM_NET_122));

   OR_GATE #(.BubblesMask(0))
      GATE_6 (.Input_1(s_LOGISIM_NET_166),
              .Input_2(s_LOGISIM_NET_28),
              .Result(s_LOGISIM_NET_59));

   Comparator #(.NrOfBits(32),
                .TwosComplement(1))
      Comparator_2 (.A_EQ_B(s_LOGISIM_NET_117),
                    .A_GT_B(),
                    .A_LT_B(),
                    .DataA(s_LOGISIM_BUS_3[31:0]),
                    .DataB(s_LOGISIM_BUS_89[31:0]));

   Comparator #(.NrOfBits(32),
                .TwosComplement(1))
      Comparator_3 (.A_EQ_B(s_LOGISIM_NET_127),
                    .A_GT_B(),
                    .A_LT_B(),
                    .DataA(s_LOGISIM_BUS_18[31:0]),
                    .DataB(s_LOGISIM_BUS_106[31:0]));

   Priority_Encoder #(.NrOfInputBits(8),
                      .NrOfSelectBits(3))
      PRIENC_1 (.Address(s_LOGISIM_BUS_35[2:0]),
                .EnableOut(),
                .GroupSelect(),
                .enable(1'b1),
                .input_vector({s_LOGISIM_NET_143,
                               s_LOGISIM_NET_77,
                               s_LOGISIM_NET_160,
                               s_LOGISIM_NET_167,
                               s_LOGISIM_NET_174,
                               s_LOGISIM_NET_138,
                               s_LOGISIM_NET_47,
                               s_LOGISIM_NET_158}));

   LogisimCounter #(.ClkEdge(1),
                    .max_val(65535),
                    .mode(0),
                    .width(16))
      COUNTER_2 (.ClockEnable(1'b1),
                 .CompareOut(),
                 .CountValue(s_LOGISIM_BUS_38[15:0]),
                 .Enable(1'b1),
                 .GlobalClock(s_LOGISIM_NET_12),
                 .LoadData(s_LOGISIM_BUS_68[15:0]),
                 .Up_n_Down(1'b1),
                 .clear(1'b0),
                 .load(s_LOGISIM_NET_48),
                 .pre(1'b0));

   AND_GATE #(.BubblesMask(0))
      GATE_7 (.Input_1(s_LOGISIM_NET_83),
              .Input_2(s_LOGISIM_NET_169),
              .Result(s_LOGISIM_NET_160));

   AND_GATE_3_INPUTS #(.BubblesMask(0))
      GATE_8 (.Input_1(s_LOGISIM_NET_87),
              .Input_2(s_LOGISIM_NET_16),
              .Input_3(s_LOGISIM_NET_63),
              .Result(s_LOGISIM_NET_5));

   Comparator #(.NrOfBits(32),
                .TwosComplement(1))
      Comparator_4 (.A_EQ_B(s_LOGISIM_NET_97),
                    .A_GT_B(),
                    .A_LT_B(),
                    .DataA(s_LOGISIM_BUS_3[31:0]),
                    .DataB(s_LOGISIM_BUS_61[31:0]));

   OR_GATE #(.BubblesMask(0))
      GATE_9 (.Input_1(s_LOGISIM_NET_152),
              .Input_2(s_LOGISIM_NET_5),
              .Result(s_LOGISIM_NET_79));

   Comparator #(.NrOfBits(32),
                .TwosComplement(1))
      Comparator_5 (.A_EQ_B(s_LOGISIM_NET_19),
                    .A_GT_B(),
                    .A_LT_B(),
                    .DataA(s_LOGISIM_BUS_18[31:0]),
                    .DataB(s_LOGISIM_BUS_90[31:0]));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_3 (.Clock(s_LOGISIM_NET_12),
                       .ClockEnable(s_LOGISIM_NET_53),
                       .D(s_LOGISIM_BUS_3[31:0]),
                       .Q(s_LOGISIM_BUS_61[31:0]),
                       .Reset(1'b0),
                       .Tick(1'b1),
                       .cs(1'b1),
                       .pre(1'b0));

   LogisimCounter #(.ClkEdge(1),
                    .max_val(65535),
                    .mode(0),
                    .width(16))
      COUNTER_3 (.ClockEnable(1'b1),
                 .CompareOut(),
                 .CountValue(s_LOGISIM_BUS_57[15:0]),
                 .Enable(1'b1),
                 .GlobalClock(s_LOGISIM_NET_12),
                 .LoadData(s_LOGISIM_BUS_121[15:0]),
                 .Up_n_Down(1'b1),
                 .clear(1'b0),
                 .load(s_LOGISIM_NET_66),
                 .pre(1'b0));

   AND_GATE_3_INPUTS #(.BubblesMask(0))
      GATE_10 (.Input_1(s_LOGISIM_NET_87),
               .Input_2(s_LOGISIM_NET_16),
               .Input_3(s_LOGISIM_NET_110),
               .Result(s_LOGISIM_NET_17));

   AND_GATE_3_INPUTS #(.BubblesMask(0))
      GATE_11 (.Input_1(s_LOGISIM_NET_87),
               .Input_2(s_LOGISIM_NET_16),
               .Input_3(s_LOGISIM_NET_165),
               .Result(s_LOGISIM_NET_23));

   AND_GATE #(.BubblesMask(0))
      GATE_12 (.Input_1(s_LOGISIM_NET_175),
               .Input_2(s_LOGISIM_NET_64),
               .Result(s_LOGISIM_NET_58));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(1))
      REGISTER_FILE_4 (.Clock(s_LOGISIM_NET_12),
                       .ClockEnable(s_LOGISIM_NET_40),
                       .D(s_LOGISIM_NET_40),
                       .Q(s_LOGISIM_NET_179),
                       .Reset(1'b0),
                       .Tick(1'b1),
                       .cs(1'b1),
                       .pre(1'b0));

   Comparator #(.NrOfBits(32),
                .TwosComplement(1))
      Comparator_6 (.A_EQ_B(s_LOGISIM_NET_168),
                    .A_GT_B(),
                    .A_LT_B(),
                    .DataA(s_LOGISIM_BUS_55[31:0]),
                    .DataB(s_LOGISIM_BUS_6[31:0]));

   AND_GATE #(.BubblesMask(0))
      GATE_13 (.Input_1(s_LOGISIM_NET_171),
               .Input_2(s_LOGISIM_NET_167),
               .Result(s_LOGISIM_NET_120));

   Comparator #(.NrOfBits(32),
                .TwosComplement(1))
      Comparator_7 (.A_EQ_B(s_LOGISIM_NET_181),
                    .A_GT_B(),
                    .A_LT_B(),
                    .DataA(s_LOGISIM_BUS_26[31:0]),
                    .DataB(s_LOGISIM_BUS_6[31:0]));

   LogisimCounter #(.ClkEdge(1),
                    .max_val(65535),
                    .mode(0),
                    .width(16))
      COUNTER_4 (.ClockEnable(1'b1),
                 .CompareOut(),
                 .CountValue(s_LOGISIM_BUS_25[15:0]),
                 .Enable(1'b1),
                 .GlobalClock(s_LOGISIM_NET_12),
                 .LoadData(s_LOGISIM_BUS_132[15:0]),
                 .Up_n_Down(1'b1),
                 .clear(1'b0),
                 .load(s_LOGISIM_NET_98),
                 .pre(1'b0));

   LogisimCounter #(.ClkEdge(1),
                    .max_val(65535),
                    .mode(0),
                    .width(16))
      COUNTER_5 (.ClockEnable(1'b1),
                 .CompareOut(),
                 .CountValue(s_LOGISIM_BUS_50[15:0]),
                 .Enable(1'b1),
                 .GlobalClock(s_LOGISIM_NET_12),
                 .LoadData(s_LOGISIM_BUS_128[15:0]),
                 .Up_n_Down(1'b1),
                 .clear(1'b0),
                 .load(s_LOGISIM_NET_86),
                 .pre(1'b0));

   Priority_Encoder #(.NrOfInputBits(8),
                      .NrOfSelectBits(3))
      PRIENC_2 (.Address(s_LOGISIM_BUS_92[2:0]),
                .EnableOut(),
                .GroupSelect(s_LOGISIM_NET_15),
                .enable(s_LOGISIM_NET_163),
                .input_vector({s_LOGISIM_NET_20,
                               s_LOGISIM_NET_11,
                               s_LOGISIM_NET_9,
                               s_LOGISIM_NET_2,
                               s_LOGISIM_NET_137,
                               s_LOGISIM_NET_104,
                               s_LOGISIM_NET_149,
                               s_LOGISIM_NET_34}));

   OR_GATE #(.BubblesMask(0))
      GATE_14 (.Input_1(s_LOGISIM_NET_111),
               .Input_2(s_LOGISIM_NET_151),
               .Result(s_LOGISIM_NET_180));

   Decoder_8      DECODER_1 (.DecoderOut_0(s_LOGISIM_NET_44),
                             .DecoderOut_1(s_LOGISIM_NET_46),
                             .DecoderOut_2(s_LOGISIM_NET_45),
                             .DecoderOut_3(s_LOGISIM_NET_37),
                             .DecoderOut_4(s_LOGISIM_NET_22),
                             .DecoderOut_5(s_LOGISIM_NET_84),
                             .DecoderOut_6(s_LOGISIM_NET_126),
                             .DecoderOut_7(s_LOGISIM_NET_155),
                             .Enable(1'b1),
                             .Sel(s_LOGISIM_BUS_92[2:0]));

   Multiplexer_bus_2 #(.NrOfBits(16))
      MUX_6 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_25[15:0]),
             .MuxIn_1(s_LOGISIM_BUS_182[15:0]),
             .MuxOut(s_LOGISIM_BUS_132[15:0]),
             .Sel(s_LOGISIM_NET_98));

   Comparator #(.NrOfBits(32),
                .TwosComplement(1))
      Comparator_8 (.A_EQ_B(s_LOGISIM_NET_51),
                    .A_GT_B(),
                    .A_LT_B(),
                    .DataA(s_LOGISIM_BUS_18[31:0]),
                    .DataB(s_LOGISIM_BUS_103[31:0]));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(1))
      REGISTER_FILE_5 (.Clock(s_LOGISIM_NET_12),
                       .ClockEnable(s_LOGISIM_NET_23),
                       .D(s_LOGISIM_NET_23),
                       .Q(s_LOGISIM_NET_173),
                       .Reset(1'b0),
                       .Tick(1'b1),
                       .cs(1'b1),
                       .pre(1'b0));

   Comparator #(.NrOfBits(32),
                .TwosComplement(1))
      Comparator_9 (.A_EQ_B(s_LOGISIM_NET_88),
                    .A_GT_B(),
                    .A_LT_B(),
                    .DataA(s_LOGISIM_BUS_61[31:0]),
                    .DataB(s_LOGISIM_BUS_6[31:0]));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(1))
      REGISTER_FILE_6 (.Clock(s_LOGISIM_NET_12),
                       .ClockEnable(s_LOGISIM_NET_5),
                       .D(s_LOGISIM_NET_5),
                       .Q(s_LOGISIM_NET_150),
                       .Reset(1'b0),
                       .Tick(1'b1),
                       .cs(1'b1),
                       .pre(1'b0));

   Comparator #(.NrOfBits(32),
                .TwosComplement(1))
      Comparator_10 (.A_EQ_B(s_LOGISIM_NET_96),
                     .A_GT_B(),
                     .A_LT_B(),
                     .DataA(s_LOGISIM_BUS_18[31:0]),
                     .DataB(s_LOGISIM_BUS_80[31:0]));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_7 (.Clock(s_LOGISIM_NET_12),
                       .ClockEnable(s_LOGISIM_NET_10),
                       .D(s_LOGISIM_BUS_18[31:0]),
                       .Q(s_LOGISIM_BUS_85[31:0]),
                       .Reset(1'b0),
                       .Tick(1'b1),
                       .cs(1'b1),
                       .pre(1'b0));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_8 (.Clock(s_LOGISIM_NET_12),
                       .ClockEnable(s_LOGISIM_NET_40),
                       .D(s_LOGISIM_BUS_3[31:0]),
                       .Q(s_LOGISIM_BUS_26[31:0]),
                       .Reset(1'b0),
                       .Tick(1'b1),
                       .cs(1'b1),
                       .pre(1'b0));

   Multiplexer_bus_2 #(.NrOfBits(16))
      MUX_7 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_50[15:0]),
             .MuxIn_1(s_LOGISIM_BUS_183[15:0]),
             .MuxOut(s_LOGISIM_BUS_128[15:0]),
             .Sel(s_LOGISIM_NET_86));

   AND_GATE #(.BubblesMask(0))
      GATE_15 (.Input_1(s_LOGISIM_NET_140),
               .Input_2(s_LOGISIM_NET_67),
               .Result(s_LOGISIM_NET_170));

   AND_GATE_3_INPUTS #(.BubblesMask(0))
      GATE_16 (.Input_1(s_LOGISIM_NET_87),
               .Input_2(s_LOGISIM_NET_16),
               .Input_3(s_LOGISIM_NET_49),
               .Result(s_LOGISIM_NET_75));

   Comparator #(.NrOfBits(32),
                .TwosComplement(1))
      Comparator_11 (.A_EQ_B(s_LOGISIM_NET_91),
                     .A_GT_B(),
                     .A_LT_B(),
                     .DataA(s_LOGISIM_BUS_18[31:0]),
                     .DataB(s_LOGISIM_BUS_32[31:0]));

   AND_GATE #(.BubblesMask(0))
      GATE_17 (.Input_1(s_LOGISIM_NET_173),
               .Input_2(s_LOGISIM_NET_105),
               .Result(s_LOGISIM_NET_139));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_9 (.Clock(s_LOGISIM_NET_12),
                       .ClockEnable(s_LOGISIM_NET_17),
                       .D(s_LOGISIM_BUS_18[31:0]),
                       .Q(s_LOGISIM_BUS_106[31:0]),
                       .Reset(1'b0),
                       .Tick(1'b1),
                       .cs(1'b1),
                       .pre(1'b0));

   Comparator #(.NrOfBits(32),
                .TwosComplement(1))
      Comparator_12 (.A_EQ_B(s_LOGISIM_NET_67),
                     .A_GT_B(),
                     .A_LT_B(),
                     .DataA(s_LOGISIM_BUS_3[31:0]),
                     .DataB(s_LOGISIM_BUS_118[31:0]));

   AND_GATE #(.BubblesMask(0))
      GATE_18 (.Input_1(s_LOGISIM_NET_171),
               .Input_2(s_LOGISIM_NET_160),
               .Result(s_LOGISIM_NET_166));

   Comparator #(.NrOfBits(32),
                .TwosComplement(1))
      Comparator_13 (.A_EQ_B(s_LOGISIM_NET_76),
                     .A_GT_B(),
                     .A_LT_B(),
                     .DataA(s_LOGISIM_BUS_3[31:0]),
                     .DataB(s_LOGISIM_BUS_65[31:0]));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(1))
      REGISTER_FILE_10 (.Clock(s_LOGISIM_NET_12),
                        .ClockEnable(s_LOGISIM_NET_75),
                        .D(s_LOGISIM_NET_75),
                        .Q(s_LOGISIM_NET_107),
                        .Reset(1'b0),
                        .Tick(1'b1),
                        .cs(1'b1),
                        .pre(1'b0));

   Multiplexer_bus_2 #(.NrOfBits(16))
      MUX_8 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_24[15:0]),
             .MuxIn_1(s_LOGISIM_BUS_184[15:0]),
             .MuxOut(s_LOGISIM_BUS_93[15:0]),
             .Sel(s_LOGISIM_NET_113));

   OR_GATE #(.BubblesMask(0))
      GATE_19 (.Input_1(s_LOGISIM_NET_148),
               .Input_2(s_LOGISIM_NET_75),
               .Result(s_LOGISIM_NET_66));

   Multiplexer_bus_2 #(.NrOfBits(16))
      MUX_9 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_38[15:0]),
             .MuxIn_1(s_LOGISIM_BUS_185[15:0]),
             .MuxOut(s_LOGISIM_BUS_68[15:0]),
             .Sel(s_LOGISIM_NET_48));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_11 (.Clock(s_LOGISIM_NET_12),
                        .ClockEnable(s_LOGISIM_NET_23),
                        .D(s_LOGISIM_BUS_3[31:0]),
                        .Q(s_LOGISIM_BUS_70[31:0]),
                        .Reset(1'b0),
                        .Tick(1'b1),
                        .cs(1'b1),
                        .pre(1'b0));

   Comparator #(.NrOfBits(32),
                .TwosComplement(1))
      Comparator_14 (.A_EQ_B(s_LOGISIM_NET_130),
                     .A_GT_B(),
                     .A_LT_B(),
                     .DataA(s_LOGISIM_BUS_118[31:0]),
                     .DataB(s_LOGISIM_BUS_6[31:0]));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_12 (.Clock(s_LOGISIM_NET_12),
                        .ClockEnable(s_LOGISIM_NET_5),
                        .D(s_LOGISIM_BUS_18[31:0]),
                        .Q(s_LOGISIM_BUS_52[31:0]),
                        .Reset(1'b0),
                        .Tick(1'b1),
                        .cs(1'b1),
                        .pre(1'b0));

   Comparator #(.NrOfBits(32),
                .TwosComplement(1))
      Comparator_15 (.A_EQ_B(s_LOGISIM_NET_31),
                     .A_GT_B(),
                     .A_LT_B(),
                     .DataA(s_LOGISIM_BUS_18[31:0]),
                     .DataB(s_LOGISIM_BUS_42[31:0]));

   NOT_GATE      GATE_20 (.Input_1(s_LOGISIM_NET_83),
                          .Result(s_LOGISIM_NET_104));

   AND_GATE #(.BubblesMask(0))
      GATE_21 (.Input_1(s_LOGISIM_NET_173),
               .Input_2(s_LOGISIM_NET_100),
               .Result(s_LOGISIM_NET_77));

   NOT_GATE      GATE_22 (.Input_1(s_LOGISIM_NET_107),
                          .Result(s_LOGISIM_NET_9));

   AND_GATE #(.BubblesMask(0))
      GATE_23 (.Input_1(s_LOGISIM_NET_107),
               .Input_2(s_LOGISIM_NET_117),
               .Result(s_LOGISIM_NET_172));

   NOT_GATE      GATE_24 (.Input_1(s_LOGISIM_NET_150),
                          .Result(s_LOGISIM_NET_34));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_13 (.Clock(s_LOGISIM_NET_12),
                        .ClockEnable(s_LOGISIM_NET_40),
                        .D(s_LOGISIM_BUS_18[31:0]),
                        .Q(s_LOGISIM_BUS_80[31:0]),
                        .Reset(1'b0),
                        .Tick(1'b1),
                        .cs(1'b1),
                        .pre(1'b0));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(1))
      REGISTER_FILE_14 (.Clock(s_LOGISIM_NET_12),
                        .ClockEnable(s_LOGISIM_NET_17),
                        .D(s_LOGISIM_NET_17),
                        .Q(s_LOGISIM_NET_175),
                        .Reset(1'b0),
                        .Tick(1'b1),
                        .cs(1'b1),
                        .pre(1'b0));

   AND_GATE #(.BubblesMask(0))
      GATE_25 (.Input_1(s_LOGISIM_NET_179),
               .Input_2(s_LOGISIM_NET_21),
               .Result(s_LOGISIM_NET_145));

   Multiplexer_2      MUX_10 (.Enable(1'b1),
                              .MuxIn_0(s_LOGISIM_NET_33),
                              .MuxIn_1(s_LOGISIM_NET_37),
                              .MuxOut(s_LOGISIM_NET_177),
                              .Sel(s_LOGISIM_NET_15));

   LogisimCounter #(.ClkEdge(1),
                    .max_val(65535),
                    .mode(0),
                    .width(16))
      COUNTER_6 (.ClockEnable(1'b1),
                 .CompareOut(),
                 .CountValue(s_LOGISIM_BUS_24[15:0]),
                 .Enable(1'b1),
                 .GlobalClock(s_LOGISIM_NET_12),
                 .LoadData(s_LOGISIM_BUS_93[15:0]),
                 .Up_n_Down(1'b1),
                 .clear(1'b0),
                 .load(s_LOGISIM_NET_113),
                 .pre(1'b0));

   Multiplexer_2      MUX_11 (.Enable(1'b1),
                              .MuxIn_0(s_LOGISIM_NET_147),
                              .MuxIn_1(s_LOGISIM_NET_155),
                              .MuxOut(s_LOGISIM_NET_110),
                              .Sel(s_LOGISIM_NET_15));

   NOT_GATE      GATE_26 (.Input_1(s_LOGISIM_NET_175),
                          .Result(s_LOGISIM_NET_20));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_15 (.Clock(s_LOGISIM_NET_12),
                        .ClockEnable(s_LOGISIM_NET_53),
                        .D(s_LOGISIM_BUS_18[31:0]),
                        .Q(s_LOGISIM_BUS_42[31:0]),
                        .Reset(1'b0),
                        .Tick(1'b1),
                        .cs(1'b1),
                        .pre(1'b0));

   AND_GATE_3_INPUTS #(.BubblesMask(0))
      GATE_27 (.Input_1(s_LOGISIM_NET_87),
               .Input_2(s_LOGISIM_NET_16),
               .Input_3(s_LOGISIM_NET_115),
               .Result(s_LOGISIM_NET_28));

   OR_GATE #(.BubblesMask(0))
      GATE_28 (.Input_1(s_LOGISIM_NET_62),
               .Input_2(s_LOGISIM_NET_53),
               .Result(s_LOGISIM_NET_86));

   AND_GATE #(.BubblesMask(0))
      GATE_29 (.Input_1(s_LOGISIM_NET_171),
               .Input_2(s_LOGISIM_NET_158),
               .Result(s_LOGISIM_NET_164));

   AND_GATE #(.BubblesMask(0))
      GATE_30 (.Input_1(s_LOGISIM_NET_171),
               .Input_2(s_LOGISIM_NET_47),
               .Result(s_LOGISIM_NET_62));

   AND_GATE #(.BubblesMask(0))
      GATE_31 (.Input_1(s_LOGISIM_NET_171),
               .Input_2(s_LOGISIM_NET_77),
               .Result(s_LOGISIM_NET_71));

   AND_GATE #(.BubblesMask(0))
      GATE_32 (.Input_1(s_LOGISIM_NET_150),
               .Input_2(s_LOGISIM_NET_157),
               .Result(s_LOGISIM_NET_143));

   AND_GATE #(.BubblesMask(0))
      GATE_33 (.Input_1(s_LOGISIM_NET_171),
               .Input_2(s_LOGISIM_NET_138),
               .Result(s_LOGISIM_NET_148));

   Comparator #(.NrOfBits(32),
                .TwosComplement(1))
      Comparator_16 (.A_EQ_B(s_LOGISIM_NET_169),
                     .A_GT_B(),
                     .A_LT_B(),
                     .DataA(s_LOGISIM_BUS_65[31:0]),
                     .DataB(s_LOGISIM_BUS_6[31:0]));

   OR_GATE_4_INPUTS #(.BubblesMask(0))
      GATE_34 (.Input_1(s_LOGISIM_NET_131),
               .Input_2(s_LOGISIM_NET_14),
               .Input_3(s_LOGISIM_NET_112),
               .Input_4(s_LOGISIM_NET_141),
               .Result(s_LOGISIM_NET_151));

   AND_GATE_3_INPUTS #(.BubblesMask(0))
      GATE_35 (.Input_1(s_LOGISIM_NET_87),
               .Input_2(s_LOGISIM_NET_16),
               .Input_3(s_LOGISIM_NET_177),
               .Result(s_LOGISIM_NET_10));

   NOT_GATE      GATE_36 (.Input_1(s_LOGISIM_NET_173),
                          .Result(s_LOGISIM_NET_149));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_16 (.Clock(s_LOGISIM_NET_12),
                        .ClockEnable(s_LOGISIM_NET_17),
                        .D(s_LOGISIM_BUS_3[31:0]),
                        .Q(s_LOGISIM_BUS_55[31:0]),
                        .Reset(1'b0),
                        .Tick(1'b1),
                        .cs(1'b1),
                        .pre(1'b0));

   OR_GATE #(.BubblesMask(0))
      GATE_37 (.Input_1(s_LOGISIM_NET_71),
               .Input_2(s_LOGISIM_NET_23),
               .Result(s_LOGISIM_NET_98));

   Comparator #(.NrOfBits(32),
                .TwosComplement(1))
      Comparator_17 (.A_EQ_B(s_LOGISIM_NET_123),
                     .A_GT_B(),
                     .A_LT_B(),
                     .DataA(s_LOGISIM_BUS_3[31:0]),
                     .DataB(s_LOGISIM_BUS_101[31:0]));

   OR_GATE_4_INPUTS #(.BubblesMask(0))
      GATE_38 (.Input_1(s_LOGISIM_NET_108),
               .Input_2(s_LOGISIM_NET_56),
               .Input_3(s_LOGISIM_NET_136),
               .Input_4(s_LOGISIM_NET_124),
               .Result(s_LOGISIM_NET_111));

   AND_GATE_3_INPUTS #(.BubblesMask(0))
      GATE_39 (.Input_1(s_LOGISIM_NET_87),
               .Input_2(s_LOGISIM_NET_16),
               .Input_3(s_LOGISIM_NET_144),
               .Result(s_LOGISIM_NET_40));

   OR_GATE #(.BubblesMask(0))
      GATE_40 (.Input_1(s_LOGISIM_NET_178),
               .Input_2(s_LOGISIM_NET_40),
               .Result(s_LOGISIM_NET_113));

   AND_GATE #(.BubblesMask(0))
      GATE_41 (.Input_1(s_LOGISIM_NET_153),
               .Input_2(s_LOGISIM_NET_97),
               .Result(s_LOGISIM_NET_135));

   AND_GATE #(.BubblesMask(0))
      GATE_42 (.Input_1(s_LOGISIM_NET_179),
               .Input_2(s_LOGISIM_NET_181),
               .Result(s_LOGISIM_NET_174));

   Multiplexer_bus_2 #(.NrOfBits(16))
      MUX_12 (.Enable(1'b1),
              .MuxIn_0(s_LOGISIM_BUS_1[15:0]),
              .MuxIn_1(s_LOGISIM_BUS_189[15:0]),
              .MuxOut(s_LOGISIM_BUS_125[15:0]),
              .Sel(s_LOGISIM_NET_79));

   AND_GATE #(.BubblesMask(0))
      GATE_43 (.Input_1(s_LOGISIM_NET_153),
               .Input_2(s_LOGISIM_NET_88),
               .Result(s_LOGISIM_NET_47));

   AND_GATE #(.BubblesMask(0))
      GATE_44 (.Input_1(s_LOGISIM_NET_171),
               .Input_2(s_LOGISIM_NET_143),
               .Result(s_LOGISIM_NET_152));

   Multiplexer_bus_2 #(.NrOfBits(16))
      MUX_13 (.Enable(1'b1),
              .MuxIn_0(s_LOGISIM_BUS_57[15:0]),
              .MuxIn_1(s_LOGISIM_BUS_186[15:0]),
              .MuxOut(s_LOGISIM_BUS_121[15:0]),
              .Sel(s_LOGISIM_NET_66));

   Multiplexer_bus_8 #(.NrOfBits(32))
      MUX_14 (.Enable(1'b1),
              .MuxIn_0(s_LOGISIM_BUS_106[31:0]),
              .MuxIn_1(s_LOGISIM_BUS_42[31:0]),
              .MuxIn_2(s_LOGISIM_BUS_32[31:0]),
              .MuxIn_3(s_LOGISIM_BUS_80[31:0]),
              .MuxIn_4(s_LOGISIM_BUS_85[31:0]),
              .MuxIn_5(s_LOGISIM_BUS_90[31:0]),
              .MuxIn_6(s_LOGISIM_BUS_103[31:0]),
              .MuxIn_7(s_LOGISIM_BUS_52[31:0]),
              .MuxOut(s_LOGISIM_BUS_8[31:0]),
              .Sel(s_LOGISIM_BUS_35[2:0]));

   AND_GATE_3_INPUTS #(.BubblesMask(0))
      GATE_45 (.Input_1(s_LOGISIM_NET_87),
               .Input_2(s_LOGISIM_NET_16),
               .Input_3(s_LOGISIM_NET_161),
               .Result(s_LOGISIM_NET_53));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_17 (.Clock(s_LOGISIM_NET_12),
                        .ClockEnable(s_LOGISIM_NET_28),
                        .D(s_LOGISIM_BUS_3[31:0]),
                        .Q(s_LOGISIM_BUS_65[31:0]),
                        .Reset(1'b0),
                        .Tick(1'b1),
                        .cs(1'b1),
                        .pre(1'b0));

   Comparator #(.NrOfBits(32),
                .TwosComplement(1))
      Comparator_18 (.A_EQ_B(s_LOGISIM_NET_154),
                     .A_GT_B(),
                     .A_LT_B(),
                     .DataA(s_LOGISIM_BUS_89[31:0]),
                     .DataB(s_LOGISIM_BUS_6[31:0]));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_18 (.Clock(s_LOGISIM_NET_12),
                        .ClockEnable(s_LOGISIM_NET_75),
                        .D(s_LOGISIM_BUS_3[31:0]),
                        .Q(s_LOGISIM_BUS_89[31:0]),
                        .Reset(1'b0),
                        .Tick(1'b1),
                        .cs(1'b1),
                        .pre(1'b0));

   Multiplexer_2      MUX_15 (.Enable(1'b1),
                              .MuxIn_0(s_LOGISIM_NET_82),
                              .MuxIn_1(s_LOGISIM_NET_84),
                              .MuxOut(s_LOGISIM_NET_49),
                              .Sel(s_LOGISIM_NET_15));

   Comparator #(.NrOfBits(32),
                .TwosComplement(1))
      Comparator_19 (.A_EQ_B(s_LOGISIM_NET_100),
                     .A_GT_B(),
                     .A_LT_B(),
                     .DataA(s_LOGISIM_BUS_70[31:0]),
                     .DataB(s_LOGISIM_BUS_6[31:0]));

   Comparator #(.NrOfBits(32),
                .TwosComplement(1))
      Comparator_20 (.A_EQ_B(s_LOGISIM_NET_105),
                     .A_GT_B(),
                     .A_LT_B(),
                     .DataA(s_LOGISIM_BUS_3[31:0]),
                     .DataB(s_LOGISIM_BUS_70[31:0]));

   NOR_GATE_8_INPUTS #(.BubblesMask(0))
      GATE_46 (.Input_1(s_LOGISIM_NET_58),
               .Input_2(s_LOGISIM_NET_135),
               .Input_3(s_LOGISIM_NET_172),
               .Input_4(s_LOGISIM_NET_145),
               .Input_5(s_LOGISIM_NET_170),
               .Input_6(s_LOGISIM_NET_122),
               .Input_7(s_LOGISIM_NET_139),
               .Input_8(s_LOGISIM_NET_27),
               .Result(s_LOGISIM_NET_87));

   Multiplexer_bus_2 #(.NrOfBits(16))
      MUX_16 (.Enable(1'b1),
              .MuxIn_0(s_LOGISIM_BUS_54[15:0]),
              .MuxIn_1(s_LOGISIM_BUS_188[15:0]),
              .MuxOut(s_LOGISIM_BUS_78[15:0]),
              .Sel(s_LOGISIM_NET_7));

   OR_GATE #(.BubblesMask(0))
      GATE_47 (.Input_1(s_LOGISIM_NET_120),
               .Input_2(s_LOGISIM_NET_10),
               .Result(s_LOGISIM_NET_7));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_19 (.Clock(s_LOGISIM_NET_12),
                        .ClockEnable(s_LOGISIM_NET_28),
                        .D(s_LOGISIM_BUS_18[31:0]),
                        .Q(s_LOGISIM_BUS_90[31:0]),
                        .Reset(1'b0),
                        .Tick(1'b1),
                        .cs(1'b1),
                        .pre(1'b0));

   Decoder_8      DECODER_2 (.DecoderOut_0(s_LOGISIM_NET_147),
                             .DecoderOut_1(s_LOGISIM_NET_72),
                             .DecoderOut_2(s_LOGISIM_NET_82),
                             .DecoderOut_3(s_LOGISIM_NET_41),
                             .DecoderOut_4(s_LOGISIM_NET_33),
                             .DecoderOut_5(s_LOGISIM_NET_43),
                             .DecoderOut_6(s_LOGISIM_NET_73),
                             .DecoderOut_7(s_LOGISIM_NET_134),
                             .Enable(1'b1),
                             .Sel(s_LOGISIM_BUS_156[2:0]));

   NOT_GATE      GATE_48 (.Input_1(s_LOGISIM_NET_153),
                          .Result(s_LOGISIM_NET_11));

   Comparator #(.NrOfBits(32),
                .TwosComplement(1))
      Comparator_21 (.A_EQ_B(s_LOGISIM_NET_21),
                     .A_GT_B(),
                     .A_LT_B(),
                     .DataA(s_LOGISIM_BUS_3[31:0]),
                     .DataB(s_LOGISIM_BUS_26[31:0]));

   LogisimCounter #(.ClkEdge(1),
                    .max_val(65535),
                    .mode(0),
                    .width(16))
      COUNTER_7 (.ClockEnable(1'b1),
                 .CompareOut(),
                 .CountValue(s_LOGISIM_BUS_1[15:0]),
                 .Enable(1'b1),
                 .GlobalClock(s_LOGISIM_NET_12),
                 .LoadData(s_LOGISIM_BUS_125[15:0]),
                 .Up_n_Down(1'b1),
                 .clear(1'b0),
                 .load(s_LOGISIM_NET_79),
                 .pre(1'b0));

   AND_GATE #(.BubblesMask(0))
      GATE_49 (.Input_1(s_LOGISIM_NET_171),
               .Input_2(s_LOGISIM_NET_174),
               .Result(s_LOGISIM_NET_178));

   Comparator #(.NrOfBits(32),
                .TwosComplement(1))
      Comparator_22 (.A_EQ_B(s_LOGISIM_NET_102),
                     .A_GT_B(),
                     .A_LT_B(),
                     .DataA(s_LOGISIM_BUS_18[31:0]),
                     .DataB(s_LOGISIM_BUS_52[31:0]));

   Comparator #(.NrOfBits(32),
                .TwosComplement(1))
      Comparator_23 (.A_EQ_B(s_LOGISIM_NET_64),
                     .A_GT_B(),
                     .A_LT_B(),
                     .DataA(s_LOGISIM_BUS_3[31:0]),
                     .DataB(s_LOGISIM_BUS_55[31:0]));

   Comparator #(.NrOfBits(32),
                .TwosComplement(1))
      Comparator_24 (.A_EQ_B(s_LOGISIM_NET_4),
                     .A_GT_B(),
                     .A_LT_B(),
                     .DataA(s_LOGISIM_BUS_18[31:0]),
                     .DataB(s_LOGISIM_BUS_85[31:0]));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_20 (.Clock(s_LOGISIM_NET_12),
                        .ClockEnable(s_LOGISIM_NET_10),
                        .D(s_LOGISIM_BUS_3[31:0]),
                        .Q(s_LOGISIM_BUS_118[31:0]),
                        .Reset(1'b0),
                        .Tick(1'b1),
                        .cs(1'b1),
                        .pre(1'b0));

   NOT_GATE      GATE_50 (.Input_1(s_LOGISIM_NET_179),
                          .Result(s_LOGISIM_NET_2));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_21 (.Clock(s_LOGISIM_NET_12),
                        .ClockEnable(s_LOGISIM_NET_5),
                        .D(s_LOGISIM_BUS_3[31:0]),
                        .Q(s_LOGISIM_BUS_101[31:0]),
                        .Reset(1'b0),
                        .Tick(1'b1),
                        .cs(1'b1),
                        .pre(1'b0));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_22 (.Clock(s_LOGISIM_NET_12),
                        .ClockEnable(s_LOGISIM_NET_75),
                        .D(s_LOGISIM_BUS_18[31:0]),
                        .Q(s_LOGISIM_BUS_32[31:0]),
                        .Reset(1'b0),
                        .Tick(1'b1),
                        .cs(1'b1),
                        .pre(1'b0));

   Multiplexer_2      MUX_17 (.Enable(1'b1),
                              .MuxIn_0(s_LOGISIM_NET_72),
                              .MuxIn_1(s_LOGISIM_NET_126),
                              .MuxOut(s_LOGISIM_NET_161),
                              .Sel(s_LOGISIM_NET_15));

   LogisimCounter #(.ClkEdge(1),
                    .max_val(65535),
                    .mode(0),
                    .width(16))
      COUNTER_8 (.ClockEnable(1'b1),
                 .CompareOut(),
                 .CountValue(s_LOGISIM_BUS_0[15:0]),
                 .Enable(1'b1),
                 .GlobalClock(s_LOGISIM_NET_12),
                 .LoadData(s_LOGISIM_BUS_13[15:0]),
                 .Up_n_Down(1'b1),
                 .clear(1'b0),
                 .load(s_LOGISIM_NET_59),
                 .pre(1'b0));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(1))
      REGISTER_FILE_23 (.Clock(s_LOGISIM_NET_12),
                        .ClockEnable(s_LOGISIM_NET_28),
                        .D(s_LOGISIM_NET_28),
                        .Q(s_LOGISIM_NET_83),
                        .Reset(1'b0),
                        .Tick(1'b1),
                        .cs(1'b1),
                        .pre(1'b0));

   AND_GATE #(.BubblesMask(0))
      GATE_51 (.Input_1(s_LOGISIM_NET_74),
               .Input_2(s_LOGISIM_NET_81),
               .Result(s_LOGISIM_NET_16));

   AND_GATE #(.BubblesMask(0))
      GATE_52 (.Input_1(s_LOGISIM_NET_107),
               .Input_2(s_LOGISIM_NET_154),
               .Result(s_LOGISIM_NET_138));

   AND_GATE #(.BubblesMask(0))
      GATE_53 (.Input_1(s_LOGISIM_NET_150),
               .Input_2(s_LOGISIM_NET_123),
               .Result(s_LOGISIM_NET_27));

   NOT_GATE      GATE_54 (.Input_1(s_LOGISIM_NET_140),
                          .Result(s_LOGISIM_NET_137));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_24 (.Clock(s_LOGISIM_NET_12),
                        .ClockEnable(s_LOGISIM_NET_23),
                        .D(s_LOGISIM_BUS_18[31:0]),
                        .Q(s_LOGISIM_BUS_103[31:0]),
                        .Reset(1'b0),
                        .Tick(1'b1),
                        .cs(1'b1),
                        .pre(1'b0));


   /***************************************************************************
    ** Here all sub-circuits are defined                                     **
    ***************************************************************************/
   MAX3      MAX3_1 (.LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                     .MAX(),
                     .Max_Number(s_LOGISIM_BUS_156[2:0]),
                     .X(s_LOGISIM_BUS_95[15:0]),
                     .X_Number(s_LOGISIM_BUS_129[2:0]),
                     .Y(s_LOGISIM_BUS_99[15:0]),
                     .Y_Number(s_LOGISIM_BUS_119[2:0]));

   dual_bit_predction_with_state_shifting_logic      dual_bit_predction_with_state_shifting_logic_1 (.CLK(s_LOGISIM_NET_12),
                                                                                                     .EX_Hit(s_LOGISIM_NET_139),
                                                                                                     .Hit(s_LOGISIM_NET_77),
                                                                                                     .JumpPredict(s_LOGISIM_NET_112),
                                                                                                     .LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                                                                                                     .Preset(s_LOGISIM_NET_23),
                                                                                                     .Success(s_LOGISIM_NET_51));

   MAX3      MAX3_2 (.LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                     .MAX(s_LOGISIM_BUS_109[15:0]),
                     .Max_Number(s_LOGISIM_BUS_133[2:0]),
                     .X(s_LOGISIM_BUS_57[15:0]),
                     .X_Number(s_LOGISIM_BUS_176[2:0]),
                     .Y(s_LOGISIM_BUS_24[15:0]),
                     .Y_Number(s_LOGISIM_BUS_142[2:0]));

   dual_bit_predction_with_state_shifting_logic      dual_bit_predction_with_state_shifting_logic_2 (.CLK(s_LOGISIM_NET_12),
                                                                                                     .EX_Hit(s_LOGISIM_NET_172),
                                                                                                     .Hit(s_LOGISIM_NET_138),
                                                                                                     .JumpPredict(s_LOGISIM_NET_136),
                                                                                                     .LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                                                                                                     .Preset(s_LOGISIM_NET_75),
                                                                                                     .Success(s_LOGISIM_NET_91));

   dual_bit_predction_with_state_shifting_logic      dual_bit_predction_with_state_shifting_logic_3 (.CLK(s_LOGISIM_NET_12),
                                                                                                     .EX_Hit(s_LOGISIM_NET_135),
                                                                                                     .Hit(s_LOGISIM_NET_47),
                                                                                                     .JumpPredict(s_LOGISIM_NET_56),
                                                                                                     .LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                                                                                                     .Preset(s_LOGISIM_NET_53),
                                                                                                     .Success(s_LOGISIM_NET_31));

   dual_bit_predction_with_state_shifting_logic      dual_bit_predction_with_state_shifting_logic_4 (.CLK(s_LOGISIM_NET_12),
                                                                                                     .EX_Hit(s_LOGISIM_NET_145),
                                                                                                     .Hit(s_LOGISIM_NET_174),
                                                                                                     .JumpPredict(s_LOGISIM_NET_124),
                                                                                                     .LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                                                                                                     .Preset(s_LOGISIM_NET_40),
                                                                                                     .Success(s_LOGISIM_NET_96));

   MAX3      MAX3_3 (.LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                     .MAX(s_LOGISIM_BUS_30[15:0]),
                     .Max_Number(s_LOGISIM_BUS_29[2:0]),
                     .X(s_LOGISIM_BUS_25[15:0]),
                     .X_Number(s_LOGISIM_BUS_146[2:0]),
                     .Y(s_LOGISIM_BUS_1[15:0]),
                     .Y_Number(s_LOGISIM_BUS_60[2:0]));

   dual_bit_predction_with_state_shifting_logic      dual_bit_predction_with_state_shifting_logic_5 (.CLK(s_LOGISIM_NET_12),
                                                                                                     .EX_Hit(s_LOGISIM_NET_27),
                                                                                                     .Hit(s_LOGISIM_NET_143),
                                                                                                     .JumpPredict(s_LOGISIM_NET_141),
                                                                                                     .LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                                                                                                     .Preset(s_LOGISIM_NET_5),
                                                                                                     .Success(s_LOGISIM_NET_102));

   MAX3      MAX3_4 (.LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                     .MAX(s_LOGISIM_BUS_36[15:0]),
                     .Max_Number(s_LOGISIM_BUS_116[2:0]),
                     .X(s_LOGISIM_BUS_38[15:0]),
                     .X_Number(s_LOGISIM_BUS_39[2:0]),
                     .Y(s_LOGISIM_BUS_50[15:0]),
                     .Y_Number(s_LOGISIM_BUS_159[2:0]));

   MAX3      MAX3_5 (.LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                     .MAX(s_LOGISIM_BUS_95[15:0]),
                     .Max_Number(s_LOGISIM_BUS_129[2:0]),
                     .X(s_LOGISIM_BUS_36[15:0]),
                     .X_Number(s_LOGISIM_BUS_116[2:0]),
                     .Y(s_LOGISIM_BUS_109[15:0]),
                     .Y_Number(s_LOGISIM_BUS_133[2:0]));

   dual_bit_predction_with_state_shifting_logic      dual_bit_predction_with_state_shifting_logic_6 (.CLK(s_LOGISIM_NET_12),
                                                                                                     .EX_Hit(s_LOGISIM_NET_170),
                                                                                                     .Hit(s_LOGISIM_NET_167),
                                                                                                     .JumpPredict(s_LOGISIM_NET_131),
                                                                                                     .LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                                                                                                     .Preset(s_LOGISIM_NET_10),
                                                                                                     .Success(s_LOGISIM_NET_4));

   dual_bit_predction_with_state_shifting_logic      dual_bit_predction_with_state_shifting_logic_7 (.CLK(s_LOGISIM_NET_12),
                                                                                                     .EX_Hit(s_LOGISIM_NET_58),
                                                                                                     .Hit(s_LOGISIM_NET_158),
                                                                                                     .JumpPredict(s_LOGISIM_NET_108),
                                                                                                     .LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                                                                                                     .Preset(s_LOGISIM_NET_17),
                                                                                                     .Success(s_LOGISIM_NET_127));

   MAX3      MAX3_6 (.LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                     .MAX(s_LOGISIM_BUS_99[15:0]),
                     .Max_Number(s_LOGISIM_BUS_119[2:0]),
                     .X(s_LOGISIM_BUS_94[15:0]),
                     .X_Number(s_LOGISIM_BUS_69[2:0]),
                     .Y(s_LOGISIM_BUS_30[15:0]),
                     .Y_Number(s_LOGISIM_BUS_29[2:0]));

   dual_bit_predction_with_state_shifting_logic      dual_bit_predction_with_state_shifting_logic_8 (.CLK(s_LOGISIM_NET_12),
                                                                                                     .EX_Hit(s_LOGISIM_NET_122),
                                                                                                     .Hit(s_LOGISIM_NET_160),
                                                                                                     .JumpPredict(s_LOGISIM_NET_14),
                                                                                                     .LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                                                                                                     .Preset(s_LOGISIM_NET_28),
                                                                                                     .Success(s_LOGISIM_NET_19));

   MAX3      MAX3_7 (.LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                     .MAX(s_LOGISIM_BUS_94[15:0]),
                     .Max_Number(s_LOGISIM_BUS_69[2:0]),
                     .X(s_LOGISIM_BUS_54[15:0]),
                     .X_Number(s_LOGISIM_BUS_162[2:0]),
                     .Y(s_LOGISIM_BUS_0[15:0]),
                     .Y_Number(s_LOGISIM_BUS_114[2:0]));



endmodule
