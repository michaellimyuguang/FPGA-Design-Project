`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.04.2018 20:44:34
// Design Name: 
// Module Name: buffer_2
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


module buffer_2(
    input clk_20k,
    input [11:0] data_in,
    input [3:0] d,
    output reg [11:0] data_out = 0
    );

    reg [11:0] memory [0:1023];
    reg [11:0] i = 0;
    reg [9:0] j = 512;


    always @ (posedge clk_20k) begin
        memory[j] <= data_in;
        j <= (j == 1023) ? 0 : j + 1;
        i <= (i == 1023) ? 0 : i + d; //skip certain memory
        data_out <= memory[i[11:2]];
    end
    
endmodule
