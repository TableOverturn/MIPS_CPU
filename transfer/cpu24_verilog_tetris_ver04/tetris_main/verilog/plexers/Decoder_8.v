/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : Decoder_8                                                    **
 **                                                                          **
 ******************************************************************************/

`timescale 1ns/1ps
module Decoder_8( Enable,
                  Sel,
                  DecoderOut_0,
                  DecoderOut_1,
                  DecoderOut_2,
                  DecoderOut_3,
                  DecoderOut_4,
                  DecoderOut_5,
                  DecoderOut_6,
                  DecoderOut_7);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input  Enable;
   input[2:0]  Sel;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output DecoderOut_0;
   output DecoderOut_1;
   output DecoderOut_2;
   output DecoderOut_3;
   output DecoderOut_4;
   output DecoderOut_5;
   output DecoderOut_6;
   output DecoderOut_7;
   assign DecoderOut_0  = (Enable&(Sel == 3'b000)) ? 1'b1 : 1'b0;
   assign DecoderOut_1  = (Enable&(Sel == 3'b001)) ? 1'b1 : 1'b0;
   assign DecoderOut_2  = (Enable&(Sel == 3'b010)) ? 1'b1 : 1'b0;
   assign DecoderOut_3  = (Enable&(Sel == 3'b011)) ? 1'b1 : 1'b0;
   assign DecoderOut_4  = (Enable&(Sel == 3'b100)) ? 1'b1 : 1'b0;
   assign DecoderOut_5  = (Enable&(Sel == 3'b101)) ? 1'b1 : 1'b0;
   assign DecoderOut_6  = (Enable&(Sel == 3'b110)) ? 1'b1 : 1'b0;
   assign DecoderOut_7  = (Enable&(Sel == 3'b111)) ? 1'b1 : 1'b0;

endmodule
