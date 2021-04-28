/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : LogisimToplevelShell                                         **
 **                                                                          **
 ******************************************************************************/

`timescale 1ns/1ps
module LogisimToplevelShell( FPGA_GlobalClock,
                             FPGA_INPUT_GO,
                             FPGA_OUTPUT_SEG,
                             FPGA_OUTPUT_NA);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   input  FPGA_GlobalClock;
   input  FPGA_INPUT_GO;

   /***************************************************************************
    ** Here the outputs are defined                                          **
    ***************************************************************************/
   output[7:0] FPGA_OUTPUT_SEG;
   output[7:0] FPGA_OUTPUT_NA;

   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire s_FPGA_Tick;
   wire s_Go;
   wire[4:0] s_LOGISIM_CLOCK_TREE_0;
   wire[7:0] s_NA;
   wire[7:0] s_Seg;

   /***************************************************************************
    ** Here all signal adaptations are performed                             **
    ***************************************************************************/
   assign s_Go = FPGA_INPUT_GO;
   assign FPGA_OUTPUT_SEG = s_Seg;
   assign FPGA_OUTPUT_NA = s_NA;
   /***************************************************************************
    ** Here all inlined adaptations are performed                            **
    ***************************************************************************/
   /***************************************************************************
    ** Here the clock tree components are defined                            **
    ***************************************************************************/
   LogisimTickGenerator #(.NrOfBits(32),
                          .ReloadValue(500000))
      LogisimTickGenerator_0 (.FPGAClock(FPGA_GlobalClock),
                              .FPGATick(s_FPGA_Tick));

   LogisimClockComponent #(.HighTicks(1),
                           .LowTicks(1),
                           .NrOfBits(1))
      CLOCKGEN_0 (.ClockBus(s_LOGISIM_CLOCK_TREE_0),
                  .ClockTick(s_FPGA_Tick),
                  .GlobalClock(FPGA_GlobalClock));


   /***************************************************************************
    ** Here the toplevel component is connected                              **
    ***************************************************************************/
   redirection_pipeline_with_BTB      redirection_pipeline_with_BTB_0 (.Go(s_Go),
                                                                       .LOGISIM_CLOCK_TREE_0(s_LOGISIM_CLOCK_TREE_0),
                                                                       .NA(s_NA),
                                                                       .Seg(s_Seg));


endmodule
