module vga_counter (
    input               clk,
    input               rst,
    output reg[9:0]     hcnt,
    output reg[9:0]     vcnt
);
    always @(posedge clk) begin
        if (rst == 1'b0) begin
            hcnt <= 0;
            vcnt <= 0;
        end
        else begin
            if (hcnt < 799)
                hcnt <= hcnt + 1;
            else begin
                hcnt <= 0;
                if (vcnt < 520)
                    vcnt <= vcnt + 1;
                else
                    vcnt <= 0;
            end
        end
    end
endmodule