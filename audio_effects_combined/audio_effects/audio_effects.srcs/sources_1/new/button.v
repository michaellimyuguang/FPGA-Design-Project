`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/04/01 20:47:40
// Design Name: 
// Module Name: button
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


 module button(
    input CLK,
    input PB_UP,
//    input PB_DOWN,
    input [6:0] sw,
    output reg [11:0] sound
    );
   wire SP_UP, SP_DOWN;
   singlepulse SPUP(CLK, PB_UP, SP_UP);
//   singlepulse SPDOWN(CLK, PB_DOWN, SP_DOWN);
    
    wire doh4, re4, mi4, fa4, sol4, la4, ti4;
     clock_generator_20 C4(CLK, 191112, doh4);
     clock_generator_20 D4(CLK, 170262, re4);
     clock_generator_20 E4(CLK, 151686, mi4);
     clock_generator_20 F4(CLK, 143171, fa4);
     clock_generator_20 G4(CLK, 127551, sol4);
     clock_generator_20 A4(CLK, 113635, la4);
     clock_generator_20 B4(CLK, 101237, ti4);    
     
    wire doh3, re3, mi3, fa3, sol3, la3, ti3;
       clock_generator_20 C3(CLK, 382262, doh3);
       clock_generator_20 D3(CLK, 340599, re3);
       clock_generator_20 E3(CLK, 303398, mi3);
       clock_generator_20 F3(CLK, 286368, fa3);
       clock_generator_20 G3(CLK, 255102, sol3);
       clock_generator_20 A3(CLK, 227272, la3);
       clock_generator_20 B3(CLK, 202511, ti3);   

    wire doh2, re2, mi2, fa2, sol2, la2, ti2;
      clock_generator_20 C2(CLK, 764409, doh2);
      clock_generator_20 D2(CLK, 681013, re2);
      clock_generator_20 E2(CLK, 606722, mi2);
      clock_generator_20 F2(CLK, 572672, fa2);
      clock_generator_20 G2(CLK, 510204, sol2);
      clock_generator_20 A2(CLK, 454545, la2);
      clock_generator_20 B2(CLK, 404858, ti2);  

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

    reg [1:0] count = 0;   
         
    always @ (posedge SP_UP) begin
    count <= count + 1;
    end
    
//    always @ (posedge SP_DOWN) begin
//    count = (count == 3'b000) ? 3'b011 : (count - 1);
//    end
    
    always @ (count) begin
    if (sw[6] == 1) begin
        if(count == 2'b11) begin
        sound <= ti7;
        end
        else if(count == 2'b10) begin
        sound <= ti6;
        end
        else if(count == 2'b01) begin
         sound <= ti5;
         end
        else if(count == 2'b00) begin
         sound <= ti4;
         end
    end
//        else if(count == 3'b010)
//         sound <= ti3;
//        else if(count == 3'b001)
//        sound <= ti2;

    else if (sw[5] == 1) begin
        if(count == 2'b11) begin
        sound <= la7;
        end
        else if(count == 2'b10) begin
        sound <= la6;
        end
        else if(count == 2'b01) begin
        sound <= la5;
        end
        else if(count == 2'b00) begin
            sound <= la4;
            end
   end
//        else if(count == 3'b010)
//            sound <= la3;
//        else if(count == 3'b001)
//        sound <= la2;

    else if (sw[4] == 1) begin
        if(count == 2'b11) begin
        sound <= sol7;
        end
        else if(count == 2'b10) begin
        sound <= sol6;
        end
        else if(count == 2'b01) begin
        sound <= sol5;
        end
        else if(count == 2'b00) begin
        sound <= sol4;
        end
    end
//        else if(count == 3'b010)
//            sound <= sol3;
//        else if(count == 3'b001)
//        sound <= sol2;

    else if (sw[3] == 1) begin
        if(count == 2'b11) begin
        sound <= fa7;
        end
        else if(count == 2'b10) begin
        sound <= fa6;
        end
        else if(count == 2'b01) begin
        sound <= fa5;
        end
        else if(count == 2'b00) begin
            sound <= fa4;
            end
    end
//        else if(count == 3'b010)
//            sound <= fa3;
//        else if(count == 3'b001)
//        sound <= fa2;

    else if (sw[2] == 1) begin
        if(count == 2'b11) begin
        sound <= mi7;
        end
        else if(count == 2'b10) begin
        sound <= mi6;
        end
        else if(count == 2'b01) begin
        sound <= mi5;
        end
        else if(count == 2'b00) begin
            sound <= mi4;
        end
    end
//        else if(count == 3'b010)
//            sound <= mi3;
//        else if(count == 3'b001)
//        sound <= mi2;

    else if (sw[1] == 1) begin
        if(count == 2'b11) begin
        sound <= re7;
        end
        else if(count == 2'b10) begin
        sound <= re6;
        end
        else if(count == 2'b01) begin
        sound <= re5;
        end
        else if(count == 2'b00) begin
        sound <= re4;
        end
    end
//        else if(count == 3'b010)
//            sound <= re3;
//        else if(count == 3'b001)
//        sound <= re2;

    else if (sw[0] == 1) begin
        if(count == 2'b11) begin
        sound <= doh7;
        end
        else if(count == 2'b10) begin
        sound <= doh6;
        end
        else if(count == 2'b01) begin
        sound <= doh5;
        end
        else if(count == 2'b00) begin
        sound <= doh4;
        end
    end
        
//        else if(count == 3'b010)
//            sound <= doh3;
//        else if(count == 3'b001)
//        sound <= doh2;
    end
    
    
endmodule
