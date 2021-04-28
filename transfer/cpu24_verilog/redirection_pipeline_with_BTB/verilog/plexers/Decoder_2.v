/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : Decoder_2                                                    **
 **                                                                          **
 ******************************************************************************/

`timescale 1ns/1ps
module Decoder_2( Enable,
                  Sel,
                  DecoderOut_0,
                  DecoderOut_1);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input  Enable;
   input  Sel;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output DecoderOut_0;
   output DecoderOut_1;
   assign DecoderOut_0  = (Enable&(Sel == 1'b0)) ? 1'b1 : 1'b0;
   assign DecoderOut_1  = (Enable&(Sel == 1'b1)) ? 1'b1 : 1'b0;

endmodule
