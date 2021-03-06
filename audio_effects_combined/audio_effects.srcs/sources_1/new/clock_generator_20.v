`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/04/02 18:27:39
// Design Name: 
// Module Name: clock_generator_20
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



module clock_generator_20( //COUNT_C
    input CLOCK,
    input [31:0] m,
    output reg LED = 0
    );
    
    reg [31:0] COUNT = 0;
    
    always @ (posedge CLOCK) begin
        COUNT <= (COUNT == m) ? 0 : COUNT + 1;
        LED <= (COUNT == 0) ? ~LED : LED;
    end
    
        
endmodule

