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
                           sel,
                           q);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input[9:0]  addr;
   input  clk;
   input[15:0]  d;
   input  we;
   input  sel;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output[15:0] q;

	reg [9:0] mem[31:0];
	always @ (posedge clk) begin
		if (we & sel)
			mem[addr] <= d;
	end
	assign q = mem[addr];

endmodule
