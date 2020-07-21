`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.03.2018 16:22:26
// Design Name: 
// Module Name: switch_note
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


 module switch_note(
    input CLK,
    input [6:0]sw,
    output reg [11:0] sound
    );
    
    wire doh, re, mi, fa, sol, la, ti;
      clock_generator_20 C(CLK, 191112, doh);
      clock_generator_20 D(CLK, 170262, re);
      clock_generator_20 E(CLK, 151686, mi);
      clock_generator_20 F(CLK, 143171, fa);
      clock_generator_20 G(CLK, 127551, sol);
      clock_generator_20 A(CLK, 113635, la);
      clock_generator_20 B(CLK, 101237, ti);    
      
      reg [4:0] count=0;
      
      always @(*) begin
      if (sw[6]==1) 
      sound<=ti;
      else if (sw[5]==1)
      sound<= la;
      else if (sw[4]==1) 
      sound<= sol;
      else if (sw[3]==1)
      sound<= fa;
      else if (sw[2]==1)
      sound<= mi; 
      else if (sw[1]==1) 
      sound<= re;
      else if (sw[0]==1)
      sound<= doh;
      end

     
          
endmodule
