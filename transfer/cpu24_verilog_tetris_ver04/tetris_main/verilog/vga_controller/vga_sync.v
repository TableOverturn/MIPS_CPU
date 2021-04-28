module vga_sync (
    input               clk,
    input               rst,
    input   [9:0]       hcnt,
    input   [9:0]       vcnt,
    
    output reg          hsync,
    output reg          vsync,
    output reg [8:0]   addr

);
    reg [8:0] line_start = 9'h000;
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
        else if ((vcnt >= 143) & (vcnt <= 398) & (hcnt >= 400) & (hcnt <= 527)) begin
            if(hcnt == 9'd400)
                addr <= line_start;
            else if(hcnt[2:0] == 3'b111) begin
                if (hcnt == 527) begin
                    if(!(vcnt[2:0] == 3'b110))
                        addr <= 9'h000;
                    else if (addr >= 511) begin
                        addr <= 9'h000;
                        line_start <= 9'h000;
                    end
                    else
                        line_start <= line_start + 16;     
                end
                else
                    addr <= addr + 1;
            end
        end
        else
            addr <= 9'h000;
    end
endmodule