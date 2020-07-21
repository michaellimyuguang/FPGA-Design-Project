`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.04.2018 21:26:56
// Design Name: 
// Module Name: speaker_mic_led
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


module speaker_mic_led(
    input CLK,
    input [11:0] MIC_in,
    output reg [11:0] LED,
    output reg [11:0] speaker_out
    );
    
    always @ (posedge CLK) begin
        speaker_out <= MIC_in;
        LED <= MIC_in;
    end

endmodule
