`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/04/01 19:44:29
// Design Name: 
// Module Name: calculator
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module calculator(
    input f_clk,
    input f_desired,
    output desired_clk
    );
    wire m;
    assign m = 100000000 / (2 * f_desired);
    
    clock_generator_20 generator(f_clk, m, desired_clk);
endmodule
