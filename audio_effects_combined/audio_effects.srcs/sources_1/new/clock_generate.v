`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/04/06 13:25:36
// Design Name: 
// Module Name: clock_generate
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


module clock_generate(
    input CLK,
    output reg LED
    );
    
    reg [18:0] count = 0;
    
    always @ (posedge CLK) begin
    count <= count + 1;
    LED = (count ==0) ? ~LED : LED;
    end
    
endmodule
