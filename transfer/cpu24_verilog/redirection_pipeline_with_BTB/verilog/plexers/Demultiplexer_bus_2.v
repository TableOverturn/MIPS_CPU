/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : Demultiplexer_bus_2                                          **
 **                                                                          **
 ******************************************************************************/

`timescale 1ns/1ps
module Demultiplexer_bus_2( DemuxIn,
                            Enable,
                            Sel,
                            DemuxOut_0,
                            DemuxOut_1);

   /***************************************************************************
    ** Here all module parameters are defined with a dummy value             **
    ***************************************************************************/
   parameter NrOfBits = 1;


   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input[NrOfBits-1:0]  DemuxIn;
   input  Enable;
   input  Sel;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output[NrOfBits-1:0] DemuxOut_0;
   output[NrOfBits-1:0] DemuxOut_1;
   assign DemuxOut_0   = (Enable&(Sel == 1'b0 )) ? DemuxIn : 0;
   assign DemuxOut_1   = (Enable&(Sel == 1'b1 )) ? DemuxIn : 0;

endmodule
