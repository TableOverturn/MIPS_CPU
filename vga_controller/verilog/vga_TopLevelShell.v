/******************************************************************************
 ** Logisim goes FPGA automatic generated Verilog code                       **
 **                                                                          **
 ** Component : LogisimToplevelShell                                         **
 **                                                                          **
 ******************************************************************************/

`timescale 1ns/1ps
module vga_ToplevelShell(
    input wire FPGA_GlobalClock,
    output wire [11:0] rgb,
    output wire hsync,
    output wire vsync
);

   /***************************************************************************
    ** Here the inputs are defined                                           **
    ***************************************************************************/
   /***************************************************************************
    ** Here the internal wires are defined                                   **
    ***************************************************************************/
   wire s_FPGA_Tick;
   wire [8:0]addr;
   wire[4:0] s_LOGISIM_CLOCK_TREE_0;
   /***************************************************************************
    ** Here all signal adaptations are performed                             **
    ***************************************************************************/
   /***************************************************************************
    ** Here all inlined adaptations are performed                            **
    ***************************************************************************/
   /***************************************************************************
    ** Here the clock tree components are defined                            **
    ***************************************************************************/
   LogisimTickGenerator #(.NrOfBits(32),
                          .ReloadValue(2))
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
    vga_controller vga_ctrl_top(
        .clk_25mhz(s_LOGISIM_CLOCK_TREE_0[0]),
        .reset(1'b1),
        .bitin(1'b1),
        .hsync(hsync),
        .vsync(vsync),
        .rgb(rgb)
    );
endmodule
