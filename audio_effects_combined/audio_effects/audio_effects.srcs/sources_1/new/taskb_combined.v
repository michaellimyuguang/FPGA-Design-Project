`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/04/01 18:35:52
// Design Name: 
// Module Name: taskb_combined
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


module taskb_combined(
    input CLK,
    input [6:0] sw,
    input loud_sw,
    input sharp_sw,
    output [19:0] speaker_out
    );
    
    wire [19:0] loud_sound;
    loudness_taskb loud(CLK, sw, loud_sw, loud_sound);
    
    wire [11:0] sharp_sound;
    sharp sharpness(CLK, sw, sharp_sw, sharp_sound);
    
    assign speaker_out = (sharp_sw == 1) ? sharp_sound : loud_sound;
    
endmodule
