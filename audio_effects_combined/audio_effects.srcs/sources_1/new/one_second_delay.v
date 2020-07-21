`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.04.2018 20:36:43
// Design Name: 
// Module Name: one_second_delay
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


module one_second_delay(
    input clk_write, //20khz
    input clk_read, //20kHz
    input [11:0] data_in, //MIC_In
    output reg [11:0] data_out //speaker_out
    );


    reg [11:0] memory [0:19999];    

    reg [31:0] i = 0;
    reg [31:0] j = 1;

    always @ (posedge clk_write) begin //20kHz
        i <= (i == 19999) ? 0 : i + 1;
        memory[i] <=  data_in;
    end

    always @ (posedge clk_read) begin //20kHz
        j <= (j == 19999) ? 0 : j + 1;
        data_out <=  memory[j]; 
    end
     
endmodule