/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : IF_ID                                                        **
 **                                                                          **
 ******************************************************************************/

`timescale 1ns/1ps
module IF_ID( CLK,
              CLR,
              Instr,
              LOGISIM_CLOCK_TREE_0,
              PC,
              PC_plus_four,
              PredictJump,
              Stall,
              Instr_Out,
              PC_Out,
              PC_plus_four_Out,
              PredictJump_Out);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input  CLK;
   input  CLR;
   input[31:0]  Instr;
   input[4:0]  LOGISIM_CLOCK_TREE_0;
   input[31:0]  PC;
   input[31:0]  PC_plus_four;
   input  PredictJump;
   input  Stall;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output[31:0] Instr_Out;
   output[31:0] PC_Out;
   output[31:0] PC_plus_four_Out;
   output PredictJump_Out;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire[31:0] s_LOGISIM_BUS_0;
   wire[31:0] s_LOGISIM_BUS_10;
   wire[31:0] s_LOGISIM_BUS_12;
   wire[31:0] s_LOGISIM_BUS_13;
   wire[31:0] s_LOGISIM_BUS_15;
   wire[31:0] s_LOGISIM_BUS_16;
   wire[31:0] s_LOGISIM_BUS_17;
   wire[31:0] s_LOGISIM_BUS_18;
   wire[31:0] s_LOGISIM_BUS_2;
   wire[31:0] s_LOGISIM_BUS_4;
   wire[31:0] s_LOGISIM_BUS_7;
   wire[31:0] s_LOGISIM_BUS_9;
   wire s_LOGISIM_NET_1;
   wire s_LOGISIM_NET_11;
   wire s_LOGISIM_NET_14;
   wire s_LOGISIM_NET_3;
   wire s_LOGISIM_NET_5;
   wire s_LOGISIM_NET_6;
   wire s_LOGISIM_NET_8;


   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_NET_11                   = PredictJump;
   assign s_LOGISIM_NET_6                    = Stall;
   assign s_LOGISIM_BUS_10[31:0]             = PC_plus_four;
   assign s_LOGISIM_NET_1                    = CLR;
   assign s_LOGISIM_NET_5                    = CLK;
   assign s_LOGISIM_BUS_12[31:0]             = Instr;
   assign s_LOGISIM_BUS_0[31:0]              = PC;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign PC_plus_four_Out                   = s_LOGISIM_BUS_13[31:0];
   assign PredictJump_Out                    = s_LOGISIM_NET_14;
   assign PC_Out                             = s_LOGISIM_BUS_18[31:0];
   assign Instr_Out                          = s_LOGISIM_BUS_15[31:0];

   /***************************************************************************
    ** Here all in-lined components are defined                              **
    ***************************************************************************/
   assign s_LOGISIM_NET_3 = 1'd0;

   assign s_LOGISIM_BUS_16[31:0] = 32'd0;

   assign s_LOGISIM_BUS_4[31:0] = 32'd0;

   assign s_LOGISIM_BUS_2[31:0] = 32'd0;


   /***************************************************************************
    ** Here all normal components are defined                                **
    ***************************************************************************/
   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_1 (.Clock(s_LOGISIM_NET_5),
                       .ClockEnable(s_LOGISIM_NET_6),
                       .D(s_LOGISIM_BUS_9[31:0]),
                       .Q(s_LOGISIM_BUS_15[31:0]),
                       .Reset(1'b0),
                       .Tick(1'b1),
                       .cs(1'b1),
                       .pre(1'b0));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_2 (.Clock(s_LOGISIM_NET_5),
                       .ClockEnable(s_LOGISIM_NET_6),
                       .D(s_LOGISIM_BUS_17[31:0]),
                       .Q(s_LOGISIM_BUS_18[31:0]),
                       .Reset(1'b0),
                       .Tick(1'b1),
                       .cs(1'b1),
                       .pre(1'b0));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_1 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_10[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_2[31:0]),
             .MuxOut(s_LOGISIM_BUS_7[31:0]),
             .Sel(s_LOGISIM_NET_1));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_2 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_12[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_4[31:0]),
             .MuxOut(s_LOGISIM_BUS_9[31:0]),
             .Sel(s_LOGISIM_NET_1));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_3 (.Clock(s_LOGISIM_NET_5),
                       .ClockEnable(s_LOGISIM_NET_6),
                       .D(s_LOGISIM_BUS_7[31:0]),
                       .Q(s_LOGISIM_BUS_13[31:0]),
                       .Reset(1'b0),
                       .Tick(1'b1),
                       .cs(1'b1),
                       .pre(1'b0));

   Multiplexer_2      MUX_3 (.Enable(1'b1),
                             .MuxIn_0(s_LOGISIM_NET_11),
                             .MuxIn_1(s_LOGISIM_NET_3),
                             .MuxOut(s_LOGISIM_NET_8),
                             .Sel(s_LOGISIM_NET_1));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_4 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_0[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_16[31:0]),
             .MuxOut(s_LOGISIM_BUS_17[31:0]),
             .Sel(s_LOGISIM_NET_1));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(1))
      REGISTER_FILE_4 (.Clock(s_LOGISIM_NET_5),
                       .ClockEnable(s_LOGISIM_NET_6),
                       .D(s_LOGISIM_NET_8),
                       .Q(s_LOGISIM_NET_14),
                       .Reset(1'b0),
                       .Tick(1'b1),
                       .cs(1'b1),
                       .pre(1'b0));



endmodule
