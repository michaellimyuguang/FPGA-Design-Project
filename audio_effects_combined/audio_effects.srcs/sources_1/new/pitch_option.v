`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.04.2018 20:47:04
// Design Name: 
// Module Name: pitch_option
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


module pitch_option(
    input [2:0] sw,
    input clk_20k,
    input [11:0] data_in,
    output reg [11:0] data_out
    );
    
    wire [11:0] data_out1;
    wire [11:0] data_out2;
    wire [11:0] data_out3;
    wire [11:0] data_out4;
    wire [11:0] data_out5;
    wire [11:0] data_out6;                
    wire [11:0] data_out7;
      
                             
    pitch_shifting d0001 (clk_20k, data_in, 4'b0001 , data_out1); //1
    pitch_shifting d0011 (clk_20k, data_in, 4'b0011 , data_out2); //3   
    pitch_shifting d0101 (clk_20k, data_in, 4'b0101 , data_out3); //5
    pitch_shifting d0111 (clk_20k, data_in, 4'b0111 , data_out4); //7
    pitch_shifting d1001 (clk_20k, data_in, 4'b1001 , data_out5); //9
    pitch_shifting d1011 (clk_20k, data_in, 4'b1011 , data_out6); //11
    pitch_shifting d1101 (clk_20k, data_in, 4'b1101 , data_out7); //13
                   
    
    always @ (*) begin
        if (sw == 3'b001)
        data_out <= data_out1;
        else if (sw == 3'b010)
        data_out <= data_out2;
        else if (sw == 3'b011)
        data_out <= data_out3;
        else if (sw == 3'b100)
        data_out <= data_out4;
        else if (sw == 3'b101)
        data_out <= data_out5;
        else if (sw == 3'b110)
        data_out <= data_out6;
        else if (sw == 3'b111)
        data_out <= data_out7;
    end
endmodule
