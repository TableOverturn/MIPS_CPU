/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : RAM_lower_byte_RAM                                           **
 **                                                                          **
 ******************************************************************************/

`timescale 1ns/1ps
module RAM_lower_byte_RAM( addr,
                           clk,
                           d,
                           we,
                           q);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input[9:0]  addr;
   input  clk;
   input[15:0]  d;
   input  we;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output[15:0] q;
	reg [31:0] mem[511:0];
   integer i;
   initial begin
      for (i = 0; i < 512; i=i+1) begin
         mem[i] <= 9'd0;
      end
   end
	always @ (posedge clk) begin
		if (we)
			mem[addr] <= d;
	end
	assign q = mem[addr];

endmodule
