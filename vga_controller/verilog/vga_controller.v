module vga_controller (
    input wire clk_25mhz,
    input wire reset,
    input wire bitin,

    output wire hsync,
    output wire vsync,
    output wire [11:0] rgb
);
    reg [11:0] dinb;
    wire [9:0] pixel_x;
    wire [9:0] pixel_y;
    wire [8:0] vaddr;

    assign rgb = dinb;

    always @(posedge clk_25mhz) begin
        if(vaddr[0])
            dinb <= 12'h0ff;
        else
            dinb <= 12'h000;
    end
    vga_counter videocount (
        .clk(clk_25mhz),
        .rst(reset),
        .hcnt(pixel_x),
        .vcnt(pixel_y)
    );

    vga_sync videosync(
        .clk(clk_25mhz),
        .rst(reset),
        .hcnt(pixel_x),
        .vcnt(pixel_y),
        .hsync(hsync),
        .vsync(vsync),
        .addr(vaddr)
    );



endmodule    