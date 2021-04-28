`timescale  1ns / 1ps

module tb_LogisimToplevelShell();

// LogisimToplevelShell Parameters


// LogisimToplevelShell Inputs
reg   clk                                  = 0 ;
reg   go                                   = 0 ;

// LogisimToplevelShell Outputs
wire  [7:0]  FPGA_OUTPUT_SEG               ;
wire  [7:0]  FPGA_OUTPUT_NA                ;

initial begin
    #8050000 go=~go;
end
initial begin
    #8050005 go=~go;
end
always
begin
    #10  clk=~clk;
end

LogisimToplevelShell  tb_LogisimToplevelShell (
    .FPGA_GlobalClock        ( clk        ),
    .FPGA_INPUT_GO           ( go           ),

    .FPGA_OUTPUT_SEG         ( FPGA_OUTPUT_SEG   [7:0] ),
    .FPGA_OUTPUT_NA          ( FPGA_OUTPUT_NA    [7:0] )
);

endmodule
