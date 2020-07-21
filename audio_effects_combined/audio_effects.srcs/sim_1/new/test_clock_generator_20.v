`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.03.2018 02:20:27
// Design Name: 
// Module Name: test_clock_20
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


module test_clock_20(
    );
    reg CLOCK;
    reg [31:0] m;
    wire LED;
    
    clock_generator_20 dut(CLOCK, m, LED);
    initial begin
        CLOCK = 0;
        m = 12'd2499; #20;
    end
    
    always begin
        #5 CLOCK = ~CLOCK;
    end
    
    
endmodule
