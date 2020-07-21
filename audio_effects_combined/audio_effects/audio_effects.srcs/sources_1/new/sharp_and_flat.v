`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/04/01 17:06:57
// Design Name: 
// Module Name: sharp_and_flat
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


module sharp(
    input CLK,
    input [6:0] sw,
    input sharp_sw,
    output reg [11:0] sharp
    );
    
     wire doh_s, re_s, mi_s, fa_s, sol_s, la_s, ti_s;
         clock_generator_20 C(CLK, 180388, doh_s);
         clock_generator_20 D(CLK, 160704, re_s);
         clock_generator_20 E(CLK, 135138, fa_s);
         clock_generator_20 F(CLK, 120394, sol_s);
         clock_generator_20 G(CLK, 107259, la_s);
    
    always @ (*) begin
    if( sw[5] == 1 && sharp_sw == 1)
    sharp <= la_s;
    else if( sw[4] == 1 && sharp_sw == 1)
    sharp <= sol_s;
    else if( sw[3] == 1 && sharp_sw == 1)
    sharp <= fa_s;
    else if( sw[1] == 1 && sharp_sw == 1)
    sharp <= re_s;
    else if( sw[0] == 1 && sharp_sw == 1)
    sharp <= doh_s;
    end
    
    
endmodule
