/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : redirection_pipeline_with_BTB                                **
 **                                                                          **
 ******************************************************************************/

`timescale 1ns/1ps
module redirection_pipeline_with_BTB( Go,
                                      LOGISIM_CLOCK_TREE_0,
                                      NA,
                                      Seg);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input  Go;
   input[4:0]  LOGISIM_CLOCK_TREE_0;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output[7:0] NA;
   output[7:0] Seg;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire[31:0] s_LOGISIM_BUS_0;
   wire[31:0] s_LOGISIM_BUS_1;
   wire[31:0] s_LOGISIM_BUS_102;
   wire[31:0] s_LOGISIM_BUS_103;
   wire[31:0] s_LOGISIM_BUS_105;
   wire[25:0] s_LOGISIM_BUS_108;
   wire[31:0] s_LOGISIM_BUS_11;
   wire[4:0] s_LOGISIM_BUS_111;
   wire[31:0] s_LOGISIM_BUS_112;
   wire[7:0] s_LOGISIM_BUS_116;
   wire[31:0] s_LOGISIM_BUS_117;
   wire[31:0] s_LOGISIM_BUS_12;
   wire[31:0] s_LOGISIM_BUS_120;
   wire[31:0] s_LOGISIM_BUS_121;
   wire[31:0] s_LOGISIM_BUS_123;
   wire[31:0] s_LOGISIM_BUS_124;
   wire[31:0] s_LOGISIM_BUS_125;
   wire[3:0] s_LOGISIM_BUS_128;
   wire[7:0] s_LOGISIM_BUS_13;
   wire[31:0] s_LOGISIM_BUS_131;
   wire[31:0] s_LOGISIM_BUS_133;
   wire[29:0] s_LOGISIM_BUS_21;
   wire[1:0] s_LOGISIM_BUS_22;
   wire[31:0] s_LOGISIM_BUS_24;
   wire[4:0] s_LOGISIM_BUS_25;
   wire[4:0] s_LOGISIM_BUS_26;
   wire[31:0] s_LOGISIM_BUS_28;
   wire[1:0] s_LOGISIM_BUS_29;
   wire[31:0] s_LOGISIM_BUS_32;
   wire[9:0] s_LOGISIM_BUS_33;
   wire[5:0] s_LOGISIM_BUS_34;
   wire[31:0] s_LOGISIM_BUS_38;
   wire[1:0] s_LOGISIM_BUS_4;
   wire[4:0] s_LOGISIM_BUS_42;
   wire[31:0] s_LOGISIM_BUS_43;
   wire[31:0] s_LOGISIM_BUS_44;
   wire[4:0] s_LOGISIM_BUS_45;
   wire[31:0] s_LOGISIM_BUS_47;
   wire[31:0] s_LOGISIM_BUS_48;
   wire[31:0] s_LOGISIM_BUS_51;
   wire[31:0] s_LOGISIM_BUS_53;
   wire[31:0] s_LOGISIM_BUS_54;
   wire[4:0] s_LOGISIM_BUS_55;
   wire[31:0] s_LOGISIM_BUS_56;
   wire[1:0] s_LOGISIM_BUS_58;
   wire[31:0] s_LOGISIM_BUS_6;
   wire[4:0] s_LOGISIM_BUS_61;
   wire[31:0] s_LOGISIM_BUS_64;
   wire[3:0] s_LOGISIM_BUS_65;
   wire[31:0] s_LOGISIM_BUS_66;
   wire[31:0] s_LOGISIM_BUS_68;
   wire[31:0] s_LOGISIM_BUS_69;
   wire[31:0] s_LOGISIM_BUS_7;
   wire[31:0] s_LOGISIM_BUS_70;
   wire[4:0] s_LOGISIM_BUS_71;
   wire[31:0] s_LOGISIM_BUS_74;
   wire[31:0] s_LOGISIM_BUS_75;
   wire[4:0] s_LOGISIM_BUS_78;
   wire[31:0] s_LOGISIM_BUS_79;
   wire[31:0] s_LOGISIM_BUS_8;
   wire[31:0] s_LOGISIM_BUS_84;
   wire[31:0] s_LOGISIM_BUS_86;
   wire[31:0] s_LOGISIM_BUS_87;
   wire[31:0] s_LOGISIM_BUS_88;
   wire[31:0] s_LOGISIM_BUS_90;
   wire[31:0] s_LOGISIM_BUS_92;
   wire[31:0] s_LOGISIM_BUS_97;
   wire[31:0] s_LOGISIM_BUS_98;
   wire[31:0] s_LOGISIM_BUS_99;
   wire s_LOGISIM_NET_10;
   wire s_LOGISIM_NET_100;
   wire s_LOGISIM_NET_101;
   wire s_LOGISIM_NET_104;
   wire s_LOGISIM_NET_106;
   wire s_LOGISIM_NET_109;
   wire s_LOGISIM_NET_113;
   wire s_LOGISIM_NET_114;
   wire s_LOGISIM_NET_115;
   wire s_LOGISIM_NET_118;
   wire s_LOGISIM_NET_119;
   wire s_LOGISIM_NET_122;
   wire s_LOGISIM_NET_126;
   wire s_LOGISIM_NET_127;
   wire s_LOGISIM_NET_129;
   wire s_LOGISIM_NET_130;
   wire s_LOGISIM_NET_134;
   wire s_LOGISIM_NET_136;
   wire s_LOGISIM_NET_15;
   wire s_LOGISIM_NET_150;
   wire s_LOGISIM_NET_151;
   wire s_LOGISIM_NET_16;
   wire s_LOGISIM_NET_17;
   wire s_LOGISIM_NET_18;
   wire s_LOGISIM_NET_20;
   wire s_LOGISIM_NET_23;
   wire s_LOGISIM_NET_30;
   wire s_LOGISIM_NET_31;
   wire s_LOGISIM_NET_36;
   wire s_LOGISIM_NET_37;
   wire s_LOGISIM_NET_39;
   wire s_LOGISIM_NET_40;
   wire s_LOGISIM_NET_49;
   wire s_LOGISIM_NET_5;
   wire s_LOGISIM_NET_50;
   wire s_LOGISIM_NET_52;
   wire s_LOGISIM_NET_62;
   wire s_LOGISIM_NET_63;
   wire s_LOGISIM_NET_67;
   wire s_LOGISIM_NET_72;
   wire s_LOGISIM_NET_73;
   wire s_LOGISIM_NET_76;
   wire s_LOGISIM_NET_81;
   wire s_LOGISIM_NET_83;
   wire s_LOGISIM_NET_95;
   wire s_LOGISIM_NET_96;

   /***************************************************************************
    ** Here all clock generator connections are defined                      **
    ***************************************************************************/
   assign s_LOGISIM_NET_106                  = LOGISIM_CLOCK_TREE_0[0];
   assign s_LOGISIM_NET_151                  = LOGISIM_CLOCK_TREE_0[4];

   /***************************************************************************
    ** Here all wiring is defined                                            **
    ***************************************************************************/
   assign s_LOGISIM_BUS_21[0]                = s_LOGISIM_BUS_24[0];
   assign s_LOGISIM_BUS_38[2]                = s_LOGISIM_BUS_21[0];
   assign s_LOGISIM_BUS_21[1]                = s_LOGISIM_BUS_24[1];
   assign s_LOGISIM_BUS_38[3]                = s_LOGISIM_BUS_21[1];
   assign s_LOGISIM_BUS_21[2]                = s_LOGISIM_BUS_24[2];
   assign s_LOGISIM_BUS_38[4]                = s_LOGISIM_BUS_21[2];
   assign s_LOGISIM_BUS_21[3]                = s_LOGISIM_BUS_24[3];
   assign s_LOGISIM_BUS_38[5]                = s_LOGISIM_BUS_21[3];
   assign s_LOGISIM_BUS_21[4]                = s_LOGISIM_BUS_24[4];
   assign s_LOGISIM_BUS_38[6]                = s_LOGISIM_BUS_21[4];
   assign s_LOGISIM_BUS_21[5]                = s_LOGISIM_BUS_24[5];
   assign s_LOGISIM_BUS_38[7]                = s_LOGISIM_BUS_21[5];
   assign s_LOGISIM_BUS_21[6]                = s_LOGISIM_BUS_24[6];
   assign s_LOGISIM_BUS_38[8]                = s_LOGISIM_BUS_21[6];
   assign s_LOGISIM_BUS_21[7]                = s_LOGISIM_BUS_24[7];
   assign s_LOGISIM_BUS_38[9]                = s_LOGISIM_BUS_21[7];
   assign s_LOGISIM_BUS_21[8]                = s_LOGISIM_BUS_24[8];
   assign s_LOGISIM_BUS_38[10]               = s_LOGISIM_BUS_21[8];
   assign s_LOGISIM_BUS_21[9]                = s_LOGISIM_BUS_24[9];
   assign s_LOGISIM_BUS_38[11]               = s_LOGISIM_BUS_21[9];
   assign s_LOGISIM_BUS_21[10]               = s_LOGISIM_BUS_24[10];
   assign s_LOGISIM_BUS_38[12]               = s_LOGISIM_BUS_21[10];
   assign s_LOGISIM_BUS_21[11]               = s_LOGISIM_BUS_24[11];
   assign s_LOGISIM_BUS_38[13]               = s_LOGISIM_BUS_21[11];
   assign s_LOGISIM_BUS_21[12]               = s_LOGISIM_BUS_24[12];
   assign s_LOGISIM_BUS_38[14]               = s_LOGISIM_BUS_21[12];
   assign s_LOGISIM_BUS_21[13]               = s_LOGISIM_BUS_24[13];
   assign s_LOGISIM_BUS_38[15]               = s_LOGISIM_BUS_21[13];
   assign s_LOGISIM_BUS_21[14]               = s_LOGISIM_BUS_24[14];
   assign s_LOGISIM_BUS_38[16]               = s_LOGISIM_BUS_21[14];
   assign s_LOGISIM_BUS_21[15]               = s_LOGISIM_BUS_24[15];
   assign s_LOGISIM_BUS_38[17]               = s_LOGISIM_BUS_21[15];
   assign s_LOGISIM_BUS_21[16]               = s_LOGISIM_BUS_24[16];
   assign s_LOGISIM_BUS_38[18]               = s_LOGISIM_BUS_21[16];
   assign s_LOGISIM_BUS_21[17]               = s_LOGISIM_BUS_24[17];
   assign s_LOGISIM_BUS_38[19]               = s_LOGISIM_BUS_21[17];
   assign s_LOGISIM_BUS_21[18]               = s_LOGISIM_BUS_24[18];
   assign s_LOGISIM_BUS_38[20]               = s_LOGISIM_BUS_21[18];
   assign s_LOGISIM_BUS_21[19]               = s_LOGISIM_BUS_24[19];
   assign s_LOGISIM_BUS_38[21]               = s_LOGISIM_BUS_21[19];
   assign s_LOGISIM_BUS_21[20]               = s_LOGISIM_BUS_24[20];
   assign s_LOGISIM_BUS_38[22]               = s_LOGISIM_BUS_21[20];
   assign s_LOGISIM_BUS_21[21]               = s_LOGISIM_BUS_24[21];
   assign s_LOGISIM_BUS_38[23]               = s_LOGISIM_BUS_21[21];
   assign s_LOGISIM_BUS_21[22]               = s_LOGISIM_BUS_24[22];
   assign s_LOGISIM_BUS_38[24]               = s_LOGISIM_BUS_21[22];
   assign s_LOGISIM_BUS_21[23]               = s_LOGISIM_BUS_24[23];
   assign s_LOGISIM_BUS_38[25]               = s_LOGISIM_BUS_21[23];
   assign s_LOGISIM_BUS_21[24]               = s_LOGISIM_BUS_24[24];
   assign s_LOGISIM_BUS_38[26]               = s_LOGISIM_BUS_21[24];
   assign s_LOGISIM_BUS_21[25]               = s_LOGISIM_BUS_24[25];
   assign s_LOGISIM_BUS_38[27]               = s_LOGISIM_BUS_21[25];
   assign s_LOGISIM_BUS_21[26]               = s_LOGISIM_BUS_24[26];
   assign s_LOGISIM_BUS_38[28]               = s_LOGISIM_BUS_21[26];
   assign s_LOGISIM_BUS_21[27]               = s_LOGISIM_BUS_24[27];
   assign s_LOGISIM_BUS_38[29]               = s_LOGISIM_BUS_21[27];
   assign s_LOGISIM_BUS_21[28]               = s_LOGISIM_BUS_24[28];
   assign s_LOGISIM_BUS_38[30]               = s_LOGISIM_BUS_21[28];
   assign s_LOGISIM_BUS_21[29]               = s_LOGISIM_BUS_24[29];
   assign s_LOGISIM_BUS_38[31]               = s_LOGISIM_BUS_21[29];
   assign s_LOGISIM_BUS_108[0]               = s_LOGISIM_BUS_43[0];
   assign s_LOGISIM_BUS_98[2]                = s_LOGISIM_BUS_108[0];
   assign s_LOGISIM_BUS_108[1]               = s_LOGISIM_BUS_43[1];
   assign s_LOGISIM_BUS_98[3]                = s_LOGISIM_BUS_108[1];
   assign s_LOGISIM_BUS_108[2]               = s_LOGISIM_BUS_43[2];
   assign s_LOGISIM_BUS_98[4]                = s_LOGISIM_BUS_108[2];
   assign s_LOGISIM_BUS_108[3]               = s_LOGISIM_BUS_43[3];
   assign s_LOGISIM_BUS_98[5]                = s_LOGISIM_BUS_108[3];
   assign s_LOGISIM_BUS_108[4]               = s_LOGISIM_BUS_43[4];
   assign s_LOGISIM_BUS_98[6]                = s_LOGISIM_BUS_108[4];
   assign s_LOGISIM_BUS_108[5]               = s_LOGISIM_BUS_43[5];
   assign s_LOGISIM_BUS_98[7]                = s_LOGISIM_BUS_108[5];
   assign s_LOGISIM_BUS_108[6]               = s_LOGISIM_BUS_43[6];
   assign s_LOGISIM_BUS_98[8]                = s_LOGISIM_BUS_108[6];
   assign s_LOGISIM_BUS_108[7]               = s_LOGISIM_BUS_43[7];
   assign s_LOGISIM_BUS_98[9]                = s_LOGISIM_BUS_108[7];
   assign s_LOGISIM_BUS_108[8]               = s_LOGISIM_BUS_43[8];
   assign s_LOGISIM_BUS_98[10]               = s_LOGISIM_BUS_108[8];
   assign s_LOGISIM_BUS_108[9]               = s_LOGISIM_BUS_43[9];
   assign s_LOGISIM_BUS_98[11]               = s_LOGISIM_BUS_108[9];
   assign s_LOGISIM_BUS_108[10]              = s_LOGISIM_BUS_43[10];
   assign s_LOGISIM_BUS_98[12]               = s_LOGISIM_BUS_108[10];
   assign s_LOGISIM_BUS_108[11]              = s_LOGISIM_BUS_43[11];
   assign s_LOGISIM_BUS_98[13]               = s_LOGISIM_BUS_108[11];
   assign s_LOGISIM_BUS_108[12]              = s_LOGISIM_BUS_43[12];
   assign s_LOGISIM_BUS_98[14]               = s_LOGISIM_BUS_108[12];
   assign s_LOGISIM_BUS_108[13]              = s_LOGISIM_BUS_43[13];
   assign s_LOGISIM_BUS_98[15]               = s_LOGISIM_BUS_108[13];
   assign s_LOGISIM_BUS_108[14]              = s_LOGISIM_BUS_43[14];
   assign s_LOGISIM_BUS_98[16]               = s_LOGISIM_BUS_108[14];
   assign s_LOGISIM_BUS_108[15]              = s_LOGISIM_BUS_43[15];
   assign s_LOGISIM_BUS_98[17]               = s_LOGISIM_BUS_108[15];
   assign s_LOGISIM_BUS_108[16]              = s_LOGISIM_BUS_43[16];
   assign s_LOGISIM_BUS_98[18]               = s_LOGISIM_BUS_108[16];
   assign s_LOGISIM_BUS_108[17]              = s_LOGISIM_BUS_43[17];
   assign s_LOGISIM_BUS_98[19]               = s_LOGISIM_BUS_108[17];
   assign s_LOGISIM_BUS_108[18]              = s_LOGISIM_BUS_43[18];
   assign s_LOGISIM_BUS_98[20]               = s_LOGISIM_BUS_108[18];
   assign s_LOGISIM_BUS_108[19]              = s_LOGISIM_BUS_43[19];
   assign s_LOGISIM_BUS_98[21]               = s_LOGISIM_BUS_108[19];
   assign s_LOGISIM_BUS_108[20]              = s_LOGISIM_BUS_43[20];
   assign s_LOGISIM_BUS_98[22]               = s_LOGISIM_BUS_108[20];
   assign s_LOGISIM_BUS_108[21]              = s_LOGISIM_BUS_43[21];
   assign s_LOGISIM_BUS_98[23]               = s_LOGISIM_BUS_108[21];
   assign s_LOGISIM_BUS_108[22]              = s_LOGISIM_BUS_43[22];
   assign s_LOGISIM_BUS_98[24]               = s_LOGISIM_BUS_108[22];
   assign s_LOGISIM_BUS_108[23]              = s_LOGISIM_BUS_43[23];
   assign s_LOGISIM_BUS_98[25]               = s_LOGISIM_BUS_108[23];
   assign s_LOGISIM_BUS_108[24]              = s_LOGISIM_BUS_43[24];
   assign s_LOGISIM_BUS_98[26]               = s_LOGISIM_BUS_108[24];
   assign s_LOGISIM_BUS_108[25]              = s_LOGISIM_BUS_43[25];
   assign s_LOGISIM_BUS_98[27]               = s_LOGISIM_BUS_108[25];
   assign s_LOGISIM_BUS_128[0]               = s_LOGISIM_BUS_51[28];
   assign s_LOGISIM_BUS_98[28]               = s_LOGISIM_BUS_128[0];
   assign s_LOGISIM_BUS_128[1]               = s_LOGISIM_BUS_51[29];
   assign s_LOGISIM_BUS_98[29]               = s_LOGISIM_BUS_128[1];
   assign s_LOGISIM_BUS_128[2]               = s_LOGISIM_BUS_51[30];
   assign s_LOGISIM_BUS_98[30]               = s_LOGISIM_BUS_128[2];
   assign s_LOGISIM_BUS_128[3]               = s_LOGISIM_BUS_51[31];
   assign s_LOGISIM_BUS_98[31]               = s_LOGISIM_BUS_128[3];

   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_NET_130                  = Go;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign Seg                                = s_LOGISIM_BUS_13[7:0];
   assign NA                                 = s_LOGISIM_BUS_116[7:0];

   /***************************************************************************
    ** Here all in-lined components are defined                              **
    ***************************************************************************/
   assign s_LOGISIM_BUS_124[31:0] = 32'd4;

   assign s_LOGISIM_BUS_87[31:0] = 32'd0;

   assign s_LOGISIM_BUS_103[31:0] = 32'd0;

   assign s_LOGISIM_BUS_38[1:0] = 2'd0;

   assign s_LOGISIM_NET_95 = 1'd0;

   assign s_LOGISIM_BUS_98[1:0] = 2'd0;


   /***************************************************************************
    ** Here all normal components are defined                                **
    ***************************************************************************/
   Adder #(.ExtendedBits(33),
           .NrOfBits(32))
      ADDER2C_1 (.CarryIn(1'b0),
                 .CarryOut(),
                 .DataA(s_LOGISIM_BUS_123[31:0]),
                 .DataB(s_LOGISIM_BUS_38[31:0]),
                 .Result(s_LOGISIM_BUS_68[31:0]));

   ROM_IR_ROM      ROM_1 (.Address(s_LOGISIM_BUS_48[11:2]),
                          .Data(s_LOGISIM_BUS_66[31:0]));

   AND_GATE #(.BubblesMask(0))
      GATE_1 (.Input_1(s_LOGISIM_NET_10),
              .Input_2(s_LOGISIM_NET_109),
              .Result(s_LOGISIM_NET_15));

   Adder #(.ExtendedBits(33),
           .NrOfBits(32))
      ADDER2C_2 (.CarryIn(1'b0),
                 .CarryOut(),
                 .DataA(s_LOGISIM_BUS_48[31:0]),
                 .DataB(s_LOGISIM_BUS_124[31:0]),
                 .Result(s_LOGISIM_BUS_11[31:0]));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_1 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_79[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_131[31:0]),
             .MuxOut(s_LOGISIM_BUS_97[31:0]),
             .Sel(s_LOGISIM_NET_122));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_2 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_123[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_56[31:0]),
             .MuxOut(s_LOGISIM_BUS_120[31:0]),
             .Sel(s_LOGISIM_NET_101));

   AND_GATE #(.BubblesMask(1))
      GATE_2 (.Input_1(s_LOGISIM_NET_126),
              .Input_2(s_LOGISIM_NET_106),
              .Result(s_LOGISIM_NET_129));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_3 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_1[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_75[31:0]),
             .MuxOut(s_LOGISIM_BUS_102[31:0]),
             .Sel(s_LOGISIM_NET_114));

   REGISTER_FLIP_FLOP_PC #(.ActiveLevel(1),
                           .NrOfBits(32))
      REGISTER_FILE_1 (.Clock(s_LOGISIM_NET_129),
                       .ClockEnable(s_LOGISIM_NET_49),
                       .D(s_LOGISIM_BUS_117[31:0]),
                       .Q(s_LOGISIM_BUS_48[31:0]),
                       .Reset(1'b0),
                       .Tick(1'b1),
                       .cs(1'b1),
                       .pre(1'b0));

   NOT_GATE      GATE_3 (.Input_1(s_LOGISIM_NET_17),
                         .Result(s_LOGISIM_NET_49));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_4 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_53[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_8[31:0]),
             .MuxOut(s_LOGISIM_BUS_1[31:0]),
             .Sel(s_LOGISIM_NET_96));

   Multiplexer_bus_4 #(.NrOfBits(32))
      MUX_5 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_69[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_53[31:0]),
             .MuxIn_2(s_LOGISIM_BUS_8[31:0]),
             .MuxIn_3(s_LOGISIM_BUS_12[31:0]),
             .MuxOut(s_LOGISIM_BUS_74[31:0]),
             .Sel(s_LOGISIM_BUS_58[1:0]));

   Bit_Extender_SIGN      BitExtender_1 (.imm_in(s_LOGISIM_BUS_43[15:0]),
                                         .imm_out(s_LOGISIM_BUS_131[31:0]));

   FPGADigit      FPGADigit_1 (.AN(s_LOGISIM_BUS_116[7:0]),
                               .SEG(s_LOGISIM_BUS_13[7:0]),
                               .clkx(s_LOGISIM_NET_151),
                               .dig(s_LOGISIM_BUS_88[31:0]));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_6 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_28[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_24[31:0]),
             .MuxOut(s_LOGISIM_BUS_133[31:0]),
             .Sel(s_LOGISIM_NET_23));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_7 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_64[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_120[31:0]),
             .MuxOut(s_LOGISIM_BUS_117[31:0]),
             .Sel(s_LOGISIM_NET_15));

   Bit_Extender      BitExtender_2 (.imm_in(s_LOGISIM_BUS_43[15:0]),
                                    .imm_out(s_LOGISIM_BUS_79[31:0]));

   Multiplexer_bus_2 #(.NrOfBits(5))
      MUX_8 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_26[4:0]),
             .MuxIn_1(s_LOGISIM_BUS_90[4:0]),
             .MuxOut(s_LOGISIM_BUS_111[4:0]),
             .Sel(s_LOGISIM_NET_150));

   OR_GATE #(.BubblesMask(0))
      GATE_4 (.Input_1(s_LOGISIM_NET_15),
              .Input_2(s_LOGISIM_NET_17),
              .Result(s_LOGISIM_NET_119));

   XOR_GATE #(.BubblesMask(0))
      GATE_5 (.Input_1(s_LOGISIM_NET_134),
              .Input_2(s_LOGISIM_NET_101),
              .Result(s_LOGISIM_NET_10));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_9 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_11[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_84[31:0]),
             .MuxOut(s_LOGISIM_BUS_64[31:0]),
             .Sel(s_LOGISIM_NET_36));

   Multiplexer_bus_4 #(.NrOfBits(32))
      MUX_10 (.Enable(1'b1),
              .MuxIn_0(s_LOGISIM_BUS_105[31:0]),
              .MuxIn_1(s_LOGISIM_BUS_53[31:0]),
              .MuxIn_2(s_LOGISIM_BUS_8[31:0]),
              .MuxIn_3(s_LOGISIM_BUS_12[31:0]),
              .MuxOut(s_LOGISIM_BUS_28[31:0]),
              .Sel(s_LOGISIM_BUS_29[1:0]));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(1))
      REGISTER_FILE_2 (.Clock(1'b0),
                       .ClockEnable(1'b1),
                       .D(1'b0),
                       .Q(s_LOGISIM_NET_126),
                       .Reset(s_LOGISIM_NET_130),
                       .Tick(1'b0),
                       .cs(1'b1),
                       .pre(s_LOGISIM_NET_115));


   /***************************************************************************
    ** Here all sub-circuits are defined                                     **
    ***************************************************************************/
   data_bypass_controller      data_bypass_controller_1 (.BranchCLR(s_LOGISIM_NET_15),
                                                         .EX_IR(s_LOGISIM_BUS_99[31:0]),
                                                         .EX_RegWrite(s_LOGISIM_NET_63),
                                                         .EX_WAdr(s_LOGISIM_BUS_71[4:0]),
                                                         .ID_AluSrc(s_LOGISIM_BUS_33[8]),
                                                         .ID_IR(s_LOGISIM_BUS_43[31:0]),
                                                         .ID_R1Adr(s_LOGISIM_BUS_42[4:0]),
                                                         .ID_R2Adr(s_LOGISIM_BUS_55[4:0]),
                                                         .LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                                                         .MEM_MemToReg(s_LOGISIM_NET_5),
                                                         .MEM_RegWrite(s_LOGISIM_NET_16),
                                                         .MEM_WAdr(s_LOGISIM_BUS_45[4:0]),
                                                         .R1_Forward(s_LOGISIM_BUS_4[1:0]),
                                                         .R2_Forward(s_LOGISIM_BUS_22[1:0]),
                                                         .Stall(s_LOGISIM_NET_17));

   PC_update_logic      PC_update_logic_1 (.BAddr(s_LOGISIM_BUS_68[31:0]),
                                           .Beq(s_LOGISIM_NET_127),
                                           .Blez(s_LOGISIM_NET_81),
                                           .Bne(s_LOGISIM_NET_83),
                                           .BranchSig(s_LOGISIM_NET_109),
                                           .Branched(s_LOGISIM_NET_101),
                                           .Equal(s_LOGISIM_NET_52),
                                           .JAL(s_LOGISIM_NET_73),
                                           .JAddr(s_LOGISIM_BUS_92[31:0]),
                                           .JMP(s_LOGISIM_NET_72),
                                           .JR(s_LOGISIM_NET_62),
                                           .JRAddr(s_LOGISIM_BUS_74[31:0]),
                                           .LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                                           .Less(s_LOGISIM_NET_118),
                                           .PC_Next(s_LOGISIM_BUS_56[31:0]),
                                           .PC_plus_four(s_LOGISIM_BUS_11[31:0]));

   EX_MEM      EX_MEM_1 (.AluResult(s_LOGISIM_BUS_112[31:0]),
                         .AluResult_Out(s_LOGISIM_BUS_12[31:0]),
                         .CLK(s_LOGISIM_NET_129),
                         .CLR(s_LOGISIM_NET_95),
                         .Eff(s_LOGISIM_NET_76),
                         .Eff_in(s_LOGISIM_NET_37),
                         .HalfW(s_LOGISIM_NET_104),
                         .HalfW_Out(s_LOGISIM_NET_18),
                         .Instr(s_LOGISIM_BUS_99[31:0]),
                         .Instr_out(s_LOGISIM_BUS_47[31:0]),
                         .JAL(s_LOGISIM_NET_73),
                         .JAL_Out(s_LOGISIM_NET_31),
                         .LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                         .MemToReg(s_LOGISIM_NET_113),
                         .MemToReg_Out(s_LOGISIM_NET_5),
                         .MemWrite(s_LOGISIM_NET_67),
                         .MemWrite_Out(s_LOGISIM_NET_20),
                         .PC(s_LOGISIM_BUS_86[31:0]),
                         .PC_Out(s_LOGISIM_BUS_6[31:0]),
                         .PC_plus_four(s_LOGISIM_BUS_123[31:0]),
                         .PC_plus_four_Out(s_LOGISIM_BUS_125[31:0]),
                         .R1(s_LOGISIM_BUS_74[31:0]),
                         .R1_Out(s_LOGISIM_BUS_70[31:0]),
                         .R2(s_LOGISIM_BUS_28[31:0]),
                         .R2_Out(s_LOGISIM_BUS_7[31:0]),
                         .RegWrite(s_LOGISIM_NET_63),
                         .RegWrite_Out(s_LOGISIM_NET_16),
                         .Syscall(s_LOGISIM_NET_100),
                         .Syscall_Out(s_LOGISIM_NET_30),
                         .WAdr(s_LOGISIM_BUS_71[4:0]),
                         .WAdr_Out(s_LOGISIM_BUS_45[4:0]));

   MIPS_ALU      MIPS_ALU_1 (.AluOP(s_LOGISIM_BUS_65[3:0]),
                             .Equal(s_LOGISIM_NET_52),
                             .LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                             .Less(s_LOGISIM_NET_118),
                             .Result(s_LOGISIM_BUS_112[31:0]),
                             .Result_2(),
                             .X(s_LOGISIM_BUS_74[31:0]),
                             .Y(s_LOGISIM_BUS_133[31:0]),
                             .shamt(s_LOGISIM_BUS_25[4:0]));

   MIPS_Regifile      MIPS_Regifile_1 (.Clk(s_LOGISIM_NET_129),
                                       .Din(s_LOGISIM_BUS_102[31:0]),
                                       .LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                                       .R1(s_LOGISIM_BUS_90[31:0]),
                                       .R1Adr(s_LOGISIM_BUS_42[4:0]),
                                       .R2(s_LOGISIM_BUS_44[31:0]),
                                       .R2Adr(s_LOGISIM_BUS_55[4:0]),
                                       .WAdr(s_LOGISIM_BUS_78[4:0]),
                                       .WE(s_LOGISIM_NET_40));

   BTB      BTB_1 (.BranchAddr(s_LOGISIM_BUS_56[31:0]),
                   .BranchSig(s_LOGISIM_NET_109),
                   .Branched(s_LOGISIM_NET_101),
                   .CLK(s_LOGISIM_NET_129),
                   .EX_PC(s_LOGISIM_BUS_86[31:0]),
                   .IF_PC(s_LOGISIM_BUS_48[31:0]),
                   .JumpAddr(s_LOGISIM_BUS_84[31:0]),
                   .LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                   .PredictJump(s_LOGISIM_NET_36));

   IF_ID      IF_ID_1 (.CLK(s_LOGISIM_NET_129),
                       .CLR(s_LOGISIM_NET_15),
                       .Eff(s_LOGISIM_NET_50),
                       .Instr(s_LOGISIM_BUS_66[31:0]),
                       .Instr_Out(s_LOGISIM_BUS_43[31:0]),
                       .LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                       .PC(s_LOGISIM_BUS_48[31:0]),
                       .PC_Out(s_LOGISIM_BUS_51[31:0]),
                       .PC_plus_four(s_LOGISIM_BUS_11[31:0]),
                       .PC_plus_four_Out(s_LOGISIM_BUS_54[31:0]),
                       .PredictJump(s_LOGISIM_NET_36),
                       .PredictJump_Out(s_LOGISIM_NET_39),
                       .Stall(s_LOGISIM_NET_49));

   MEM_WB      MEM_WB_1 (.AluResult(s_LOGISIM_BUS_12[31:0]),
                         .AluResult_Out(s_LOGISIM_BUS_53[31:0]),
                         .CLK(s_LOGISIM_NET_129),
                         .Eff(),
                         .Eff_in(s_LOGISIM_NET_76),
                         .Instr(s_LOGISIM_BUS_47[31:0]),
                         .Instr_out(s_LOGISIM_BUS_0[31:0]),
                         .JAL(s_LOGISIM_NET_31),
                         .JAL_Out(s_LOGISIM_NET_114),
                         .LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                         .MemToReg(s_LOGISIM_NET_5),
                         .MemToReg_Out(s_LOGISIM_NET_96),
                         .PC(s_LOGISIM_BUS_6[31:0]),
                         .PC_Out(s_LOGISIM_BUS_121[31:0]),
                         .PC_plus_four(s_LOGISIM_BUS_125[31:0]),
                         .PC_plus_four_Out(s_LOGISIM_BUS_75[31:0]),
                         .R2(s_LOGISIM_BUS_32[31:0]),
                         .R2_Out(s_LOGISIM_BUS_8[31:0]),
                         .RegWrite(s_LOGISIM_NET_16),
                         .RegWrite_Out(s_LOGISIM_NET_40),
                         .WAdr(s_LOGISIM_BUS_45[4:0]),
                         .WAdr_Out(s_LOGISIM_BUS_78[4:0]));

   ID_EX      ID_EX_1 (.AluOp(s_LOGISIM_BUS_33[7:4]),
                       .AluOp_Out(s_LOGISIM_BUS_65[3:0]),
                       .AluSrcB(s_LOGISIM_BUS_33[8]),
                       .AluSrcB_Out(s_LOGISIM_NET_23),
                       .BEQ(s_LOGISIM_BUS_34[4]),
                       .BEQ_Out(s_LOGISIM_NET_127),
                       .BLEZ(s_LOGISIM_BUS_34[3]),
                       .BLEZ_Out(s_LOGISIM_NET_81),
                       .BNE(s_LOGISIM_BUS_34[5]),
                       .BNE_Out(s_LOGISIM_NET_83),
                       .CLK(s_LOGISIM_NET_129),
                       .CLR(s_LOGISIM_NET_119),
                       .Eff(s_LOGISIM_NET_37),
                       .Eff_in(s_LOGISIM_NET_50),
                       .ExtData(s_LOGISIM_BUS_97[31:0]),
                       .ExtData_Out(s_LOGISIM_BUS_24[31:0]),
                       .HalfW(s_LOGISIM_BUS_33[3]),
                       .HalfW_Out(s_LOGISIM_NET_104),
                       .Instr(s_LOGISIM_BUS_43[31:0]),
                       .Instr_out(s_LOGISIM_BUS_99[31:0]),
                       .JAL(s_LOGISIM_BUS_34[2]),
                       .JAL_Out(s_LOGISIM_NET_73),
                       .JAddr(s_LOGISIM_BUS_98[31:0]),
                       .JAddr_Out(s_LOGISIM_BUS_92[31:0]),
                       .JMP(s_LOGISIM_BUS_34[1]),
                       .JMP_Out(s_LOGISIM_NET_72),
                       .JR(s_LOGISIM_BUS_34[0]),
                       .JR_Out(s_LOGISIM_NET_62),
                       .LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                       .MemToReg(s_LOGISIM_BUS_33[0]),
                       .MemToReg_Out(s_LOGISIM_NET_113),
                       .MemWrite(s_LOGISIM_BUS_33[2]),
                       .MemWrite_Out(s_LOGISIM_NET_67),
                       .PC(s_LOGISIM_BUS_51[31:0]),
                       .PC_Out(s_LOGISIM_BUS_86[31:0]),
                       .PC_plus_four(s_LOGISIM_BUS_54[31:0]),
                       .PC_plus_four_Out(s_LOGISIM_BUS_123[31:0]),
                       .PredictJump(s_LOGISIM_NET_39),
                       .PredictJump_Out(s_LOGISIM_NET_134),
                       .R1(s_LOGISIM_BUS_90[31:0]),
                       .R1_Forward(s_LOGISIM_BUS_4[1:0]),
                       .R1_Forward_Out(s_LOGISIM_BUS_58[1:0]),
                       .R1_Out(s_LOGISIM_BUS_69[31:0]),
                       .R2(s_LOGISIM_BUS_44[31:0]),
                       .R2_Forward(s_LOGISIM_BUS_22[1:0]),
                       .R2_Forward_Out(s_LOGISIM_BUS_29[1:0]),
                       .R2_Out(s_LOGISIM_BUS_105[31:0]),
                       .RegWrite(s_LOGISIM_BUS_33[1]),
                       .RegWrite_Out(s_LOGISIM_NET_63),
                       .Shamt(s_LOGISIM_BUS_111[4:0]),
                       .Shamt_Out(s_LOGISIM_BUS_25[4:0]),
                       .Syscall(s_LOGISIM_BUS_33[9]),
                       .Syscall_Out(s_LOGISIM_NET_100),
                       .WAdr(s_LOGISIM_BUS_61[4:0]),
                       .WAdr_Out(s_LOGISIM_BUS_71[4:0]));

   reg_choose_logic      reg_choose_logic_1 (.JAL(s_LOGISIM_BUS_34[2]),
                                             .LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                                             .L_11_15(s_LOGISIM_BUS_43[15:11]),
                                             .L_16_20(s_LOGISIM_BUS_43[20:16]),
                                             .L_21_25(s_LOGISIM_BUS_43[25:21]),
                                             .L_6_10(s_LOGISIM_BUS_43[10:6]),
                                             .PC_plus_four(s_LOGISIM_BUS_87[31:0]),
                                             .R1Adr(s_LOGISIM_BUS_42[4:0]),
                                             .R2Adr(s_LOGISIM_BUS_55[4:0]),
                                             .RDin(),
                                             .RegDst(s_LOGISIM_NET_136),
                                             .Shamt(s_LOGISIM_BUS_26[4:0]),
                                             .Syscall(s_LOGISIM_BUS_33[9]),
                                             .WAdr(s_LOGISIM_BUS_61[4:0]),
                                             .WriteBack_Data(s_LOGISIM_BUS_103[31:0]));

   syscall_process      syscall_process_1 (.CLK(s_LOGISIM_NET_129),
                                           .LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                                           .LedData(s_LOGISIM_BUS_88[31:0]),
                                           .Pause(s_LOGISIM_NET_115),
                                           .R1(s_LOGISIM_BUS_70[31:0]),
                                           .R2(s_LOGISIM_BUS_7[31:0]),
                                           .Syscall(s_LOGISIM_NET_30));

   sc_hard_wired_controller      sc_hard_wired_controller_1 (.ALU_OP(s_LOGISIM_BUS_33[7:4]),
                                                             .ALU_SRC(s_LOGISIM_BUS_33[8]),
                                                             .BLEZ(s_LOGISIM_BUS_34[3]),
                                                             .Beq(s_LOGISIM_BUS_34[4]),
                                                             .Bne(s_LOGISIM_BUS_34[5]),
                                                             .Func(s_LOGISIM_BUS_43[5:0]),
                                                             .HalfW(s_LOGISIM_BUS_33[3]),
                                                             .JAL(s_LOGISIM_BUS_34[2]),
                                                             .JMP(s_LOGISIM_BUS_34[1]),
                                                             .JR(s_LOGISIM_BUS_34[0]),
                                                             .LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                                                             .MemToReg(s_LOGISIM_BUS_33[0]),
                                                             .MemWrite(s_LOGISIM_BUS_33[2]),
                                                             .OP(s_LOGISIM_BUS_43[31:26]),
                                                             .RegDst(s_LOGISIM_NET_136),
                                                             .RegWrite(s_LOGISIM_BUS_33[1]),
                                                             .SignedExt(s_LOGISIM_NET_122),
                                                             .SysCALL(s_LOGISIM_BUS_33[9]),
                                                             .Vshamt(s_LOGISIM_NET_150));

   MIPS_MEM      MIPS_MEM_1 (.AluResult(s_LOGISIM_BUS_12[31:0]),
                             .CLK(s_LOGISIM_NET_129),
                             .HalfW(s_LOGISIM_NET_18),
                             .LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                             .MemReadData(s_LOGISIM_BUS_32[31:0]),
                             .MemWrite(s_LOGISIM_NET_20),
                             .WriteData(s_LOGISIM_BUS_7[31:0]));



endmodule
