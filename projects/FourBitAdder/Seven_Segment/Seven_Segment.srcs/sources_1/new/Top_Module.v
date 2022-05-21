`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/27/2020 03:18:23 AM
// Design Name: 
// Module Name: Top_Module
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


module Top_Module(
    input [3:0] A,
    input [3:0] B,
    output [3:0] an,
    output [6:0] Seg,
    output OV_S,
    output OV_U
    );
    
    wire [3:0] Sum;
    assign an=4'b0000;
    
    //instantiate the four bit adder and seven segment module
    Four_Bit_Adder U5(A,B,Sum,OV_S,OV_U);
    Seven_Segment U6(Sum, Seg, an);
    
    
endmodule
