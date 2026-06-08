`timescale 1ns / 1ps

module clk_divider (
    input  clk,        // <-- NAME IS clk
    input  rst,
    output reg clk_out
);

    reg [25:0] count;   // adjust for speed

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            count   <= 0;
            clk_out <= 0;
        end else begin
            if (count == 50_000_000) begin  // ~1Hz from 100MHz
                count   <= 0;
                clk_out <= ~clk_out;
            end else begin
                count <= count + 1;
            end
        end
    end
endmodule
