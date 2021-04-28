/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : MEM_WB                                                       **
 **                                                                          **
 ******************************************************************************/

`timescale 1ns/1ps
module MEM_WB( AluResult,
               CLK,
               CopyToRAM,
               Cycles,
               FrameFlush,
               Get_Bitmap,
               Instr,
               JAL,
               KB_HIT,
               LOGISIM_CLOCK_TREE_0,
               MemToReg,
               PC,
               PC_plus_four,
               R2,
               RegWrite,
               Screen_in,
               Screen_ins_opt,
               WAdr,
               AluResult_Out,
               CopyToRAM_Out,
               FrameFlush_Out,
               Get_Bitmap_Out,
               Get_Cycles_Out,
               Instr_Out,
               JAL_Out,
               KB_HIT_Out,
               MemToReg_Out,
               PC_Out,
               PC_plus_four_Out,
               R2_Out,
               RegWrite_Out,
               Screen_in_Out,
               Screen_ins_opt_Out,
               WAdr_Out);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input[31:0]  AluResult;
   input  CLK;
   input  CopyToRAM;
   input  Cycles;
   input  FrameFlush;
   input  Get_Bitmap;
   input[31:0]  Instr;
   input  JAL;
   input  KB_HIT;
   input[4:0]  LOGISIM_CLOCK_TREE_0;
   input  MemToReg;
   input[31:0]  PC;
   input[31:0]  PC_plus_four;
   input[31:0]  R2;
   input  RegWrite;
   input[31:0]  Screen_in;
   input  Screen_ins_opt;
   input[4:0]  WAdr;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output[31:0] AluResult_Out;
   output CopyToRAM_Out;
   output FrameFlush_Out;
   output Get_Bitmap_Out;
   output Get_Cycles_Out;
   output[31:0] Instr_Out;
   output JAL_Out;
   output KB_HIT_Out;
   output MemToReg_Out;
   output[31:0] PC_Out;
   output[31:0] PC_plus_four_Out;
   output[31:0] R2_Out;
   output RegWrite_Out;
   output[31:0] Screen_in_Out;
   output Screen_ins_opt_Out;
   output[4:0] WAdr_Out;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire[31:0] s_LOGISIM_BUS_0;
   wire[31:0] s_LOGISIM_BUS_1;
   wire[31:0] s_LOGISIM_BUS_10;
   wire[31:0] s_LOGISIM_BUS_11;
   wire[31:0] s_LOGISIM_BUS_16;
   wire[31:0] s_LOGISIM_BUS_19;
   wire[31:0] s_LOGISIM_BUS_20;
   wire[31:0] s_LOGISIM_BUS_21;
   wire[31:0] s_LOGISIM_BUS_22;
   wire[4:0] s_LOGISIM_BUS_23;
   wire[2:0] s_LOGISIM_BUS_26;
   wire[31:0] s_LOGISIM_BUS_27;
   wire[2:0] s_LOGISIM_BUS_34;
   wire[4:0] s_LOGISIM_BUS_7;
   wire[31:0] s_LOGISIM_BUS_8;
   wire[31:0] s_LOGISIM_BUS_9;
   wire s_LOGISIM_NET_12;
   wire s_LOGISIM_NET_13;
   wire s_LOGISIM_NET_2;
   wire s_LOGISIM_NET_24;
   wire s_LOGISIM_NET_25;
   wire s_LOGISIM_NET_28;
   wire s_LOGISIM_NET_29;
   wire s_LOGISIM_NET_3;
   wire s_LOGISIM_NET_30;
   wire s_LOGISIM_NET_31;
   wire s_LOGISIM_NET_4;
   wire s_LOGISIM_NET_5;
   wire s_LOGISIM_NET_6;


   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_BUS_34[0]                = JAL;
   assign s_LOGISIM_BUS_0[31:0]              = Screen_in;
   assign s_LOGISIM_BUS_34[2]                = RegWrite;
   assign s_LOGISIM_NET_28                   = KB_HIT;
   assign s_LOGISIM_BUS_7[4:0]               = WAdr;
   assign s_LOGISIM_NET_30                   = Get_Bitmap;
   assign s_LOGISIM_BUS_10[31:0]             = Instr;
   assign s_LOGISIM_BUS_34[1]                = MemToReg;
   assign s_LOGISIM_BUS_27[31:0]             = R2;
   assign s_LOGISIM_BUS_11[31:0]             = PC_plus_four;
   assign s_LOGISIM_BUS_8[31:0]              = AluResult;
   assign s_LOGISIM_NET_13                   = FrameFlush;
   assign s_LOGISIM_NET_31                   = CopyToRAM;
   assign s_LOGISIM_NET_6                    = CLK;
   assign s_LOGISIM_NET_29                   = Screen_ins_opt;
   assign s_LOGISIM_NET_12                   = Cycles;
   assign s_LOGISIM_BUS_9[31:0]              = PC;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign WAdr_Out                           = s_LOGISIM_BUS_23[4:0];
   assign Screen_ins_opt_Out                 = s_LOGISIM_NET_3;
   assign MemToReg_Out                       = s_LOGISIM_BUS_26[1];
   assign KB_HIT_Out                         = s_LOGISIM_NET_2;
   assign Get_Bitmap_Out                     = s_LOGISIM_NET_4;
   assign R2_Out                             = s_LOGISIM_BUS_1[31:0];
   assign RegWrite_Out                       = s_LOGISIM_BUS_26[2];
   assign Screen_in_Out                      = s_LOGISIM_BUS_16[31:0];
   assign Instr_Out                          = s_LOGISIM_BUS_21[31:0];
   assign CopyToRAM_Out                      = s_LOGISIM_NET_5;
   assign PC_Out                             = s_LOGISIM_BUS_20[31:0];
   assign Get_Cycles_Out                     = s_LOGISIM_NET_24;
   assign PC_plus_four_Out                   = s_LOGISIM_BUS_22[31:0];
   assign AluResult_Out                      = s_LOGISIM_BUS_19[31:0];
   assign JAL_Out                            = s_LOGISIM_BUS_26[0];
   assign FrameFlush_Out                     = s_LOGISIM_NET_25;

   /***************************************************************************
    ** Here all normal components are defined                                **
    ***************************************************************************/
   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(1))
      REGISTER_FILE_1 (.Clock(s_LOGISIM_NET_6),
                       .ClockEnable(1'b1),
                       .D(s_LOGISIM_NET_28),
                       .Q(s_LOGISIM_NET_2),
                       .Reset(1'b0),
                       .Tick(1'b1),
                       .cs(1'b1),
                       .pre(1'b0));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(1))
      REGISTER_FILE_2 (.Clock(s_LOGISIM_NET_6),
                       .ClockEnable(1'b1),
                       .D(s_LOGISIM_NET_13),
                       .Q(s_LOGISIM_NET_25),
                       .Reset(1'b0),
                       .Tick(1'b1),
                       .cs(1'b1),
                       .pre(1'b0));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_3 (.Clock(s_LOGISIM_NET_6),
                       .ClockEnable(1'b1),
                       .D(s_LOGISIM_BUS_10[31:0]),
                       .Q(s_LOGISIM_BUS_21[31:0]),
                       .Reset(1'b0),
                       .Tick(1'b1),
                       .cs(1'b1),
                       .pre(1'b0));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(1))
      REGISTER_FILE_4 (.Clock(s_LOGISIM_NET_6),
                       .ClockEnable(1'b1),
                       .D(s_LOGISIM_NET_29),
                       .Q(s_LOGISIM_NET_3),
                       .Reset(1'b0),
                       .Tick(1'b1),
                       .cs(1'b1),
                       .pre(1'b0));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_5 (.Clock(s_LOGISIM_NET_6),
                       .ClockEnable(1'b1),
                       .D(s_LOGISIM_BUS_11[31:0]),
                       .Q(s_LOGISIM_BUS_22[31:0]),
                       .Reset(1'b0),
                       .Tick(1'b1),
                       .cs(1'b1),
                       .pre(1'b0));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(1))
      REGISTER_FILE_6 (.Clock(s_LOGISIM_NET_6),
                       .ClockEnable(1'b1),
                       .D(s_LOGISIM_NET_12),
                       .Q(s_LOGISIM_NET_24),
                       .Reset(1'b0),
                       .Tick(1'b1),
                       .cs(1'b1),
                       .pre(1'b0));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(1))
      REGISTER_FILE_7 (.Clock(s_LOGISIM_NET_6),
                       .ClockEnable(1'b1),
                       .D(s_LOGISIM_NET_31),
                       .Q(s_LOGISIM_NET_5),
                       .Reset(1'b0),
                       .Tick(1'b1),
                       .cs(1'b1),
                       .pre(1'b0));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(1))
      REGISTER_FILE_8 (.Clock(s_LOGISIM_NET_6),
                       .ClockEnable(1'b1),
                       .D(s_LOGISIM_NET_30),
                       .Q(s_LOGISIM_NET_4),
                       .Reset(1'b0),
                       .Tick(1'b1),
                       .cs(1'b1),
                       .pre(1'b0));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_9 (.Clock(s_LOGISIM_NET_6),
                       .ClockEnable(1'b1),
                       .D(s_LOGISIM_BUS_8[31:0]),
                       .Q(s_LOGISIM_BUS_19[31:0]),
                       .Reset(1'b0),
                       .Tick(1'b1),
                       .cs(1'b1),
                       .pre(1'b0));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_10 (.Clock(s_LOGISIM_NET_6),
                        .ClockEnable(1'b1),
                        .D(s_LOGISIM_BUS_27[31:0]),
                        .Q(s_LOGISIM_BUS_1[31:0]),
                        .Reset(1'b0),
                        .Tick(1'b1),
                        .cs(1'b1),
                        .pre(1'b0));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_11 (.Clock(s_LOGISIM_NET_6),
                        .ClockEnable(1'b1),
                        .D(s_LOGISIM_BUS_0[31:0]),
                        .Q(s_LOGISIM_BUS_16[31:0]),
                        .Reset(1'b0),
                        .Tick(1'b1),
                        .cs(1'b1),
                        .pre(1'b0));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(5))
      REGISTER_FILE_12 (.Clock(s_LOGISIM_NET_6),
                        .ClockEnable(1'b1),
                        .D(s_LOGISIM_BUS_7[4:0]),
                        .Q(s_LOGISIM_BUS_23[4:0]),
                        .Reset(1'b0),
                        .Tick(1'b1),
                        .cs(1'b1),
                        .pre(1'b0));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_13 (.Clock(s_LOGISIM_NET_6),
                        .ClockEnable(1'b1),
                        .D(s_LOGISIM_BUS_9[31:0]),
                        .Q(s_LOGISIM_BUS_20[31:0]),
                        .Reset(1'b0),
                        .Tick(1'b1),
                        .cs(1'b1),
                        .pre(1'b0));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(3))
      REGISTER_FILE_14 (.Clock(s_LOGISIM_NET_6),
                        .ClockEnable(1'b1),
                        .D(s_LOGISIM_BUS_34[2:0]),
                        .Q(s_LOGISIM_BUS_26[2:0]),
                        .Reset(1'b0),
                        .Tick(1'b1),
                        .cs(1'b1),
                        .pre(1'b0));



endmodule
