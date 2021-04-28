/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : Decoder_4                                                    **
 **                                                                          **
 ******************************************************************************/

`timescale 1ns/1ps
module Decoder_4( Enable,
                  Sel,
                  DecoderOut_0,
                  DecoderOut_1,
                  DecoderOut_2,
                  DecoderOut_3);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input  Enable;
   input[1:0]  Sel;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output DecoderOut_0;
   output DecoderOut_1;
   output DecoderOut_2;
   output DecoderOut_3;
   assign DecoderOut_0  = (Enable&(Sel == 2'b00)) ? 1'b1 : 1'b0;
   assign DecoderOut_1  = (Enable&(Sel == 2'b01)) ? 1'b1 : 1'b0;
   assign DecoderOut_2  = (Enable&(Sel == 2'b10)) ? 1'b1 : 1'b0;
   assign DecoderOut_3  = (Enable&(Sel == 2'b11)) ? 1'b1 : 1'b0;

endmodule
