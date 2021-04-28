/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : syscall_process                                              **
 **                                                                          **
 ******************************************************************************/

`timescale 1ns/1ps
module syscall_process( CLK,
                        LOGISIM_CLOCK_TREE_0,
                        R1,
                        R2,
                        Syscall,
                        CopyToRAM,
                        Cycles,
                        FrameFlush,
                        Get_Bitmap,
                        Get_KB_in,
                        LedData,
                        Pause,
                        Screen_opt);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input  CLK;
   input[4:0]  LOGISIM_CLOCK_TREE_0;
   input[31:0]  R1;
   input[31:0]  R2;
   input  Syscall;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output CopyToRAM;
   output Cycles;
   output FrameFlush;
   output Get_Bitmap;
   output Get_KB_in;
   output[31:0] LedData;
   output Pause;
   output Screen_opt;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire[31:0] s_LOGISIM_BUS_11;
   wire[31:0] s_LOGISIM_BUS_12;
   wire[31:0] s_LOGISIM_BUS_13;
   wire[31:0] s_LOGISIM_BUS_14;
   wire[31:0] s_LOGISIM_BUS_15;
   wire[31:0] s_LOGISIM_BUS_16;
   wire[31:0] s_LOGISIM_BUS_26;
   wire[31:0] s_LOGISIM_BUS_27;
   wire[31:0] s_LOGISIM_BUS_28;
   wire[31:0] s_LOGISIM_BUS_29;
   wire[31:0] s_LOGISIM_BUS_3;
   wire s_LOGISIM_NET_0;
   wire s_LOGISIM_NET_1;
   wire s_LOGISIM_NET_10;
   wire s_LOGISIM_NET_17;
   wire s_LOGISIM_NET_18;
   wire s_LOGISIM_NET_19;
   wire s_LOGISIM_NET_2;
   wire s_LOGISIM_NET_20;
   wire s_LOGISIM_NET_21;
   wire s_LOGISIM_NET_22;
   wire s_LOGISIM_NET_23;
   wire s_LOGISIM_NET_24;
   wire s_LOGISIM_NET_25;
   wire s_LOGISIM_NET_4;
   wire s_LOGISIM_NET_5;
   wire s_LOGISIM_NET_6;
   wire s_LOGISIM_NET_7;
   wire s_LOGISIM_NET_8;
   wire s_LOGISIM_NET_9;


   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_NET_2                    = CLK;
   assign s_LOGISIM_NET_4                    = Syscall;
   assign s_LOGISIM_BUS_3[31:0]              = R1;
   assign s_LOGISIM_BUS_29[31:0]             = R2;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign LedData                            = s_LOGISIM_BUS_11[31:0];
   assign Get_Bitmap                         = s_LOGISIM_NET_23;
   assign Pause                              = s_LOGISIM_NET_25;
   assign Screen_opt                         = s_LOGISIM_NET_5;
   assign Cycles                             = s_LOGISIM_NET_6;
   assign CopyToRAM                          = s_LOGISIM_NET_8;
   assign Get_KB_in                          = s_LOGISIM_NET_7;
   assign FrameFlush                         = s_LOGISIM_NET_24;

   /***************************************************************************
    ** Here all in-lined components are defined                              **
    ***************************************************************************/
   assign s_LOGISIM_BUS_14[31:0] = 32'd32;

   assign s_LOGISIM_BUS_26[31:0] = 32'd50;

   assign s_LOGISIM_BUS_13[31:0] = 32'd16;

   assign s_LOGISIM_BUS_27[31:0] = 32'd33;

   assign s_LOGISIM_BUS_12[31:0] = 32'd34;

   assign s_LOGISIM_BUS_16[31:0] = 32'd35;

   assign s_LOGISIM_BUS_28[31:0] = 32'd36;

   assign s_LOGISIM_BUS_15[31:0] = 32'd49;


   /***************************************************************************
    ** Here all normal components are defined                                **
    ***************************************************************************/
   Comparator #(.NrOfBits(32),
                .TwosComplement(1))
      Comparator_1 (.A_EQ_B(s_LOGISIM_NET_17),
                    .A_GT_B(),
                    .A_LT_B(),
                    .DataA(s_LOGISIM_BUS_26[31:0]),
                    .DataB(s_LOGISIM_BUS_3[31:0]));

   Comparator #(.NrOfBits(32),
                .TwosComplement(1))
      Comparator_2 (.A_EQ_B(s_LOGISIM_NET_1),
                    .A_GT_B(),
                    .A_LT_B(),
                    .DataA(s_LOGISIM_BUS_3[31:0]),
                    .DataB(s_LOGISIM_BUS_28[31:0]));

   AND_GATE #(.BubblesMask(0))
      GATE_1 (.Input_1(s_LOGISIM_NET_4),
              .Input_2(s_LOGISIM_NET_21),
              .Result(s_LOGISIM_NET_7));

   AND_GATE #(.BubblesMask(0))
      GATE_2 (.Input_1(s_LOGISIM_NET_4),
              .Input_2(s_LOGISIM_NET_18),
              .Result(s_LOGISIM_NET_9));

   AND_GATE #(.BubblesMask(0))
      GATE_3 (.Input_1(s_LOGISIM_NET_4),
              .Input_2(s_LOGISIM_NET_0),
              .Result(s_LOGISIM_NET_23));

   Comparator #(.NrOfBits(32),
                .TwosComplement(1))
      Comparator_3 (.A_EQ_B(s_LOGISIM_NET_19),
                    .A_GT_B(),
                    .A_LT_B(),
                    .DataA(s_LOGISIM_BUS_3[31:0]),
                    .DataB(s_LOGISIM_BUS_14[31:0]));

   AND_GATE #(.BubblesMask(0))
      GATE_4 (.Input_1(s_LOGISIM_NET_4),
              .Input_2(s_LOGISIM_NET_1),
              .Result(s_LOGISIM_NET_24));

   Comparator #(.NrOfBits(32),
                .TwosComplement(1))
      Comparator_4 (.A_EQ_B(s_LOGISIM_NET_0),
                    .A_GT_B(),
                    .A_LT_B(),
                    .DataA(s_LOGISIM_BUS_3[31:0]),
                    .DataB(s_LOGISIM_BUS_27[31:0]));

   Comparator #(.NrOfBits(32),
                .TwosComplement(1))
      Comparator_5 (.A_EQ_B(s_LOGISIM_NET_18),
                    .A_GT_B(),
                    .A_LT_B(),
                    .DataA(s_LOGISIM_BUS_3[31:0]),
                    .DataB(s_LOGISIM_BUS_12[31:0]));

   Comparator #(.NrOfBits(32),
                .TwosComplement(1))
      Comparator_6 (.A_EQ_B(s_LOGISIM_NET_20),
                    .A_GT_B(),
                    .A_LT_B(),
                    .DataA(s_LOGISIM_BUS_3[31:0]),
                    .DataB(s_LOGISIM_BUS_15[31:0]));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_1 (.Clock(s_LOGISIM_NET_2),
                       .ClockEnable(s_LOGISIM_NET_9),
                       .D(s_LOGISIM_BUS_29[31:0]),
                       .Q(s_LOGISIM_BUS_11[31:0]),
                       .Reset(1'b0),
                       .Tick(1'b1),
                       .cs(1'b1),
                       .pre(1'b0));

   AND_GATE #(.BubblesMask(0))
      GATE_5 (.Input_1(s_LOGISIM_NET_4),
              .Input_2(s_LOGISIM_NET_19),
              .Result(s_LOGISIM_NET_5));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(1))
      REGISTER_FILE_2 (.Clock(s_LOGISIM_NET_2),
                       .ClockEnable(1'b1),
                       .D(s_LOGISIM_NET_10),
                       .Q(s_LOGISIM_NET_25),
                       .Reset(1'b0),
                       .Tick(1'b1),
                       .cs(1'b1),
                       .pre(1'b0));

   AND_GATE #(.BubblesMask(0))
      GATE_6 (.Input_1(s_LOGISIM_NET_4),
              .Input_2(s_LOGISIM_NET_20),
              .Result(s_LOGISIM_NET_6));

   AND_GATE #(.BubblesMask(0))
      GATE_7 (.Input_1(s_LOGISIM_NET_4),
              .Input_2(s_LOGISIM_NET_17),
              .Result(s_LOGISIM_NET_10));

   AND_GATE #(.BubblesMask(0))
      GATE_8 (.Input_1(s_LOGISIM_NET_4),
              .Input_2(s_LOGISIM_NET_22),
              .Result(s_LOGISIM_NET_8));

   Comparator #(.NrOfBits(32),
                .TwosComplement(1))
      Comparator_7 (.A_EQ_B(s_LOGISIM_NET_21),
                    .A_GT_B(),
                    .A_LT_B(),
                    .DataA(s_LOGISIM_BUS_3[31:0]),
                    .DataB(s_LOGISIM_BUS_13[31:0]));

   Comparator #(.NrOfBits(32),
                .TwosComplement(1))
      Comparator_8 (.A_EQ_B(s_LOGISIM_NET_22),
                    .A_GT_B(),
                    .A_LT_B(),
                    .DataA(s_LOGISIM_BUS_3[31:0]),
                    .DataB(s_LOGISIM_BUS_16[31:0]));



endmodule
