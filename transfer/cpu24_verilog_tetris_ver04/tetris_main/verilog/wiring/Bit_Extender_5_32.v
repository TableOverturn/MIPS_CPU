/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : Bit_Extender_5_32                                            **
 **                                                                          **
 ******************************************************************************/

`timescale 1ns/1ps
module Bit_Extender_5_32( imm_in,
                          imm_out);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input[4:0]  imm_in;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output reg [31:0] imm_out;

	always @(*) begin
		imm_out = {{(27){1'b0}}, imm_in};
	end

endmodule
