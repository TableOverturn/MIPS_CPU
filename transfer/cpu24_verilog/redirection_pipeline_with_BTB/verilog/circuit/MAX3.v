/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : MAX3                                                         **
 **                                                                          **
 ******************************************************************************/

`timescale 1ns/1ps
module MAX3( LOGISIM_CLOCK_TREE_0,
             X,
             X_Number,
             Y,
             Y_Number,
             MAX,
             Max_Number);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input[4:0]  LOGISIM_CLOCK_TREE_0;
   input[15:0]  X;
   input[2:0]  X_Number;
   input[15:0]  Y;
   input[2:0]  Y_Number;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output[15:0] MAX;
   output[2:0] Max_Number;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire[15:0] s_LOGISIM_BUS_0;
   wire[15:0] s_LOGISIM_BUS_1;
   wire[2:0] s_LOGISIM_BUS_3;
   wire[2:0] s_LOGISIM_BUS_4;
   wire[2:0] s_LOGISIM_BUS_5;
   wire[15:0] s_LOGISIM_BUS_8;
   wire s_LOGISIM_NET_2;
   wire s_LOGISIM_NET_6;
   wire s_LOGISIM_NET_7;


   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_BUS_3[2:0]               = X_Number;
   assign s_LOGISIM_BUS_1[15:0]              = X;
   assign s_LOGISIM_BUS_4[2:0]               = Y_Number;
   assign s_LOGISIM_BUS_0[15:0]              = Y;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign MAX                                = s_LOGISIM_BUS_8[15:0];
   assign Max_Number                         = s_LOGISIM_BUS_5[2:0];

   /***************************************************************************
    ** Here all normal components are defined                                **
    ***************************************************************************/
   OR_GATE #(.BubblesMask(0))
      GATE_1 (.Input_1(s_LOGISIM_NET_7),
              .Input_2(s_LOGISIM_NET_2),
              .Result(s_LOGISIM_NET_6));

   Multiplexer_bus_2 #(.NrOfBits(3))
      MUX_1 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_4[2:0]),
             .MuxIn_1(s_LOGISIM_BUS_3[2:0]),
             .MuxOut(s_LOGISIM_BUS_5[2:0]),
             .Sel(s_LOGISIM_NET_6));

   Multiplexer_bus_2 #(.NrOfBits(16))
      MUX_2 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_0[15:0]),
             .MuxIn_1(s_LOGISIM_BUS_1[15:0]),
             .MuxOut(s_LOGISIM_BUS_8[15:0]),
             .Sel(s_LOGISIM_NET_6));

   Comparator #(.NrOfBits(16),
                .TwosComplement(0))
      Comparator_1 (.A_EQ_B(s_LOGISIM_NET_2),
                    .A_GT_B(s_LOGISIM_NET_7),
                    .A_LT_B(),
                    .DataA(s_LOGISIM_BUS_1[15:0]),
                    .DataB(s_LOGISIM_BUS_0[15:0]));



endmodule
