//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Mon Apr 26 00:09:32 2021
//Host        : Nick-Personal running 64-bit major release  (build 9200)
//Command     : generate_target tetris_with_input_wrapper.bd
//Design      : tetris_with_input_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module tetris_with_input_wrapper
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
  input fifo_clk;
  input fifo_rst;
  input rd_en;
  output wr_ack;
  input wr_en;

  wire [6:0]din;
  wire [6:0]dout;
  wire empty;
  wire fifo_clk;
  wire fifo_rst;
  wire rd_en;
  wire wr_ack;
  wire wr_en;

  tetris_with_input tetris_with_input_i
       (.din(din),
        .dout(dout),
        .empty(empty),
        .fifo_clk(fifo_clk),
        .fifo_rst(fifo_rst),
        .rd_en(rd_en),
        .wr_ack(wr_ack),
        .wr_en(wr_en));
endmodule
