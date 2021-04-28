/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : RAM_vga_sec_ram                                              **
 **                                                                          **
 ******************************************************************************/

`timescale 1ns/1ps
module RAM_vga_sec_ram(  addr,
                          clk,
                          d,
                          we,
                          q);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input[3:0]  addr;
   input  clk;
   input  d;
   input  we;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output q;

	reg [15:0] mem;
   integer i;
   initial begin
      mem <= 16'd0;
   end

	always @ (posedge clk) begin
		if (we)
			mem[addr] <= d;
	end
	assign q = mem[addr];

endmodule
