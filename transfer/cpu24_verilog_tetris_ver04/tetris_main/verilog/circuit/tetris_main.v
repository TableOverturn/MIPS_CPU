/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : tetris_main                                                  **
 **                                                                          **
 ******************************************************************************/

`timescale 1ns/1ps
module tetris_main( Bit_Addr,
                    Go,
                    KB_CH,
                    KB_EN,
                    KB_IN,
                    LOGISIM_CLOCK_TREE_0,
                    NA,
                    SEG,
                    bitin);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input[8:0]  Bit_Addr;
   input  Go;
   input[6:0]  KB_CH;
   input  KB_IN;
   input[4:0]  LOGISIM_CLOCK_TREE_0;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output[7:0] NA;
   output[7:0] SEG;
   output bitin;
   output KB_EN;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire[31:0] s_LOGISIM_BUS_0;
   wire[31:0] s_LOGISIM_BUS_1;
   wire[31:0] s_LOGISIM_BUS_10;
   wire[31:0] s_LOGISIM_BUS_100;
   wire[31:0] s_LOGISIM_BUS_101;
   wire[31:0] s_LOGISIM_BUS_103;
   wire[31:0] s_LOGISIM_BUS_104;
   wire[31:0] s_LOGISIM_BUS_107;
   wire[4:0] s_LOGISIM_BUS_112;
   wire[31:0] s_LOGISIM_BUS_113;
   wire[31:0] s_LOGISIM_BUS_115;
   wire[31:0] s_LOGISIM_BUS_119;
   wire[31:0] s_LOGISIM_BUS_122;
   wire[31:0] s_LOGISIM_BUS_125;
   wire[4:0] s_LOGISIM_BUS_126;
   wire[31:0] s_LOGISIM_BUS_13;
   wire[31:0] s_LOGISIM_BUS_130;
   wire[4:0] s_LOGISIM_BUS_131;
   wire[31:0] s_LOGISIM_BUS_133;
   wire[31:0] s_LOGISIM_BUS_134;
   wire[31:0] s_LOGISIM_BUS_135;
   wire[4:0] s_LOGISIM_BUS_136;
   wire[31:0] s_LOGISIM_BUS_138;
   wire[31:0] s_LOGISIM_BUS_139;
   wire[31:0] s_LOGISIM_BUS_14;
   wire[31:0] s_LOGISIM_BUS_140;
   wire[31:0] s_LOGISIM_BUS_141;
   wire[31:0] s_LOGISIM_BUS_142;
   wire[4:0] s_LOGISIM_BUS_145;
   wire[31:0] s_LOGISIM_BUS_147;
   wire[31:0] s_LOGISIM_BUS_148;
   wire[31:0] s_LOGISIM_BUS_15;
   wire[31:0] s_LOGISIM_BUS_152;
   wire[31:0] s_LOGISIM_BUS_153;
   wire[31:0] s_LOGISIM_BUS_155;
   wire[31:0] s_LOGISIM_BUS_16;
   wire[31:0] s_LOGISIM_BUS_162;
   wire[31:0] s_LOGISIM_BUS_163;
   wire[31:0] s_LOGISIM_BUS_168;
   wire[31:0] s_LOGISIM_BUS_169;
   wire[31:0] s_LOGISIM_BUS_17;
   wire[31:0] s_LOGISIM_BUS_170;
   wire[7:0] s_LOGISIM_BUS_172;
   wire[31:0] s_LOGISIM_BUS_174;
   wire[4:0] s_LOGISIM_BUS_175;
   wire[31:0] s_LOGISIM_BUS_177;
   wire[31:0] s_LOGISIM_BUS_178;
   wire[31:0] s_LOGISIM_BUS_18;
   wire[31:0] s_LOGISIM_BUS_182;
   wire[31:0] s_LOGISIM_BUS_183;
   wire[1:0] s_LOGISIM_BUS_185;
   wire[31:0] s_LOGISIM_BUS_187;
   wire[4:0] s_LOGISIM_BUS_188;
   wire[31:0] s_LOGISIM_BUS_19;
   wire[31:0] s_LOGISIM_BUS_191;
   wire[31:0] Rdin;
   wire[25:0] s_LOGISIM_BUS_194;
   wire[4:0] s_LOGISIM_BUS_198;
   wire[31:0] s_LOGISIM_BUS_199;
   wire[31:0] s_LOGISIM_BUS_2;
   wire[31:0] s_LOGISIM_BUS_20;
   wire[8:0] s_LOGISIM_BUS_200;
   wire[31:0] s_LOGISIM_BUS_201;
   wire[31:0] s_LOGISIM_BUS_203;
   wire[31:0] s_LOGISIM_BUS_205;
   wire[7:0] s_LOGISIM_BUS_209;
   wire[31:0] s_LOGISIM_BUS_21;
   wire[3:0] s_LOGISIM_BUS_212;
   wire[31:0] s_LOGISIM_BUS_216;
   wire[31:0] s_LOGISIM_BUS_22;
   wire[31:0] s_LOGISIM_BUS_23;
   wire[31:0] s_LOGISIM_BUS_235;
   wire[31:0] s_LOGISIM_BUS_25;
   wire[31:0] s_LOGISIM_BUS_26;
   wire[29:0] s_LOGISIM_BUS_27;
   wire[1:0] s_LOGISIM_BUS_28;
   wire[31:0] s_LOGISIM_BUS_29;
   wire[31:0] s_LOGISIM_BUS_30;
   wire[4:0] s_LOGISIM_BUS_36;
   wire[4:0] s_LOGISIM_BUS_37;
   wire[31:0] s_LOGISIM_BUS_38;
   wire[1:0] s_LOGISIM_BUS_39;
   wire[1:0] s_LOGISIM_BUS_4;
   wire[9:0] s_LOGISIM_BUS_43;
   wire[5:0] s_LOGISIM_BUS_45;
   wire[31:0] s_LOGISIM_BUS_49;
   wire[31:0] s_LOGISIM_BUS_51;
   wire[31:0] s_LOGISIM_BUS_52;
   wire[31:0] s_LOGISIM_BUS_55;
   wire[31:0] s_LOGISIM_BUS_57;
   wire[31:0] s_LOGISIM_BUS_59;
   wire[31:0] s_LOGISIM_BUS_6;
   wire[31:0] s_LOGISIM_BUS_61;
   wire[4:0] s_LOGISIM_BUS_63;
   wire[4:0] s_LOGISIM_BUS_65;
   wire[1:0] s_LOGISIM_BUS_66;
   wire[31:0] s_LOGISIM_BUS_7;
   wire[4:0] s_LOGISIM_BUS_70;
   wire[4:0] s_LOGISIM_BUS_71;
   wire[4:0] s_LOGISIM_BUS_74;
   wire[3:0] s_LOGISIM_BUS_75;
   wire[31:0] s_LOGISIM_BUS_8;
   wire[31:0] s_LOGISIM_BUS_80;
   wire[31:0] s_LOGISIM_BUS_81;
   wire[4:0] s_LOGISIM_BUS_83;
   wire[31:0] s_LOGISIM_BUS_84;
   wire[31:0] s_LOGISIM_BUS_88;
   wire[31:0] s_LOGISIM_BUS_90;
   wire[31:0] s_LOGISIM_BUS_92;
   wire[6:0] s_LOGISIM_BUS_93;
   wire[5:0] s_LOGISIM_BUS_96;
   wire[31:0] s_LOGISIM_BUS_99;
   wire s_LOGISIM_NET_105;
   wire s_LOGISIM_NET_108;
   wire s_LOGISIM_NET_110;
   wire s_LOGISIM_NET_111;
   wire s_LOGISIM_NET_114;
   wire s_LOGISIM_NET_116;
   wire s_LOGISIM_NET_117;
   wire s_LOGISIM_NET_118;
   wire s_LOGISIM_NET_12;
   wire s_LOGISIM_NET_120;
   wire s_LOGISIM_NET_121;
   wire s_LOGISIM_NET_123;
   wire s_LOGISIM_NET_124;
   wire s_LOGISIM_NET_127;
   wire s_LOGISIM_NET_128;
   wire s_LOGISIM_NET_129;
   wire s_LOGISIM_NET_143;
   wire s_LOGISIM_NET_144;
   wire s_LOGISIM_NET_150;
   wire s_LOGISIM_NET_151;
   wire s_LOGISIM_NET_154;
   wire s_LOGISIM_NET_157;
   wire s_LOGISIM_NET_158;
   wire s_LOGISIM_NET_159;
   wire s_LOGISIM_NET_164;
   wire s_LOGISIM_NET_165;
   wire s_LOGISIM_NET_166;
   wire s_LOGISIM_NET_167;
   wire s_LOGISIM_NET_171;
   wire s_LOGISIM_NET_173;
   wire s_LOGISIM_NET_176;
   wire s_LOGISIM_NET_179;
   wire s_LOGISIM_NET_180;
   wire s_LOGISIM_NET_181;
   wire s_LOGISIM_NET_186;
   wire s_LOGISIM_NET_189;
   wire s_LOGISIM_NET_193;
   wire s_LOGISIM_NET_196;
   wire s_LOGISIM_NET_197;
   wire s_LOGISIM_NET_202;
   wire JAL_WB;
   wire s_LOGISIM_NET_206;
   wire s_LOGISIM_NET_207;
   wire s_LOGISIM_NET_208;
   wire s_LOGISIM_NET_210;
   wire s_LOGISIM_NET_211;
   wire s_LOGISIM_NET_213;
   wire s_LOGISIM_NET_214;
   wire s_LOGISIM_NET_215;
   wire s_LOGISIM_NET_218;
   wire s_LOGISIM_NET_219;
   wire s_LOGISIM_NET_220;
   wire s_LOGISIM_NET_234;
   wire s_LOGISIM_NET_24;
   wire s_LOGISIM_NET_31;
   wire s_LOGISIM_NET_32;
   wire s_LOGISIM_NET_33;
   wire s_LOGISIM_NET_34;
   wire s_LOGISIM_NET_41;
   wire s_LOGISIM_NET_42;
   wire s_LOGISIM_NET_47;
   wire s_LOGISIM_NET_48;
   wire s_LOGISIM_NET_5;
   wire s_LOGISIM_NET_50;
   wire s_LOGISIM_NET_53;
   wire s_LOGISIM_NET_54;
   wire s_LOGISIM_NET_56;
   wire s_LOGISIM_NET_58;
   wire s_LOGISIM_NET_62;
   wire s_LOGISIM_NET_64;
   wire s_LOGISIM_NET_73;
   wire s_LOGISIM_NET_77;
   wire s_LOGISIM_NET_78;
   wire s_LOGISIM_NET_79;
   wire s_LOGISIM_NET_82;
   wire s_LOGISIM_NET_85;
   wire s_LOGISIM_NET_86;
   wire s_LOGISIM_NET_87;
   wire s_LOGISIM_NET_97;


   /***************************************************************************
    ** Here all clock generator connections are defined                      **
    ***************************************************************************/
   assign s_LOGISIM_NET_110                  = LOGISIM_CLOCK_TREE_0[0];

   /***************************************************************************
    ** Here all wiring is defined                                            **
    ***************************************************************************/
   assign s_LOGISIM_BUS_27[0]                = s_LOGISIM_BUS_80[0];
   assign s_LOGISIM_BUS_170[2]               = s_LOGISIM_BUS_27[0];
   assign s_LOGISIM_BUS_27[1]                = s_LOGISIM_BUS_80[1];
   assign s_LOGISIM_BUS_170[3]               = s_LOGISIM_BUS_27[1];
   assign s_LOGISIM_BUS_27[2]                = s_LOGISIM_BUS_80[2];
   assign s_LOGISIM_BUS_170[4]               = s_LOGISIM_BUS_27[2];
   assign s_LOGISIM_BUS_27[3]                = s_LOGISIM_BUS_80[3];
   assign s_LOGISIM_BUS_170[5]               = s_LOGISIM_BUS_27[3];
   assign s_LOGISIM_BUS_27[4]                = s_LOGISIM_BUS_80[4];
   assign s_LOGISIM_BUS_170[6]               = s_LOGISIM_BUS_27[4];
   assign s_LOGISIM_BUS_27[5]                = s_LOGISIM_BUS_80[5];
   assign s_LOGISIM_BUS_170[7]               = s_LOGISIM_BUS_27[5];
   assign s_LOGISIM_BUS_27[6]                = s_LOGISIM_BUS_80[6];
   assign s_LOGISIM_BUS_170[8]               = s_LOGISIM_BUS_27[6];
   assign s_LOGISIM_BUS_27[7]                = s_LOGISIM_BUS_80[7];
   assign s_LOGISIM_BUS_170[9]               = s_LOGISIM_BUS_27[7];
   assign s_LOGISIM_BUS_27[8]                = s_LOGISIM_BUS_80[8];
   assign s_LOGISIM_BUS_170[10]              = s_LOGISIM_BUS_27[8];
   assign s_LOGISIM_BUS_27[9]                = s_LOGISIM_BUS_80[9];
   assign s_LOGISIM_BUS_170[11]              = s_LOGISIM_BUS_27[9];
   assign s_LOGISIM_BUS_27[10]               = s_LOGISIM_BUS_80[10];
   assign s_LOGISIM_BUS_170[12]              = s_LOGISIM_BUS_27[10];
   assign s_LOGISIM_BUS_27[11]               = s_LOGISIM_BUS_80[11];
   assign s_LOGISIM_BUS_170[13]              = s_LOGISIM_BUS_27[11];
   assign s_LOGISIM_BUS_27[12]               = s_LOGISIM_BUS_80[12];
   assign s_LOGISIM_BUS_170[14]              = s_LOGISIM_BUS_27[12];
   assign s_LOGISIM_BUS_27[13]               = s_LOGISIM_BUS_80[13];
   assign s_LOGISIM_BUS_170[15]              = s_LOGISIM_BUS_27[13];
   assign s_LOGISIM_BUS_27[14]               = s_LOGISIM_BUS_80[14];
   assign s_LOGISIM_BUS_170[16]              = s_LOGISIM_BUS_27[14];
   assign s_LOGISIM_BUS_27[15]               = s_LOGISIM_BUS_80[15];
   assign s_LOGISIM_BUS_170[17]              = s_LOGISIM_BUS_27[15];
   assign s_LOGISIM_BUS_27[16]               = s_LOGISIM_BUS_80[16];
   assign s_LOGISIM_BUS_170[18]              = s_LOGISIM_BUS_27[16];
   assign s_LOGISIM_BUS_27[17]               = s_LOGISIM_BUS_80[17];
   assign s_LOGISIM_BUS_170[19]              = s_LOGISIM_BUS_27[17];
   assign s_LOGISIM_BUS_27[18]               = s_LOGISIM_BUS_80[18];
   assign s_LOGISIM_BUS_170[20]              = s_LOGISIM_BUS_27[18];
   assign s_LOGISIM_BUS_27[19]               = s_LOGISIM_BUS_80[19];
   assign s_LOGISIM_BUS_170[21]              = s_LOGISIM_BUS_27[19];
   assign s_LOGISIM_BUS_27[20]               = s_LOGISIM_BUS_80[20];
   assign s_LOGISIM_BUS_170[22]              = s_LOGISIM_BUS_27[20];
   assign s_LOGISIM_BUS_27[21]               = s_LOGISIM_BUS_80[21];
   assign s_LOGISIM_BUS_170[23]              = s_LOGISIM_BUS_27[21];
   assign s_LOGISIM_BUS_27[22]               = s_LOGISIM_BUS_80[22];
   assign s_LOGISIM_BUS_170[24]              = s_LOGISIM_BUS_27[22];
   assign s_LOGISIM_BUS_27[23]               = s_LOGISIM_BUS_80[23];
   assign s_LOGISIM_BUS_170[25]              = s_LOGISIM_BUS_27[23];
   assign s_LOGISIM_BUS_27[24]               = s_LOGISIM_BUS_80[24];
   assign s_LOGISIM_BUS_170[26]              = s_LOGISIM_BUS_27[24];
   assign s_LOGISIM_BUS_27[25]               = s_LOGISIM_BUS_80[25];
   assign s_LOGISIM_BUS_170[27]              = s_LOGISIM_BUS_27[25];
   assign s_LOGISIM_BUS_27[26]               = s_LOGISIM_BUS_80[26];
   assign s_LOGISIM_BUS_170[28]              = s_LOGISIM_BUS_27[26];
   assign s_LOGISIM_BUS_27[27]               = s_LOGISIM_BUS_80[27];
   assign s_LOGISIM_BUS_170[29]              = s_LOGISIM_BUS_27[27];
   assign s_LOGISIM_BUS_27[28]               = s_LOGISIM_BUS_80[28];
   assign s_LOGISIM_BUS_170[30]              = s_LOGISIM_BUS_27[28];
   assign s_LOGISIM_BUS_27[29]               = s_LOGISIM_BUS_80[29];
   assign s_LOGISIM_BUS_170[31]              = s_LOGISIM_BUS_27[29];
   assign s_LOGISIM_BUS_194[0]               = s_LOGISIM_BUS_119[0];
   assign s_LOGISIM_BUS_107[2]               = s_LOGISIM_BUS_194[0];
   assign s_LOGISIM_BUS_194[1]               = s_LOGISIM_BUS_119[1];
   assign s_LOGISIM_BUS_107[3]               = s_LOGISIM_BUS_194[1];
   assign s_LOGISIM_BUS_194[2]               = s_LOGISIM_BUS_119[2];
   assign s_LOGISIM_BUS_107[4]               = s_LOGISIM_BUS_194[2];
   assign s_LOGISIM_BUS_194[3]               = s_LOGISIM_BUS_119[3];
   assign s_LOGISIM_BUS_107[5]               = s_LOGISIM_BUS_194[3];
   assign s_LOGISIM_BUS_194[4]               = s_LOGISIM_BUS_119[4];
   assign s_LOGISIM_BUS_107[6]               = s_LOGISIM_BUS_194[4];
   assign s_LOGISIM_BUS_194[5]               = s_LOGISIM_BUS_119[5];
   assign s_LOGISIM_BUS_107[7]               = s_LOGISIM_BUS_194[5];
   assign s_LOGISIM_BUS_194[6]               = s_LOGISIM_BUS_119[6];
   assign s_LOGISIM_BUS_107[8]               = s_LOGISIM_BUS_194[6];
   assign s_LOGISIM_BUS_194[7]               = s_LOGISIM_BUS_119[7];
   assign s_LOGISIM_BUS_107[9]               = s_LOGISIM_BUS_194[7];
   assign s_LOGISIM_BUS_194[8]               = s_LOGISIM_BUS_119[8];
   assign s_LOGISIM_BUS_107[10]              = s_LOGISIM_BUS_194[8];
   assign s_LOGISIM_BUS_194[9]               = s_LOGISIM_BUS_119[9];
   assign s_LOGISIM_BUS_107[11]              = s_LOGISIM_BUS_194[9];
   assign s_LOGISIM_BUS_194[10]              = s_LOGISIM_BUS_119[10];
   assign s_LOGISIM_BUS_107[12]              = s_LOGISIM_BUS_194[10];
   assign s_LOGISIM_BUS_194[11]              = s_LOGISIM_BUS_119[11];
   assign s_LOGISIM_BUS_107[13]              = s_LOGISIM_BUS_194[11];
   assign s_LOGISIM_BUS_194[12]              = s_LOGISIM_BUS_119[12];
   assign s_LOGISIM_BUS_107[14]              = s_LOGISIM_BUS_194[12];
   assign s_LOGISIM_BUS_194[13]              = s_LOGISIM_BUS_119[13];
   assign s_LOGISIM_BUS_107[15]              = s_LOGISIM_BUS_194[13];
   assign s_LOGISIM_BUS_194[14]              = s_LOGISIM_BUS_119[14];
   assign s_LOGISIM_BUS_107[16]              = s_LOGISIM_BUS_194[14];
   assign s_LOGISIM_BUS_194[15]              = s_LOGISIM_BUS_119[15];
   assign s_LOGISIM_BUS_107[17]              = s_LOGISIM_BUS_194[15];
   assign s_LOGISIM_BUS_194[16]              = s_LOGISIM_BUS_119[16];
   assign s_LOGISIM_BUS_107[18]              = s_LOGISIM_BUS_194[16];
   assign s_LOGISIM_BUS_194[17]              = s_LOGISIM_BUS_119[17];
   assign s_LOGISIM_BUS_107[19]              = s_LOGISIM_BUS_194[17];
   assign s_LOGISIM_BUS_194[18]              = s_LOGISIM_BUS_119[18];
   assign s_LOGISIM_BUS_107[20]              = s_LOGISIM_BUS_194[18];
   assign s_LOGISIM_BUS_194[19]              = s_LOGISIM_BUS_119[19];
   assign s_LOGISIM_BUS_107[21]              = s_LOGISIM_BUS_194[19];
   assign s_LOGISIM_BUS_194[20]              = s_LOGISIM_BUS_119[20];
   assign s_LOGISIM_BUS_107[22]              = s_LOGISIM_BUS_194[20];
   assign s_LOGISIM_BUS_194[21]              = s_LOGISIM_BUS_119[21];
   assign s_LOGISIM_BUS_107[23]              = s_LOGISIM_BUS_194[21];
   assign s_LOGISIM_BUS_194[22]              = s_LOGISIM_BUS_119[22];
   assign s_LOGISIM_BUS_107[24]              = s_LOGISIM_BUS_194[22];
   assign s_LOGISIM_BUS_194[23]              = s_LOGISIM_BUS_119[23];
   assign s_LOGISIM_BUS_107[25]              = s_LOGISIM_BUS_194[23];
   assign s_LOGISIM_BUS_194[24]              = s_LOGISIM_BUS_119[24];
   assign s_LOGISIM_BUS_107[26]              = s_LOGISIM_BUS_194[24];
   assign s_LOGISIM_BUS_194[25]              = s_LOGISIM_BUS_119[25];
   assign s_LOGISIM_BUS_107[27]              = s_LOGISIM_BUS_194[25];
   assign s_LOGISIM_BUS_212[0]               = s_LOGISIM_BUS_92[28];
   assign s_LOGISIM_BUS_107[28]              = s_LOGISIM_BUS_212[0];
   assign s_LOGISIM_BUS_212[1]               = s_LOGISIM_BUS_92[29];
   assign s_LOGISIM_BUS_107[29]              = s_LOGISIM_BUS_212[1];
   assign s_LOGISIM_BUS_212[2]               = s_LOGISIM_BUS_92[30];
   assign s_LOGISIM_BUS_107[30]              = s_LOGISIM_BUS_212[2];
   assign s_LOGISIM_BUS_212[3]               = s_LOGISIM_BUS_92[31];
   assign s_LOGISIM_BUS_107[31]              = s_LOGISIM_BUS_212[3];

   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_BUS_93[6:0]              = KB_CH;
   assign s_LOGISIM_NET_215                  = Go;
   assign s_LOGISIM_BUS_200[8:0]             = Bit_Addr;
   assign s_LOGISIM_NET_213                  = KB_IN;
   assign s_LOGISIM_NET_196                  = ~s_LOGISIM_NET_197;
   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign bitin                              = s_LOGISIM_NET_64;
   assign SEG                                = s_LOGISIM_BUS_172[7:0];
   assign NA                                 = s_LOGISIM_BUS_209[7:0];
   assign KB_EN                              = s_LOGISIM_NET_77;
   /***************************************************************************
    ** Here all in-lined components are defined                              **
    ***************************************************************************/
   assign s_LOGISIM_BUS_51[31:0] = 32'd0;

   assign s_LOGISIM_BUS_107[1:0] = 2'd0;

   assign s_LOGISIM_BUS_61[31:0] = 32'd1107296280;

   assign s_LOGISIM_BUS_162[31:0] = 32'd0;

   assign s_LOGISIM_NET_34 = 1'd0;

   assign s_LOGISIM_BUS_99[31:0] = 32'd0;

   assign s_LOGISIM_BUS_188[4:0] = 5'd0;

   assign s_LOGISIM_NET_82 = 1'd1;

   assign s_LOGISIM_NET_218 = 1'd0;

   assign s_LOGISIM_BUS_29[31:0] = 32'd0;

   assign s_LOGISIM_BUS_96[5:0] = 6'd16;

   assign s_LOGISIM_NET_111 = 1'd0;

   assign s_LOGISIM_BUS_139[31:0] = 32'd4;

   assign s_LOGISIM_BUS_74[4:0] = 5'd4;

   assign s_LOGISIM_BUS_175[4:0] = 5'd20;

   assign s_LOGISIM_NET_180 = 1'd1;

   assign s_LOGISIM_BUS_170[1:0] = 2'd0;

   assign s_LOGISIM_BUS_136[4:0] = 5'd4;


   /***************************************************************************
    ** Here all normal components are defined                                **
    ***************************************************************************/
   Adder #(.ExtendedBits(33),
           .NrOfBits(32))
      ADDER2C_1 (.CarryIn(s_LOGISIM_NET_82),
                 .CarryOut(),
                 .DataA(s_LOGISIM_BUS_51[31:0]),
                 .DataB(s_LOGISIM_BUS_135[31:0]),
                 .Result(s_LOGISIM_BUS_30[31:0]));

   AND_GATE #(.BubblesMask(1))
      GATE_1 (.Input_1(s_LOGISIM_NET_210),
              .Input_2(s_LOGISIM_NET_110),
              .Result(s_LOGISIM_NET_211));

   OR_GATE_3_INPUTS #(.BubblesMask(0))
      GATE_2 (.Input_1(s_LOGISIM_NET_143),
              .Input_2(s_LOGISIM_NET_5),
              .Input_3(s_LOGISIM_NET_32),
              .Result(s_LOGISIM_NET_108));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_1 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_133[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_216[31:0]),
             .MuxOut(s_LOGISIM_BUS_113[31:0]),
             .Sel(s_LOGISIM_NET_208));

   Bit_Extender_5_32      BitExtender_1 (.imm_in(s_LOGISIM_BUS_131[4:0]),
                                         .imm_out(s_LOGISIM_BUS_147[31:0]));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_2 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_203[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_88[31:0]),
             .MuxOut(s_LOGISIM_BUS_140[31:0]),
             .Sel(s_LOGISIM_NET_189));

   AND_GATE #(.BubblesMask(0))
      GATE_3 (.Input_1(s_LOGISIM_NET_24),
              .Input_2(s_LOGISIM_NET_179),
              .Result(s_LOGISIM_NET_144));

   Multiplexer_2      MUX_3 (.Enable(1'b1),
                             .MuxIn_0(s_LOGISIM_NET_12),
                             .MuxIn_1(s_LOGISIM_NET_180),
                             .MuxOut(s_LOGISIM_NET_154),
                             .Sel(s_LOGISIM_NET_108));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_4 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_183[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_90[31:0]),
             .MuxOut(Rdin[31:0]),
             .Sel(JAL_WB));

   Adder #(.ExtendedBits(33),
           .NrOfBits(32))
      ADDER2C_2 (.CarryIn(1'b0),
                 .CarryOut(),
                 .DataA(s_LOGISIM_BUS_59[31:0]),
                 .DataB(s_LOGISIM_BUS_139[31:0]),
                 .Result(s_LOGISIM_BUS_10[31:0]));

   OR_GATE_3_INPUTS #(.BubblesMask(0))
      GATE_4 (.Input_1(s_LOGISIM_NET_53),
              .Input_2(s_LOGISIM_NET_42),
              .Input_3(s_LOGISIM_NET_73),
              .Result(s_LOGISIM_NET_207));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_5 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_141[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_138[31:0]),
             .MuxOut(s_LOGISIM_BUS_148[31:0]),
             .Sel(s_LOGISIM_NET_165));

   ROM_IR_ROM      ROM_1 (.Address(s_LOGISIM_BUS_59[11:2]),
                          .Data(s_LOGISIM_BUS_191[31:0]));

   Multiplexer_bus_4 #(.NrOfBits(32))
      MUX_6 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_130[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_84[31:0]),
             .MuxIn_2(s_LOGISIM_BUS_8[31:0]),
             .MuxIn_3(s_LOGISIM_BUS_52[31:0]),
             .MuxOut(s_LOGISIM_BUS_178[31:0]),
             .Sel(s_LOGISIM_BUS_66[1:0]));

   Adder #(.ExtendedBits(33),
           .NrOfBits(32))
      ADDER2C_3 (.CarryIn(1'b0),
                 .CarryOut(),
                 .DataA(s_LOGISIM_BUS_203[31:0]),
                 .DataB(s_LOGISIM_BUS_170[31:0]),
                 .Result(s_LOGISIM_BUS_115[31:0]));

   XOR_GATE #(.BubblesMask(0))
      GATE_5 (.Input_1(s_LOGISIM_NET_157),
              .Input_2(s_LOGISIM_NET_189),
              .Result(s_LOGISIM_NET_78));

   NOT_GATE      GATE_6 (.Input_1(s_LOGISIM_NET_211),
                         .Result(s_LOGISIM_NET_151));

   Comparator #(.NrOfBits(5),
                .TwosComplement(0))
      Comparator_1 (.A_EQ_B(s_LOGISIM_NET_179),
                    .A_GT_B(),
                    .A_LT_B(),
                    .DataA(s_LOGISIM_BUS_119[25:21]),
                    .DataB(s_LOGISIM_BUS_188[4:0]));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_1 (.Clock(s_LOGISIM_NET_211),
                       .ClockEnable(1'b1),
                       .D(s_LOGISIM_BUS_30[31:0]),
                       .Q(s_LOGISIM_BUS_135[31:0]),
                       .Reset(1'b0),
                       .Tick(1'b1),
                       .cs(1'b1),
                       .pre(1'b0));

   Bit_Extender_7_32      BitExtender_2 (.imm_in(s_LOGISIM_BUS_93[6:0]),
                                         .imm_out(s_LOGISIM_BUS_49[31:0]));

   Multiplexer_bus_4 #(.NrOfBits(32))
      MUX_7 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_122[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_84[31:0]),
             .MuxIn_2(s_LOGISIM_BUS_8[31:0]),
             .MuxIn_3(s_LOGISIM_BUS_52[31:0]),
             .MuxOut(s_LOGISIM_BUS_38[31:0]),
             .Sel(s_LOGISIM_BUS_39[1:0]));

   Bit_Extender      BitExtender_3 (.imm_in(s_LOGISIM_BUS_119[15:0]),
                                    .imm_out(s_LOGISIM_BUS_133[31:0]));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_8 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_100[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_140[31:0]),
             .MuxOut(s_LOGISIM_BUS_153[31:0]),
             .Sel(s_LOGISIM_NET_53));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_9 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_84[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_8[31:0]),
             .MuxOut(s_LOGISIM_BUS_187[31:0]),
             .Sel(s_LOGISIM_NET_186));

   Multiplexer_bus_4 #(.NrOfBits(32))
      MUX_10 (.Enable(1'b1),
              .MuxIn_0(s_LOGISIM_BUS_29[31:0]),
              .MuxIn_1(s_LOGISIM_BUS_29[31:0]),
              .MuxIn_2(s_LOGISIM_BUS_29[31:0]),
              .MuxIn_3(s_LOGISIM_BUS_29[31:0]),
              .MuxOut(s_LOGISIM_BUS_0[31:0]),
              .Sel(s_LOGISIM_BUS_185[1:0]));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_11 (.Enable(1'b1),
              .MuxIn_0(s_LOGISIM_BUS_38[31:0]),
              .MuxIn_1(s_LOGISIM_BUS_80[31:0]),
              .MuxOut(s_LOGISIM_BUS_155[31:0]),
              .Sel(s_LOGISIM_NET_167));

   AND_GATE #(.BubblesMask(0))
      GATE_7 (.Input_1(s_LOGISIM_NET_219),
              .Input_2(s_LOGISIM_NET_213),
              .Result(s_LOGISIM_NET_32));

   OR_GATE #(.BubblesMask(0))
      GATE_8 (.Input_1(s_LOGISIM_NET_165),
              .Input_2(s_LOGISIM_NET_214),
              .Result(s_LOGISIM_NET_42));

   Multiplexer_bus_2 #(.NrOfBits(5))
      MUX_12 (.Enable(1'b1),
              .MuxIn_0(s_LOGISIM_BUS_126[4:0]),
              .MuxIn_1(s_LOGISIM_BUS_136[4:0]),
              .MuxOut(s_LOGISIM_BUS_145[4:0]),
              .Sel(s_LOGISIM_NET_108));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_13 (.Enable(1'b1),
              .MuxIn_0(s_LOGISIM_BUS_153[31:0]),
              .MuxIn_1(s_LOGISIM_BUS_0[31:0]),
              .MuxOut(s_LOGISIM_BUS_141[31:0]),
              .Sel(s_LOGISIM_NET_214));

   Multiplexer_bus_2 #(.NrOfBits(5))
      MUX_14 (.Enable(1'b1),
              .MuxIn_0(s_LOGISIM_BUS_135[4:0]),
              .MuxIn_1(s_LOGISIM_BUS_71[4:0]),
              .MuxOut(s_LOGISIM_BUS_131[4:0]),
              .Sel(s_LOGISIM_NET_196));
   wire carry;
   assign {carry, s_LOGISIM_BUS_71} = s_LOGISIM_BUS_135 - s_LOGISIM_BUS_175;

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_15 (.Enable(1'b1),
              .MuxIn_0(s_LOGISIM_BUS_187[31:0]),
              .MuxIn_1(s_LOGISIM_BUS_205[31:0]),
              .MuxOut(s_LOGISIM_BUS_125[31:0]),
              .Sel(s_LOGISIM_NET_121));

   OR_GATE_3_INPUTS #(.BubblesMask(0))
      GATE_9 (.Input_1(s_LOGISIM_NET_128),
              .Input_2(s_LOGISIM_NET_116),
              .Input_3(s_LOGISIM_NET_79),
              .Result(s_LOGISIM_NET_73));

   Comparator #(.NrOfBits(5),
                .TwosComplement(0))
      Comparator_2 (.A_EQ_B(),
                    .A_GT_B(),
                    .A_LT_B(s_LOGISIM_NET_197),
                    .DataA(s_LOGISIM_BUS_135[4:0]),
                    .DataB(s_LOGISIM_BUS_175[4:0]));

   OR_GATE #(.BubblesMask(0))
      GATE_10 (.Input_1(s_LOGISIM_NET_42),
               .Input_2(s_LOGISIM_NET_53),
               .Result(s_LOGISIM_NET_164));

   AND_GATE #(.BubblesMask(0))
      GATE_11 (.Input_1(s_LOGISIM_NET_78),
               .Input_2(s_LOGISIM_NET_124),
               .Result(s_LOGISIM_NET_53));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_16 (.Enable(1'b1),
              .MuxIn_0(s_LOGISIM_BUS_125[31:0]),
              .MuxIn_1(s_LOGISIM_BUS_49[31:0]),
              .MuxOut(s_LOGISIM_BUS_152[31:0]),
              .Sel(s_LOGISIM_NET_77));

   Multiplexer_bus_2 #(.NrOfBits(5))
      MUX_17 (.Enable(1'b1),
              .MuxIn_0(s_LOGISIM_BUS_37[4:0]),
              .MuxIn_1(s_LOGISIM_BUS_101[4:0]),
              .MuxOut(s_LOGISIM_BUS_198[4:0]),
              .Sel(s_LOGISIM_NET_234));

   FPGADigit      FPGADigit_1 (.AN(s_LOGISIM_BUS_209[7:0]),
                               .SEG(s_LOGISIM_BUS_172[7:0]),
                               .clkx(LOGISIM_CLOCK_TREE_0[4]),
                               .dig(s_LOGISIM_BUS_199[31:0]));

   Comparator #(.NrOfBits(32),
                .TwosComplement(1))
      Comparator_3 (.A_EQ_B(s_LOGISIM_NET_158),
                    .A_GT_B(),
                    .A_LT_B(),
                    .DataA(s_LOGISIM_BUS_191[31:0]),
                    .DataB(s_LOGISIM_BUS_61[31:0]));

   Bit_Extender_SIGN      BitExtender_4 (.imm_in(s_LOGISIM_BUS_119[15:0]),
                                         .imm_out(s_LOGISIM_BUS_216[31:0]));

   AND_GATE #(.BubblesMask(0))
      GATE_12 (.Input_1(s_LOGISIM_NET_24),
               .Input_2(s_LOGISIM_NET_33),
               .Result(s_LOGISIM_NET_31));

   NOT_GATE      GATE_13 (.Input_1(s_LOGISIM_NET_73),
                          .Result(s_LOGISIM_NET_118));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_18 (.Enable(1'b1),
              .MuxIn_0(s_LOGISIM_BUS_10[31:0]),
              .MuxIn_1(s_LOGISIM_BUS_182[31:0]),
              .MuxOut(s_LOGISIM_BUS_100[31:0]),
              .Sel(s_LOGISIM_NET_47));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(1))
      REGISTER_FILE_2 (.Clock(1'b0),
                       .ClockEnable(1'b1),
                       .D(1'b0),
                       .Q(s_LOGISIM_NET_210),
                       .Reset(s_LOGISIM_NET_215),
                       .Tick(1'b0),
                       .cs(1'b1),
                       .pre(s_LOGISIM_NET_129));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_19 (.Enable(1'b1),
              .MuxIn_0(s_LOGISIM_BUS_152[31:0]),
              .MuxIn_1(s_LOGISIM_BUS_147[31:0]),
              .MuxOut(s_LOGISIM_BUS_183[31:0]),
              .Sel(s_LOGISIM_NET_202));

   REGISTER_FLIP_FLOP_PC #(.ActiveLevel(1),
                           .NrOfBits(32))
      PC (.Clock(s_LOGISIM_NET_211),
                       .ClockEnable(s_LOGISIM_NET_118),
                       .D(s_LOGISIM_BUS_148[31:0]),
                       .Q(s_LOGISIM_BUS_59[31:0]),
                       .Reset(1'b0),
                       .Tick(1'b1),
                       .cs(1'b1),
                       .pre(1'b0));

   Comparator #(.NrOfBits(5),
                .TwosComplement(0))
      Comparator_4 (.A_EQ_B(s_LOGISIM_NET_33),
                    .A_GT_B(),
                    .A_LT_B(),
                    .DataA(s_LOGISIM_BUS_119[25:21]),
                    .DataB(s_LOGISIM_BUS_74[4:0]));

   Comparator #(.NrOfBits(6),
                .TwosComplement(0))
      Comparator_5 (.A_EQ_B(s_LOGISIM_NET_24),
                    .A_GT_B(),
                    .A_LT_B(),
                    .DataA(s_LOGISIM_BUS_96[5:0]),
                    .DataB(s_LOGISIM_BUS_119[31:26]));


   /***************************************************************************
    ** Here all sub-circuits are defined                                     **
    ***************************************************************************/
   MIPS_ALU      MIPS_ALU_1 (.AluOP(s_LOGISIM_BUS_75[3:0]),
                             .Equal(s_LOGISIM_NET_173),
                             .LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                             .Less(s_LOGISIM_NET_206),
                             .Result(s_LOGISIM_BUS_201[31:0]),
                             .Result_2(),
                             .X(s_LOGISIM_BUS_178[31:0]),
                             .Y(s_LOGISIM_BUS_155[31:0]),
                             .shamt(s_LOGISIM_BUS_36[4:0]));

   syscall_process      syscall_process_1 (.CLK(s_LOGISIM_NET_211),
                                           .CopyToRAM(s_LOGISIM_NET_114),
                                           .Cycles(s_LOGISIM_NET_143),
                                           .FrameFlush(s_LOGISIM_NET_117),
                                           .Get_Bitmap(s_LOGISIM_NET_5),
                                           .Get_KB_in(s_LOGISIM_NET_219),
                                           .LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                                           .LedData(s_LOGISIM_BUS_199[31:0]),
                                           .Pause(s_LOGISIM_NET_129),
                                           .R1(s_LOGISIM_BUS_81[31:0]),
                                           .R2(s_LOGISIM_BUS_103[31:0]),
                                           .Screen_opt(s_LOGISIM_NET_85),
                                           .Syscall(s_LOGISIM_NET_116));

   vga_sec_ram      vga_sec_ram_1 (.CLK(LOGISIM_CLOCK_TREE_0[4]),
                                   .LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                                   .R0(s_LOGISIM_BUS_14[31:0]),
                                   .R1(s_LOGISIM_BUS_15[31:0]),
                                   .R10(s_LOGISIM_BUS_13[31:0]),
                                   .R11(s_LOGISIM_BUS_25[31:0]),
                                   .R12(s_LOGISIM_BUS_26[31:0]),
                                   .R13(s_LOGISIM_BUS_1[31:0]),
                                   .R14(s_LOGISIM_BUS_2[31:0]),
                                   .R15(s_LOGISIM_BUS_7[31:0]),
                                   .R2(s_LOGISIM_BUS_16[31:0]),
                                   .R3(s_LOGISIM_BUS_17[31:0]),
                                   .R4(s_LOGISIM_BUS_18[31:0]),
                                   .R5(s_LOGISIM_BUS_19[31:0]),
                                   .R6(s_LOGISIM_BUS_20[31:0]),
                                   .R7(s_LOGISIM_BUS_21[31:0]),
                                   .R8(s_LOGISIM_BUS_22[31:0]),
                                   .R9(s_LOGISIM_BUS_23[31:0]),
                                   .Write(s_LOGISIM_NET_56),
                                   .input_X(s_LOGISIM_BUS_235[3:0]),
                                   .addr(s_LOGISIM_BUS_200[8:0]),
                                   .bit_out(s_LOGISIM_NET_64));

   data_bypass_controller      data_bypass_controller_1 (.BranchCLR(s_LOGISIM_NET_53),
                                                         .EX_IR(s_LOGISIM_BUS_169[31:0]),
                                                         .EX_RegWrite(s_LOGISIM_NET_123),
                                                         .EX_WAdr(s_LOGISIM_BUS_83[4:0]),
                                                         .ID_AluSrc(s_LOGISIM_BUS_43[8]),
                                                         .ID_IR(s_LOGISIM_BUS_119[31:0]),
                                                         .ID_R1Adr(s_LOGISIM_BUS_63[4:0]),
                                                         .ID_R2Adr(s_LOGISIM_BUS_65[4:0]),
                                                         .LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                                                         .MEM_MemToReg(s_LOGISIM_NET_48),
                                                         .MEM_RegWrite(s_LOGISIM_NET_12),
                                                         .MEM_WAdr(s_LOGISIM_BUS_126[4:0]),
                                                         .R1_Forward(s_LOGISIM_BUS_4[1:0]),
                                                         .R2_Forward(s_LOGISIM_BUS_28[1:0]),
                                                         .Stall(s_LOGISIM_NET_79));

   multistage_interruption_support      multistage_interruption_support_1 (.BreakPoint(s_LOGISIM_BUS_138[31:0]),
                                                                           .CLK(s_LOGISIM_NET_211),
                                                                           .ERET(s_LOGISIM_NET_165),
                                                                           .EX_IR(s_LOGISIM_BUS_169[31:0]),
                                                                           .INT_NUM(s_LOGISIM_BUS_185[1:0]),
                                                                           .INT_SIG(s_LOGISIM_NET_214),
                                                                           .IR1(s_LOGISIM_NET_34),
                                                                           .IR2(s_LOGISIM_NET_34),
                                                                           .IR3(s_LOGISIM_NET_34),
                                                                           .LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                                                                           .MFC0(s_LOGISIM_NET_50),
                                                                           .MTC0(s_LOGISIM_NET_58),
                                                                           .PC_in(s_LOGISIM_BUS_140[31:0]),
                                                                           .RST(s_LOGISIM_NET_218),
                                                                           .W1(),
                                                                           .W2(),
                                                                           .W3());

   reg_choose_logic      reg_choose_logic_1 (.JAL(s_LOGISIM_BUS_45[2]),
                                             .LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                                             .L_11_15(s_LOGISIM_BUS_119[15:11]),
                                             .L_16_20(s_LOGISIM_BUS_119[20:16]),
                                             .L_21_25(s_LOGISIM_BUS_119[25:21]),
                                             .L_6_10(s_LOGISIM_BUS_119[10:6]),
                                             .PC_plus_four(s_LOGISIM_BUS_99[31:0]),
                                             .R1Adr(s_LOGISIM_BUS_63[4:0]),
                                             .R2Adr(s_LOGISIM_BUS_65[4:0]),
                                             .RDin(),
                                             .RegDst(s_LOGISIM_NET_220),
                                             .Shamt(s_LOGISIM_BUS_37[4:0]),
                                             .Syscall(s_LOGISIM_BUS_43[9]),
                                             .WAdr(s_LOGISIM_BUS_70[4:0]),
                                             .WriteBack_Data(s_LOGISIM_BUS_162[31:0]));

   MIPS_MEM      MIPS_MEM_1 (.AluResult(s_LOGISIM_BUS_52[31:0]),
                             .CLK(s_LOGISIM_NET_211),
                             .HalfW(s_LOGISIM_NET_159),
                             .LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                             .MemReadData(s_LOGISIM_BUS_168[31:0]),
                             .MemWrite(s_LOGISIM_NET_54),
                             .WriteData(s_LOGISIM_BUS_103[31:0]));

   sc_hard_wired_controller      sc_hard_wired_controller_1 (.ALU_OP(s_LOGISIM_BUS_43[7:4]),
                                                             .ALU_SRC(s_LOGISIM_BUS_43[8]),
                                                             .BLEZ(s_LOGISIM_BUS_45[3]),
                                                             .Beq(s_LOGISIM_BUS_45[4]),
                                                             .Bne(s_LOGISIM_BUS_45[5]),
                                                             .Func(s_LOGISIM_BUS_119[5:0]),
                                                             .HalfW(s_LOGISIM_BUS_43[3]),
                                                             .JAL(s_LOGISIM_BUS_45[2]),
                                                             .JMP(s_LOGISIM_BUS_45[1]),
                                                             .JR(s_LOGISIM_BUS_45[0]),
                                                             .LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                                                             .MemToReg(s_LOGISIM_BUS_43[0]),
                                                             .MemWrite(s_LOGISIM_BUS_43[2]),
                                                             .OP(s_LOGISIM_BUS_119[31:26]),
                                                             .RegDst(s_LOGISIM_NET_220),
                                                             .RegWrite(s_LOGISIM_BUS_43[1]),
                                                             .SignedExt(s_LOGISIM_NET_208),
                                                             .SysCALL(s_LOGISIM_BUS_43[9]),
                                                             .Vshamt(s_LOGISIM_NET_234));

   MIPS_Regifile      MIPS_Regifile_1 (.Clk(s_LOGISIM_NET_211),
                                       .Din(Rdin[31:0]),
                                       .LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                                       .R1(s_LOGISIM_BUS_101[31:0]),
                                       .R1Adr(s_LOGISIM_BUS_63[4:0]),
                                       .R2(s_LOGISIM_BUS_55[31:0]),
                                       .R2Adr(s_LOGISIM_BUS_65[4:0]),
                                       .WAdr(s_LOGISIM_BUS_112[4:0]),
                                       .WE(s_LOGISIM_NET_62));

   ID_EX      ID_EX_1 (.AluOp(s_LOGISIM_BUS_43[7:4]),
                       .AluOp_Out(s_LOGISIM_BUS_75[3:0]),
                       .AluSrcB(s_LOGISIM_BUS_43[8]),
                       .AluSrcB_Out(s_LOGISIM_NET_167),
                       .BEQ(s_LOGISIM_BUS_45[4]),
                       .BEQ_Out(s_LOGISIM_NET_150),
                       .BLEZ(s_LOGISIM_BUS_45[3]),
                       .BLEZ_Out(s_LOGISIM_NET_181),
                       .BNE(s_LOGISIM_BUS_45[5]),
                       .BNE_Out(s_LOGISIM_NET_97),
                       .CLK(s_LOGISIM_NET_211),
                       .CLR(s_LOGISIM_NET_207),
                       .ERET(s_LOGISIM_NET_158),
                       .ERET_Out(s_LOGISIM_NET_165),
                       .ExtData(s_LOGISIM_BUS_113[31:0]),
                       .ExtData_Out(s_LOGISIM_BUS_80[31:0]),
                       .HalfW(s_LOGISIM_BUS_43[3]),
                       .HalfW_Out(s_LOGISIM_NET_193),
                       .Instr(s_LOGISIM_BUS_119[31:0]),
                       .Instr_out(s_LOGISIM_BUS_169[31:0]),
                       .JAL(s_LOGISIM_BUS_45[2]),
                       .JAL_Out(s_LOGISIM_NET_87),
                       .JAddr(s_LOGISIM_BUS_107[31:0]),
                       .JAddr_Out(s_LOGISIM_BUS_104[31:0]),
                       .JMP(s_LOGISIM_BUS_45[1]),
                       .JMP_Out(s_LOGISIM_NET_86),
                       .JR(s_LOGISIM_BUS_45[0]),
                       .JR_Out(s_LOGISIM_NET_166),
                       .LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                       .MFC(s_LOGISIM_NET_144),
                       .MFC_Out(s_LOGISIM_NET_50),
                       .MTC(s_LOGISIM_NET_31),
                       .MTC_Out(s_LOGISIM_NET_58),
                       .MemToReg(s_LOGISIM_BUS_43[0]),
                       .MemToReg_Out(s_LOGISIM_NET_127),
                       .MemWrite(s_LOGISIM_BUS_43[2]),
                       .MemWrite_Out(s_LOGISIM_NET_176),
                       .PC(s_LOGISIM_BUS_92[31:0]),
                       .PC_Out(s_LOGISIM_BUS_177[31:0]),
                       .PC_plus_four(s_LOGISIM_BUS_174[31:0]),
                       .PC_plus_four_Out(s_LOGISIM_BUS_203[31:0]),
                       .PredictJump(s_LOGISIM_NET_171),
                       .PredictJump_Out(s_LOGISIM_NET_157),
                       .R1(s_LOGISIM_BUS_101[31:0]),
                       .R1_Forward(s_LOGISIM_BUS_4[1:0]),
                       .R1_Forward_Out(s_LOGISIM_BUS_66[1:0]),
                       .R1_Out(s_LOGISIM_BUS_130[31:0]),
                       .R2(s_LOGISIM_BUS_55[31:0]),
                       .R2_Forward(s_LOGISIM_BUS_28[1:0]),
                       .R2_Forward_Out(s_LOGISIM_BUS_39[1:0]),
                       .R2_Out(s_LOGISIM_BUS_122[31:0]),
                       .RegWrite(s_LOGISIM_BUS_43[1]),
                       .RegWrite_Out(s_LOGISIM_NET_123),
                       .Shamt(s_LOGISIM_BUS_198[4:0]),
                       .Shamt_Out(s_LOGISIM_BUS_36[4:0]),
                       .Syscall(s_LOGISIM_BUS_43[9]),
                       .Syscall_Out(s_LOGISIM_NET_128),
                       .WAdr(s_LOGISIM_BUS_70[4:0]),
                       .WAdr_Out(s_LOGISIM_BUS_83[4:0]));

   PC_update_logic      PC_update_logic_1 (.BAddr(s_LOGISIM_BUS_115[31:0]),
                                           .Beq(s_LOGISIM_NET_150),
                                           .Blez(s_LOGISIM_NET_181),
                                           .Bne(s_LOGISIM_NET_97),
                                           .BranchSig(s_LOGISIM_NET_124),
                                           .Branched(s_LOGISIM_NET_189),
                                           .Equal(s_LOGISIM_NET_173),
                                           .JAL(s_LOGISIM_NET_87),
                                           .JAddr(s_LOGISIM_BUS_104[31:0]),
                                           .JMP(s_LOGISIM_NET_86),
                                           .JR(s_LOGISIM_NET_166),
                                           .JRAddr(s_LOGISIM_BUS_178[31:0]),
                                           .LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                                           .Less(s_LOGISIM_NET_206),
                                           .PC_Next(s_LOGISIM_BUS_88[31:0]),
                                           .PC_plus_four(s_LOGISIM_BUS_10[31:0]));

   EX_MEM      EX_MEM_1 (.AluResult(s_LOGISIM_BUS_201[31:0]),
                         .AluResult_Out(s_LOGISIM_BUS_52[31:0]),
                         .CLK(s_LOGISIM_NET_211),
                         .CLR(s_LOGISIM_NET_111),
                         .HalfW(s_LOGISIM_NET_193),
                         .HalfW_Out(s_LOGISIM_NET_159),
                         .Instr(s_LOGISIM_BUS_169[31:0]),
                         .Instr_out(s_LOGISIM_BUS_57[31:0]),
                         .JAL(s_LOGISIM_NET_87),
                         .JAL_Out(s_LOGISIM_NET_41),
                         .LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                         .MemToReg(s_LOGISIM_NET_127),
                         .MemToReg_Out(s_LOGISIM_NET_48),
                         .MemWrite(s_LOGISIM_NET_176),
                         .MemWrite_Out(s_LOGISIM_NET_54),
                         .PC(s_LOGISIM_BUS_177[31:0]),
                         .PC_Out(s_LOGISIM_BUS_6[31:0]),
                         .PC_plus_four(s_LOGISIM_BUS_203[31:0]),
                         .PC_plus_four_Out(s_LOGISIM_BUS_142[31:0]),
                         .R1(s_LOGISIM_BUS_178[31:0]),
                         .R1_Out(s_LOGISIM_BUS_81[31:0]),
                         .R2(s_LOGISIM_BUS_38[31:0]),
                         .R2_Out(s_LOGISIM_BUS_103[31:0]),
                         .RegWrite(s_LOGISIM_NET_123),
                         .RegWrite_Out(s_LOGISIM_NET_12),
                         .Syscall(s_LOGISIM_NET_128),
                         .Syscall_Out(s_LOGISIM_NET_116),
                         .WAdr(s_LOGISIM_BUS_83[4:0]),
                         .WAdr_Out(s_LOGISIM_BUS_126[4:0]));

   led_driver      led_driver_1 (.CLK(LOGISIM_CLOCK_TREE_0[0]),
                                 .EN(s_LOGISIM_NET_120),
                                 .LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                                 .LineRst(s_LOGISIM_BUS_235[11]),
                                 .R0(s_LOGISIM_BUS_14[31:0]),
                                 .R1(s_LOGISIM_BUS_15[31:0]),
                                 .R10(s_LOGISIM_BUS_13[31:0]),
                                 .R11(s_LOGISIM_BUS_25[31:0]),
                                 .R12(s_LOGISIM_BUS_26[31:0]),
                                 .R13(s_LOGISIM_BUS_1[31:0]),
                                 .R14(s_LOGISIM_BUS_2[31:0]),
                                 .R15(s_LOGISIM_BUS_7[31:0]),
                                 .R2(s_LOGISIM_BUS_16[31:0]),
                                 .R3(s_LOGISIM_BUS_17[31:0]),
                                 .R4(s_LOGISIM_BUS_18[31:0]),
                                 .R5(s_LOGISIM_BUS_19[31:0]),
                                 .R6(s_LOGISIM_BUS_20[31:0]),
                                 .R7(s_LOGISIM_BUS_21[31:0]),
                                 .R8(s_LOGISIM_BUS_22[31:0]),
                                 .R9(s_LOGISIM_BUS_23[31:0]),
                                 .RST(s_LOGISIM_BUS_235[12]),
                                 .SET(s_LOGISIM_BUS_235[10]),
                                 .X(s_LOGISIM_BUS_235[3:0]),
                                 .Y(s_LOGISIM_BUS_235[9:5]));

   MEM_WB      MEM_WB_1 (.AluResult(s_LOGISIM_BUS_52[31:0]),
                         .AluResult_Out(s_LOGISIM_BUS_84[31:0]),
                         .CLK(s_LOGISIM_NET_211),
                         .CopyToRAM(s_LOGISIM_NET_114),
                         .CopyToRAM_Out(s_LOGISIM_NET_56),
                         .Cycles(s_LOGISIM_NET_143),
                         .FrameFlush(s_LOGISIM_NET_117),
                         .FrameFlush_Out(s_LOGISIM_NET_105),
                         .Get_Bitmap(s_LOGISIM_NET_5),
                         .Get_Bitmap_Out(s_LOGISIM_NET_121),
                         .Get_Cycles_Out(s_LOGISIM_NET_202),
                         .Instr(s_LOGISIM_BUS_57[31:0]),
                         .Instr_Out(s_LOGISIM_BUS_163[31:0]),
                         .JAL(s_LOGISIM_NET_41),
                         .JAL_Out(JAL_WB),
                         .KB_HIT(s_LOGISIM_NET_32),
                         .KB_HIT_Out(s_LOGISIM_NET_77),
                         .LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                         .MemToReg(s_LOGISIM_NET_48),
                         .MemToReg_Out(s_LOGISIM_NET_186),
                         .PC(s_LOGISIM_BUS_6[31:0]),
                         .PC_Out(s_LOGISIM_BUS_134[31:0]),
                         .PC_plus_four(s_LOGISIM_BUS_142[31:0]),
                         .PC_plus_four_Out(s_LOGISIM_BUS_90[31:0]),
                         .R2(s_LOGISIM_BUS_168[31:0]),
                         .R2_Out(s_LOGISIM_BUS_8[31:0]),
                         .RegWrite(s_LOGISIM_NET_154),
                         .RegWrite_Out(s_LOGISIM_NET_62),
                         .Screen_in(s_LOGISIM_BUS_103[31:0]),
                         .Screen_in_Out(s_LOGISIM_BUS_235[31:0]),
                         .Screen_ins_opt(s_LOGISIM_NET_85),
                         .Screen_ins_opt_Out(s_LOGISIM_NET_120),
                         .WAdr(s_LOGISIM_BUS_145[4:0]),
                         .WAdr_Out(s_LOGISIM_BUS_112[4:0]));

   IF_ID      IF_ID_1 (.CLK(s_LOGISIM_NET_211),
                       .CLR(s_LOGISIM_NET_164),
                       .Instr(s_LOGISIM_BUS_191[31:0]),
                       .Instr_Out(s_LOGISIM_BUS_119[31:0]),
                       .LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                       .PC(s_LOGISIM_BUS_59[31:0]),
                       .PC_Out(s_LOGISIM_BUS_92[31:0]),
                       .PC_plus_four(s_LOGISIM_BUS_10[31:0]),
                       .PC_plus_four_Out(s_LOGISIM_BUS_174[31:0]),
                       .PredictJump(s_LOGISIM_NET_47),
                       .PredictJump_Out(s_LOGISIM_NET_171),
                       .Stall(s_LOGISIM_NET_118));

   bitmap_get      bitmap_get_1 (.Control_Bit(s_LOGISIM_BUS_235[11:10]),
                                 .LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                                 .R0(s_LOGISIM_BUS_14[31:0]),
                                 .R1(s_LOGISIM_BUS_15[31:0]),
                                 .R10(s_LOGISIM_BUS_13[31:0]),
                                 .R11(s_LOGISIM_BUS_25[31:0]),
                                 .R12(s_LOGISIM_BUS_26[31:0]),
                                 .R13(s_LOGISIM_BUS_1[31:0]),
                                 .R14(s_LOGISIM_BUS_2[31:0]),
                                 .R15(s_LOGISIM_BUS_7[31:0]),
                                 .R2(s_LOGISIM_BUS_16[31:0]),
                                 .R3(s_LOGISIM_BUS_17[31:0]),
                                 .R4(s_LOGISIM_BUS_18[31:0]),
                                 .R5(s_LOGISIM_BUS_19[31:0]),
                                 .R6(s_LOGISIM_BUS_20[31:0]),
                                 .R7(s_LOGISIM_BUS_21[31:0]),
                                 .R8(s_LOGISIM_BUS_22[31:0]),
                                 .R9(s_LOGISIM_BUS_23[31:0]),
                                 .X(s_LOGISIM_BUS_235[3:0]),
                                 .Y(s_LOGISIM_BUS_235[9:5]),
                                 .bitmap_out(s_LOGISIM_BUS_205[31:0]));

   BTB      BTB_1 (.BranchAddr(s_LOGISIM_BUS_88[31:0]),
                   .BranchSig(s_LOGISIM_NET_124),
                   .Branched(s_LOGISIM_NET_189),
                   .CLK(s_LOGISIM_NET_211),
                   .EX_PC(s_LOGISIM_BUS_177[31:0]),
                   .IF_PC(s_LOGISIM_BUS_59[31:0]),
                   .JumpAddr(s_LOGISIM_BUS_182[31:0]),
                   .LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                   .PredictJump(s_LOGISIM_NET_47));



endmodule
