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
               Eff_in,
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
               Eff,
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
   input  Eff_in;
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
   output Eff;
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
   wire[31:0] s_LOGISIM_BUS_12;
   wire[31:0] s_LOGISIM_BUS_13;
   wire[31:0] s_LOGISIM_BUS_14;
   wire[31:0] s_LOGISIM_BUS_19;
   wire[31:0] s_LOGISIM_BUS_2;
   wire[4:0] s_LOGISIM_BUS_20;
   wire[5:0] s_LOGISIM_BUS_21;
   wire[31:0] s_LOGISIM_BUS_23;
   wire[31:0] s_LOGISIM_BUS_24;
   wire[4:0] s_LOGISIM_BUS_25;
   wire[31:0] s_LOGISIM_BUS_26;
   wire[31:0] s_LOGISIM_BUS_30;
   wire[31:0] s_LOGISIM_BUS_34;
   wire[31:0] s_LOGISIM_BUS_35;
   wire[5:0] s_LOGISIM_BUS_36;
   wire[31:0] s_LOGISIM_BUS_37;
   wire[31:0] s_LOGISIM_BUS_38;
   wire[31:0] s_LOGISIM_BUS_39;
   wire[4:0] s_LOGISIM_BUS_40;
   wire[31:0] s_LOGISIM_BUS_41;
   wire[31:0] s_LOGISIM_BUS_42;
   wire[31:0] s_LOGISIM_BUS_44;
   wire[31:0] s_LOGISIM_BUS_45;
   wire[31:0] s_LOGISIM_BUS_46;
   wire[5:0] s_LOGISIM_BUS_47;
   wire[31:0] s_LOGISIM_BUS_48;
   wire[4:0] s_LOGISIM_BUS_49;
   wire[5:0] s_LOGISIM_BUS_6;
   wire[31:0] s_LOGISIM_BUS_7;
   wire[31:0] s_LOGISIM_BUS_8;
   wire[31:0] s_LOGISIM_BUS_9;
   wire s_LOGISIM_NET_22;
   wire s_LOGISIM_NET_27;
   wire s_LOGISIM_NET_3;
   wire s_LOGISIM_NET_4;
   wire s_LOGISIM_NET_43;
   wire s_LOGISIM_NET_5;


   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_BUS_6[2]                 = RegWrite;
   assign s_LOGISIM_BUS_6[4]                 = HalfW;
   assign s_LOGISIM_BUS_26[31:0]             = PC_plus_four;
   assign s_LOGISIM_NET_22                   = Eff_in;
   assign s_LOGISIM_BUS_8[31:0]              = R2;
   assign s_LOGISIM_NET_5                    = CLK;
   assign s_LOGISIM_BUS_6[3]                 = MemWrite;
   assign s_LOGISIM_BUS_6[0]                 = JAL;
   assign s_LOGISIM_NET_3                    = CLR;
   assign s_LOGISIM_BUS_6[1]                 = MemToReg;
   assign s_LOGISIM_BUS_38[31:0]             = Instr;
   assign s_LOGISIM_BUS_25[4:0]              = WAdr;
   assign s_LOGISIM_BUS_37[31:0]             = R1;
   assign s_LOGISIM_BUS_14[31:0]             = PC;
   assign s_LOGISIM_BUS_6[5]                 = Syscall;
   assign s_LOGISIM_BUS_7[31:0]              = AluResult;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign WAdr_Out                           = s_LOGISIM_BUS_20[4:0];
   assign MemWrite_Out                       = s_LOGISIM_BUS_21[3];
   assign RegWrite_Out                       = s_LOGISIM_BUS_21[2];
   assign PC_plus_four_Out                   = s_LOGISIM_BUS_19[31:0];
   assign Instr_out                          = s_LOGISIM_BUS_35[31:0];
   assign JAL_Out                            = s_LOGISIM_BUS_21[0];
   assign R1_Out                             = s_LOGISIM_BUS_34[31:0];
   assign PC_Out                             = s_LOGISIM_BUS_44[31:0];
   assign MemToReg_Out                       = s_LOGISIM_BUS_21[1];
   assign HalfW_Out                          = s_LOGISIM_BUS_21[4];
   assign Syscall_Out                        = s_LOGISIM_BUS_21[5];
   assign AluResult_Out                      = s_LOGISIM_BUS_1[31:0];
   assign Eff                                = s_LOGISIM_NET_4;
   assign R2_Out                             = s_LOGISIM_BUS_2[31:0];

   /***************************************************************************
    ** Here all in-lined components are defined                              **
    ***************************************************************************/
   assign s_LOGISIM_NET_27 = 1'd0;

   assign s_LOGISIM_BUS_45[31:0] = 32'd0;

   assign s_LOGISIM_BUS_23[31:0] = 32'd0;

   assign s_LOGISIM_BUS_40[4:0] = 5'd0;

   assign s_LOGISIM_BUS_9[31:0] = 32'd0;

   assign s_LOGISIM_BUS_36[5:0] = 6'd0;

   assign s_LOGISIM_BUS_46[31:0] = 32'd0;

   assign s_LOGISIM_BUS_24[31:0] = 32'd0;

   assign s_LOGISIM_BUS_39[31:0] = 32'd0;


   /***************************************************************************
    ** Here all normal components are defined                                **
    ***************************************************************************/
   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_1 (.Clock(s_LOGISIM_NET_5),
                       .ClockEnable(1'b1),
                       .D(s_LOGISIM_BUS_30[31:0]),
                       .Q(s_LOGISIM_BUS_44[31:0]),
                       .Reset(1'b0),
                       .Tick(1'b1),
                       .cs(1'b1),
                       .pre(1'b0));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(5))
      REGISTER_FILE_2 (.Clock(s_LOGISIM_NET_5),
                       .ClockEnable(1'b1),
                       .D(s_LOGISIM_BUS_49[4:0]),
                       .Q(s_LOGISIM_BUS_20[4:0]),
                       .Reset(1'b0),
                       .Tick(1'b1),
                       .cs(1'b1),
                       .pre(1'b0));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_3 (.Clock(s_LOGISIM_NET_5),
                       .ClockEnable(1'b1),
                       .D(s_LOGISIM_BUS_13[31:0]),
                       .Q(s_LOGISIM_BUS_35[31:0]),
                       .Reset(1'b0),
                       .Tick(1'b1),
                       .cs(1'b1),
                       .pre(1'b0));

   Multiplexer_bus_2 #(.NrOfBits(5))
      MUX_1 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_25[4:0]),
             .MuxIn_1(s_LOGISIM_BUS_40[4:0]),
             .MuxOut(s_LOGISIM_BUS_49[4:0]),
             .Sel(s_LOGISIM_NET_3));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_4 (.Clock(s_LOGISIM_NET_5),
                       .ClockEnable(1'b1),
                       .D(s_LOGISIM_BUS_41[31:0]),
                       .Q(s_LOGISIM_BUS_1[31:0]),
                       .Reset(1'b0),
                       .Tick(1'b1),
                       .cs(1'b1),
                       .pre(1'b0));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_2 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_37[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_45[31:0]),
             .MuxOut(s_LOGISIM_BUS_12[31:0]),
             .Sel(s_LOGISIM_NET_3));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_5 (.Clock(s_LOGISIM_NET_5),
                       .ClockEnable(1'b1),
                       .D(s_LOGISIM_BUS_48[31:0]),
                       .Q(s_LOGISIM_BUS_19[31:0]),
                       .Reset(1'b0),
                       .Tick(1'b1),
                       .cs(1'b1),
                       .pre(1'b0));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_3 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_14[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_9[31:0]),
             .MuxOut(s_LOGISIM_BUS_30[31:0]),
             .Sel(s_LOGISIM_NET_3));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_4 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_8[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_24[31:0]),
             .MuxOut(s_LOGISIM_BUS_42[31:0]),
             .Sel(s_LOGISIM_NET_3));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(1))
      REGISTER_FILE_6 (.Clock(s_LOGISIM_NET_5),
                       .ClockEnable(1'b1),
                       .D(s_LOGISIM_NET_43),
                       .Q(s_LOGISIM_NET_4),
                       .Reset(1'b0),
                       .Tick(1'b1),
                       .cs(1'b1),
                       .pre(1'b0));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(6))
      REGISTER_FILE_7 (.Clock(s_LOGISIM_NET_5),
                       .ClockEnable(1'b1),
                       .D(s_LOGISIM_BUS_47[5:0]),
                       .Q(s_LOGISIM_BUS_21[5:0]),
                       .Reset(1'b0),
                       .Tick(1'b1),
                       .cs(1'b1),
                       .pre(1'b0));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_5 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_38[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_46[31:0]),
             .MuxOut(s_LOGISIM_BUS_13[31:0]),
             .Sel(s_LOGISIM_NET_3));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_8 (.Clock(s_LOGISIM_NET_5),
                       .ClockEnable(1'b1),
                       .D(s_LOGISIM_BUS_42[31:0]),
                       .Q(s_LOGISIM_BUS_2[31:0]),
                       .Reset(1'b0),
                       .Tick(1'b1),
                       .cs(1'b1),
                       .pre(1'b0));

   Multiplexer_bus_2 #(.NrOfBits(6))
      MUX_6 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_6[5:0]),
             .MuxIn_1(s_LOGISIM_BUS_36[5:0]),
             .MuxOut(s_LOGISIM_BUS_47[5:0]),
             .Sel(s_LOGISIM_NET_3));

   Multiplexer_2      MUX_7 (.Enable(1'b1),
                             .MuxIn_0(s_LOGISIM_NET_22),
                             .MuxIn_1(s_LOGISIM_NET_27),
                             .MuxOut(s_LOGISIM_NET_43),
                             .Sel(s_LOGISIM_NET_3));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_9 (.Clock(s_LOGISIM_NET_5),
                       .ClockEnable(1'b1),
                       .D(s_LOGISIM_BUS_12[31:0]),
                       .Q(s_LOGISIM_BUS_34[31:0]),
                       .Reset(1'b0),
                       .Tick(1'b1),
                       .cs(1'b1),
                       .pre(1'b0));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_8 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_26[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_39[31:0]),
             .MuxOut(s_LOGISIM_BUS_48[31:0]),
             .Sel(s_LOGISIM_NET_3));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_9 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_7[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_23[31:0]),
             .MuxOut(s_LOGISIM_BUS_41[31:0]),
             .Sel(s_LOGISIM_NET_3));



endmodule
