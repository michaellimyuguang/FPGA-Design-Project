`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/04/06 14:51:48
// Design Name: 
// Module Name: loudness
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


module loudness(
    input CLK,
    input PB_LOUD,
    input SW,
    input octave_sound,
    output reg [18:0] sound
    );
    
    wire SP_LOUD;
    singlepulse SP_LOUD_MOD (CLK, PB_LOUD, SP_LOUD);
    
    reg [1:0] count = 0;
    always @ (posedge SP_LOUD) begin
    count <= count + 1;
    end
    
    always @ (count) begin
    if (count == 3) begin
    sound = {10{1'b1}} * octave_sound;
    end

    else if (count == 2) begin
    sound = {8{1'b1}} * octave_sound;
    end

    else if (count == 1) begin
    sound = {5{1'b1}} * octave_sound;
    end

    else if (count == 0) begin
    sound = octave_sound;
    end
    
   end
    
    
endmodule
