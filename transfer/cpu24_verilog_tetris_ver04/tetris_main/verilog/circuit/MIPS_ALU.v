/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : MIPS_ALU                                                     **
 **                                                                          **
 ******************************************************************************/

`timescale 1ns/1ps
`define OP_SLL 		0
`define OP_SRA 		1
`define OP_SRL 		2
`define OP_MULTU 		3
`define OP_DIVU 		4
`define OP_ADD 		5
`define OP_SUB 		6
`define OP_AND 		7
`define OP_OR 		8
`define OP_XOR 		9
`define OP_NOR 		10
`define OP_SCMP 		11
`define OP_UCMP 		12
module MIPS_ALU( AluOP,
                 LOGISIM_CLOCK_TREE_0,
                 X,
                 Y,
                 shamt,
                 Equal,
                 Less,
                 Result,
                 Result_2);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input[3:0]  AluOP;
   input[4:0]  LOGISIM_CLOCK_TREE_0;
   input[31:0]  X;
   input[31:0]  Y;
   input[4:0]  shamt;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output reg  Equal;
   output reg  Less;
   output reg [31:0] Result;
   output reg [31:0] Result_2;

   always @(X or Y or AluOP or shamt) begin
		Equal = (X == Y);
		Less = ((X<Y) & !(X[31] ^ Y[31]) ) | ( (X[31] ^ Y[31] ) & X[31]);
	    case(AluOP)
	        `OP_SLL: begin
	            Result  = Y << shamt[4:0];
	            Result_2 = 0;
	        end
	        `OP_SRA: begin
	        	if(Y[31] == 1) begin
	        		Result  = (Y >> shamt[4:0]) | (32'hffffffff << (32 - shamt[4:0]));
	        		Result_2 = 0;
	        	end
	        	else begin
	        		Result  = Y >> shamt[4:0];
	        		Result_2 = 0;
	        	end
	        end
	        `OP_SRL: begin
	        	Result  = Y >> shamt[4:0];
	        	Result_2 = 0;
	        end
	        `OP_MULTU: begin
	        	Result  = 0;
	        	Result_2 = 0;
	        end
	        `OP_DIVU: begin
	        	Result  = 0;
	        	Result_2 = 0;
	        end
	        `OP_ADD: begin
	        	Result  = X + Y;
	            Result_2 = 0;
	        end
	        `OP_SUB: begin
	        	Result  = X - Y;
	        	Result_2 = 0;
	        end
	        `OP_AND: begin
	        	Result  = X & Y;
	        	Result_2 = 0;
	        end
	        `OP_OR: begin
	        	Result  = X | Y;
	        	Result_2 = 0;
	        end
	        `OP_XOR: begin
	        	Result  = X ^ Y;
	        	Result_2 = 0;
	        end
	        `OP_NOR: begin
	        	Result  = ~(X | Y);
	        	Result_2 = 0;
	        end
	        `OP_SCMP: begin
	        	Result  = ( (X<Y) & !(X[31] ^ Y[31]) ) | ( (X[31] ^ Y[31] ) & X[31] );
	        	Result_2 = 0;
	        end
	        `OP_UCMP: begin
	        	Result  = X < Y;
	        	Result_2 = 0;
	        end
	        default: begin
	        	Result  = 0;
	        	Result_2 = 0;
	        end
	    endcase
    end

endmodule
