`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/26/2020 01:13:33 PM
// Design Name: 
// Module Name: Simple_Calculator
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


module Simple_Calculator(
    input [9:0] sw,
    output [7:0] led
    );
    
    wire [7:0] addition;
    wire [7:0] subtraction;
    wire [7:0] multiplication;
    wire [7:0] division;
    
    //data flow model 
    assign addition=sw[3:0]+sw[7:4];//adding two 4 bit number
    assign subtraction=sw[3:0]-sw[7:4];//subtracting two 4 bit number
    assign multiplication=sw[3:0]*sw[7:4];//multiplication two 4 bit number
    assign division=sw[3:0]/sw[7:4];//division two 4 bit number
    
    assign led = ({8{~sw[9]}}&{8{~sw[8]}}& addition) | ({8{~sw[9]}}&{8{sw[8]}}&subtraction) | ({8{sw[9]}}&{8{~sw[8]}}&multiplication) | ({8{sw[9]}}&{8{sw[8]}}&division);
endmodule
