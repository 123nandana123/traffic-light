`timescale 1ns / 1ps

module top (
    input clk,        // 100 MHz from ZedBoard
    input rst,        // SW0
    output [1:0] light_M1,
    output [1:0] light_M2,
    output [1:0] light_MT,
    output [1:0] light_S
);

    wire slow_clk;

    // Clock Divider
    clk_divider U_CLK (
        .clk(clk),        
        .rst(rst),
        .clk_out(slow_clk)
    );

    // Traffic Light Controller
    Traffic_Light_Controller U_TLC (
        .clk(slow_clk),
        .rst(rst),
        .light_M1(light_M1),
        .light_M2(light_M2),
        .light_MT(light_MT),
        .light_S(light_S)
    );

endmodule
