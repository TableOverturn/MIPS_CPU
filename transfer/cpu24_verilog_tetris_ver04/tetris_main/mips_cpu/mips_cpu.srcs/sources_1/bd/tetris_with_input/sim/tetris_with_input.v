//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Mon Apr 26 00:09:32 2021
//Host        : Nick-Personal running 64-bit major release  (build 9200)
//Command     : generate_target tetris_with_input.bd
//Design      : tetris_with_input
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "tetris_with_input,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=tetris_with_input,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "tetris_with_input.hwdef" *) 
module tetris_with_input
   (din,
    dout,
    empty,
    fifo_clk,
    fifo_rst,
    rd_en,
    wr_ack,
    wr_en);
  input [6:0]din;
  output [6:0]dout;
  output empty;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.FIFO_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.FIFO_CLK, CLK_DOMAIN tetris_with_input_clk_0, FREQ_HZ 2500000, PHASE 0.000" *) input fifo_clk;
  input fifo_rst;
  input rd_en;
  output wr_ack;
  input wr_en;

  wire clk_0_1;
  wire [6:0]din_0_1;
  wire [6:0]fifo_generator_0_dout;
  wire fifo_generator_0_empty;
  wire fifo_rst_1;
  wire keyboard_fifo_simulator_wr_ack;
  wire rd_en_0_1;
  wire wr_en_0_1;

  assign clk_0_1 = fifo_clk;
  assign din_0_1 = din[6:0];
  assign dout[6:0] = fifo_generator_0_dout;
  assign empty = fifo_generator_0_empty;
  assign fifo_rst_1 = fifo_rst;
  assign rd_en_0_1 = rd_en;
  assign wr_ack = keyboard_fifo_simulator_wr_ack;
  assign wr_en_0_1 = wr_en;
  tetris_with_input_fifo_generator_0_0 keyboard_fifo_simulator
       (.clk(clk_0_1),
        .din(din_0_1),
        .dout(fifo_generator_0_dout),
        .empty(fifo_generator_0_empty),
        .rd_en(rd_en_0_1),
        .srst(fifo_rst_1),
        .wr_ack(keyboard_fifo_simulator_wr_ack),
        .wr_en(wr_en_0_1));
endmodule
