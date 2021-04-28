/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : sc_hard_wired_controller                                     **
 **                                                                          **
 ******************************************************************************/

`timescale 1ns/1ps
module sc_hard_wired_controller( Func,
                                 LOGISIM_CLOCK_TREE_0,
                                 OP,
                                 ALU_OP,
                                 ALU_SRC,
                                 BLEZ,
                                 Beq,
                                 Bne,
                                 HalfW,
                                 JAL,
                                 JMP,
                                 JR,
                                 MemToReg,
                                 MemWrite,
                                 RegDst,
                                 RegWrite,
                                 SignedExt,
                                 SysCALL,
                                 Vshamt);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input[5:0]  Func;
   input[4:0]  LOGISIM_CLOCK_TREE_0;
   input[5:0]  OP;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output[3:0] ALU_OP;
   output ALU_SRC;
   output BLEZ;
   output Beq;
   output Bne;
   output HalfW;
   output JAL;
   output JMP;
   output JR;
   output MemToReg;
   output MemWrite;
   output RegDst;
   output RegWrite;
   output SignedExt;
   output SysCALL;
   output Vshamt;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire[3:0] s_LOGISIM_BUS_34;
   wire[5:0] s_LOGISIM_BUS_35;
   wire[5:0] s_LOGISIM_BUS_36;
   wire s_LOGISIM_NET_0;
   wire s_LOGISIM_NET_1;
   wire s_LOGISIM_NET_14;
   wire s_LOGISIM_NET_15;
   wire s_LOGISIM_NET_18;
   wire s_LOGISIM_NET_19;
   wire s_LOGISIM_NET_20;
   wire s_LOGISIM_NET_33;
   wire s_LOGISIM_NET_37;
   wire s_LOGISIM_NET_40;
   wire s_LOGISIM_NET_41;
   wire s_LOGISIM_NET_42;
   wire s_LOGISIM_NET_43;
   wire s_LOGISIM_NET_44;
   wire s_LOGISIM_NET_45;


   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_BUS_35[5:0]              = Func;
   assign s_LOGISIM_BUS_36[5:0]              = OP;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign MemWrite                           = s_LOGISIM_NET_44;
   assign BLEZ                               = s_LOGISIM_NET_0;
   assign JR                                 = s_LOGISIM_NET_15;
   assign SignedExt                          = s_LOGISIM_NET_40;
   assign RegDst                             = s_LOGISIM_NET_43;
   assign ALU_OP                             = s_LOGISIM_BUS_34[3:0];
   assign JAL                                = s_LOGISIM_NET_33;
   assign RegWrite                           = s_LOGISIM_NET_14;
   assign Vshamt                             = s_LOGISIM_NET_41;
   assign Bne                                = s_LOGISIM_NET_1;
   assign ALU_SRC                            = s_LOGISIM_NET_20;
   assign MemToReg                           = s_LOGISIM_NET_45;
   assign HalfW                              = s_LOGISIM_NET_37;
   assign JMP                                = s_LOGISIM_NET_18;
   assign SysCALL                            = s_LOGISIM_NET_42;
   assign Beq                                = s_LOGISIM_NET_19;

   /***************************************************************************
    ** Here all sub-circuits are defined                                     **
    ***************************************************************************/
   ALU_controller_autogen      ALU_controller_autogen_1 (.F0(s_LOGISIM_BUS_35[0]),
                                                         .F1(s_LOGISIM_BUS_35[1]),
                                                         .F2(s_LOGISIM_BUS_35[2]),
                                                         .F3(s_LOGISIM_BUS_35[3]),
                                                         .F4(s_LOGISIM_BUS_35[4]),
                                                         .F5(s_LOGISIM_BUS_35[5]),
                                                         .LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                                                         .OP0(s_LOGISIM_BUS_36[0]),
                                                         .OP1(s_LOGISIM_BUS_36[1]),
                                                         .OP2(s_LOGISIM_BUS_36[2]),
                                                         .OP3(s_LOGISIM_BUS_36[3]),
                                                         .OP4(s_LOGISIM_BUS_36[4]),
                                                         .OP5(s_LOGISIM_BUS_36[5]),
                                                         .S0(s_LOGISIM_BUS_34[0]),
                                                         .S1(s_LOGISIM_BUS_34[1]),
                                                         .S2(s_LOGISIM_BUS_34[2]),
                                                         .S3(s_LOGISIM_BUS_34[3]));

   ctrl_sig_autogen      ctrl_sig_autogen_1 (.ALU_SRC(s_LOGISIM_NET_20),
                                             .BEQ(s_LOGISIM_NET_19),
                                             .BLEZ(s_LOGISIM_NET_0),
                                             .BNE(s_LOGISIM_NET_1),
                                             .F0(s_LOGISIM_BUS_35[0]),
                                             .F1(s_LOGISIM_BUS_35[1]),
                                             .F2(s_LOGISIM_BUS_35[2]),
                                             .F3(s_LOGISIM_BUS_35[3]),
                                             .F4(s_LOGISIM_BUS_35[4]),
                                             .F5(s_LOGISIM_BUS_35[5]),
                                             .HalfW(s_LOGISIM_NET_37),
                                             .JAL(s_LOGISIM_NET_33),
                                             .JR(s_LOGISIM_NET_15),
                                             .JUMP(s_LOGISIM_NET_18),
                                             .LOGISIM_CLOCK_TREE_0(LOGISIM_CLOCK_TREE_0),
                                             .MemToReg(s_LOGISIM_NET_45),
                                             .MemWrite(s_LOGISIM_NET_44),
                                             .OP0(s_LOGISIM_BUS_36[0]),
                                             .OP1(s_LOGISIM_BUS_36[1]),
                                             .OP2(s_LOGISIM_BUS_36[2]),
                                             .OP3(s_LOGISIM_BUS_36[3]),
                                             .OP4(s_LOGISIM_BUS_36[4]),
                                             .OP5(s_LOGISIM_BUS_36[5]),
                                             .RegDst(s_LOGISIM_NET_43),
                                             .RegWrite(s_LOGISIM_NET_14),
                                             .SignedExt(s_LOGISIM_NET_40),
                                             .SysCALL(s_LOGISIM_NET_42),
                                             .Vshamt(s_LOGISIM_NET_41));



endmodule
