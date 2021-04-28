/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : bitmap_get                                                   **
 **                                                                          **
 ******************************************************************************/

`timescale 1ns/1ps
module bitmap_get( Control_Bit,
                   LOGISIM_CLOCK_TREE_0,
                   R0,
                   R1,
                   R10,
                   R11,
                   R12,
                   R13,
                   R14,
                   R15,
                   R2,
                   R3,
                   R4,
                   R5,
                   R6,
                   R7,
                   R8,
                   R9,
                   X,
                   Y,
                   bitmap_out);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input[1:0]  Control_Bit;
   input[4:0]  LOGISIM_CLOCK_TREE_0;
   input[31:0]  R0;
   input[31:0]  R1;
   input[31:0]  R10;
   input[31:0]  R11;
   input[31:0]  R12;
   input[31:0]  R13;
   input[31:0]  R14;
   input[31:0]  R15;
   input[31:0]  R2;
   input[31:0]  R3;
   input[31:0]  R4;
   input[31:0]  R5;
   input[31:0]  R6;
   input[31:0]  R7;
   input[31:0]  R8;
   input[31:0]  R9;
   input[3:0]  X;
   input[4:0]  Y;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output[31:0] bitmap_out;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire[31:0] s_LOGISIM_BUS_0;
   wire[31:0] s_LOGISIM_BUS_11;
   wire[31:0] s_LOGISIM_BUS_14;
   wire[31:0] s_LOGISIM_BUS_15;
   wire[31:0] s_LOGISIM_BUS_16;
   wire[31:0] s_LOGISIM_BUS_17;
   wire[31:0] s_LOGISIM_BUS_18;
   wire[31:0] s_LOGISIM_BUS_19;
   wire[31:0] s_LOGISIM_BUS_22;
   wire[31:0] s_LOGISIM_BUS_25;
   wire[31:0] s_LOGISIM_BUS_27;
   wire[31:0] s_LOGISIM_BUS_28;
   wire[31:0] s_LOGISIM_BUS_3;
   wire[31:0] s_LOGISIM_BUS_30;
   wire[31:0] s_LOGISIM_BUS_31;
   wire[4:0] s_LOGISIM_BUS_36;
   wire[1:0] s_LOGISIM_BUS_38;
   wire[4:0] s_LOGISIM_BUS_39;
   wire[31:0] s_LOGISIM_BUS_4;
   wire[31:0] s_LOGISIM_BUS_40;
   wire[31:0] s_LOGISIM_BUS_42;
   wire[3:0] s_LOGISIM_BUS_44;
   wire[4:0] s_LOGISIM_BUS_45;
   wire[31:0] s_LOGISIM_BUS_6;
   wire[31:0] s_LOGISIM_BUS_7;
   wire[31:0] s_LOGISIM_BUS_9;


   /***************************************************************************
    ** Here all input connections are defined                                **
    ***************************************************************************/
   assign s_LOGISIM_BUS_28[31:0]             = R12;
   assign s_LOGISIM_BUS_42[31:0]             = R14;
   assign s_LOGISIM_BUS_38[1:0]              = Control_Bit;
   assign s_LOGISIM_BUS_40[31:0]             = R10;
   assign s_LOGISIM_BUS_14[31:0]             = R15;
   assign s_LOGISIM_BUS_15[31:0]             = R3;
   assign s_LOGISIM_BUS_7[31:0]              = R1;
   assign s_LOGISIM_BUS_4[31:0]              = R4;
   assign s_LOGISIM_BUS_45[4:0]              = Y;
   assign s_LOGISIM_BUS_9[31:0]              = R6;
   assign s_LOGISIM_BUS_31[31:0]             = R2;
   assign s_LOGISIM_BUS_6[31:0]              = R11;
   assign s_LOGISIM_BUS_27[31:0]             = R5;
   assign s_LOGISIM_BUS_25[31:0]             = R8;
   assign s_LOGISIM_BUS_3[31:0]              = R7;
   assign s_LOGISIM_BUS_11[31:0]             = R9;
   assign s_LOGISIM_BUS_44[3:0]              = X;
   assign s_LOGISIM_BUS_18[31:0]             = R0;
   assign s_LOGISIM_BUS_16[31:0]             = R13;

   /***************************************************************************
    ** Here all output connections are defined                               **
    ***************************************************************************/
   assign bitmap_out                         = s_LOGISIM_BUS_22[31:0];

   /***************************************************************************
    ** Here all in-lined components are defined                              **
    ***************************************************************************/
   assign s_LOGISIM_BUS_36[4:0] = 5'd31;

   assign s_LOGISIM_BUS_0[31:1] = 31'd0;

   assign s_LOGISIM_BUS_17[31:0] = 32'd0;

   assign s_LOGISIM_BUS_19[31:16] = 16'd0;


   /***************************************************************************
    ** Here all normal components are defined                                **
    ***************************************************************************/
   BitSelector #(.NrOfExtendedBits(33),
                 .NrOfInputBits(32),
                 .NrOfSelBits(5))
      BITSELECTOR_1 (.DataIn(s_LOGISIM_BUS_25[31:0]),
                     .DataOut(s_LOGISIM_BUS_19[8]),
                     .Sel(s_LOGISIM_BUS_39[4:0]));

   BitSelector #(.NrOfExtendedBits(33),
                 .NrOfInputBits(32),
                 .NrOfSelBits(5))
      BITSELECTOR_2 (.DataIn(s_LOGISIM_BUS_40[31:0]),
                     .DataOut(s_LOGISIM_BUS_19[10]),
                     .Sel(s_LOGISIM_BUS_39[4:0]));

   BitSelector #(.NrOfExtendedBits(33),
                 .NrOfInputBits(32),
                 .NrOfSelBits(5))
      BITSELECTOR_3 (.DataIn(s_LOGISIM_BUS_28[31:0]),
                     .DataOut(s_LOGISIM_BUS_19[12]),
                     .Sel(s_LOGISIM_BUS_39[4:0]));

   BitSelector #(.NrOfExtendedBits(33),
                 .NrOfInputBits(32),
                 .NrOfSelBits(5))
      BITSELECTOR_4 (.DataIn(s_LOGISIM_BUS_16[31:0]),
                     .DataOut(s_LOGISIM_BUS_19[13]),
                     .Sel(s_LOGISIM_BUS_39[4:0]));

   BitSelector #(.NrOfExtendedBits(33),
                 .NrOfInputBits(32),
                 .NrOfSelBits(5))
      BITSELECTOR_5 (.DataIn(s_LOGISIM_BUS_31[31:0]),
                     .DataOut(s_LOGISIM_BUS_19[2]),
                     .Sel(s_LOGISIM_BUS_39[4:0]));

   BitSelector #(.NrOfExtendedBits(33),
                 .NrOfInputBits(32),
                 .NrOfSelBits(5))
      BITSELECTOR_6 (.DataIn(s_LOGISIM_BUS_18[31:0]),
                     .DataOut(s_LOGISIM_BUS_19[0]),
                     .Sel(s_LOGISIM_BUS_39[4:0]));

   BitSelector #(.NrOfExtendedBits(33),
                 .NrOfInputBits(32),
                 .NrOfSelBits(5))
      BITSELECTOR_7 (.DataIn(s_LOGISIM_BUS_42[31:0]),
                     .DataOut(s_LOGISIM_BUS_19[14]),
                     .Sel(s_LOGISIM_BUS_39[4:0]));

   BitSelector #(.NrOfExtendedBits(33),
                 .NrOfInputBits(32),
                 .NrOfSelBits(5))
      BITSELECTOR_8 (.DataIn(s_LOGISIM_BUS_9[31:0]),
                     .DataOut(s_LOGISIM_BUS_19[6]),
                     .Sel(s_LOGISIM_BUS_39[4:0]));

   BitSelector #(.NrOfExtendedBits(33),
                 .NrOfInputBits(32),
                 .NrOfSelBits(5))
      BITSELECTOR_9 (.DataIn(s_LOGISIM_BUS_15[31:0]),
                     .DataOut(s_LOGISIM_BUS_19[3]),
                     .Sel(s_LOGISIM_BUS_39[4:0]));

   BitSelector #(.NrOfExtendedBits(33),
                 .NrOfInputBits(32),
                 .NrOfSelBits(5))
      BITSELECTOR_10 (.DataIn(s_LOGISIM_BUS_11[31:0]),
                      .DataOut(s_LOGISIM_BUS_19[9]),
                      .Sel(s_LOGISIM_BUS_39[4:0]));

   BitSelector #(.NrOfExtendedBits(17),
                 .NrOfInputBits(16),
                 .NrOfSelBits(4))
      BITSELECTOR_11 (.DataIn(s_LOGISIM_BUS_19[15:0]),
                      .DataOut(s_LOGISIM_BUS_0[0]),
                      .Sel(s_LOGISIM_BUS_44[3:0]));

   BitSelector #(.NrOfExtendedBits(33),
                 .NrOfInputBits(32),
                 .NrOfSelBits(5))
      BITSELECTOR_12 (.DataIn(s_LOGISIM_BUS_7[31:0]),
                      .DataOut(s_LOGISIM_BUS_19[1]),
                      .Sel(s_LOGISIM_BUS_39[4:0]));

   Multiplexer_bus_16 #(.NrOfBits(32))
      MUX_1 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_18[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_7[31:0]),
             .MuxIn_10(s_LOGISIM_BUS_40[31:0]),
             .MuxIn_11(s_LOGISIM_BUS_6[31:0]),
             .MuxIn_12(s_LOGISIM_BUS_28[31:0]),
             .MuxIn_13(s_LOGISIM_BUS_16[31:0]),
             .MuxIn_14(s_LOGISIM_BUS_42[31:0]),
             .MuxIn_15(s_LOGISIM_BUS_14[31:0]),
             .MuxIn_2(s_LOGISIM_BUS_31[31:0]),
             .MuxIn_3(s_LOGISIM_BUS_15[31:0]),
             .MuxIn_4(s_LOGISIM_BUS_4[31:0]),
             .MuxIn_5(s_LOGISIM_BUS_27[31:0]),
             .MuxIn_6(s_LOGISIM_BUS_9[31:0]),
             .MuxIn_7(s_LOGISIM_BUS_3[31:0]),
             .MuxIn_8(s_LOGISIM_BUS_25[31:0]),
             .MuxIn_9(s_LOGISIM_BUS_11[31:0]),
             .MuxOut(s_LOGISIM_BUS_30[31:0]),
             .Sel(s_LOGISIM_BUS_44[3:0]));

   BitSelector #(.NrOfExtendedBits(33),
                 .NrOfInputBits(32),
                 .NrOfSelBits(5))
      BITSELECTOR_13 (.DataIn(s_LOGISIM_BUS_27[31:0]),
                      .DataOut(s_LOGISIM_BUS_19[5]),
                      .Sel(s_LOGISIM_BUS_39[4:0]));
   wire carry;
   assign {carry, s_LOGISIM_BUS_39} = s_LOGISIM_BUS_36 - s_LOGISIM_BUS_45;
   
   BitSelector #(.NrOfExtendedBits(33),
                 .NrOfInputBits(32),
                 .NrOfSelBits(5))
      BITSELECTOR_14 (.DataIn(s_LOGISIM_BUS_14[31:0]),
                      .DataOut(s_LOGISIM_BUS_19[15]),
                      .Sel(s_LOGISIM_BUS_39[4:0]));

   BitSelector #(.NrOfExtendedBits(33),
                 .NrOfInputBits(32),
                 .NrOfSelBits(5))
      BITSELECTOR_15 (.DataIn(s_LOGISIM_BUS_4[31:0]),
                      .DataOut(s_LOGISIM_BUS_19[4]),
                      .Sel(s_LOGISIM_BUS_39[4:0]));

   Multiplexer_bus_4 #(.NrOfBits(32))
      MUX_2 (.Enable(1'b1),
             .MuxIn_0(s_LOGISIM_BUS_0[31:0]),
             .MuxIn_1(s_LOGISIM_BUS_19[31:0]),
             .MuxIn_2(s_LOGISIM_BUS_30[31:0]),
             .MuxIn_3(s_LOGISIM_BUS_17[31:0]),
             .MuxOut(s_LOGISIM_BUS_22[31:0]),
             .Sel(s_LOGISIM_BUS_38[1:0]));

   BitSelector #(.NrOfExtendedBits(33),
                 .NrOfInputBits(32),
                 .NrOfSelBits(5))
      BITSELECTOR_16 (.DataIn(s_LOGISIM_BUS_3[31:0]),
                      .DataOut(s_LOGISIM_BUS_19[7]),
                      .Sel(s_LOGISIM_BUS_39[4:0]));

   BitSelector #(.NrOfExtendedBits(33),
                 .NrOfInputBits(32),
                 .NrOfSelBits(5))
      BITSELECTOR_17 (.DataIn(s_LOGISIM_BUS_6[31:0]),
                      .DataOut(s_LOGISIM_BUS_19[11]),
                      .Sel(s_LOGISIM_BUS_39[4:0]));



endmodule
