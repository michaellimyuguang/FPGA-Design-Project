`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/04/01 19:25:22
// Design Name: 
// Module Name: singlepulse
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


module singlepulse(
    input CLK,
    input PB,
    output SP
    );
    
    wire Q1, Q2;
    dff dff1(CLK, PB, Q1);
    dff dff2(CLK, Q1, Q2);
    
    assign SP = Q1 & ~Q2;
    

    
    
    
endmodule
