/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : BitSelector                                                  **
 **                                                                          **
 ******************************************************************************/

`timescale 1ns/1ps
module BitSelector( DataIn,
                    Sel,
                    DataOut);

   /***************************************************************************
    ** Here all module parameters are defined with a dummy value             **
    ***************************************************************************/
   parameter NrOfExtendedBits = 1;
   parameter NrOfSelBits = 1;
   parameter NrOfInputBits = 1;


   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input[NrOfInputBits-1:0]  DataIn;
   input[NrOfSelBits-1:0]  Sel;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output DataOut;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire[NrOfExtendedBits-1:0] s_extended_vector;

   assign s_extended_vector[NrOfExtendedBits-1:NrOfInputBits] = 0;
   assign s_extended_vector[NrOfInputBits-1:0] = DataIn;
   assign DataOut = s_extended_vector[Sel];

endmodule
