`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/04/01 19:50:31
// Design Name: 
// Module Name: pitch1
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


module pitch3(
    input CLK,
    input [6:0]sw,
    output [11:0] sound
    );
    
    wire doh3, re3, mi3, fa3, sol3, la3, ti3;
      clock_generator_20 C3(CLK, 382262, doh3);
      clock_generator_20 D3(CLK, 340599, re3);
      clock_generator_20 E3(CLK, 303398, mi3);
      clock_generator_20 F3(CLK, 286368, fa3);
      clock_generator_20 G3(CLK, 255102, sol3);
      clock_generator_20 A3(CLK, 227272, la3);
      clock_generator_20 B3(CLK, 202511, ti3);   
      

           assign sound = ((sw[0] == 1) ? doh3 : 0) + 
                ((sw[1] == 1) ? re3 : 0) +
                ((sw[2] == 1) ? mi3 : 0) +
                ((sw[3] == 1) ? fa3 : 0) +
                ((sw[4] == 1) ? sol3 : 0) + 
                ((sw[5] == 1) ? la3 : 0) +
                ((sw[6] == 1) ? ti3 : 0);

endmodule