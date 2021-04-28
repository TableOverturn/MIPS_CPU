/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : MIPS_Regifile                                                **
 **                                                                          **
 ******************************************************************************/

`timescale 1ns/1ps
module MIPS_Regifile( Clk,
                      Din,
                      LOGISIM_CLOCK_TREE_0,
                      R1Adr,
                      R2Adr,
                      WAdr,
                      WE,
                      R1,
                      R2);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input  Clk;
   input[31:0]  Din;
   input[4:0]  LOGISIM_CLOCK_TREE_0;
   input[4:0]  R1Adr;
   input[4:0]  R2Adr;
   input[4:0]  WAdr;
   input  WE;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output reg [31:0] R1;
   output reg [31:0] R2;

    reg[31:0] registers[0:31];
    initial begin
        registers[0] = 32'd0;
        registers[1] = 32'd0;
        registers[2] = 32'd0;
        registers[3] = 32'd0;
        registers[4] = 32'd0;
        registers[5] = 32'd0;
        registers[6] = 32'd0;
        registers[7] = 32'd0;
        registers[8] = 32'd0;
        registers[9] = 32'd0;
        registers[10] = 32'd0;
        registers[11] = 32'd0;
        registers[12] = 32'd0;
        registers[13] = 32'd0;
        registers[14] = 32'd0;
        registers[15] = 32'd0;
        registers[16] = 32'd0;
        registers[17] = 32'd0;
        registers[18] = 32'd0;
        registers[19] = 32'd0;
        registers[20] = 32'd0;
        registers[21] = 32'd0;
        registers[22] = 32'd0;
        registers[23] = 32'd0;
        registers[24] = 32'd0;
        registers[25] = 32'd0;
        registers[26] = 32'd0;
        registers[27] = 32'd0;
        registers[28] = 32'd0;
        registers[29] = 32'd0;
        registers[30] = 32'd0;
        registers[31] = 32'd0;
    end
    always @(negedge Clk) begin
        if(WE && WAdr!=5'h0) begin
            registers[WAdr] <= Din;
        end
    end
    always @(*) begin
        if(R1Adr == 32'b0)
            R1 <= 32'b0;
        else
            R1 <= registers[R1Adr];
    end
    always @(*) begin
        if(R2Adr == 32'b0)
            R2 <= 32'b0;
        else
            R2 <= registers[R2Adr];
    end

endmodule
