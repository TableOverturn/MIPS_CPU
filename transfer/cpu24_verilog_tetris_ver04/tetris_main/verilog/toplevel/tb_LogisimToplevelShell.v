//~ `New testbench
`timescale  1ns / 1ps

module tb_LogisimToplevelShell;

// LogisimToplevelShell Parameters


// LogisimToplevelShell Inputs
reg   clk   = 0 ;
reg   go    = 0 ;
reg   [3:0]keyboard = 0  ;
// LogisimToplevelShell Outputs
wire  [7:0]  seg                           ;
wire  [7:0]  na                            ;
wire  [11:0]  rgb                          ;
wire  hsync                                ;
wire  vsync                                ;

always begin
    #5 clk = ~clk;
end
initial begin
    #5000   keyboard = 4'b0001;
    #2000000 keyboard = 4'b0000;
end
LogisimToplevelShell  u_LogisimToplevelShell (
    .FPGA_GlobalClock        ( clk          ),
    .go                      ( go           ),

    .seg                     ( seg               [7:0]  ),
    .na                      ( na                [7:0]  ),
    .rgb                     ( rgb               [11:0] ),
    .hsync                   ( hsync                    ),
    .vsync                   ( vsync                    ),
    .keyboard_in             ( keyboard              )
);

endmodule
