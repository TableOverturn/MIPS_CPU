/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : EX_MEM                                                       **
 **                                                                          **
 ******************************************************************************/

`timescale 1ns/1ps
module EX_MEM( AluResult,
               CLK,
               CLR,
               HalfW,
               Instr,
               JAL,
               LOGISIM_CLOCK_TREE_0,
               MemToReg,
               MemWrite,
               PC,
               PC_plus_four,
               R1,
               R2,
               RegWrite,
               Syscall,
               WAdr,
               AluResult_Out,
               HalfW_Out,
               Instr_out,
               JAL_Out,
               MemToReg_Out,
               MemWrite_Out,
               PC_Out,
               PC_plus_four_Out,
               R1_Out,
               R2_Out,
               RegWrite_Out,
               Syscall_Out,
               WAdr_Out);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input[31:0]  AluResult;
   input  CLK;
   input  CLR;
   input  HalfW;
   input[31:0]  Instr;
   input  JAL;
   input[4:0]  LOGISIM_CLOCK_TREE_0;
   input  MemToReg;
   input  MemWrite;
   input[31:0]  PC;
   input[31:0]  PC_plus_four;
   input[31:0]  R1;
   input[31:0]  R2;
   input  RegWrite;
   input  Syscall;
   input[4:0]  WAdr;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output[31:0] AluResult_Out;
   output HalfW_Out;
   output[31:0] Instr_out;
   output JAL_Out;
   output MemToReg_Out;
   output MemWrite_Out;
   output[31:0] PC_Out;
   output[31:0] PC_plus_four_Out;
   output[31:0] R1_Out;
   output[31:0] R2_Out;
   output RegWrite_Out;
   output Syscall_Out;
   output[4:0] WAdr_Out;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire[31:0] s_LOGISIM_BUS_1;
   wire[31:0] s_LOGISIM_BUS_11;
   wire[31:0] s_LOGISIM_BUS_12;
   wire[31:0] s_LOGISIM_BUS_13;
   wire[31:0] s_LOGISIM_BUS_18;
   wire[4:0] s_LOGISIM_BUS_19;
   wire[31:0] s_LOGISIM_BUS_2;
   wire[5:0] s_LOGISIM_BUS_20;
   wire[31:0] s_LOGISIM_BUS_21;
   wire[31:0] s_LOGISIM_BUS_22;
   wire[4:0] s_LOGISIM_BUS_23;
   wire[31:0] s_LOGISIM_BUS_24;
   wire[31:0] s_LOGISIM_BUS_27;
   wire[31:0] s_LOGISIM_BUS_31;
   wire[31:0] s_LOGISIM_BUS_32;
   wire[5:0] s_LOGISIM_BUS_33;
   wire[31:0] s_LOGISIM_BUS_34;
   wire[31:0] s_LOGISIM_BUS_35;
   wire[31:0] s_LOGISIM_BUS_36;
   wire[4:0] s_LOGISIM_BUS_37;
   wire[31:0] s_LOGISIM_BUS_38;
   wire[31:0] s_LOGISIM_BUS_39;
   wire[31:0] s_LOGISIM_BUS_40;
   wire[31:0] s_LOGISIM_BUS_41;
   wire[31:0] s_LOGISIM_BUS_42;
   wire[5:0] s_LOGISIM_BUS_43;
   wire[31:0] s_LOGISIM_BUS_44;
   wire[4:0] s_LOGISIM_BUS_45;
   wire[5:0] s_LOGISIM_BUS_5;
   wire[31:0] s_LOGISIM_BUS_6;
   wire[31:0] s_LOGISIM_BUS_7;
   wire[31:0] s_LOGISIM_BUS_8;
   wire s_LOGISIM_NET_3;
   wire s_LOGISIM_NET_4;


   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_BUS_13[31:0]             = PC;
   assign s_LOGISIM_NET_3                    = CLR;
   assign s_LOGISIM_NET_4                    = CLK;
   assign s_LOGISIM_BUS_5[5]                 = Syscall;
   assign s_LOGISIM_BUS_5[3]                 = MemWrite;
   assign s_LOGISIM_BUS_35[31:0]             = Instr;
   assign s_LOGISIM_BUS_24[31:0]             = PC_plus_four;
   assign s_LOGISIM_BUS_7[31:0]              = R2;
   assign s_LOGISIM_BUS_34[31:0]             = R1;
   assign s_LOGISIM_BUS_23[4:0]              = WAdr;
   assign s_LOGISIM_BUS_5[1]                 = MemToReg;
   assign s_LOGISIM_BUS_5[2]                 = RegWrite;
   assign s_LOGISIM_BUS_5[4]                 = HalfW;
   assign s_LOGISIM_BUS_5[0]                 = JAL;
   assign s_LOGISIM_BUS_6[31:0]              = AluResult;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign MemWrite_Out                       = s_LOGISIM_BUS_20[3];
   assign JAL_Out                            = s_LOGISIM_BUS_20[0];
   assign MemToReg_Out                       = s_LOGISIM_BUS_20[1];
   assign R1_Out                             = s_LOGISIM_BUS_31[31:0];
   assign PC_Out                             = s_LOGISIM_BUS_40[31:0];
   assign WAdr_Out                           = s_LOGISIM_BUS_19[4:0];
   assign R2_Out                             = s_LOGISIM_BUS_2[31:0];
   assign Syscall_Out                        = s_LOGISIM_BUS_20[5];
   assign PC_plus_four_Out                   = s_LOGISIM_BUS_18[31:0];
   assign Instr_out                          = s_LOGISIM_BUS_32[31:0];
   assign HalfW_Out                          = s_LOGISIM_BUS_20[4];
   assign AluResult_Out                      = s_LOGISIM_BUS_1[31:0];
   assign RegWrite_Out                       = s_LOGISIM_BUS_20[2];

   /***************************************************************************
    ** Here all in-lined components are defined                              **
    ***************************************************************************/
   assign s_LOGISIM_BUS_21[31:0] = 32'd0;

   assign s_LOGISIM_BUS_22[31:0] = 32'd0;

   assign s_LOGISIM_BUS_36[31:0] = 32'd0;

   assign s_LOGISIM_BUS_33[5:0] = 6'd0;

   assign s_LOGISIM_BUS_37[4:0] = 5'd0;

   assign s_LOGISIM_BUS_8[31:0] = 32'd0;

   assign s_LOGISIM_BUS_41[31:0] = 32'd0;

   assign s_LOGISIM_BUS_42[31:0] = 32'd0;


   /***************************************************************************
    ** Here all normal components are defined                                **
    ***************************************************************************/
   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_1 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_24[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_36[31:0]),
             .MuxOut(s_LOGISIM_BUS_44[31:0]),
             .Sel(s_LOGISIM_NET_3));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_2 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_35[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_42[31:0]),
             .MuxOut(s_LOGISIM_BUS_12[31:0]),
             .Sel(s_LOGISIM_NET_3));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_3 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_34[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_41[31:0]),
             .MuxOut(s_LOGISIM_BUS_11[31:0]),
             .Sel(s_LOGISIM_NET_3));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_1 (.Clock(s_LOGISIM_NET_4),
                       .ClockEnable(1'b1),
                       .D(s_LOGISIM_BUS_44[31:0]),
                       .Q(s_LOGISIM_BUS_18[31:0]),
                       .Reset(1'b0),
                       .Tick(1'b1),
                       .cs(1'b1),
                       .pre(1'b0));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_2 (.Clock(s_LOGISIM_NET_4),
                       .ClockEnable(1'b1),
                       .D(s_LOGISIM_BUS_11[31:0]),
                       .Q(s_LOGISIM_BUS_31[31:0]),
                       .Reset(1'b0),
                       .Tick(1'b1),
                       .cs(1'b1),
                       .pre(1'b0));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_3 (.Clock(s_LOGISIM_NET_4),
                       .ClockEnable(1'b1),
                       .D(s_LOGISIM_BUS_27[31:0]),
                       .Q(s_LOGISIM_BUS_40[31:0]),
                       .Reset(1'b0),
                       .Tick(1'b1),
                       .cs(1'b1),
                       .pre(1'b0));

   Multiplexer_bus_2 #(.NrOfBits(6))
      MUX_4 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_5[5:0]),
             .MuxIn_1(s_LOGISIM_BUS_33[5:0]),
             .MuxOut(s_LOGISIM_BUS_43[5:0]),
             .Sel(s_LOGISIM_NET_3));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_5 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_6[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_21[31:0]),
             .MuxOut(s_LOGISIM_BUS_38[31:0]),
             .Sel(s_LOGISIM_NET_3));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_4 (.Clock(s_LOGISIM_NET_4),
                       .ClockEnable(1'b1),
                       .D(s_LOGISIM_BUS_38[31:0]),
                       .Q(s_LOGISIM_BUS_1[31:0]),
                       .Reset(1'b0),
                       .Tick(1'b1),
                       .cs(1'b1),
                       .pre(1'b0));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_6 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_7[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_22[31:0]),
             .MuxOut(s_LOGISIM_BUS_39[31:0]),
             .Sel(s_LOGISIM_NET_3));

   Multiplexer_bus_2 #(.NrOfBits(5))
      MUX_7 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_23[4:0]),
             .MuxIn_1(s_LOGISIM_BUS_37[4:0]),
             .MuxOut(s_LOGISIM_BUS_45[4:0]),
             .Sel(s_LOGISIM_NET_3));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(5))
      REGISTER_FILE_5 (.Clock(s_LOGISIM_NET_4),
                       .ClockEnable(1'b1),
                       .D(s_LOGISIM_BUS_45[4:0]),
                       .Q(s_LOGISIM_BUS_19[4:0]),
                       .Reset(1'b0),
                       .Tick(1'b1),
                       .cs(1'b1),
                       .pre(1'b0));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(6))
      REGISTER_FILE_6 (.Clock(s_LOGISIM_NET_4),
                       .ClockEnable(1'b1),
                       .D(s_LOGISIM_BUS_43[5:0]),
                       .Q(s_LOGISIM_BUS_20[5:0]),
                       .Reset(1'b0),
                       .Tick(1'b1),
                       .cs(1'b1),
                       .pre(1'b0));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_7 (.Clock(s_LOGISIM_NET_4),
                       .ClockEnable(1'b1),
                       .D(s_LOGISIM_BUS_39[31:0]),
                       .Q(s_LOGISIM_BUS_2[31:0]),
                       .Reset(1'b0),
                       .Tick(1'b1),
                       .cs(1'b1),
                       .pre(1'b0));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_8 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_13[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_8[31:0]),
             .MuxOut(s_LOGISIM_BUS_27[31:0]),
             .Sel(s_LOGISIM_NET_3));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_8 (.Clock(s_LOGISIM_NET_4),
                       .ClockEnable(1'b1),
                       .D(s_LOGISIM_BUS_12[31:0]),
                       .Q(s_LOGISIM_BUS_32[31:0]),
                       .Reset(1'b0),
                       .Tick(1'b1),
                       .cs(1'b1),
                       .pre(1'b0));



endmodule
