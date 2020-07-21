`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/04/06 16:22:11
// Design Name: 
// Module Name: Seven_segment_LED_Display_Controller
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


module seven_segment(
    input CLK, 
    input [6:0] sw,
    output reg [3:0] Anode,
    output reg [6:0] LED_7_segment
    );

    wire [1:0] LED; 

    reg [20:0] counter = 0;
    
    always @(posedge CLK)
             begin
                counter <= counter + 1;
             end 
             assign LED = counter[19];
    
    always @(*) begin
    if (sw == 7'b0000000) begin
        case(LED)
    1'b0: begin
        Anode = 4'b1111;
        LED_7_segment = 7'b1111111;
        end
    1'b1: begin
        Anode = 4'b1111;
        LED_7_segment = 7'b1111111;
        end
    endcase
    end
        
    if(sw[0] == 1) begin
       case(LED)
    1'b0: begin
        Anode = 4'b1101; 
        LED_7_segment = 7'b0110001;
            end
    1'b1: begin
        Anode = 4'b1110; 
        LED_7_segment = 7'b1001100;
           end
        endcase
        end

    if(sw[1] == 1) begin
        case(LED)
    1'b0: begin
        Anode = 4'b1101; 
        LED_7_segment = 7'b1000010;
            end
    1'b1: begin
        Anode = 4'b1110; 
        LED_7_segment = 7'b1001100;
           end
        endcase
        end

    if(sw[2] == 1) begin
        case(LED)
    1'b0: begin
        Anode = 4'b1101; 
        LED_7_segment = 7'b0110000;
            end
    1'b1: begin
        Anode = 4'b1110; 
        LED_7_segment = 7'b1001100;
           end
        endcase
        end   

    if(sw[3] == 1) begin
        case(LED)
    1'b0: begin
        Anode = 4'b1101; 
        LED_7_segment = 7'b0111000;
            end
    1'b1: begin
        Anode = 4'b1110; 
        LED_7_segment = 7'b1001100;
           end
        endcase
        end
    
    if(sw[4] == 1) begin
        case(LED)
    1'b0: begin
        Anode = 4'b1101; 
        LED_7_segment = 7'b0000100;
            end
    1'b1: begin
        Anode = 4'b1110; 
        LED_7_segment = 7'b1001100;
           end
        endcase
        end
    
    if(sw[5] == 1) begin
        case(LED)
    1'b0: begin
        Anode = 4'b1101; 
        LED_7_segment = 7'b0001000;
            end
    1'b1: begin
        Anode = 4'b1110; 
        LED_7_segment = 7'b1001100;
           end
        endcase
        end
        
    if(sw[6] == 1) begin
        case(LED)
    1'b0: begin
        Anode = 4'b1101; 
        LED_7_segment = 7'b1100000;
            end
    1'b1: begin
        Anode = 4'b1110; 
        LED_7_segment = 7'b1001100;
           end
        endcase
        end

    end


 endmodule 
