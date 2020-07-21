`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/04/07 18:57:11
// Design Name: 
// Module Name: songs
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


module songs(
    input CLK,
    input [1:0]song_sw,
    output reg [31:0] m
    );

    reg [32:0] duration = 0;

    integer despacito = 21400;
    integer all_of_me = 46300;
    
    clock_generator_1k clock_1k (CLK, clk_1k);
    
    always @ (posedge clk_1k) begin
        if (song_sw[0] == 1) begin
            if (despacito < duration)
                duration <= 0;
            else
                duration <= duration + 1;
            end
        else if (song_sw[1] == 1) begin
            if (all_of_me < duration)
                duration <= 0;
            else
                duration <= duration + 1;
            end
            end


     wire doh4, re4, re4_flat, mi4, mi4_flat, fa4, fa4_sharp, sol4, la4, la4_flat, ti4, ti4_flat;
     clock_generator_20 C4(CLK, 191111, doh4);
     clock_generator_20 D4f(CLK, 180373, re4_flat);
     clock_generator_20 D4(CLK, 170261, re4);
     clock_generator_20 E4f(CLK, 160719, mi4_flat);
     clock_generator_20 E4(CLK, 151685, mi4);
     clock_generator_20 F4(CLK, 143170, fa4);
     clock_generator_20 F4s(CLK, 135135, fa4_sharp);
     clock_generator_20 G4(CLK, 127550, sol4);
     clock_generator_20 A4f(CLK, 120393, la4_flat);
     clock_generator_20 A4(CLK, 113634, la4);
     clock_generator_20 B4f(CLK, 107249, ti4_flat);
     clock_generator_20 B4(CLK, 101236, ti4);    

    wire doh5, re5, re5_flat, mi5, mi5_flat, fa5, fa5_sharp, sol5, la5, ti5;
      clock_generator_20 C5(CLK, 95546, doh5);
      clock_generator_20 D5f(CLK, 90186, re5_flat);
      clock_generator_20 D5(CLK, 85134, re5);
      clock_generator_20 E5f(CLK, 80346, mi5_flat);
      clock_generator_20 E5(CLK, 75837, mi5);
      clock_generator_20 F5(CLK, 71580, fa5);
      clock_generator_20 F5s(CLK, 67566, fa5_sharp);
      clock_generator_20 G5(CLK, 63774, sol5);
      clock_generator_20 A5f(CLK, 60196, la5_flat);
      clock_generator_20 A5(CLK, 56817, la5);
      clock_generator_20 B5(CLK, 50616, ti5);  

    wire doh3, re3, mi3, fa3, sol3, la3, ti3;
       clock_generator_20 C3(CLK, 382262, doh3);
       clock_generator_20 D3(CLK, 340599, re3);
       clock_generator_20 E3(CLK, 303398, mi3);
       clock_generator_20 F3(CLK, 286368, fa3);
       clock_generator_20 G3(CLK, 255102, sol3);
       clock_generator_20 A3(CLK, 227272, la3);
       clock_generator_20 B3(CLK, 202511, ti3);   

    
    always @ (*) begin
        if (song_sw[0] == 1) begin
                //DESPACITO
                if(500 > duration)
                    m <= doh5;
                else if (1000 > duration)  
                    m <= doh5;
//                else if (1500 > duration)
//                     m <= 0;
                else if (1600 > duration)  
                    m <= ti4;
//                else if (2100 > duration)
//                         m <= 0;
                else if (2200 > duration)  
                    m <= la4; 
//                else if (2700 > duration)
//                    m <= 0;        
                else if (2950 > duration)  
                    m <= mi4;
                      
                else if (3300 > duration)
                         m <= 0;
                else if (3650 > duration)
                    m <= mi4; 
                else if (3875 > duration)
                         m <= 0;
                else if (4100 > duration)  
                    m <= mi4;
                else if (4325 > duration)
                    m <= 0; 
                else if (4550 > duration)  
                    m <= mi4;
                else if (4775 > duration)
                    m <= 0; 
                else if (5000 > duration)  
                   m <= mi4;
               else if (5225 > duration)
                   m <= 0; 
                else if (5450 > duration)  
                      m <= mi4;
//                else if (5325 > duration)
//                      m <= 0; 
//                else if (5550 > duration)  
//                      m <= mi4;
//                else if (5900 > duration)
//                           m <= 0;
                else if (6000 > duration)
                    m <= la4;
                else if (6250 > duration)
                    m <= 0;
                else if (6500 > duration)  
                    m <= la4;
//                else if (6800 > duration)
//                        m <= 0;
                else if (7000 > duration)
                    m <= sol4;
//                else if (7250 > duration)
//                        m <= 0;
                else if (7500 > duration)  
                    m <= la4;   
//                else if (7850 > duration)
//                        m <= 0;
                else if (7950 > duration)  
                    m <= sol4;
//                else if (8300 > duration)
//                        m <= 0;
                else if (8400 > duration)  
                    m <= la4;
//                else if (8750 > duration)
//                    m <= 0;
                else if (8850 > duration)  
                    m <= la4;
//                else if (9200 > duration)
//                        m <= 0;
                else if (9300 > duration)
                    m <= fa4;
                else if (9550 > duration)
                    m <= 0;
                else if (9900 > duration)  
                    m <= fa4;
                else if (10150 > duration)
                    m <= 0;
                else if (10300 > duration)  
                    m <= fa4;
                else if (10550 > duration)
                    m <= 0;
                else if(10800 > duration)  
                    m <= fa4;
               else if (11050 > duration)
                    m <= 0;
                else if(11300 > duration)  
                    m <= fa4;     
                else if (11550 > duration)
                     m <= 0;   
                else if(11800 > duration)  
                    m <= fa4;  
//               else if (10500 > duration)
//                    m <= 0;
                else if(12300 > duration)  
                    m <= la4; 
                else if (12550 > duration)
                    m <= 0;
                else if(12800 > duration)  
                    m <= la4;
                else if (13050 > duration)
                    m <= 0;
                else if(13300 > duration)  
                    m <= la4;
                else if (13550 > duration)
                    m <= 0;
                else if(13800 > duration)  
                    m <= la4;
//                else if (14800 > duration)
//                   m <= 0;
                else if(14800 > duration)  
                    m <= ti4;
//               else if (13100 > duration)
//                    m <= 0;
                else if(15300 > duration)  
                    m <= doh5;
//                else if (13600 > duration)
//                   m <= 0;
//                else if(13700 > duration)  
//                    m <= doh5;
//                else if (16300 > duration)
//                    m <= 0;
                else if(16000 > duration)  
                    m <= sol4;
                else if (14700 > duration)
                    m <= 0;
                else if(16800 > duration)  
                    m <= sol4;
                else if (17050 > duration)
                    m <= 0;
                else if(17300 > duration)  
                    m <= sol4;
                else if (17550 > duration)
                      m <= 0;
                else if(17800 > duration)  
                    m <= sol4;
                else if (18050 > duration)
                    m <= 0;
                else if(18300 > duration)  
                    m <= sol4;       
                else if (18550 > duration)
                    m <= 0;
                else if(18800 > duration)  
                    m <= sol4;
//                else if (17200 > duration)
//                    m <= 0;
                else if(19300 > duration)  
                    m <= doh5;  
                else if (19550 > duration)
                    m <= 0;
                else if(19800 > duration)  
                    m <= doh5;
                else if (20050 > duration)
                     m <= 0;
                else if(20300 > duration)  
                    m <= doh5;
               else if (20550 > duration)
                     m <= 0;
                else if(20800 > duration)  
                    m <= doh5;
//                else if (19300 > duration)
//                   m <= 0;
                else if(21800 > duration)  
                    m <= re5;
                else if (22550 > duration)
                    m <= 0;
                else if(22300 > duration)  
                    m <= re5;

//                else if (20800 > duration)
//                    m <= 0;
                else if(22800 > duration)  
                    m <= ti4;
//                else if (23050 > duration)
//                    m <= 0;
                else if(23800 > duration)  
                    m <= ti4;
                    end


        else if (song_sw[1] == 1) begin
                //ALL OF ME
                if(600 > duration)
                    m <= doh5;
//                else if (1000 > duration)
//                         m <= 0;
                else if (1100 > duration)  
                    m <= mi5_flat;
//                else if (2100 > duration)
//                     m <= 0;
                else if (2200 > duration)  
                    m <= doh5;
//                else if (2800 > duration)
//                         m <= 0;
                else if (2800 > duration)  
                    m <= fa5; 
//                else if (4000 > duration)
//                    m <= 0;        
                else if (3800 > duration)  
                    m <= doh5;  
//                else if (5100 > duration)
//                         m <= 0;
                else if (4800 > duration)
                    m <= ti4_flat; 
//                else if (6200 > duration)
//                         m <= 0;
                else if (6300 > duration)  
                    m <= la4_flat;
//                else if (6800 > duration)
//                    m <= 0; 
                else if (6900 > duration)  
                    m <= doh5;
//                else if (7000 > duration)
//                    m <= 0; 
                else if (8000 > duration)  
                   m <= doh5;
               else if (8300 > duration)
                   m <= 0; 
                else if (8600 > duration)  
                      m <= doh5;
//                else if (9300 > duration)
//                      m <= 0; 
                else if (9400 > duration)  
                      m <= ti4_flat;
                else if (9700 > duration)
                           m <= 0;
                else if (10000 > duration)
                    m <= ti4_flat;
                else if (10450 > duration)
                    m <= 0;
                else if (10900> duration)  
                    m <= ti4_flat;
//                else if (11700 > duration)
//                        m <= 0;
                else if (11800 > duration)
                    m <= la4_flat;
//                else if (12300 > duration)
//                        m <= 0;
                else if (12400 > duration)  
                    m <= ti4_flat;   
//                else if (13400 > duration)
//                        m <= 0;
                else if (12900 > duration)  
                    m <= fa4;
//                else if (13850 > duration)
//                        m <= 0;
                else if (13900 > duration)  
                    m <= doh5;
                else if (14200 > duration)
                    m <= 0;
                else if (14500 > duration)  
                        m <= doh5;
                else if (15300 > duration)  
                    m <= ti4_flat;
                else if (15650 > duration)
                        m <= 0;
                else if (16000 > duration)
                    m <= ti4_flat;
                else if (16350 > duration)
                    m <= 0;
                else if (16700 > duration)  
                    m <= ti4_flat;
//                else if (17300 > duration)
//                    m <= 0;
                else if (17400 > duration)  
                    m <= la4_flat;
//                else if (17800 > duration)
//                    m <= 0;
                else if(17900 > duration)  
                    m <= ti4_flat;
               else if (18400 > duration)
                    m <= mi4_flat;
                else if(19200 > duration)  
                    m <=doh5;  
                else if (19450 > duration)
                     m <= 0;   
                else if(19700 > duration)  
                    m <= doh5;  
//               else if (20400 > duration)
//                    m <= 0;
                else if(20500 > duration)  
                    m <= mi5_flat; 
//                else if (21500 > duration)
//                    m <= 0;
                else if(21600 > duration)  
                    m <= doh5;
//                else if (22200 > duration)
//                    m <= 0;
                else if(22300 > duration)  
                    m <= fa5;
//                else if (23300 > duration)
//                    m <= 0;
                else if(23400 > duration)  
                    m <= doh5;
//                else if (24000 > duration)
//                   m <= 0;
                else if(24100 > duration)  
                    m <= doh5;
//               else if (24900 > duration)
//                    m <= 0;
                else if(25000 > duration)  
                    m <= ti4_flat;
//                else if (26000 > duration)
//                   m <= 0;
                else if(26100 > duration)  
                    m <= la4_flat;
//                else if (26700 > duration)
//                    m <= 0;
                else if(26800 > duration)  
                    m <= doh5;
                else if (27550 > duration)
                    m <= 0;
                else if(27900 > duration)  
                    m <= doh5;
                else if (28400 > duration)
                    m <= 0;
                else if(28850 > duration)  
                    m <= doh5;
//                else if (29300 > duration)
//                      m <= 0;
                else if(29400 > duration)  
                    m <= ti4_flat;
                else if (29750 > duration)
                    m <= 0;
                else if(30100 > duration)  
                    m <= ti4_flat;       
                else if (30450 > duration)
                    m <= 0;
                else if(30800 > duration)  
                    m <= ti4_flat;
//                else if (31400 > duration)
//                    m <= 0;
                else if(31500 > duration)  
                    m <= la4_flat;  
//                else if (31900 > duration)
//                    m <= 0;
                else if(32000 > duration)  
                    m <= ti4_flat;
//                else if (33000 > duration)
//                     m <= 0;
                else if(33100 > duration)  
                    m <= fa4;
//               else if (33400 > duration)
//                     m <= 0;
                else if(33700 > duration)  
                    m <= doh5;
//                else if (34500 > duration)
//                   m <= 0;
                else if(34600 > duration)  
                    m <= ti4_flat;
                else if (34950 > duration)
                    m <= 0;
                else if(35300 > duration)  
                    m <= ti4_flat;
                else if (35650 > duration)
                     m <= 0;
                else if(36000 > duration)  
                    m <= ti4_flat;  
//                else if (36600 > duration)
//                    m <= 0;
                else if(36600 > duration)  
                    m <= la4_flat;
                else if (37000 > duration)
                    m <= ti4_flat;
                else if(37800 > duration)  
                    m <= mi4_flat;

//                else if (3800 > duration)
//                   m <= 0;
                else if(38300 > duration)  
                    m <= doh5;
//                else if (38700 > duration)
//                    m <= 0;
                else if(38800 > duration)  
                    m <= re5_flat;
//                else if (39050 > duration)
//                     m <= 0;
                else if(39300 > duration)  
                    m <= mi5_flat;  
//                else if (39 > duration)
//                    m <= 0;
                else if(39800 > duration)  
                    m <= la5_flat;
//                else if (40800 > duration)
//                    m <= 0;
                else if(40900 > duration)  
                    m <= sol5;

//                else if (4900 > duration)
//                   m <= 0;
                else if(42000 > duration)  
                    m <= fa5;
//                else if (43000 > duration)
//                    m <= 0;
                else if(43100 > duration)  
                    m <= mi5_flat;
//                else if (44100 > duration)
//                     m <= 0;
                else if(44200 > duration)  
                    m <= doh5;  
                else if (44750 > duration)
                    m <= 0;
                else if(45300 > duration)  
                    m <= ti4_flat;
                else if (46300 > duration)
                    m <= 0;
  

end
end


           

endmodule
