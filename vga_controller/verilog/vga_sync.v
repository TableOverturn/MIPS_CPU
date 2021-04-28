module vga_sync (
    input               clk,
    input               rst,
    input   [9:0]       hcnt,
    input   [9:0]       vcnt,
    
    output reg          hsync,
    output reg          vsync,
    output reg [8:0]   addr

);
    always @(posedge clk) begin
        if (hcnt > 95)
            hsync <= 1;
        else
            hsync <= 0;
    end
    always @(posedge clk) begin
        if (vcnt > 1)
            vsync <= 1;
        else
            vsync <= 0;
    end
    always @(posedge clk) begin
        if((rst == 1'b0) | (vcnt < 31)) begin
            addr <= 9'h000;
        end
        //one 8-bit RGB color byte is not mapped to a single pixel but a 8*8 matrix.
        else if ((vcnt >= 143) & (vcnt <= 398) & (hcnt >= 400) & (hcnt <= 527) & (hcnt[2:0] == 3'b111))
            if (addr >= 511) begin
                addr <= 9'h000;
            end
            else if (hcnt == 527 & !(vcnt[2:0] == 3'b111)) begin
                addr <= addr - 15;
            end
            else begin
                addr <= addr + 1;
            end
    end
endmodule