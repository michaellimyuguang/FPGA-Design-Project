`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.04.2018 16:41:23
// Design Name: 
// Module Name: voice_storage
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


module voice_storage(
    input CLK,
    input [11:0] MIC_in,
    output reg [11:0] speaker_out,
    input PB
    );
    
    reg [11:0] memory [0:39999];
    reg [31:0] i = 0;
    reg [31:0] j = 0;
    wire SP_DOWN;
    reg [2:0] COUNT = 0;
    
    singlepulse sp (CLK, PB, SP_DOWN);
    
    always @ (posedge CLK) begin
        i <= (i == 39999) ? 0 : i + 1;
        
    end
    
    always @ (posedge CLK) begin
        j <= (j == 39999) ? 0 : j + 1;
    end
    
    always @ (posedge SP_DOWN) begin
        COUNT <= COUNT + 1;             
    end
    
    always @ (*) begin
    if (COUNT[0] == 0)
        memory[i] <= MIC_in;
    else if (COUNT[0] == 1)
        speaker_out <= memory[j];
    end   
endmodule
