`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/04/07 19:06:03
// Design Name: 
// Module Name: amplify_songs
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


module amplify_songs(
    input CLK,
    input PB_SONGS,
    input song,
    output reg [18:0] sound
    );
    
    wire SP_SONGS;
    singlepulse SP_SONG_MOD (CLK, PB_SONGS, SP_SONGS);
    
    reg [1:0] counter = 0;
    always @ (posedge SP_SONGS) begin
    counter <= counter + 1;
    end
    
    always @ (counter) begin
    if (counter == 3) begin
    sound = {10{1'b1}} * song;
    end
    
    else if (counter == 2) begin
    sound = {8{1'b1}} * song;
    end
    
    else if (counter == 1) begin
    sound = {5{1'b1}} * song;
    end
    
    else if (counter == 0) begin
    sound = song;
    end
    
    end
endmodule
