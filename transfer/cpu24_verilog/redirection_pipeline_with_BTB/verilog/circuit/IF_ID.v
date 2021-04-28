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
              Eff,
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
   output Eff;
   output[31:0] Instr_Out;
   output[31:0] PC_Out;
   output[31:0] PC_plus_four_Out;
   output PredictJump_Out;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire[31:0] s_LOGISIM_BUS_0;
   wire[31:0] s_LOGISIM_BUS_11;
   wire[31:0] s_LOGISIM_BUS_12;
   wire[31:0] s_LOGISIM_BUS_14;
   wire[31:0] s_LOGISIM_BUS_16;
   wire[31:0] s_LOGISIM_BUS_18;
   wire[31:0] s_LOGISIM_BUS_20;
   wire[31:0] s_LOGISIM_BUS_21;
   wire[31:0] s_LOGISIM_BUS_22;
   wire[31:0] s_LOGISIM_BUS_3;
   wire[31:0] s_LOGISIM_BUS_5;
   wire[31:0] s_LOGISIM_BUS_8;
   wire s_LOGISIM_NET_1;
   wire s_LOGISIM_NET_10;
   wire s_LOGISIM_NET_13;
   wire s_LOGISIM_NET_15;
   wire s_LOGISIM_NET_17;
   wire s_LOGISIM_NET_19;
   wire s_LOGISIM_NET_2;
   wire s_LOGISIM_NET_4;
   wire s_LOGISIM_NET_6;
   wire s_LOGISIM_NET_7;
   wire s_LOGISIM_NET_9;


   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_NET_13                   = PredictJump;
   assign s_LOGISIM_NET_7                    = Stall;
   assign s_LOGISIM_NET_6                    = CLK;
   assign s_LOGISIM_BUS_0[31:0]              = PC;
   assign s_LOGISIM_BUS_14[31:0]             = Instr;
   assign s_LOGISIM_BUS_12[31:0]             = PC_plus_four;
   assign s_LOGISIM_NET_1                    = CLR;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign PC_Out                             = s_LOGISIM_BUS_22[31:0];
   assign PC_plus_four_Out                   = s_LOGISIM_BUS_16[31:0];
   assign PredictJump_Out                    = s_LOGISIM_NET_17;
   assign Instr_Out                          = s_LOGISIM_BUS_18[31:0];
   assign Eff                                = s_LOGISIM_NET_19;

   /***************************************************************************
    ** Here all in-lined components are defined                              **
    ***************************************************************************/
   assign s_LOGISIM_BUS_20[31:0] = 32'd0;

   assign s_LOGISIM_NET_15 = 1'd1;

   assign s_LOGISIM_NET_2 = 1'd0;

   assign s_LOGISIM_BUS_5[31:0] = 32'd0;

   assign s_LOGISIM_NET_4 = 1'd0;

   assign s_LOGISIM_BUS_3[31:0] = 32'd0;


   /***************************************************************************
    ** Here all normal components are defined                                **
    ***************************************************************************/
   Multiplexer_2      MUX_1 (.Enable(1'b1),
                             .MuxIn_0(s_LOGISIM_NET_13),
                             .MuxIn_1(s_LOGISIM_NET_4),
                             .MuxOut(s_LOGISIM_NET_10),
                             .Sel(s_LOGISIM_NET_1));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_1 (.Clock(s_LOGISIM_NET_6),
                       .ClockEnable(s_LOGISIM_NET_7),
                       .D(s_LOGISIM_BUS_8[31:0]),
                       .Q(s_LOGISIM_BUS_16[31:0]),
                       .Reset(1'b0),
                       .Tick(1'b1),
                       .cs(1'b1),
                       .pre(1'b0));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_2 (.Clock(s_LOGISIM_NET_6),
                       .ClockEnable(s_LOGISIM_NET_7),
                       .D(s_LOGISIM_BUS_21[31:0]),
                       .Q(s_LOGISIM_BUS_22[31:0]),
                       .Reset(1'b0),
                       .Tick(1'b1),
                       .cs(1'b1),
                       .pre(1'b0));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(1))
      REGISTER_FILE_3 (.Clock(s_LOGISIM_NET_6),
                       .ClockEnable(s_LOGISIM_NET_7),
                       .D(s_LOGISIM_NET_9),
                       .Q(s_LOGISIM_NET_19),
                       .Reset(1'b0),
                       .Tick(1'b1),
                       .cs(1'b1),
                       .pre(1'b0));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_4 (.Clock(s_LOGISIM_NET_6),
                       .ClockEnable(s_LOGISIM_NET_7),
                       .D(s_LOGISIM_BUS_11[31:0]),
                       .Q(s_LOGISIM_BUS_18[31:0]),
                       .Reset(1'b0),
                       .Tick(1'b1),
                       .cs(1'b1),
                       .pre(1'b0));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(1))
      REGISTER_FILE_5 (.Clock(s_LOGISIM_NET_6),
                       .ClockEnable(s_LOGISIM_NET_7),
                       .D(s_LOGISIM_NET_10),
                       .Q(s_LOGISIM_NET_17),
                       .Reset(1'b0),
                       .Tick(1'b1),
                       .cs(1'b1),
                       .pre(1'b0));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_2 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_14[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_5[31:0]),
             .MuxOut(s_LOGISIM_BUS_11[31:0]),
             .Sel(s_LOGISIM_NET_1));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_3 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_0[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_20[31:0]),
             .MuxOut(s_LOGISIM_BUS_21[31:0]),
             .Sel(s_LOGISIM_NET_1));

   Multiplexer_2      MUX_4 (.Enable(1'b1),
                             .MuxIn_0(s_LOGISIM_NET_15),
                             .MuxIn_1(s_LOGISIM_NET_2),
                             .MuxOut(s_LOGISIM_NET_9),
                             .Sel(s_LOGISIM_NET_1));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_5 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_12[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_3[31:0]),
             .MuxOut(s_LOGISIM_BUS_8[31:0]),
             .Sel(s_LOGISIM_NET_1));



endmodule
