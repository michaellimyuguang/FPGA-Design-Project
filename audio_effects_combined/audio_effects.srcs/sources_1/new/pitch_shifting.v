`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.04.2018 20:45:57
// Design Name: 
// Module Name: pitch_shifting
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


module pitch_shifting(
    input clk_20k,
    input [11:0] data_in,
    input [3:0] d,
    output [11:0] data_out
    );

    wire [11:0] buffer_one;
    wire [11:0] buffer_two;    
    reg [12:0] buffer_final = 0;

    buffer buffer1 (clk_20k, data_in, d, buffer_one);
    buffer_2 buffer2 (clk_20k, data_in, d, buffer_two);
  
    always @ (posedge clk_20k) begin
        buffer_final <= ((buffer_one + buffer_two) >> 1);
    end

    assign data_out = buffer_final[11:0];

endmodule
