//~ `New testbench
`timescale  1ns / 1ps

module tb_vga_ToplevelShell;

// vga_ToplevelShell Parameters

// vga_ToplevelShell Inputs
reg   clk                     = 0 ;

// vga_ToplevelShell Outputs
wire  [11:0]  rgb                          ;
wire  hsync                                ;
wire  vsync                                ;

always begin
    #5 clk = ~clk;
end

vga_ToplevelShell  u_vga_ToplevelShell (
    .FPGA_GlobalClock        ( clk        ),

    .rgb                     ( rgb               [11:0] ),
    .hsync                   ( hsync                    ),
    .vsync                   ( vsync                    )
);

endmodule
