`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/04/02 20:15:09
// Design Name: 
// Module Name: music_note
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


 module music_note(
    input CLK,
    input [6:0]sw,
    input [2:0] switch,
    output reg [19:0] sound
    );
    
    wire doh4, re4, mi4, fa4, sol4, la4, ti4;
      clock_generator_20 C4(CLK, 191112, doh4);
      clock_generator_20 D4(CLK, 170262, re4);
      clock_generator_20 E4(CLK, 151686, mi4);
      clock_generator_20 F4(CLK, 143171, fa4);
      clock_generator_20 G4(CLK, 127551, sol4);
      clock_generator_20 A4(CLK, 113635, la4);
      clock_generator_20 B4(CLK, 101237, ti4);    

    wire doh2, re2, mi2, fa2, sol2, la2, ti2;
      clock_generator_20 C2(CLK, 764409, doh2);
      clock_generator_20 D2(CLK, 681013, re2);
      clock_generator_20 E2(CLK, 606722, mi2);
      clock_generator_20 F2(CLK, 572672, fa2);
      clock_generator_20 G2(CLK, 510204, sol2);
      clock_generator_20 A2(CLK, 454545, la2);
      clock_generator_20 B2(CLK, 404858, ti2);  

    wire doh3, re3, mi3, fa3, sol3, la3, ti3;
      clock_generator_20 C3(CLK, 382262, doh3);
      clock_generator_20 D3(CLK, 340599, re3);
      clock_generator_20 E3(CLK, 303398, mi3);
      clock_generator_20 F3(CLK, 286368, fa3);
      clock_generator_20 G3(CLK, 255102, sol3);
      clock_generator_20 A3(CLK, 227272, la3);
      clock_generator_20 B3(CLK, 202511, ti3);   

    wire doh5, re5, mi5, fa5, sol5, la5, ti5;
      clock_generator_20 C5(CLK, 95547, doh5);
      clock_generator_20 D5(CLK, 85135, re5);
      clock_generator_20 E5(CLK, 75838, mi5);
      clock_generator_20 F5(CLK, 71581, fa5);
      clock_generator_20 G5(CLK, 63775, sol5);
      clock_generator_20 A5(CLK, 56818, la5);
      clock_generator_20 B5(CLK, 50617, ti5);  
      
    wire doh6, re6, mi6, fa6, sol6, la6, ti6;
        clock_generator_20 C6(CLK, 47755, doh6);
        clock_generator_20 D6(CLK, 42553, re6);
        clock_generator_20 E6(CLK, 37907, mi6);
        clock_generator_20 F6(CLK, 35790, fa6);
        clock_generator_20 G6(CLK, 31887, sol6);
        clock_generator_20 A6(CLK, 28409, la6);
        clock_generator_20 B6(CLK, 25303, ti6);  

    wire doh7, re7, mi7, fa7, sol7, la7, ti7;
      clock_generator_20 C7(CLK, 23889, doh7);
      clock_generator_20 D7(CLK, 21285, re7);
      clock_generator_20 E7(CLK, 18960, mi7);
      clock_generator_20 F7(CLK, 17895, fa7);
      clock_generator_20 G7(CLK, 15943, sol7);
      clock_generator_20 A7(CLK, 14204, la7);
      clock_generator_20 B7(CLK, 12655, ti7);  

    wire dohS, reS, miS, faS, solS, laS, tiS;
      clock_generator_20 Cs(CLK, 180388, dohS);
      clock_generator_20 Ds(CLK, 160704, reS);
      clock_generator_20 Fs(CLK, 135138, faS);
      clock_generator_20 Gs(CLK, 120394, solS);
      clock_generator_20 As(CLK, 107259, laS);

    wire dohF, reF, miF, faF, solF, laF, tiF;
      clock_generator_20 Cf(CLK, 180388, reF);
      clock_generator_20 Df(CLK, 160704, miF);
      clock_generator_20 Ff(CLK, 135138, solF);
      clock_generator_20 Gf(CLK, 120394, laF);
      clock_generator_20 Af(CLK, 107259, tiF);

      always @(*) begin
      if(switch == 3'b000)
      sound = ((sw[0] == 1) ? doh4 : 0) + 
      ((sw[1] == 1) ? re4 : 0) +
      ((sw[2] == 1) ? mi4 : 0) +
      ((sw[3] == 1) ? fa4 : 0) +
      ((sw[4] == 1) ? sol4 : 0) + 
      ((sw[5] == 1) ? la4 : 0) +
      ((sw[6] == 1) ? ti4 : 0);
      
      else if( switch == 3'b001)
       sound = ((sw[0] == 1) ? doh2 : 0) + 
           ((sw[1] == 1) ? re2 : 0) +
           ((sw[2] == 1) ? mi2 : 0) +
           ((sw[3] == 1) ? fa2 : 0) +
           ((sw[4] == 1) ? sol2 : 0) + 
           ((sw[5] == 1) ? la2 : 0) +
           ((sw[6] == 1) ? ti2 : 0);
           
      else if( switch == 3'b010)
            sound = ((sw[0] == 1) ? doh3 : 0) + 
                ((sw[1] == 1) ? re3 : 0) +
                ((sw[2] == 1) ? mi3 : 0) +
                ((sw[3] == 1) ? fa3 : 0) +
                ((sw[4] == 1) ? sol3 : 0) + 
                ((sw[5] == 1) ? la3 : 0) +
                ((sw[6] == 1) ? ti3 : 0);

      else if( switch == 3'b011)
       sound = ((sw[0] == 1) ? doh5 : 0) + 
           ((sw[1] == 1) ? re5 : 0) +
           ((sw[2] == 1) ? mi5 : 0) +
           ((sw[3] == 1) ? fa5 : 0) +
           ((sw[4] == 1) ? sol5 : 0) + 
           ((sw[5] == 1) ? la5 : 0) +
           ((sw[6] == 1) ? ti5 : 0);

      else if( switch == 3'b100)
       sound = ((sw[0] == 1) ? doh6 : 0) + 
           ((sw[1] == 1) ? re6 : 0) +
           ((sw[2] == 1) ? mi6 : 0) +
           ((sw[3] == 1) ? fa6 : 0) +
           ((sw[4] == 1) ? sol6 : 0) + 
           ((sw[5] == 1) ? la6 : 0) +
           ((sw[6] == 1) ? ti6 : 0);

      else if( switch == 3'b101)
       sound = ((sw[0] == 1) ? doh7 : 0) + 
           ((sw[1] == 1) ? re7 : 0) +
           ((sw[2] == 1) ? mi7 : 0) +
           ((sw[3] == 1) ? fa7 : 0) +
           ((sw[4] == 1) ? sol7 : 0) + 
           ((sw[5] == 1) ? la7 : 0) +
           ((sw[6] == 1) ? ti7 : 0);

      else if( switch == 3'b110)
       sound = ((sw[0] == 1) ? dohS : 0) + 
           ((sw[1] == 1) ? reS : 0) +
           ((sw[3] == 1) ? faS : 0) +
           ((sw[4] == 1) ? solS : 0) +
           ((sw[5] == 1) ? laS : 0);

      else if( switch == 3'b111)
      sound = ((sw[0] == 1) ? ({8{1'b1}}*doh4) : 0) + 
      ((sw[1] == 1) ? ({8{1'b1}}*re4) : 0) +
      ((sw[2] == 1) ? ({8{1'b1}}* mi4) : 0) +
      ((sw[3] == 1) ? ({8{1'b1}}* fa4) : 0) +
      ((sw[4] == 1) ? ({8{1'b1}}* sol4) : 0) + 
      ((sw[5] == 1) ? ({8{1'b1}}* la4) : 0) +
      ((sw[6] == 1) ? ({8{1'b1}}* ti4) : 0);
      end

endmodule
