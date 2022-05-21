`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/26/2020 09:33:25 PM
// Design Name: 
// Module Name: One_bit_Full_Adder
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


module One_bit_Full_Adder(
    input A,
    input B,
    input Cin,
    output Sum,
    output Cout
    );
    
    assign Sum = ~A & ~B & Cin | A & ~B & ~Cin |  A & B & Cin;
    assign Cout= B & Cin | A & Cin | A & B;
endmodule
