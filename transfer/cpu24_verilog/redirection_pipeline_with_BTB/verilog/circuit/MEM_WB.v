/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : MEM_WB                                                       **
 **                                                                          **
 ******************************************************************************/

`timescale 1ns/1ps
module MEM_WB( AluResult,
               CLK,
               Eff_in,
               Instr,
               JAL,
               LOGISIM_CLOCK_TREE_0,
               MemToReg,
               PC,
               PC_plus_four,
               R2,
               RegWrite,
               WAdr,
               AluResult_Out,
               Eff,
               Instr_out,
               JAL_Out,
               MemToReg_Out,
               PC_Out,
               PC_plus_four_Out,
               R2_Out,
               RegWrite_Out,
               WAdr_Out);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input[31:0]  AluResult;
   input  CLK;
   input  Eff_in;
   input[31:0]  Instr;
   input  JAL;
   input[4:0]  LOGISIM_CLOCK_TREE_0;
   input  MemToReg;
   input[31:0]  PC;
   input[31:0]  PC_plus_four;
   input[31:0]  R2;
   input  RegWrite;
   input[4:0]  WAdr;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output[31:0] AluResult_Out;
   output Eff;
   output[31:0] Instr_out;
   output JAL_Out;
   output MemToReg_Out;
   output[31:0] PC_Out;
   output[31:0] PC_plus_four_Out;
   output[31:0] R2_Out;
   output RegWrite_Out;
   output[4:0] WAdr_Out;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire[31:0] s_LOGISIM_BUS_0;
   wire[31:0] s_LOGISIM_BUS_12;
   wire[31:0] s_LOGISIM_BUS_13;
   wire[31:0] s_LOGISIM_BUS_14;
   wire[31:0] s_LOGISIM_BUS_15;
   wire[4:0] s_LOGISIM_BUS_16;
   wire[2:0] s_LOGISIM_BUS_17;
   wire[31:0] s_LOGISIM_BUS_18;
   wire[2:0] s_LOGISIM_BUS_22;
   wire[31:0] s_LOGISIM_BUS_3;
   wire[31:0] s_LOGISIM_BUS_4;
   wire[31:0] s_LOGISIM_BUS_5;
   wire[4:0] s_LOGISIM_BUS_6;
   wire[31:0] s_LOGISIM_BUS_7;
   wire s_LOGISIM_NET_1;
   wire s_LOGISIM_NET_19;
   wire s_LOGISIM_NET_2;


   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_BUS_7[31:0]              = PC_plus_four;
   assign s_LOGISIM_BUS_6[4:0]               = WAdr;
   assign s_LOGISIM_NET_2                    = CLK;
   assign s_LOGISIM_BUS_4[31:0]              = PC;
   assign s_LOGISIM_BUS_3[31:0]              = AluResult;
   assign s_LOGISIM_NET_19                   = Eff_in;
   assign s_LOGISIM_BUS_22[2]                = RegWrite;
   assign s_LOGISIM_BUS_18[31:0]             = R2;
   assign s_LOGISIM_BUS_22[0]                = JAL;
   assign s_LOGISIM_BUS_5[31:0]              = Instr;
   assign s_LOGISIM_BUS_22[1]                = MemToReg;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign Instr_out                          = s_LOGISIM_BUS_14[31:0];
   assign AluResult_Out                      = s_LOGISIM_BUS_12[31:0];
   assign RegWrite_Out                       = s_LOGISIM_BUS_17[2];
   assign Eff                                = s_LOGISIM_NET_1;
   assign MemToReg_Out                       = s_LOGISIM_BUS_17[1];
   assign PC_plus_four_Out                   = s_LOGISIM_BUS_15[31:0];
   assign R2_Out                             = s_LOGISIM_BUS_0[31:0];
   assign PC_Out                             = s_LOGISIM_BUS_13[31:0];
   assign WAdr_Out                           = s_LOGISIM_BUS_16[4:0];
   assign JAL_Out                            = s_LOGISIM_BUS_17[0];

   /***************************************************************************
    ** Here all normal components are defined                                **
    ***************************************************************************/
   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_1 (.Clock(s_LOGISIM_NET_2),
                       .ClockEnable(1'b1),
                       .D(s_LOGISIM_BUS_4[31:0]),
                       .Q(s_LOGISIM_BUS_13[31:0]),
                       .Reset(1'b0),
                       .Tick(1'b1),
                       .cs(1'b1),
                       .pre(1'b0));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_2 (.Clock(s_LOGISIM_NET_2),
                       .ClockEnable(1'b1),
                       .D(s_LOGISIM_BUS_7[31:0]),
                       .Q(s_LOGISIM_BUS_15[31:0]),
                       .Reset(1'b0),
                       .Tick(1'b1),
                       .cs(1'b1),
                       .pre(1'b0));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(3))
      REGISTER_FILE_3 (.Clock(s_LOGISIM_NET_2),
                       .ClockEnable(1'b1),
                       .D(s_LOGISIM_BUS_22[2:0]),
                       .Q(s_LOGISIM_BUS_17[2:0]),
                       .Reset(1'b0),
                       .Tick(1'b1),
                       .cs(1'b1),
                       .pre(1'b0));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(5))
      REGISTER_FILE_4 (.Clock(s_LOGISIM_NET_2),
                       .ClockEnable(1'b1),
                       .D(s_LOGISIM_BUS_6[4:0]),
                       .Q(s_LOGISIM_BUS_16[4:0]),
                       .Reset(1'b0),
                       .Tick(1'b1),
                       .cs(1'b1),
                       .pre(1'b0));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_5 (.Clock(s_LOGISIM_NET_2),
                       .ClockEnable(1'b1),
                       .D(s_LOGISIM_BUS_5[31:0]),
                       .Q(s_LOGISIM_BUS_14[31:0]),
                       .Reset(1'b0),
                       .Tick(1'b1),
                       .cs(1'b1),
                       .pre(1'b0));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(1))
      REGISTER_FILE_6 (.Clock(s_LOGISIM_NET_2),
                       .ClockEnable(1'b1),
                       .D(s_LOGISIM_NET_19),
                       .Q(s_LOGISIM_NET_1),
                       .Reset(1'b0),
                       .Tick(1'b1),
                       .cs(1'b1),
                       .pre(1'b0));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_7 (.Clock(s_LOGISIM_NET_2),
                       .ClockEnable(1'b1),
                       .D(s_LOGISIM_BUS_18[31:0]),
                       .Q(s_LOGISIM_BUS_0[31:0]),
                       .Reset(1'b0),
                       .Tick(1'b1),
                       .cs(1'b1),
                       .pre(1'b0));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_8 (.Clock(s_LOGISIM_NET_2),
                       .ClockEnable(1'b1),
                       .D(s_LOGISIM_BUS_3[31:0]),
                       .Q(s_LOGISIM_BUS_12[31:0]),
                       .Reset(1'b0),
                       .Tick(1'b1),
                       .cs(1'b1),
                       .pre(1'b0));



endmodule
