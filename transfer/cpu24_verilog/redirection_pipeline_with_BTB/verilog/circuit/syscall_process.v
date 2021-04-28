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
                        LedData,
                        Pause);

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
   output[31:0] LedData;
   output Pause;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire[31:0] s_LOGISIM_BUS_1;
   wire[31:0] s_LOGISIM_BUS_6;
   wire[31:0] s_LOGISIM_BUS_8;
   wire[31:0] s_LOGISIM_BUS_9;
   wire s_LOGISIM_NET_0;
   wire s_LOGISIM_NET_2;
   wire s_LOGISIM_NET_3;
   wire s_LOGISIM_NET_4;
   wire s_LOGISIM_NET_5;
   wire s_LOGISIM_NET_7;


   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_BUS_9[31:0]              = R2;
   assign s_LOGISIM_NET_0                    = Syscall;
   assign s_LOGISIM_BUS_1[31:0]              = R1;
   assign s_LOGISIM_NET_5                    = CLK;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign Pause                              = s_LOGISIM_NET_7;
   assign LedData                            = s_LOGISIM_BUS_6[31:0];

   /***************************************************************************
    ** Here all in-lined components are defined                              **
    ***************************************************************************/
   assign s_LOGISIM_BUS_8[31:0] = 32'd34;


   /***************************************************************************
    ** Here all normal components are defined                                **
    ***************************************************************************/
   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(1))
      REGISTER_FILE_1 (.Clock(s_LOGISIM_NET_5),
                       .ClockEnable(1'b1),
                       .D(s_LOGISIM_NET_2),
                       .Q(s_LOGISIM_NET_7),
                       .Reset(1'b0),
                       .Tick(1'b1),
                       .cs(1'b1),
                       .pre(1'b0));

   Comparator #(.NrOfBits(32),
                .TwosComplement(1))
      Comparator_1 (.A_EQ_B(s_LOGISIM_NET_3),
                    .A_GT_B(),
                    .A_LT_B(),
                    .DataA(s_LOGISIM_BUS_1[31:0]),
                    .DataB(s_LOGISIM_BUS_8[31:0]));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_2 (.Clock(s_LOGISIM_NET_5),
                       .ClockEnable(s_LOGISIM_NET_4),
                       .D(s_LOGISIM_BUS_9[31:0]),
                       .Q(s_LOGISIM_BUS_6[31:0]),
                       .Reset(1'b0),
                       .Tick(1'b1),
                       .cs(1'b1),
                       .pre(1'b0));

   AND_GATE #(.BubblesMask(0))
      GATE_1 (.Input_1(s_LOGISIM_NET_0),
              .Input_2(s_LOGISIM_NET_3),
              .Result(s_LOGISIM_NET_4));

   AND_GATE #(.BubblesMask(2))
      GATE_2 (.Input_1(s_LOGISIM_NET_0),
              .Input_2(s_LOGISIM_NET_3),
              .Result(s_LOGISIM_NET_2));



endmodule
