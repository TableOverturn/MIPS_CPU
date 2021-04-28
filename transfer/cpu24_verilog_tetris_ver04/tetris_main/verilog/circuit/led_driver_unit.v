/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : led_driver_unit                                              **
 **                                                                          **
 ******************************************************************************/

`timescale 1ns/1ps
module led_driver_unit( CLK,
                        EN,
                        LOGISIM_CLOCK_TREE_0,
                        LineRst,
                        RST,
                        SET,
                        Select,
                        YS,
                        mask,
                        R1);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input  CLK;
   input  EN;
   input[4:0]  LOGISIM_CLOCK_TREE_0;
   input  LineRst;
   input  RST;
   input  SET;
   input  Select;
   input[31:0]  YS;
   input[31:0]  mask;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output[31:0] R1;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire[31:0] s_LOGISIM_BUS_0;
   wire[31:0] s_LOGISIM_BUS_1;
   wire[30:0] s_LOGISIM_BUS_10;
   wire[31:0] s_LOGISIM_BUS_11;
   wire[31:0] s_LOGISIM_BUS_12;
   wire[31:0] s_LOGISIM_BUS_13;
   wire[31:0] s_LOGISIM_BUS_14;
   wire[31:0] s_LOGISIM_BUS_15;
   wire[31:0] s_LOGISIM_BUS_16;
   wire[31:0] s_LOGISIM_BUS_2;
   wire[31:0] s_LOGISIM_BUS_23;
   wire[31:0] s_LOGISIM_BUS_24;
   wire[31:0] s_LOGISIM_BUS_3;
   wire[31:0] s_LOGISIM_BUS_4;
   wire[31:0] s_LOGISIM_BUS_5;
   wire[31:0] s_LOGISIM_BUS_6;
   wire[31:0] s_LOGISIM_BUS_8;
   wire[31:0] s_LOGISIM_BUS_9;
   wire s_LOGISIM_NET_17;
   wire s_LOGISIM_NET_18;
   wire s_LOGISIM_NET_19;
   wire s_LOGISIM_NET_20;
   wire s_LOGISIM_NET_21;
   wire s_LOGISIM_NET_7;


   /***************************************************************************
    ** Here all wiring is defined                                            **
    ***************************************************************************/
   assign s_LOGISIM_BUS_10[0]                = s_LOGISIM_BUS_24[1];
   assign s_LOGISIM_BUS_23[0]                = s_LOGISIM_BUS_10[0];
   assign s_LOGISIM_BUS_10[1]                = s_LOGISIM_BUS_24[2];
   assign s_LOGISIM_BUS_23[1]                = s_LOGISIM_BUS_10[1];
   assign s_LOGISIM_BUS_10[2]                = s_LOGISIM_BUS_24[3];
   assign s_LOGISIM_BUS_23[2]                = s_LOGISIM_BUS_10[2];
   assign s_LOGISIM_BUS_10[3]                = s_LOGISIM_BUS_24[4];
   assign s_LOGISIM_BUS_23[3]                = s_LOGISIM_BUS_10[3];
   assign s_LOGISIM_BUS_10[4]                = s_LOGISIM_BUS_24[5];
   assign s_LOGISIM_BUS_23[4]                = s_LOGISIM_BUS_10[4];
   assign s_LOGISIM_BUS_10[5]                = s_LOGISIM_BUS_24[6];
   assign s_LOGISIM_BUS_23[5]                = s_LOGISIM_BUS_10[5];
   assign s_LOGISIM_BUS_10[6]                = s_LOGISIM_BUS_24[7];
   assign s_LOGISIM_BUS_23[6]                = s_LOGISIM_BUS_10[6];
   assign s_LOGISIM_BUS_10[7]                = s_LOGISIM_BUS_24[8];
   assign s_LOGISIM_BUS_23[7]                = s_LOGISIM_BUS_10[7];
   assign s_LOGISIM_BUS_10[8]                = s_LOGISIM_BUS_24[9];
   assign s_LOGISIM_BUS_23[8]                = s_LOGISIM_BUS_10[8];
   assign s_LOGISIM_BUS_10[9]                = s_LOGISIM_BUS_24[10];
   assign s_LOGISIM_BUS_23[9]                = s_LOGISIM_BUS_10[9];
   assign s_LOGISIM_BUS_10[10]               = s_LOGISIM_BUS_24[11];
   assign s_LOGISIM_BUS_23[10]               = s_LOGISIM_BUS_10[10];
   assign s_LOGISIM_BUS_10[11]               = s_LOGISIM_BUS_24[12];
   assign s_LOGISIM_BUS_23[11]               = s_LOGISIM_BUS_10[11];
   assign s_LOGISIM_BUS_10[12]               = s_LOGISIM_BUS_24[13];
   assign s_LOGISIM_BUS_23[12]               = s_LOGISIM_BUS_10[12];
   assign s_LOGISIM_BUS_10[13]               = s_LOGISIM_BUS_24[14];
   assign s_LOGISIM_BUS_23[13]               = s_LOGISIM_BUS_10[13];
   assign s_LOGISIM_BUS_10[14]               = s_LOGISIM_BUS_24[15];
   assign s_LOGISIM_BUS_23[14]               = s_LOGISIM_BUS_10[14];
   assign s_LOGISIM_BUS_10[15]               = s_LOGISIM_BUS_24[16];
   assign s_LOGISIM_BUS_23[15]               = s_LOGISIM_BUS_10[15];
   assign s_LOGISIM_BUS_10[16]               = s_LOGISIM_BUS_24[17];
   assign s_LOGISIM_BUS_23[16]               = s_LOGISIM_BUS_10[16];
   assign s_LOGISIM_BUS_10[17]               = s_LOGISIM_BUS_24[18];
   assign s_LOGISIM_BUS_23[17]               = s_LOGISIM_BUS_10[17];
   assign s_LOGISIM_BUS_10[18]               = s_LOGISIM_BUS_24[19];
   assign s_LOGISIM_BUS_23[18]               = s_LOGISIM_BUS_10[18];
   assign s_LOGISIM_BUS_10[19]               = s_LOGISIM_BUS_24[20];
   assign s_LOGISIM_BUS_23[19]               = s_LOGISIM_BUS_10[19];
   assign s_LOGISIM_BUS_10[20]               = s_LOGISIM_BUS_24[21];
   assign s_LOGISIM_BUS_23[20]               = s_LOGISIM_BUS_10[20];
   assign s_LOGISIM_BUS_10[21]               = s_LOGISIM_BUS_24[22];
   assign s_LOGISIM_BUS_23[21]               = s_LOGISIM_BUS_10[21];
   assign s_LOGISIM_BUS_10[22]               = s_LOGISIM_BUS_24[23];
   assign s_LOGISIM_BUS_23[22]               = s_LOGISIM_BUS_10[22];
   assign s_LOGISIM_BUS_10[23]               = s_LOGISIM_BUS_24[24];
   assign s_LOGISIM_BUS_23[23]               = s_LOGISIM_BUS_10[23];
   assign s_LOGISIM_BUS_10[24]               = s_LOGISIM_BUS_24[25];
   assign s_LOGISIM_BUS_23[24]               = s_LOGISIM_BUS_10[24];
   assign s_LOGISIM_BUS_10[25]               = s_LOGISIM_BUS_24[26];
   assign s_LOGISIM_BUS_23[25]               = s_LOGISIM_BUS_10[25];
   assign s_LOGISIM_BUS_10[26]               = s_LOGISIM_BUS_24[27];
   assign s_LOGISIM_BUS_23[26]               = s_LOGISIM_BUS_10[26];
   assign s_LOGISIM_BUS_10[27]               = s_LOGISIM_BUS_24[28];
   assign s_LOGISIM_BUS_23[27]               = s_LOGISIM_BUS_10[27];
   assign s_LOGISIM_BUS_10[28]               = s_LOGISIM_BUS_24[29];
   assign s_LOGISIM_BUS_23[28]               = s_LOGISIM_BUS_10[28];
   assign s_LOGISIM_BUS_10[29]               = s_LOGISIM_BUS_24[30];
   assign s_LOGISIM_BUS_23[29]               = s_LOGISIM_BUS_10[29];
   assign s_LOGISIM_BUS_10[30]               = s_LOGISIM_BUS_24[31];
   assign s_LOGISIM_BUS_23[30]               = s_LOGISIM_BUS_10[30];

   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_NET_17                   = SET;
   assign s_LOGISIM_NET_18                   = LineRst;
   assign s_LOGISIM_NET_21                   = EN;
   assign s_LOGISIM_NET_20                   = Select;
   assign s_LOGISIM_BUS_6[31:0]              = mask;
   assign s_LOGISIM_BUS_14[31:0]             = YS;
   assign s_LOGISIM_NET_7                    = CLK;
   assign s_LOGISIM_NET_19                   = RST;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign R1                                 = s_LOGISIM_BUS_5[31:0];

   /***************************************************************************
    ** Here all in-lined components are defined                              **
    ***************************************************************************/
   assign s_LOGISIM_BUS_23[31] = 1'd0;

   assign s_LOGISIM_BUS_13[31:0] = 32'd0;


   /***************************************************************************
    ** Here all normal components are defined                                **
    ***************************************************************************/
   AND_GATE_BUS #(.BubblesMask(0),
                  .NrOfBits(32))
      GATE_1 (.Input_1(s_LOGISIM_BUS_11[31:0]),
              .Input_2(s_LOGISIM_BUS_5[31:0]),
              .Result(s_LOGISIM_BUS_1[31:0]));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_1 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_12[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_13[31:0]),
             .MuxOut(s_LOGISIM_BUS_9[31:0]),
             .Sel(s_LOGISIM_NET_19));

   AND_GATE_BUS #(.BubblesMask(0),
                  .NrOfBits(32))
      GATE_2 (.Input_1(s_LOGISIM_BUS_16[31:0]),
              .Input_2(s_LOGISIM_BUS_5[31:0]),
              .Result(s_LOGISIM_BUS_15[31:0]));

   NOT_GATE_BUS #(.NrOfBits(32))
      GATE_3 (.Input_1(s_LOGISIM_BUS_14[31:0]),
              .Result(s_LOGISIM_BUS_11[31:0]));

   AND_GATE_BUS #(.BubblesMask(0),
                  .NrOfBits(32))
      GATE_4 (.Input_1(s_LOGISIM_BUS_14[31:0]),
              .Input_2(s_LOGISIM_BUS_5[31:0]),
              .Result(s_LOGISIM_BUS_24[31:0]));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_1 (.Clock(s_LOGISIM_NET_7),
                       .ClockEnable(s_LOGISIM_NET_21),
                       .D(s_LOGISIM_BUS_9[31:0]),
                       .Q(s_LOGISIM_BUS_5[31:0]),
                       .Reset(1'b0),
                       .Tick(1'b1),
                       .cs(1'b1),
                       .pre(1'b0));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_2 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_5[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_8[31:0]),
             .MuxOut(s_LOGISIM_BUS_4[31:0]),
             .Sel(s_LOGISIM_NET_20));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_3 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_4[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_0[31:0]),
             .MuxOut(s_LOGISIM_BUS_12[31:0]),
             .Sel(s_LOGISIM_NET_18));

   OR_GATE_BUS #(.BubblesMask(0),
                 .NrOfBits(32))
      GATE_5 (.Input_1(s_LOGISIM_BUS_1[31:0]),
              .Input_2(s_LOGISIM_BUS_3[31:0]),
              .Result(s_LOGISIM_BUS_0[31:0]));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_4 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_15[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_2[31:0]),
             .MuxOut(s_LOGISIM_BUS_8[31:0]),
             .Sel(s_LOGISIM_NET_17));

   NOT_GATE_BUS #(.NrOfBits(32))
      GATE_6 (.Input_1(s_LOGISIM_BUS_6[31:0]),
              .Result(s_LOGISIM_BUS_16[31:0]));

   AND_GATE_BUS #(.BubblesMask(0),
                  .NrOfBits(32))
      GATE_7 (.Input_1(s_LOGISIM_BUS_23[31:0]),
              .Input_2(s_LOGISIM_BUS_14[31:0]),
              .Result(s_LOGISIM_BUS_3[31:0]));

   OR_GATE_BUS #(.BubblesMask(0),
                 .NrOfBits(32))
      GATE_8 (.Input_1(s_LOGISIM_BUS_6[31:0]),
              .Input_2(s_LOGISIM_BUS_5[31:0]),
              .Result(s_LOGISIM_BUS_2[31:0]));



endmodule
