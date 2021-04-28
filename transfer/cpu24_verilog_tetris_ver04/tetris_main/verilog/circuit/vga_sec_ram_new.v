/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : vga_sec_ram                                                  **
 **                                                                          **
 ******************************************************************************/

`timescale 1ns/1ps
module vga_sec_ram( CLK,
                    LOGISIM_CLOCK_TREE_0,
                    R0,
                    R1,
                    R2,
                    R3,
                    R4,
                    R5,
                    R6,
                    R7,
                    R8,
                    R9,
                    R10,
                    R11,
                    R12,
                    R13,
                    R14,
                    R15,
                    Write,
                    input_X,
                    addr,
                    bit_out);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input  CLK;
   input[4:0]  LOGISIM_CLOCK_TREE_0;
   input[31:0]  R0;
   input[31:0]  R1;
   input[31:0]  R2;
   input[31:0]  R3;
   input[31:0]  R4;
   input[31:0]  R5;
   input[31:0]  R6;
   input[31:0]  R7;
   input[31:0]  R8;
   input[31:0]  R9;
   input[31:0]  R10;
   input[31:0]  R11;
   input[31:0]  R12;
   input[31:0]  R13;
   input[31:0]  R14;
   input[31:0]  R15;

   input  Write;
   input[3:0]  input_X;
   input[8:0]  addr;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output bit_out;

   wire [3:0] inner_off;
   wire [4:0] select;
   wire [31:0] vert_line;
   wire bit_out_prev;
   assign inner_off = addr[3:0];
   assign select = addr[8:4];

   wire [3:0] addr_0;
   wire [3:0] addr_1;
   wire [3:0] addr_2;
   wire [3:0] addr_3;
   wire [3:0] addr_4;
   wire [3:0] addr_5;
   wire [3:0] addr_6;
   wire [3:0] addr_7;
   wire [3:0] addr_8;
   wire [3:0] addr_9;
   wire [3:0] addr_10;
   wire [3:0] addr_11;
   wire [3:0] addr_12;
   wire [3:0] addr_13;
   wire [3:0] addr_14;
   wire [3:0] addr_15;
   wire [3:0] addr_16;
   wire [3:0] addr_17;
   wire [3:0] addr_18;
   wire [3:0] addr_19;
   wire [3:0] addr_20;
   wire [3:0] addr_21;
   wire [3:0] addr_22;
   wire [3:0] addr_23;
   wire [3:0] addr_24;
   wire [3:0] addr_25;
   wire [3:0] addr_26;
   wire [3:0] addr_27;
   wire [3:0] addr_28;
   wire [3:0] addr_29;
   wire [3:0] addr_30;
   wire [3:0] addr_31;
   wire ram_opt_0;
   wire ram_opt_1;
   wire ram_opt_2;
   wire ram_opt_3;
   wire ram_opt_4;
   wire ram_opt_5;
   wire ram_opt_6;
   wire ram_opt_7;
   wire ram_opt_8;
   wire ram_opt_9;
   wire ram_opt_10;
   wire ram_opt_11;
   wire ram_opt_12;
   wire ram_opt_13;
   wire ram_opt_14;
   wire ram_opt_15;
   wire ram_opt_16;
   wire ram_opt_17;
   wire ram_opt_18;
   wire ram_opt_19;
   wire ram_opt_20;
   wire ram_opt_21;
   wire ram_opt_22;
   wire ram_opt_23;
   wire ram_opt_24;
   wire ram_opt_25;
   wire ram_opt_26;
   wire ram_opt_27;
   wire ram_opt_28;
   wire ram_opt_29;
   wire ram_opt_30;
   wire ram_opt_31;

   Multiplexer_bus_16 #(.NrOfBits(32))
      MUX_vert_line_sel (.Enable(1'b1),
               .MuxIn_0(R0),
               .MuxIn_1(R1),
               .MuxIn_2(R2),
               .MuxIn_3(R3),
               .MuxIn_4(R4),
               .MuxIn_5(R5),
               .MuxIn_6(R6),
               .MuxIn_7(R7),
               .MuxIn_8(R8),
               .MuxIn_9(R9),
               .MuxIn_10(R10),
               .MuxIn_11(R11),
               .MuxIn_12(R12),
               .MuxIn_13(R13),
               .MuxIn_14(R14),
               .MuxIn_15(R15),
               .MuxOut(vert_line),
               .Sel(input_X));

   Multiplexer_bus_2 #(.NrOfBits(4))
      MUX_0 (.Enable(1'b1),
              .MuxIn_0(inner_off),
              .MuxIn_1(input_X),
              .MuxOut(addr_0),
              .Sel(Write));

   RAM_vga_sec_ram   RAM_0 (.addr(addr_0),
                           .clk(CLK),
                           .d(vert_line[0]),
                           .q(ram_opt_0),
                           .we(Write));

   Multiplexer_bus_2 #(.NrOfBits(4))
      MUX_1 (.Enable(1'b1),
              .MuxIn_0(inner_off),
              .MuxIn_1(input_X),
              .MuxOut(addr_1),
              .Sel(Write));

   RAM_vga_sec_ram   RAM_1 (.addr(addr_1),
                           .clk(CLK),
                           .d(vert_line[1]),
                           .q(ram_opt_1),
                           .we(Write));

   Multiplexer_bus_2 #(.NrOfBits(4))
      MUX_2 (.Enable(1'b1),
              .MuxIn_0(inner_off),
              .MuxIn_1(input_X),
              .MuxOut(addr_2),
              .Sel(Write));

   RAM_vga_sec_ram   RAM_2 (.addr(addr_2),
                           .clk(CLK),
                           .d(vert_line[2]),
                           .q(ram_opt_2),
                           .we(Write));

   Multiplexer_bus_2 #(.NrOfBits(4))
      MUX_3 (.Enable(1'b1),
              .MuxIn_0(inner_off),
              .MuxIn_1(input_X),
              .MuxOut(addr_3),
              .Sel(Write));

   RAM_vga_sec_ram   RAM_3 (.addr(addr_3),
                           .clk(CLK),
                           .d(vert_line[3]),
                           .q(ram_opt_3),
                           .we(Write));

   Multiplexer_bus_2 #(.NrOfBits(4))
      MUX_4 (.Enable(1'b1),
              .MuxIn_0(inner_off),
              .MuxIn_1(input_X),
              .MuxOut(addr_4),
              .Sel(Write));

   RAM_vga_sec_ram   RAM_4 (.addr(addr_4),
                           .clk(CLK),
                           .d(vert_line[4]),
                           .q(ram_opt_4),
                           .we(Write));

   Multiplexer_bus_2 #(.NrOfBits(4))
      MUX_5 (.Enable(1'b1),
              .MuxIn_0(inner_off),
              .MuxIn_1(input_X),
              .MuxOut(addr_5),
              .Sel(Write));

   RAM_vga_sec_ram   RAM_5 (.addr(addr_5),
                           .clk(CLK),
                           .d(vert_line[5]),
                           .q(ram_opt_5),
                           .we(Write));

   Multiplexer_bus_2 #(.NrOfBits(4))
      MUX_6 (.Enable(1'b1),
              .MuxIn_0(inner_off),
              .MuxIn_1(input_X),
              .MuxOut(addr_6),
              .Sel(Write));

   RAM_vga_sec_ram   RAM_6 (.addr(addr_6),
                           .clk(CLK),
                           .d(vert_line[6]),
                           .q(ram_opt_6),
                           .we(Write));

   Multiplexer_bus_2 #(.NrOfBits(4))
      MUX_7 (.Enable(1'b1),
              .MuxIn_0(inner_off),
              .MuxIn_1(input_X),
              .MuxOut(addr_7),
              .Sel(Write));

   RAM_vga_sec_ram   RAM_7 (.addr(addr_7),
                           .clk(CLK),
                           .d(vert_line[7]),
                           .q(ram_opt_7),
                           .we(Write));

   Multiplexer_bus_2 #(.NrOfBits(4))
      MUX_8 (.Enable(1'b1),
              .MuxIn_0(inner_off),
              .MuxIn_1(input_X),
              .MuxOut(addr_8),
              .Sel(Write));

   RAM_vga_sec_ram   RAM_8 (.addr(addr_8),
                           .clk(CLK),
                           .d(vert_line[8]),
                           .q(ram_opt_8),
                           .we(Write));

   Multiplexer_bus_2 #(.NrOfBits(4))
      MUX_9 (.Enable(1'b1),
              .MuxIn_0(inner_off),
              .MuxIn_1(input_X),
              .MuxOut(addr_9),
              .Sel(Write));

   RAM_vga_sec_ram   RAM_9 (.addr(addr_9),
                           .clk(CLK),
                           .d(vert_line[9]),
                           .q(ram_opt_9),
                           .we(Write));

   Multiplexer_bus_2 #(.NrOfBits(4))
      MUX_10 (.Enable(1'b1),
              .MuxIn_0(inner_off),
              .MuxIn_1(input_X),
              .MuxOut(addr_10),
              .Sel(Write));

   RAM_vga_sec_ram   RAM_10 (.addr(addr_10),
                           .clk(CLK),
                           .d(vert_line[10]),
                           .q(ram_opt_10),
                           .we(Write));

   Multiplexer_bus_2 #(.NrOfBits(4))
      MUX_11 (.Enable(1'b1),
              .MuxIn_0(inner_off),
              .MuxIn_1(input_X),
              .MuxOut(addr_11),
              .Sel(Write));

   RAM_vga_sec_ram   RAM_11 (.addr(addr_11),
                           .clk(CLK),
                           .d(vert_line[11]),
                           .q(ram_opt_11),
                           .we(Write));

   Multiplexer_bus_2 #(.NrOfBits(4))
      MUX_12 (.Enable(1'b1),
              .MuxIn_0(inner_off),
              .MuxIn_1(input_X),
              .MuxOut(addr_12),
              .Sel(Write));

   RAM_vga_sec_ram   RAM_12 (.addr(addr_12),
                           .clk(CLK),
                           .d(vert_line[12]),
                           .q(ram_opt_12),
                           .we(Write));

   Multiplexer_bus_2 #(.NrOfBits(4))
      MUX_13 (.Enable(1'b1),
              .MuxIn_0(inner_off),
              .MuxIn_1(input_X),
              .MuxOut(addr_13),
              .Sel(Write));

   RAM_vga_sec_ram   RAM_13 (.addr(addr_13),
                           .clk(CLK),
                           .d(vert_line[13]),
                           .q(ram_opt_13),
                           .we(Write));

   Multiplexer_bus_2 #(.NrOfBits(4))
      MUX_14 (.Enable(1'b1),
              .MuxIn_0(inner_off),
              .MuxIn_1(input_X),
              .MuxOut(addr_14),
              .Sel(Write));

   RAM_vga_sec_ram   RAM_14 (.addr(addr_14),
                           .clk(CLK),
                           .d(vert_line[14]),
                           .q(ram_opt_14),
                           .we(Write));

   Multiplexer_bus_2 #(.NrOfBits(4))
      MUX_15 (.Enable(1'b1),
              .MuxIn_0(inner_off),
              .MuxIn_1(input_X),
              .MuxOut(addr_15),
              .Sel(Write));

   RAM_vga_sec_ram   RAM_15 (.addr(addr_15),
                           .clk(CLK),
                           .d(vert_line[15]),
                           .q(ram_opt_15),
                           .we(Write));

   Multiplexer_bus_2 #(.NrOfBits(4))
      MUX_16 (.Enable(1'b1),
              .MuxIn_0(inner_off),
              .MuxIn_1(input_X),
              .MuxOut(addr_16),
              .Sel(Write));

   RAM_vga_sec_ram   RAM_16 (.addr(addr_16),
                           .clk(CLK),
                           .d(vert_line[16]),
                           .q(ram_opt_16),
                           .we(Write));

   Multiplexer_bus_2 #(.NrOfBits(4))
      MUX_17 (.Enable(1'b1),
              .MuxIn_0(inner_off),
              .MuxIn_1(input_X),
              .MuxOut(addr_17),
              .Sel(Write));

   RAM_vga_sec_ram   RAM_17 (.addr(addr_17),
                           .clk(CLK),
                           .d(vert_line[17]),
                           .q(ram_opt_17),
                           .we(Write));

   Multiplexer_bus_2 #(.NrOfBits(4))
      MUX_18 (.Enable(1'b1),
              .MuxIn_0(inner_off),
              .MuxIn_1(input_X),
              .MuxOut(addr_18),
              .Sel(Write));

   RAM_vga_sec_ram   RAM_18 (.addr(addr_18),
                           .clk(CLK),
                           .d(vert_line[18]),
                           .q(ram_opt_18),
                           .we(Write));

   Multiplexer_bus_2 #(.NrOfBits(4))
      MUX_19 (.Enable(1'b1),
              .MuxIn_0(inner_off),
              .MuxIn_1(input_X),
              .MuxOut(addr_19),
              .Sel(Write));

   RAM_vga_sec_ram   RAM_19 (.addr(addr_19),
                           .clk(CLK),
                           .d(vert_line[19]),
                           .q(ram_opt_19),
                           .we(Write));

   Multiplexer_bus_2 #(.NrOfBits(4))
      MUX_20 (.Enable(1'b1),
              .MuxIn_0(inner_off),
              .MuxIn_1(input_X),
              .MuxOut(addr_20),
              .Sel(Write));

   RAM_vga_sec_ram   RAM_20 (.addr(addr_20),
                           .clk(CLK),
                           .d(vert_line[20]),
                           .q(ram_opt_20),
                           .we(Write));

   Multiplexer_bus_2 #(.NrOfBits(4))
      MUX_21 (.Enable(1'b1),
              .MuxIn_0(inner_off),
              .MuxIn_1(input_X),
              .MuxOut(addr_21),
              .Sel(Write));

   RAM_vga_sec_ram   RAM_21 (.addr(addr_21),
                           .clk(CLK),
                           .d(vert_line[21]),
                           .q(ram_opt_21),
                           .we(Write));

   Multiplexer_bus_2 #(.NrOfBits(4))
      MUX_22 (.Enable(1'b1),
              .MuxIn_0(inner_off),
              .MuxIn_1(input_X),
              .MuxOut(addr_22),
              .Sel(Write));

   RAM_vga_sec_ram   RAM_22 (.addr(addr_22),
                           .clk(CLK),
                           .d(vert_line[22]),
                           .q(ram_opt_22),
                           .we(Write));

   Multiplexer_bus_2 #(.NrOfBits(4))
      MUX_23 (.Enable(1'b1),
              .MuxIn_0(inner_off),
              .MuxIn_1(input_X),
              .MuxOut(addr_23),
              .Sel(Write));

   RAM_vga_sec_ram   RAM_23 (.addr(addr_23),
                           .clk(CLK),
                           .d(vert_line[23]),
                           .q(ram_opt_23),
                           .we(Write));

   Multiplexer_bus_2 #(.NrOfBits(4))
      MUX_24 (.Enable(1'b1),
              .MuxIn_0(inner_off),
              .MuxIn_1(input_X),
              .MuxOut(addr_24),
              .Sel(Write));

   RAM_vga_sec_ram   RAM_24 (.addr(addr_24),
                           .clk(CLK),
                           .d(vert_line[24]),
                           .q(ram_opt_24),
                           .we(Write));

   Multiplexer_bus_2 #(.NrOfBits(4))
      MUX_25 (.Enable(1'b1),
              .MuxIn_0(inner_off),
              .MuxIn_1(input_X),
              .MuxOut(addr_25),
              .Sel(Write));

   RAM_vga_sec_ram   RAM_25 (.addr(addr_25),
                           .clk(CLK),
                           .d(vert_line[25]),
                           .q(ram_opt_25),
                           .we(Write));

   Multiplexer_bus_2 #(.NrOfBits(4))
      MUX_26 (.Enable(1'b1),
              .MuxIn_0(inner_off),
              .MuxIn_1(input_X),
              .MuxOut(addr_26),
              .Sel(Write));

   RAM_vga_sec_ram   RAM_26 (.addr(addr_26),
                           .clk(CLK),
                           .d(vert_line[26]),
                           .q(ram_opt_26),
                           .we(Write));

   Multiplexer_bus_2 #(.NrOfBits(4))
      MUX_27 (.Enable(1'b1),
              .MuxIn_0(inner_off),
              .MuxIn_1(input_X),
              .MuxOut(addr_27),
              .Sel(Write));

   RAM_vga_sec_ram   RAM_27 (.addr(addr_27),
                           .clk(CLK),
                           .d(vert_line[27]),
                           .q(ram_opt_27),
                           .we(Write));

   Multiplexer_bus_2 #(.NrOfBits(4))
      MUX_28 (.Enable(1'b1),
              .MuxIn_0(inner_off),
              .MuxIn_1(input_X),
              .MuxOut(addr_28),
              .Sel(Write));

   RAM_vga_sec_ram   RAM_28 (.addr(addr_28),
                           .clk(CLK),
                           .d(vert_line[28]),
                           .q(ram_opt_28),
                           .we(Write));

   Multiplexer_bus_2 #(.NrOfBits(4))
      MUX_29 (.Enable(1'b1),
              .MuxIn_0(inner_off),
              .MuxIn_1(input_X),
              .MuxOut(addr_29),
              .Sel(Write));

   RAM_vga_sec_ram   RAM_29 (.addr(addr_29),
                           .clk(CLK),
                           .d(vert_line[29]),
                           .q(ram_opt_29),
                           .we(Write));

   Multiplexer_bus_2 #(.NrOfBits(4))
      MUX_30 (.Enable(1'b1),
              .MuxIn_0(inner_off),
              .MuxIn_1(input_X),
              .MuxOut(addr_30),
              .Sel(Write));

   RAM_vga_sec_ram   RAM_30 (.addr(addr_30),
                           .clk(CLK),
                           .d(vert_line[30]),
                           .q(ram_opt_30),
                           .we(Write));

   Multiplexer_bus_2 #(.NrOfBits(4))
      MUX_31 (.Enable(1'b1),
              .MuxIn_0(inner_off),
              .MuxIn_1(input_X),
              .MuxOut(addr_31),
              .Sel(Write));

   RAM_vga_sec_ram   RAM_31 (.addr(addr_31),
                           .clk(CLK),
                           .d(vert_line[31]),
                           .q(ram_opt_31),
                           .we(Write));

   Multiplexer_32 MUX_bit_choose (.Enable(1'b1),
                               .MuxIn_0(ram_opt_0),
                               .MuxIn_1(ram_opt_1),
                               .MuxIn_2(ram_opt_2),
                               .MuxIn_3(ram_opt_3),
                               .MuxIn_4(ram_opt_4),
                               .MuxIn_5(ram_opt_5),
                               .MuxIn_6(ram_opt_6),
                               .MuxIn_7(ram_opt_7),
                               .MuxIn_8(ram_opt_8),
                               .MuxIn_9(ram_opt_9),
                               .MuxIn_10(ram_opt_10),
                               .MuxIn_11(ram_opt_11),
                               .MuxIn_12(ram_opt_12),
                               .MuxIn_13(ram_opt_13),
                               .MuxIn_14(ram_opt_14),
                               .MuxIn_15(ram_opt_15),
                               .MuxIn_16(ram_opt_16),
                               .MuxIn_17(ram_opt_17),
                               .MuxIn_18(ram_opt_18),
                               .MuxIn_19(ram_opt_19),
                               .MuxIn_20(ram_opt_20),
                               .MuxIn_21(ram_opt_21),
                               .MuxIn_22(ram_opt_22),
                               .MuxIn_23(ram_opt_23),
                               .MuxIn_24(ram_opt_24),
                               .MuxIn_25(ram_opt_25),
                               .MuxIn_26(ram_opt_26),
                               .MuxIn_27(ram_opt_27),
                               .MuxIn_28(ram_opt_28),
                               .MuxIn_29(ram_opt_29),
                               .MuxIn_30(ram_opt_30),
                               .MuxIn_31(ram_opt_31),
                               .MuxOut(bit_out_prev),
                               .Sel(select));
   Multiplexer_2  MUX_final (.Enable(1'b1),
                             .MuxIn_0(1'b0),
                             .MuxIn_1(bit_out_prev),
                             .MuxOut(bit_out),
                             .Sel(~Write));
endmodule
