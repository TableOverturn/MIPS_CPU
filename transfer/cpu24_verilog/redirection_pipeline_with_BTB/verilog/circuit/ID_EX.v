/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : ID_EX                                                        **
 **                                                                          **
 ******************************************************************************/

`timescale 1ns/1ps
module ID_EX( AluOp,
              AluSrcB,
              BEQ,
              BLEZ,
              BNE,
              CLK,
              CLR,
              Eff_in,
              ExtData,
              HalfW,
              Instr,
              JAL,
              JAddr,
              JMP,
              JR,
              LOGISIM_CLOCK_TREE_0,
              MemToReg,
              MemWrite,
              PC,
              PC_plus_four,
              PredictJump,
              R1,
              R1_Forward,
              R2,
              R2_Forward,
              RegWrite,
              Shamt,
              Syscall,
              WAdr,
              AluOp_Out,
              AluSrcB_Out,
              BEQ_Out,
              BLEZ_Out,
              BNE_Out,
              Eff,
              ExtData_Out,
              HalfW_Out,
              Instr_out,
              JAL_Out,
              JAddr_Out,
              JMP_Out,
              JR_Out,
              MemToReg_Out,
              MemWrite_Out,
              PC_Out,
              PC_plus_four_Out,
              PredictJump_Out,
              R1_Forward_Out,
              R1_Out,
              R2_Forward_Out,
              R2_Out,
              RegWrite_Out,
              Shamt_Out,
              Syscall_Out,
              WAdr_Out);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input[3:0]  AluOp;
   input  AluSrcB;
   input  BEQ;
   input  BLEZ;
   input  BNE;
   input  CLK;
   input  CLR;
   input  Eff_in;
   input[31:0]  ExtData;
   input  HalfW;
   input[31:0]  Instr;
   input  JAL;
   input[31:0]  JAddr;
   input  JMP;
   input  JR;
   input[4:0]  LOGISIM_CLOCK_TREE_0;
   input  MemToReg;
   input  MemWrite;
   input[31:0]  PC;
   input[31:0]  PC_plus_four;
   input  PredictJump;
   input[31:0]  R1;
   input[1:0]  R1_Forward;
   input[31:0]  R2;
   input[1:0]  R2_Forward;
   input  RegWrite;
   input[4:0]  Shamt;
   input  Syscall;
   input[4:0]  WAdr;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output[3:0] AluOp_Out;
   output AluSrcB_Out;
   output BEQ_Out;
   output BLEZ_Out;
   output BNE_Out;
   output Eff;
   output[31:0] ExtData_Out;
   output HalfW_Out;
   output[31:0] Instr_out;
   output JAL_Out;
   output[31:0] JAddr_Out;
   output JMP_Out;
   output JR_Out;
   output MemToReg_Out;
   output MemWrite_Out;
   output[31:0] PC_Out;
   output[31:0] PC_plus_four_Out;
   output PredictJump_Out;
   output[1:0] R1_Forward_Out;
   output[31:0] R1_Out;
   output[1:0] R2_Forward_Out;
   output[31:0] R2_Out;
   output RegWrite_Out;
   output[4:0] Shamt_Out;
   output Syscall_Out;
   output[4:0] WAdr_Out;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire[31:0] s_LOGISIM_BUS_0;
   wire[11:0] s_LOGISIM_BUS_12;
   wire[4:0] s_LOGISIM_BUS_13;
   wire[31:0] s_LOGISIM_BUS_14;
   wire[11:0] s_LOGISIM_BUS_17;
   wire[31:0] s_LOGISIM_BUS_2;
   wire[31:0] s_LOGISIM_BUS_22;
   wire[4:0] s_LOGISIM_BUS_24;
   wire[31:0] s_LOGISIM_BUS_26;
   wire[11:0] s_LOGISIM_BUS_27;
   wire[1:0] s_LOGISIM_BUS_29;
   wire[1:0] s_LOGISIM_BUS_30;
   wire[3:0] s_LOGISIM_BUS_31;
   wire[31:0] s_LOGISIM_BUS_32;
   wire[31:0] s_LOGISIM_BUS_33;
   wire[31:0] s_LOGISIM_BUS_34;
   wire[31:0] s_LOGISIM_BUS_35;
   wire[31:0] s_LOGISIM_BUS_36;
   wire[31:0] s_LOGISIM_BUS_39;
   wire[31:0] s_LOGISIM_BUS_40;
   wire[31:0] s_LOGISIM_BUS_41;
   wire[1:0] s_LOGISIM_BUS_43;
   wire[1:0] s_LOGISIM_BUS_44;
   wire[3:0] s_LOGISIM_BUS_45;
   wire[31:0] s_LOGISIM_BUS_47;
   wire[31:0] s_LOGISIM_BUS_49;
   wire[31:0] s_LOGISIM_BUS_50;
   wire[31:0] s_LOGISIM_BUS_51;
   wire[4:0] s_LOGISIM_BUS_53;
   wire[4:0] s_LOGISIM_BUS_55;
   wire[31:0] s_LOGISIM_BUS_56;
   wire[31:0] s_LOGISIM_BUS_59;
   wire[31:0] s_LOGISIM_BUS_6;
   wire[31:0] s_LOGISIM_BUS_61;
   wire[31:0] s_LOGISIM_BUS_62;
   wire[31:0] s_LOGISIM_BUS_63;
   wire[4:0] s_LOGISIM_BUS_65;
   wire[31:0] s_LOGISIM_BUS_69;
   wire[31:0] s_LOGISIM_BUS_7;
   wire[31:0] s_LOGISIM_BUS_70;
   wire[31:0] s_LOGISIM_BUS_71;
   wire[1:0] s_LOGISIM_BUS_72;
   wire[1:0] s_LOGISIM_BUS_73;
   wire[3:0] s_LOGISIM_BUS_74;
   wire[4:0] s_LOGISIM_BUS_75;
   wire[31:0] s_LOGISIM_BUS_77;
   wire[4:0] s_LOGISIM_BUS_81;
   wire[11:0] s_LOGISIM_BUS_82;
   wire[1:0] s_LOGISIM_BUS_83;
   wire[1:0] s_LOGISIM_BUS_84;
   wire[3:0] s_LOGISIM_BUS_85;
   wire[4:0] s_LOGISIM_BUS_9;
   wire s_LOGISIM_NET_1;
   wire s_LOGISIM_NET_11;
   wire s_LOGISIM_NET_3;
   wire s_LOGISIM_NET_42;
   wire s_LOGISIM_NET_48;
   wire s_LOGISIM_NET_66;
   wire s_LOGISIM_NET_68;
   wire s_LOGISIM_NET_78;
   wire s_LOGISIM_NET_79;
   wire s_LOGISIM_NET_8;


   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_BUS_7[31:0]              = Instr;
   assign s_LOGISIM_BUS_12[0]                = JR;
   assign s_LOGISIM_BUS_41[31:0]             = PC_plus_four;
   assign s_LOGISIM_BUS_12[7]                = RegWrite;
   assign s_LOGISIM_BUS_12[3]                = BLEZ;
   assign s_LOGISIM_BUS_13[4:0]              = Shamt;
   assign s_LOGISIM_BUS_12[8]                = MemWrite;
   assign s_LOGISIM_BUS_12[5]                = BNE;
   assign s_LOGISIM_BUS_12[1]                = JMP;
   assign s_LOGISIM_BUS_12[9]                = HalfW;
   assign s_LOGISIM_BUS_29[1:0]              = R1_Forward;
   assign s_LOGISIM_BUS_12[2]                = JAL;
   assign s_LOGISIM_BUS_47[31:0]             = PC;
   assign s_LOGISIM_NET_79                   = Eff_in;
   assign s_LOGISIM_NET_66                   = PredictJump;
   assign s_LOGISIM_BUS_26[31:0]             = JAddr;
   assign s_LOGISIM_BUS_6[31:0]              = ExtData;
   assign s_LOGISIM_BUS_12[6]                = MemToReg;
   assign s_LOGISIM_BUS_31[3:0]              = AluOp;
   assign s_LOGISIM_BUS_12[4]                = BEQ;
   assign s_LOGISIM_NET_11                   = CLR;
   assign s_LOGISIM_BUS_30[1:0]              = R2_Forward;
   assign s_LOGISIM_BUS_12[11]               = Syscall;
   assign s_LOGISIM_BUS_55[4:0]              = WAdr;
   assign s_LOGISIM_NET_3                    = CLK;
   assign s_LOGISIM_BUS_12[10]               = AluSrcB;
   assign s_LOGISIM_BUS_39[31:0]             = R1;
   assign s_LOGISIM_BUS_40[31:0]             = R2;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign Shamt_Out                          = s_LOGISIM_BUS_65[4:0];
   assign Eff                                = s_LOGISIM_NET_1;
   assign PredictJump_Out                    = s_LOGISIM_NET_78;
   assign R1_Out                             = s_LOGISIM_BUS_34[31:0];
   assign AluSrcB_Out                        = s_LOGISIM_BUS_17[10];
   assign R2_Out                             = s_LOGISIM_BUS_35[31:0];
   assign BNE_Out                            = s_LOGISIM_BUS_17[5];
   assign JMP_Out                            = s_LOGISIM_BUS_17[1];
   assign JR_Out                             = s_LOGISIM_BUS_17[0];
   assign PC_plus_four_Out                   = s_LOGISIM_BUS_36[31:0];
   assign JAddr_Out                          = s_LOGISIM_BUS_22[31:0];
   assign BLEZ_Out                           = s_LOGISIM_BUS_17[3];
   assign Syscall_Out                        = s_LOGISIM_BUS_17[11];
   assign R2_Forward_Out                     = s_LOGISIM_BUS_73[1:0];
   assign JAL_Out                            = s_LOGISIM_BUS_17[2];
   assign Instr_out                          = s_LOGISIM_BUS_2[31:0];
   assign MemWrite_Out                       = s_LOGISIM_BUS_17[8];
   assign R1_Forward_Out                     = s_LOGISIM_BUS_72[1:0];
   assign BEQ_Out                            = s_LOGISIM_BUS_17[4];
   assign AluOp_Out                          = s_LOGISIM_BUS_74[3:0];
   assign WAdr_Out                           = s_LOGISIM_BUS_53[4:0];
   assign RegWrite_Out                       = s_LOGISIM_BUS_17[7];
   assign PC_Out                             = s_LOGISIM_BUS_77[31:0];
   assign HalfW_Out                          = s_LOGISIM_BUS_17[9];
   assign ExtData_Out                        = s_LOGISIM_BUS_0[31:0];
   assign MemToReg_Out                       = s_LOGISIM_BUS_17[6];

   /***************************************************************************
    ** Here all in-lined components are defined                              **
    ***************************************************************************/
   assign s_LOGISIM_NET_8 = 1'd0;

   assign s_LOGISIM_BUS_27[11:0] = 12'd0;

   assign s_LOGISIM_BUS_62[31:0] = 32'd0;

   assign s_LOGISIM_BUS_9[4:0] = 5'd0;

   assign s_LOGISIM_BUS_51[31:0] = 32'd0;

   assign s_LOGISIM_BUS_61[31:0] = 32'd0;

   assign s_LOGISIM_BUS_24[4:0] = 5'd0;

   assign s_LOGISIM_BUS_45[3:0] = 4'd0;

   assign s_LOGISIM_BUS_63[31:0] = 32'd0;

   assign s_LOGISIM_NET_42 = 1'd0;

   assign s_LOGISIM_BUS_44[1:0] = 2'd0;

   assign s_LOGISIM_BUS_32[31:0] = 32'd0;

   assign s_LOGISIM_BUS_43[1:0] = 2'd0;

   assign s_LOGISIM_BUS_56[31:0] = 32'd0;

   assign s_LOGISIM_BUS_33[31:0] = 32'd0;


   /***************************************************************************
    ** Here all normal components are defined                                **
    ***************************************************************************/
   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_1 (.Clock(s_LOGISIM_NET_3),
                       .ClockEnable(1'b1),
                       .D(s_LOGISIM_BUS_59[31:0]),
                       .Q(s_LOGISIM_BUS_22[31:0]),
                       .Reset(1'b0),
                       .Tick(1'b1),
                       .cs(1'b1),
                       .pre(1'b0));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(12))
      REGISTER_FILE_2 (.Clock(s_LOGISIM_NET_3),
                       .ClockEnable(1'b1),
                       .D(s_LOGISIM_BUS_82[11:0]),
                       .Q(s_LOGISIM_BUS_17[11:0]),
                       .Reset(1'b0),
                       .Tick(1'b1),
                       .cs(1'b1),
                       .pre(1'b0));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(4))
      REGISTER_FILE_3 (.Clock(s_LOGISIM_NET_3),
                       .ClockEnable(1'b1),
                       .D(s_LOGISIM_BUS_85[3:0]),
                       .Q(s_LOGISIM_BUS_74[3:0]),
                       .Reset(1'b0),
                       .Tick(1'b1),
                       .cs(1'b1),
                       .pre(1'b0));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_1 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_41[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_63[31:0]),
             .MuxOut(s_LOGISIM_BUS_71[31:0]),
             .Sel(s_LOGISIM_NET_11));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_4 (.Clock(s_LOGISIM_NET_3),
                       .ClockEnable(1'b1),
                       .D(s_LOGISIM_BUS_49[31:0]),
                       .Q(s_LOGISIM_BUS_0[31:0]),
                       .Reset(1'b0),
                       .Tick(1'b1),
                       .cs(1'b1),
                       .pre(1'b0));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_2 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_6[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_32[31:0]),
             .MuxOut(s_LOGISIM_BUS_49[31:0]),
             .Sel(s_LOGISIM_NET_11));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_5 (.Clock(s_LOGISIM_NET_3),
                       .ClockEnable(1'b1),
                       .D(s_LOGISIM_BUS_14[31:0]),
                       .Q(s_LOGISIM_BUS_77[31:0]),
                       .Reset(1'b0),
                       .Tick(1'b1),
                       .cs(1'b1),
                       .pre(1'b0));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(1))
      REGISTER_FILE_6 (.Clock(s_LOGISIM_NET_3),
                       .ClockEnable(1'b1),
                       .D(s_LOGISIM_NET_48),
                       .Q(s_LOGISIM_NET_78),
                       .Reset(1'b0),
                       .Tick(1'b1),
                       .cs(1'b1),
                       .pre(1'b0));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_7 (.Clock(s_LOGISIM_NET_3),
                       .ClockEnable(1'b1),
                       .D(s_LOGISIM_BUS_71[31:0]),
                       .Q(s_LOGISIM_BUS_36[31:0]),
                       .Reset(1'b0),
                       .Tick(1'b1),
                       .cs(1'b1),
                       .pre(1'b0));

   Multiplexer_bus_2 #(.NrOfBits(2))
      MUX_3 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_29[1:0]),
             .MuxIn_1(s_LOGISIM_BUS_43[1:0]),
             .MuxOut(s_LOGISIM_BUS_83[1:0]),
             .Sel(s_LOGISIM_NET_11));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(5))
      REGISTER_FILE_8 (.Clock(s_LOGISIM_NET_3),
                       .ClockEnable(1'b1),
                       .D(s_LOGISIM_BUS_81[4:0]),
                       .Q(s_LOGISIM_BUS_65[4:0]),
                       .Reset(1'b0),
                       .Tick(1'b1),
                       .cs(1'b1),
                       .pre(1'b0));

   Multiplexer_bus_2 #(.NrOfBits(4))
      MUX_4 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_31[3:0]),
             .MuxIn_1(s_LOGISIM_BUS_45[3:0]),
             .MuxOut(s_LOGISIM_BUS_85[3:0]),
             .Sel(s_LOGISIM_NET_11));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_5 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_40[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_62[31:0]),
             .MuxOut(s_LOGISIM_BUS_70[31:0]),
             .Sel(s_LOGISIM_NET_11));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(2))
      REGISTER_FILE_9 (.Clock(s_LOGISIM_NET_3),
                       .ClockEnable(1'b1),
                       .D(s_LOGISIM_BUS_84[1:0]),
                       .Q(s_LOGISIM_BUS_73[1:0]),
                       .Reset(1'b0),
                       .Tick(1'b1),
                       .cs(1'b1),
                       .pre(1'b0));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(2))
      REGISTER_FILE_10 (.Clock(s_LOGISIM_NET_3),
                        .ClockEnable(1'b1),
                        .D(s_LOGISIM_BUS_83[1:0]),
                        .Q(s_LOGISIM_BUS_72[1:0]),
                        .Reset(1'b0),
                        .Tick(1'b1),
                        .cs(1'b1),
                        .pre(1'b0));

   Multiplexer_bus_2 #(.NrOfBits(2))
      MUX_6 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_30[1:0]),
             .MuxIn_1(s_LOGISIM_BUS_44[1:0]),
             .MuxOut(s_LOGISIM_BUS_84[1:0]),
             .Sel(s_LOGISIM_NET_11));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_11 (.Clock(s_LOGISIM_NET_3),
                        .ClockEnable(1'b1),
                        .D(s_LOGISIM_BUS_70[31:0]),
                        .Q(s_LOGISIM_BUS_35[31:0]),
                        .Reset(1'b0),
                        .Tick(1'b1),
                        .cs(1'b1),
                        .pre(1'b0));

   Multiplexer_2      MUX_7 (.Enable(1'b1),
                             .MuxIn_0(s_LOGISIM_NET_79),
                             .MuxIn_1(s_LOGISIM_NET_42),
                             .MuxOut(s_LOGISIM_NET_68),
                             .Sel(s_LOGISIM_NET_11));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_8 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_47[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_56[31:0]),
             .MuxOut(s_LOGISIM_BUS_14[31:0]),
             .Sel(s_LOGISIM_NET_11));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_9 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_26[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_51[31:0]),
             .MuxOut(s_LOGISIM_BUS_59[31:0]),
             .Sel(s_LOGISIM_NET_11));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(1))
      REGISTER_FILE_12 (.Clock(s_LOGISIM_NET_3),
                        .ClockEnable(1'b1),
                        .D(s_LOGISIM_NET_68),
                        .Q(s_LOGISIM_NET_1),
                        .Reset(1'b0),
                        .Tick(1'b1),
                        .cs(1'b1),
                        .pre(1'b0));

   Multiplexer_bus_2 #(.NrOfBits(5))
      MUX_10 (.Enable(1'b1),
              .MuxIn_0(s_LOGISIM_BUS_13[4:0]),
              .MuxIn_1(s_LOGISIM_BUS_24[4:0]),
              .MuxOut(s_LOGISIM_BUS_81[4:0]),
              .Sel(s_LOGISIM_NET_11));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_11 (.Enable(1'b1),
              .MuxIn_0(s_LOGISIM_BUS_39[31:0]),
              .MuxIn_1(s_LOGISIM_BUS_61[31:0]),
              .MuxOut(s_LOGISIM_BUS_69[31:0]),
              .Sel(s_LOGISIM_NET_11));

   Multiplexer_bus_2 #(.NrOfBits(12))
      MUX_12 (.Enable(1'b1),
              .MuxIn_0(s_LOGISIM_BUS_12[11:0]),
              .MuxIn_1(s_LOGISIM_BUS_27[11:0]),
              .MuxOut(s_LOGISIM_BUS_82[11:0]),
              .Sel(s_LOGISIM_NET_11));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_13 (.Clock(s_LOGISIM_NET_3),
                        .ClockEnable(1'b1),
                        .D(s_LOGISIM_BUS_69[31:0]),
                        .Q(s_LOGISIM_BUS_34[31:0]),
                        .Reset(1'b0),
                        .Tick(1'b1),
                        .cs(1'b1),
                        .pre(1'b0));

   Multiplexer_bus_2 #(.NrOfBits(5))
      MUX_13 (.Enable(1'b1),
              .MuxIn_0(s_LOGISIM_BUS_55[4:0]),
              .MuxIn_1(s_LOGISIM_BUS_9[4:0]),
              .MuxOut(s_LOGISIM_BUS_75[4:0]),
              .Sel(s_LOGISIM_NET_11));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_14 (.Enable(1'b1),
              .MuxIn_0(s_LOGISIM_BUS_7[31:0]),
              .MuxIn_1(s_LOGISIM_BUS_33[31:0]),
              .MuxOut(s_LOGISIM_BUS_50[31:0]),
              .Sel(s_LOGISIM_NET_11));

   Multiplexer_2      MUX_15 (.Enable(1'b1),
                              .MuxIn_0(s_LOGISIM_NET_66),
                              .MuxIn_1(s_LOGISIM_NET_8),
                              .MuxOut(s_LOGISIM_NET_48),
                              .Sel(s_LOGISIM_NET_11));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_14 (.Clock(s_LOGISIM_NET_3),
                        .ClockEnable(1'b1),
                        .D(s_LOGISIM_BUS_50[31:0]),
                        .Q(s_LOGISIM_BUS_2[31:0]),
                        .Reset(1'b0),
                        .Tick(1'b1),
                        .cs(1'b1),
                        .pre(1'b0));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(5))
      REGISTER_FILE_15 (.Clock(s_LOGISIM_NET_3),
                        .ClockEnable(1'b1),
                        .D(s_LOGISIM_BUS_75[4:0]),
                        .Q(s_LOGISIM_BUS_53[4:0]),
                        .Reset(1'b0),
                        .Tick(1'b1),
                        .cs(1'b1),
                        .pre(1'b0));



endmodule
