/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : led_driver                                                   **
 **                                                                          **
 ******************************************************************************/

`timescale 1ns/1ps
module led_driver( CLK,
                   EN,
                   LOGISIM_CLOCK_TREE_0,
                   LineRst,
                   RST,
                   SET,
                   X,
                   Y,
                   R0,
                   R1,
                   R10,
                   R11,
                   R12,
                   R13,
                   R14,
                   R15,
                   R2,
                   R3,
                   R4,
                   R5,
                   R6,
                   R7,
                   R8,
                   R9);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input  CLK;
   input  EN;
   input[4:0]  LOGISIM_CLOCK_TREE_0;
   input  LineRst;
   input  RST;
   input  SET;
   input[3:0]  X;
   input[4:0]  Y;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output[31:0] R0;
   output[31:0] R1;
   output[31:0] R10;
   output[31:0] R11;
   output[31:0] R12;
   output[31:0] R13;
   output[31:0] R14;
   output[31:0] R15;
   output[31:0] R2;
   output[31:0] R3;
   output[31:0] R4;
   output[31:0] R5;
   output[31:0] R6;
   output[31:0] R7;
   output[31:0] R8;
   output[31:0] R9;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire[31:0] s_LOGISIM_BUS_0;
   wire[31:0] s_LOGISIM_BUS_1;
   wire[31:0] s_LOGISIM_BUS_10;
   wire[31:0] s_LOGISIM_BUS_11;
   wire[31:0] s_LOGISIM_BUS_12;
   wire[31:0] s_LOGISIM_BUS_13;
   wire[31:0] s_LOGISIM_BUS_16;
   wire[31:0] s_LOGISIM_BUS_17;
   wire[31:0] s_LOGISIM_BUS_18;
   wire[4:0] reverse_Y;
   wire[4:0] tunnel_Y;
   wire[3:0] s_LOGISIM_BUS_24;
   wire[4:0] s_LOGISIM_BUS_25;
   wire[31:0] s_LOGISIM_BUS_3;
   wire[31:0] s_LOGISIM_BUS_32;
   wire[31:0] mask;
   wire[31:0] s_LOGISIM_BUS_36;
   wire[31:0] s_LOGISIM_BUS_37;
   wire[31:0] s_LOGISIM_BUS_39;
   wire[31:0] s_LOGISIM_BUS_4;
   wire[31:0] s_LOGISIM_BUS_40;
   wire[31:0] YS;
   wire[31:0] s_LOGISIM_BUS_45;
   wire[4:0] s_LOGISIM_BUS_5;
   wire[4:0] s_LOGISIM_BUS_6;
   wire[31:0] s_LOGISIM_BUS_9;
   wire s_LOGISIM_NET_14;
   wire s_LOGISIM_NET_15;
   wire s_LOGISIM_NET_19;
   wire s_LOGISIM_NET_20;
   wire s_LOGISIM_NET_21;
   wire s_LOGISIM_NET_22;
   wire s_LOGISIM_NET_26;
   wire s_LOGISIM_NET_27;
   wire s_LOGISIM_NET_28;
   wire s_LOGISIM_NET_29;
   wire s_LOGISIM_NET_30;
   wire s_LOGISIM_NET_31;
   wire s_LOGISIM_NET_33;
   wire s_LOGISIM_NET_35;
   wire s_LOGISIM_NET_38;
   wire s_LOGISIM_NET_41;
   wire s_LOGISIM_NET_43;
   wire s_LOGISIM_NET_44;
   wire s_LOGISIM_NET_46;
   wire s_LOGISIM_NET_7;
   wire s_LOGISIM_NET_8;
   wire carry_1;
   wire carry_2;

   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_NET_44                   = RST;
   assign s_LOGISIM_NET_46                   = LineRst;
   assign s_LOGISIM_NET_43                   = SET;
   assign s_LOGISIM_NET_38                   = CLK;
   assign s_LOGISIM_NET_41                   = EN;
   assign s_LOGISIM_BUS_25[4:0]              = Y;
   assign s_LOGISIM_BUS_24[3:0]              = X;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign R0                                 = s_LOGISIM_BUS_1[31:0];
   assign R15                                = s_LOGISIM_BUS_4[31:0];
   assign R10                                = s_LOGISIM_BUS_40[31:0];
   assign R2                                 = s_LOGISIM_BUS_16[31:0];
   assign R13                                = s_LOGISIM_BUS_18[31:0];
   assign R1                                 = s_LOGISIM_BUS_10[31:0];
   assign R3                                 = s_LOGISIM_BUS_36[31:0];
   assign R4                                 = s_LOGISIM_BUS_0[31:0];
   assign R5                                 = s_LOGISIM_BUS_9[31:0];
   assign R14                                = s_LOGISIM_BUS_39[31:0];
   assign R12                                = s_LOGISIM_BUS_12[31:0];
   assign R11                                = s_LOGISIM_BUS_3[31:0];
   assign R9                                 = s_LOGISIM_BUS_17[31:0];
   assign R6                                 = s_LOGISIM_BUS_13[31:0];
   assign R8                                 = s_LOGISIM_BUS_11[31:0];
   assign R7                                 = s_LOGISIM_BUS_32[31:0];

   /***************************************************************************
    ** Here all in-lined components are defined                              **
    ***************************************************************************/
   assign s_LOGISIM_BUS_45[31:0] = 32'h80000000;

   assign s_LOGISIM_BUS_37[31:0] = 32'd1;



   /***************************************************************************
    ** Here all normal components are defined                                **
    ***************************************************************************/
   assign {carry_1, reverse_Y} = 5'd31 - tunnel_Y;
   assign {carry_2, tunnel_Y} = 5'd31 - s_LOGISIM_BUS_25;
   Shifter_32_bit #(.ShifterMode(0))
      Shifter_1 (.DataA(s_LOGISIM_BUS_37[31:0]),
                 .Result(mask[31:0]),
                 .ShiftAmount(tunnel_Y[4:0])); 
   Shifter_32_bit #(.ShifterMode(3))
      Shifter_2 (.DataA(s_LOGISIM_BUS_45[31:0]),
                 .Result(YS[31:0]),
                 .ShiftAmount(reverse_Y[4:0]));

   Decoder_16      DECODER_1 (.DecoderOut_0(s_LOGISIM_NET_19),
                              .DecoderOut_1(s_LOGISIM_NET_28),
                              .DecoderOut_10(s_LOGISIM_NET_30),
                              .DecoderOut_11(s_LOGISIM_NET_8),
                              .DecoderOut_12(s_LOGISIM_NET_22),
                              .DecoderOut_13(s_LOGISIM_NET_27),
                              .DecoderOut_14(s_LOGISIM_NET_31),
                              .DecoderOut_15(s_LOGISIM_NET_7),
                              .DecoderOut_2(s_LOGISIM_NET_15),
                              .DecoderOut_3(s_LOGISIM_NET_33),
                              .DecoderOut_4(s_LOGISIM_NET_20),
                              .DecoderOut_5(s_LOGISIM_NET_29),
                              .DecoderOut_6(s_LOGISIM_NET_14),
                              .DecoderOut_7(s_LOGISIM_NET_35),
                              .DecoderOut_8(s_LOGISIM_NET_21),
                              .DecoderOut_9(s_LOGISIM_NET_26),
                              .Enable(1'b1),
                              .Sel(s_LOGISIM_BUS_24[3:0]));


   /***************************************************************************
    ** Here all sub-circuits are defined                                     **
    ***************************************************************************/
   led_driver_unit      led_driver_unit_1 (.CLK(s_LOGISIM_NET_38),
                                           .EN(s_LOGISIM_NET_41),
                                           .LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                                           .LineRst(s_LOGISIM_NET_46),
                                           .R1(s_LOGISIM_BUS_1[31:0]),
                                           .RST(s_LOGISIM_NET_44),
                                           .SET(s_LOGISIM_NET_43),
                                           .Select(s_LOGISIM_NET_19),
                                           .YS(YS[31:0]),
                                           .mask(mask[31:0]));

   led_driver_unit      led_driver_unit_2 (.CLK(s_LOGISIM_NET_38),
                                           .EN(s_LOGISIM_NET_41),
                                           .LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                                           .LineRst(s_LOGISIM_NET_46),
                                           .R1(s_LOGISIM_BUS_0[31:0]),
                                           .RST(s_LOGISIM_NET_44),
                                           .SET(s_LOGISIM_NET_43),
                                           .Select(s_LOGISIM_NET_20),
                                           .YS(YS[31:0]),
                                           .mask(mask[31:0]));

   led_driver_unit      led_driver_unit_3 (.CLK(s_LOGISIM_NET_38),
                                           .EN(s_LOGISIM_NET_41),
                                           .LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                                           .LineRst(s_LOGISIM_NET_46),
                                           .R1(s_LOGISIM_BUS_36[31:0]),
                                           .RST(s_LOGISIM_NET_44),
                                           .SET(s_LOGISIM_NET_43),
                                           .Select(s_LOGISIM_NET_33),
                                           .YS(YS[31:0]),
                                           .mask(mask[31:0]));

   led_driver_unit      led_driver_unit_4 (.CLK(s_LOGISIM_NET_38),
                                           .EN(s_LOGISIM_NET_41),
                                           .LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                                           .LineRst(s_LOGISIM_NET_46),
                                           .R1(s_LOGISIM_BUS_10[31:0]),
                                           .RST(s_LOGISIM_NET_44),
                                           .SET(s_LOGISIM_NET_43),
                                           .Select(s_LOGISIM_NET_28),
                                           .YS(YS[31:0]),
                                           .mask(mask[31:0]));

   led_driver_unit      led_driver_unit_5 (.CLK(s_LOGISIM_NET_38),
                                           .EN(s_LOGISIM_NET_41),
                                           .LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                                           .LineRst(s_LOGISIM_NET_46),
                                           .R1(s_LOGISIM_BUS_18[31:0]),
                                           .RST(s_LOGISIM_NET_44),
                                           .SET(s_LOGISIM_NET_43),
                                           .Select(s_LOGISIM_NET_27),
                                           .YS(YS[31:0]),
                                           .mask(mask[31:0]));

   led_driver_unit      led_driver_unit_6 (.CLK(s_LOGISIM_NET_38),
                                           .EN(s_LOGISIM_NET_41),
                                           .LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                                           .LineRst(s_LOGISIM_NET_46),
                                           .R1(s_LOGISIM_BUS_12[31:0]),
                                           .RST(s_LOGISIM_NET_44),
                                           .SET(s_LOGISIM_NET_43),
                                           .Select(s_LOGISIM_NET_22),
                                           .YS(YS[31:0]),
                                           .mask(mask[31:0]));

   led_driver_unit      led_driver_unit_7 (.CLK(s_LOGISIM_NET_38),
                                           .EN(s_LOGISIM_NET_41),
                                           .LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                                           .LineRst(s_LOGISIM_NET_46),
                                           .R1(s_LOGISIM_BUS_13[31:0]),
                                           .RST(s_LOGISIM_NET_44),
                                           .SET(s_LOGISIM_NET_43),
                                           .Select(s_LOGISIM_NET_14),
                                           .YS(YS[31:0]),
                                           .mask(mask[31:0]));

   led_driver_unit      led_driver_unit_8 (.CLK(s_LOGISIM_NET_38),
                                           .EN(s_LOGISIM_NET_41),
                                           .LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                                           .LineRst(s_LOGISIM_NET_46),
                                           .R1(s_LOGISIM_BUS_40[31:0]),
                                           .RST(s_LOGISIM_NET_44),
                                           .SET(s_LOGISIM_NET_43),
                                           .Select(s_LOGISIM_NET_30),
                                           .YS(YS[31:0]),
                                           .mask(mask[31:0]));

   led_driver_unit      led_driver_unit_9 (.CLK(s_LOGISIM_NET_38),
                                           .EN(s_LOGISIM_NET_41),
                                           .LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                                           .LineRst(s_LOGISIM_NET_46),
                                           .R1(s_LOGISIM_BUS_32[31:0]),
                                           .RST(s_LOGISIM_NET_44),
                                           .SET(s_LOGISIM_NET_43),
                                           .Select(s_LOGISIM_NET_35),
                                           .YS(YS[31:0]),
                                           .mask(mask[31:0]));

   led_driver_unit      led_driver_unit_10 (.CLK(s_LOGISIM_NET_38),
                                            .EN(s_LOGISIM_NET_41),
                                            .LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                                            .LineRst(s_LOGISIM_NET_46),
                                            .R1(s_LOGISIM_BUS_11[31:0]),
                                            .RST(s_LOGISIM_NET_44),
                                            .SET(s_LOGISIM_NET_43),
                                            .Select(s_LOGISIM_NET_21),
                                            .YS(YS[31:0]),
                                            .mask(mask[31:0]));

   led_driver_unit      led_driver_unit_11 (.CLK(s_LOGISIM_NET_38),
                                            .EN(s_LOGISIM_NET_41),
                                            .LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                                            .LineRst(s_LOGISIM_NET_46),
                                            .R1(s_LOGISIM_BUS_9[31:0]),
                                            .RST(s_LOGISIM_NET_44),
                                            .SET(s_LOGISIM_NET_43),
                                            .Select(s_LOGISIM_NET_29),
                                            .YS(YS[31:0]),
                                            .mask(mask[31:0]));

   led_driver_unit      led_driver_unit_12 (.CLK(s_LOGISIM_NET_38),
                                            .EN(s_LOGISIM_NET_41),
                                            .LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                                            .LineRst(s_LOGISIM_NET_46),
                                            .R1(s_LOGISIM_BUS_3[31:0]),
                                            .RST(s_LOGISIM_NET_44),
                                            .SET(s_LOGISIM_NET_43),
                                            .Select(s_LOGISIM_NET_8),
                                            .YS(YS[31:0]),
                                            .mask(mask[31:0]));

   led_driver_unit      led_driver_unit_13 (.CLK(s_LOGISIM_NET_38),
                                            .EN(s_LOGISIM_NET_41),
                                            .LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                                            .LineRst(s_LOGISIM_NET_46),
                                            .R1(s_LOGISIM_BUS_4[31:0]),
                                            .RST(s_LOGISIM_NET_44),
                                            .SET(s_LOGISIM_NET_43),
                                            .Select(s_LOGISIM_NET_7),
                                            .YS(YS[31:0]),
                                            .mask(mask[31:0]));

   led_driver_unit      led_driver_unit_14 (.CLK(s_LOGISIM_NET_38),
                                            .EN(s_LOGISIM_NET_41),
                                            .LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                                            .LineRst(s_LOGISIM_NET_46),
                                            .R1(s_LOGISIM_BUS_16[31:0]),
                                            .RST(s_LOGISIM_NET_44),
                                            .SET(s_LOGISIM_NET_43),
                                            .Select(s_LOGISIM_NET_15),
                                            .YS(YS[31:0]),
                                            .mask(mask[31:0]));

   led_driver_unit      led_driver_unit_15 (.CLK(s_LOGISIM_NET_38),
                                            .EN(s_LOGISIM_NET_41),
                                            .LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                                            .LineRst(s_LOGISIM_NET_46),
                                            .R1(s_LOGISIM_BUS_39[31:0]),
                                            .RST(s_LOGISIM_NET_44),
                                            .SET(s_LOGISIM_NET_43),
                                            .Select(s_LOGISIM_NET_31),
                                            .YS(YS[31:0]),
                                            .mask(mask[31:0]));

   led_driver_unit      led_driver_unit_16 (.CLK(s_LOGISIM_NET_38),
                                            .EN(s_LOGISIM_NET_41),
                                            .LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                                            .LineRst(s_LOGISIM_NET_46),
                                            .R1(s_LOGISIM_BUS_17[31:0]),
                                            .RST(s_LOGISIM_NET_44),
                                            .SET(s_LOGISIM_NET_43),
                                            .Select(s_LOGISIM_NET_26),
                                            .YS(YS[31:0]),
                                            .mask(mask[31:0]));



endmodule
