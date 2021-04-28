// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Mon Apr 26 00:13:56 2021
// Host        : Nick-Personal running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               f:/MIPS_CPU/transfer/cpu24_verilog_tetris_ver04/tetris_main/mips_cpu/mips_cpu.srcs/sources_1/bd/tetris_with_input/ip/tetris_with_input_fifo_generator_0_0/tetris_with_input_fifo_generator_0_0_stub.v
// Design      : tetris_with_input_fifo_generator_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fifo_generator_v13_2_2,Vivado 2018.2" *)
module tetris_with_input_fifo_generator_0_0(clk, srst, din, wr_en, rd_en, dout, full, wr_ack, empty)
/* synthesis syn_black_box black_box_pad_pin="clk,srst,din[6:0],wr_en,rd_en,dout[6:0],full,wr_ack,empty" */;
  input clk;
  input srst;
  input [6:0]din;
  input wr_en;
  input rd_en;
  output [6:0]dout;
  output full;
  output wr_ack;
  output empty;
endmodule
