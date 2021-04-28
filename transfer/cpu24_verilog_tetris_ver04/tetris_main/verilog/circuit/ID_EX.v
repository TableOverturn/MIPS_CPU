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
              ERET,
              ExtData,
              HalfW,
              Instr,
              JAL,
              JAddr,
              JMP,
              JR,
              LOGISIM_CLOCK_TREE_0,
              MFC,
              MTC,
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
              ERET_Out,
              ExtData_Out,
              HalfW_Out,
              Instr_out,
              JAL_Out,
              JAddr_Out,
              JMP_Out,
              JR_Out,
              MFC_Out,
              MTC_Out,
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
   input  ERET;
   input[31:0]  ExtData;
   input  HalfW;
   input[31:0]  Instr;
   input  JAL;
   input[31:0]  JAddr;
   input  JMP;
   input  JR;
   input[4:0]  LOGISIM_CLOCK_TREE_0;
   input  MFC;
   input  MTC;
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
   output ERET_Out;
   output[31:0] ExtData_Out;
   output HalfW_Out;
   output[31:0] Instr_out;
   output JAL_Out;
   output[31:0] JAddr_Out;
   output JMP_Out;
   output JR_Out;
   output MFC_Out;
   output MTC_Out;
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
   wire[31:0] s_LOGISIM_BUS_1;
   wire[14:0] s_LOGISIM_BUS_12;
   wire[4:0] s_LOGISIM_BUS_13;
   wire[31:0] s_LOGISIM_BUS_15;
   wire[31:0] s_LOGISIM_BUS_20;
   wire[14:0] s_LOGISIM_BUS_22;
   wire[4:0] s_LOGISIM_BUS_24;
   wire[31:0] s_LOGISIM_BUS_25;
   wire[1:0] s_LOGISIM_BUS_29;
   wire[1:0] s_LOGISIM_BUS_30;
   wire[3:0] s_LOGISIM_BUS_31;
   wire[31:0] s_LOGISIM_BUS_34;
   wire[31:0] s_LOGISIM_BUS_35;
   wire[31:0] s_LOGISIM_BUS_4;
   wire[31:0] s_LOGISIM_BUS_40;
   wire[31:0] s_LOGISIM_BUS_41;
   wire[31:0] s_LOGISIM_BUS_42;
   wire[31:0] s_LOGISIM_BUS_45;
   wire[31:0] s_LOGISIM_BUS_46;
   wire[31:0] s_LOGISIM_BUS_47;
   wire[1:0] s_LOGISIM_BUS_49;
   wire[31:0] s_LOGISIM_BUS_5;
   wire[1:0] s_LOGISIM_BUS_50;
   wire[3:0] s_LOGISIM_BUS_51;
   wire[31:0] s_LOGISIM_BUS_54;
   wire[31:0] s_LOGISIM_BUS_56;
   wire[31:0] s_LOGISIM_BUS_57;
   wire[31:0] s_LOGISIM_BUS_59;
   wire[4:0] s_LOGISIM_BUS_60;
   wire[4:0] s_LOGISIM_BUS_63;
   wire[31:0] s_LOGISIM_BUS_64;
   wire[31:0] s_LOGISIM_BUS_65;
   wire[31:0] s_LOGISIM_BUS_66;
   wire[31:0] s_LOGISIM_BUS_67;
   wire[31:0] s_LOGISIM_BUS_68;
   wire[4:0] s_LOGISIM_BUS_69;
   wire[4:0] s_LOGISIM_BUS_7;
   wire[31:0] s_LOGISIM_BUS_72;
   wire[31:0] s_LOGISIM_BUS_73;
   wire[31:0] s_LOGISIM_BUS_74;
   wire[1:0] s_LOGISIM_BUS_76;
   wire[1:0] s_LOGISIM_BUS_77;
   wire[3:0] s_LOGISIM_BUS_78;
   wire[14:0] s_LOGISIM_BUS_79;
   wire[4:0] s_LOGISIM_BUS_80;
   wire[31:0] s_LOGISIM_BUS_81;
   wire[4:0] s_LOGISIM_BUS_84;
   wire[1:0] s_LOGISIM_BUS_85;
   wire[1:0] s_LOGISIM_BUS_86;
   wire[3:0] s_LOGISIM_BUS_87;
   wire[14:0] s_LOGISIM_BUS_9;
   wire s_LOGISIM_NET_10;
   wire s_LOGISIM_NET_2;
   wire s_LOGISIM_NET_55;
   wire s_LOGISIM_NET_6;
   wire s_LOGISIM_NET_70;
   wire s_LOGISIM_NET_82;


   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_BUS_4[31:0]              = ExtData;
   assign s_LOGISIM_BUS_13[4:0]              = Shamt;
   assign s_LOGISIM_BUS_12[12]               = Syscall;
   assign s_LOGISIM_BUS_12[14]               = MFC;
   assign s_LOGISIM_NET_2                    = CLK;
   assign s_LOGISIM_NET_70                   = PredictJump;
   assign s_LOGISIM_BUS_46[31:0]             = R2;
   assign s_LOGISIM_BUS_12[5]                = BEQ;
   assign s_LOGISIM_BUS_12[9]                = MemWrite;
   assign s_LOGISIM_BUS_63[4:0]              = WAdr;
   assign s_LOGISIM_BUS_5[31:0]              = Instr;
   assign s_LOGISIM_BUS_12[0]                = ERET;
   assign s_LOGISIM_BUS_31[3:0]              = AluOp;
   assign s_LOGISIM_BUS_12[6]                = BNE;
   assign s_LOGISIM_BUS_54[31:0]             = PC;
   assign s_LOGISIM_BUS_12[8]                = RegWrite;
   assign s_LOGISIM_BUS_29[1:0]              = R1_Forward;
   assign s_LOGISIM_BUS_25[31:0]             = JAddr;
   assign s_LOGISIM_BUS_47[31:0]             = PC_plus_four;
   assign s_LOGISIM_BUS_12[4]                = BLEZ;
   assign s_LOGISIM_NET_10                   = CLR;
   assign s_LOGISIM_BUS_45[31:0]             = R1;
   assign s_LOGISIM_BUS_12[11]               = AluSrcB;
   assign s_LOGISIM_BUS_12[13]               = MTC;
   assign s_LOGISIM_BUS_12[10]               = HalfW;
   assign s_LOGISIM_BUS_12[3]                = JAL;
   assign s_LOGISIM_BUS_12[7]                = MemToReg;
   assign s_LOGISIM_BUS_12[2]                = JMP;
   assign s_LOGISIM_BUS_30[1:0]              = R2_Forward;
   assign s_LOGISIM_BUS_12[1]                = JR;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign AluSrcB_Out                        = s_LOGISIM_BUS_22[11];
   assign Syscall_Out                        = s_LOGISIM_BUS_22[12];
   assign JAL_Out                            = s_LOGISIM_BUS_22[3];
   assign Shamt_Out                          = s_LOGISIM_BUS_69[4:0];
   assign ERET_Out                           = s_LOGISIM_BUS_22[0];
   assign R2_Out                             = s_LOGISIM_BUS_41[31:0];
   assign AluOp_Out                          = s_LOGISIM_BUS_78[3:0];
   assign MFC_Out                            = s_LOGISIM_BUS_22[14];
   assign R1_Out                             = s_LOGISIM_BUS_40[31:0];
   assign Instr_out                          = s_LOGISIM_BUS_1[31:0];
   assign JMP_Out                            = s_LOGISIM_BUS_22[2];
   assign PC_Out                             = s_LOGISIM_BUS_81[31:0];
   assign MemWrite_Out                       = s_LOGISIM_BUS_22[9];
   assign RegWrite_Out                       = s_LOGISIM_BUS_22[8];
   assign BEQ_Out                            = s_LOGISIM_BUS_22[5];
   assign PredictJump_Out                    = s_LOGISIM_NET_82;
   assign R1_Forward_Out                     = s_LOGISIM_BUS_76[1:0];
   assign MemToReg_Out                       = s_LOGISIM_BUS_22[7];
   assign JAddr_Out                          = s_LOGISIM_BUS_20[31:0];
   assign PC_plus_four_Out                   = s_LOGISIM_BUS_42[31:0];
   assign BLEZ_Out                           = s_LOGISIM_BUS_22[4];
   assign JR_Out                             = s_LOGISIM_BUS_22[1];
   assign BNE_Out                            = s_LOGISIM_BUS_22[6];
   assign R2_Forward_Out                     = s_LOGISIM_BUS_77[1:0];
   assign HalfW_Out                          = s_LOGISIM_BUS_22[10];
   assign ExtData_Out                        = s_LOGISIM_BUS_0[31:0];
   assign WAdr_Out                           = s_LOGISIM_BUS_60[4:0];
   assign MTC_Out                            = s_LOGISIM_BUS_22[13];

   /***************************************************************************
    ** Here all in-lined components are defined                              **
    ***************************************************************************/
   assign s_LOGISIM_BUS_35[31:0] = 32'd0;

   assign s_LOGISIM_BUS_66[31:0] = 32'd0;

   assign s_LOGISIM_BUS_59[31:0] = 32'd0;

   assign s_LOGISIM_BUS_34[31:0] = 32'd0;

   assign s_LOGISIM_BUS_68[31:0] = 32'd0;

   assign s_LOGISIM_BUS_7[4:0] = 5'd0;

   assign s_LOGISIM_BUS_24[4:0] = 5'd0;

   assign s_LOGISIM_BUS_50[1:0] = 2'd0;

   assign s_LOGISIM_NET_6 = 1'd0;

   assign s_LOGISIM_BUS_49[1:0] = 2'd0;

   assign s_LOGISIM_BUS_51[3:0] = 4'd0;

   assign s_LOGISIM_BUS_67[31:0] = 32'd0;

   assign s_LOGISIM_BUS_9[14:0] = 15'd0;

   assign s_LOGISIM_BUS_64[31:0] = 32'd0;


   /***************************************************************************
    ** Here all normal components are defined                                **
    ***************************************************************************/
   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_1 (.Clock(s_LOGISIM_NET_2),
                       .ClockEnable(1'b1),
                       .D(s_LOGISIM_BUS_57[31:0]),
                       .Q(s_LOGISIM_BUS_1[31:0]),
                       .Reset(1'b0),
                       .Tick(1'b1),
                       .cs(1'b1),
                       .pre(1'b0));

   Multiplexer_2      MUX_1 (.Enable(1'b1),
                             .MuxIn_0(s_LOGISIM_NET_70),
                             .MuxIn_1(s_LOGISIM_NET_6),
                             .MuxOut(s_LOGISIM_NET_55),
                             .Sel(s_LOGISIM_NET_10));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_2 (.Clock(s_LOGISIM_NET_2),
                       .ClockEnable(1'b1),
                       .D(s_LOGISIM_BUS_73[31:0]),
                       .Q(s_LOGISIM_BUS_41[31:0]),
                       .Reset(1'b0),
                       .Tick(1'b1),
                       .cs(1'b1),
                       .pre(1'b0));

   Multiplexer_bus_2 #(.NrOfBits(2))
      MUX_2 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_29[1:0]),
             .MuxIn_1(s_LOGISIM_BUS_49[1:0]),
             .MuxOut(s_LOGISIM_BUS_85[1:0]),
             .Sel(s_LOGISIM_NET_10));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_3 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_45[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_66[31:0]),
             .MuxOut(s_LOGISIM_BUS_72[31:0]),
             .Sel(s_LOGISIM_NET_10));

   Multiplexer_bus_2 #(.NrOfBits(4))
      MUX_4 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_31[3:0]),
             .MuxIn_1(s_LOGISIM_BUS_51[3:0]),
             .MuxOut(s_LOGISIM_BUS_87[3:0]),
             .Sel(s_LOGISIM_NET_10));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(1))
      REGISTER_FILE_3 (.Clock(s_LOGISIM_NET_2),
                       .ClockEnable(1'b1),
                       .D(s_LOGISIM_NET_55),
                       .Q(s_LOGISIM_NET_82),
                       .Reset(1'b0),
                       .Tick(1'b1),
                       .cs(1'b1),
                       .pre(1'b0));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(4))
      REGISTER_FILE_4 (.Clock(s_LOGISIM_NET_2),
                       .ClockEnable(1'b1),
                       .D(s_LOGISIM_BUS_87[3:0]),
                       .Q(s_LOGISIM_BUS_78[3:0]),
                       .Reset(1'b0),
                       .Tick(1'b1),
                       .cs(1'b1),
                       .pre(1'b0));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_5 (.Clock(s_LOGISIM_NET_2),
                       .ClockEnable(1'b1),
                       .D(s_LOGISIM_BUS_72[31:0]),
                       .Q(s_LOGISIM_BUS_40[31:0]),
                       .Reset(1'b0),
                       .Tick(1'b1),
                       .cs(1'b1),
                       .pre(1'b0));

   Multiplexer_bus_2 #(.NrOfBits(5))
      MUX_5 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_13[4:0]),
             .MuxIn_1(s_LOGISIM_BUS_24[4:0]),
             .MuxOut(s_LOGISIM_BUS_84[4:0]),
             .Sel(s_LOGISIM_NET_10));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_6 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_5[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_35[31:0]),
             .MuxOut(s_LOGISIM_BUS_57[31:0]),
             .Sel(s_LOGISIM_NET_10));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_6 (.Clock(s_LOGISIM_NET_2),
                       .ClockEnable(1'b1),
                       .D(s_LOGISIM_BUS_65[31:0]),
                       .Q(s_LOGISIM_BUS_20[31:0]),
                       .Reset(1'b0),
                       .Tick(1'b1),
                       .cs(1'b1),
                       .pre(1'b0));

   Multiplexer_bus_2 #(.NrOfBits(2))
      MUX_7 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_30[1:0]),
             .MuxIn_1(s_LOGISIM_BUS_50[1:0]),
             .MuxOut(s_LOGISIM_BUS_86[1:0]),
             .Sel(s_LOGISIM_NET_10));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_7 (.Clock(s_LOGISIM_NET_2),
                       .ClockEnable(1'b1),
                       .D(s_LOGISIM_BUS_74[31:0]),
                       .Q(s_LOGISIM_BUS_42[31:0]),
                       .Reset(1'b0),
                       .Tick(1'b1),
                       .cs(1'b1),
                       .pre(1'b0));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_8 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_54[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_64[31:0]),
             .MuxOut(s_LOGISIM_BUS_15[31:0]),
             .Sel(s_LOGISIM_NET_10));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(2))
      REGISTER_FILE_8 (.Clock(s_LOGISIM_NET_2),
                       .ClockEnable(1'b1),
                       .D(s_LOGISIM_BUS_86[1:0]),
                       .Q(s_LOGISIM_BUS_77[1:0]),
                       .Reset(1'b0),
                       .Tick(1'b1),
                       .cs(1'b1),
                       .pre(1'b0));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_9 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_4[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_34[31:0]),
             .MuxOut(s_LOGISIM_BUS_56[31:0]),
             .Sel(s_LOGISIM_NET_10));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(5))
      REGISTER_FILE_9 (.Clock(s_LOGISIM_NET_2),
                       .ClockEnable(1'b1),
                       .D(s_LOGISIM_BUS_84[4:0]),
                       .Q(s_LOGISIM_BUS_69[4:0]),
                       .Reset(1'b0),
                       .Tick(1'b1),
                       .cs(1'b1),
                       .pre(1'b0));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_10 (.Clock(s_LOGISIM_NET_2),
                        .ClockEnable(1'b1),
                        .D(s_LOGISIM_BUS_15[31:0]),
                        .Q(s_LOGISIM_BUS_81[31:0]),
                        .Reset(1'b0),
                        .Tick(1'b1),
                        .cs(1'b1),
                        .pre(1'b0));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(15))
      REGISTER_FILE_11 (.Clock(s_LOGISIM_NET_2),
                        .ClockEnable(1'b1),
                        .D(s_LOGISIM_BUS_79[14:0]),
                        .Q(s_LOGISIM_BUS_22[14:0]),
                        .Reset(1'b0),
                        .Tick(1'b1),
                        .cs(1'b1),
                        .pre(1'b0));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(5))
      REGISTER_FILE_12 (.Clock(s_LOGISIM_NET_2),
                        .ClockEnable(1'b1),
                        .D(s_LOGISIM_BUS_80[4:0]),
                        .Q(s_LOGISIM_BUS_60[4:0]),
                        .Reset(1'b0),
                        .Tick(1'b1),
                        .cs(1'b1),
                        .pre(1'b0));

   Multiplexer_bus_2 #(.NrOfBits(15))
      MUX_10 (.Enable(1'b1),
              .MuxIn_0(s_LOGISIM_BUS_12[14:0]),
              .MuxIn_1(s_LOGISIM_BUS_9[14:0]),
              .MuxOut(s_LOGISIM_BUS_79[14:0]),
              .Sel(s_LOGISIM_NET_10));

   Multiplexer_bus_2 #(.NrOfBits(5))
      MUX_11 (.Enable(1'b1),
              .MuxIn_0(s_LOGISIM_BUS_63[4:0]),
              .MuxIn_1(s_LOGISIM_BUS_7[4:0]),
              .MuxOut(s_LOGISIM_BUS_80[4:0]),
              .Sel(s_LOGISIM_NET_10));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_12 (.Enable(1'b1),
              .MuxIn_0(s_LOGISIM_BUS_25[31:0]),
              .MuxIn_1(s_LOGISIM_BUS_59[31:0]),
              .MuxOut(s_LOGISIM_BUS_65[31:0]),
              .Sel(s_LOGISIM_NET_10));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_13 (.Enable(1'b1),
              .MuxIn_0(s_LOGISIM_BUS_47[31:0]),
              .MuxIn_1(s_LOGISIM_BUS_68[31:0]),
              .MuxOut(s_LOGISIM_BUS_74[31:0]),
              .Sel(s_LOGISIM_NET_10));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_14 (.Enable(1'b1),
              .MuxIn_0(s_LOGISIM_BUS_46[31:0]),
              .MuxIn_1(s_LOGISIM_BUS_67[31:0]),
              .MuxOut(s_LOGISIM_BUS_73[31:0]),
              .Sel(s_LOGISIM_NET_10));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(2))
      REGISTER_FILE_13 (.Clock(s_LOGISIM_NET_2),
                        .ClockEnable(1'b1),
                        .D(s_LOGISIM_BUS_85[1:0]),
                        .Q(s_LOGISIM_BUS_76[1:0]),
                        .Reset(1'b0),
                        .Tick(1'b1),
                        .cs(1'b1),
                        .pre(1'b0));

   REGISTER_FLIP_FLOP #(.ActiveLevel(1),
                        .NrOfBits(32))
      REGISTER_FILE_14 (.Clock(s_LOGISIM_NET_2),
                        .ClockEnable(1'b1),
                        .D(s_LOGISIM_BUS_56[31:0]),
                        .Q(s_LOGISIM_BUS_0[31:0]),
                        .Reset(1'b0),
                        .Tick(1'b1),
                        .cs(1'b1),
                        .pre(1'b0));



endmodule
