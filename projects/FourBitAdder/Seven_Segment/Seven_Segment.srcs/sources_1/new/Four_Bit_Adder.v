`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/27/2020 03:00:29 AM
// Design Name: 
// Module Name: Four_Bit_Adder
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


module Four_Bit_Adder(
    input [3:0] A,
    input [3:0] B,
    output [3:0] Sum,
    output OV_S,
    output OV_U
    );
    
 wire [3:0] Cout;
 
 //instantiate the one bit full adder 4 times to create 4 bit adder
 One_bit_Full_Adder U0(A[0],B[0],0,Sum[0],Cout[0]);   
 One_bit_Full_Adder U1(A[1],B[1],Cout[0],Sum[1],Cout[1]);   
 One_bit_Full_Adder U2(A[2],B[2],Cout[1],Sum[2],Cout[2]);   
 One_bit_Full_Adder U3(A[3],B[3],Cout[2],Sum[3],Cout[3]);   
 
 assign OV_U = Cout[3];
 assign OV_S = Cout[2] ^ Cout[3];
endmodule
