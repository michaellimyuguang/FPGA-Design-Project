`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/04/07 19:20:27
// Design Name: 
// Module Name: clock_generator_1k
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


module clock_generator_1k(
    input CLK,
    output reg CLK_1K = 0
    );
    
    reg [14:0] count = 0;
    
    always @ (posedge CLK) begin
    count <= count + 1;
    CLK_1K = (count == 0) ? ~CLK_1K : CLK_1K;
    end
endmodule
