/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : reg_choose_logic                                             **
 **                                                                          **
 ******************************************************************************/

`timescale 1ns/1ps
module reg_choose_logic( JAL,
                         LOGISIM_CLOCK_TREE_0,
                         L_11_15,
                         L_16_20,
                         L_21_25,
                         L_6_10,
                         PC_plus_four,
                         RegDst,
                         Syscall,
                         WriteBack_Data,
                         R1Adr,
                         R2Adr,
                         RDin,
                         Shamt,
                         WAdr);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input  JAL;
   input[4:0]  LOGISIM_CLOCK_TREE_0;
   input[4:0]  L_11_15;
   input[4:0]  L_16_20;
   input[4:0]  L_21_25;
   input[4:0]  L_6_10;
   input[31:0]  PC_plus_four;
   input  RegDst;
   input  Syscall;
   input[31:0]  WriteBack_Data;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output[4:0] R1Adr;
   output[4:0] R2Adr;
   output[31:0] RDin;
   output[4:0] Shamt;
   output[4:0] WAdr;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire[4:0] s_LOGISIM_BUS_0;
   wire[4:0] s_LOGISIM_BUS_1;
   wire[4:0] s_LOGISIM_BUS_10;
   wire[31:0] s_LOGISIM_BUS_11;
   wire[4:0] s_LOGISIM_BUS_12;
   wire[4:0] s_LOGISIM_BUS_13;
   wire[4:0] s_LOGISIM_BUS_14;
   wire[4:0] s_LOGISIM_BUS_15;
   wire[4:0] s_LOGISIM_BUS_16;
   wire[4:0] s_LOGISIM_BUS_4;
   wire[31:0] s_LOGISIM_BUS_5;
   wire[31:0] s_LOGISIM_BUS_6;
   wire[4:0] s_LOGISIM_BUS_8;
   wire[4:0] s_LOGISIM_BUS_9;
   wire s_LOGISIM_NET_2;
   wire s_LOGISIM_NET_3;
   wire s_LOGISIM_NET_7;


   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_BUS_4[4:0]               = L_16_20;
   assign s_LOGISIM_NET_7                    = RegDst;
   assign s_LOGISIM_BUS_1[4:0]               = L_21_25;
   assign s_LOGISIM_BUS_12[4:0]              = L_11_15;
   assign s_LOGISIM_BUS_6[31:0]              = WriteBack_Data;
   assign s_LOGISIM_BUS_0[4:0]               = L_6_10;
   assign s_LOGISIM_NET_3                    = JAL;
   assign s_LOGISIM_BUS_5[31:0]              = PC_plus_four;
   assign s_LOGISIM_NET_2                    = Syscall;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign WAdr                               = s_LOGISIM_BUS_10[4:0];
   assign RDin                               = s_LOGISIM_BUS_11[31:0];
   assign Shamt                              = s_LOGISIM_BUS_0[4:0];
   assign R1Adr                              = s_LOGISIM_BUS_9[4:0];
   assign R2Adr                              = s_LOGISIM_BUS_8[4:0];

   /***************************************************************************
    ** Here all in-lined components are defined                              **
    ***************************************************************************/
   assign s_LOGISIM_BUS_14[4:0] = 5'd2;

   assign s_LOGISIM_BUS_13[4:0] = 5'd4;

   assign s_LOGISIM_BUS_15[4:0] = 5'd31;


   /***************************************************************************
    ** Here all normal components are defined                                **
    ***************************************************************************/
   Multiplexer_bus_2 #(.NrOfBits(5))
      MUX_1 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_4[4:0]),
             .MuxIn_1(s_LOGISIM_BUS_12[4:0]),
             .MuxOut(s_LOGISIM_BUS_16[4:0]),
             .Sel(s_LOGISIM_NET_7));

   Multiplexer_bus_2 #(.NrOfBits(5))
      MUX_2 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_4[4:0]),
             .MuxIn_1(s_LOGISIM_BUS_13[4:0]),
             .MuxOut(s_LOGISIM_BUS_8[4:0]),
             .Sel(s_LOGISIM_NET_2));

   Multiplexer_bus_2 #(.NrOfBits(5))
      MUX_3 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_1[4:0]),
             .MuxIn_1(s_LOGISIM_BUS_14[4:0]),
             .MuxOut(s_LOGISIM_BUS_9[4:0]),
             .Sel(s_LOGISIM_NET_2));

   Multiplexer_bus_2 #(.NrOfBits(5))
      MUX_4 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_16[4:0]),
             .MuxIn_1(s_LOGISIM_BUS_15[4:0]),
             .MuxOut(s_LOGISIM_BUS_10[4:0]),
             .Sel(s_LOGISIM_NET_3));

   Multiplexer_bus_2 #(.NrOfBits(32))
      MUX_5 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_6[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_5[31:0]),
             .MuxOut(s_LOGISIM_BUS_11[31:0]),
             .Sel(s_LOGISIM_NET_3));



endmodule
