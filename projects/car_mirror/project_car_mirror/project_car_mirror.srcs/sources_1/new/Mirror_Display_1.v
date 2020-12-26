`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/25/2020 04:28:24 PM
// Design Name: 
// Module Name: Mirror_Display_1
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


module Mirror_Display_1(
    input wire [7:0] Temperature,  // All 4 sensors declated as input
    input wire [7:0] Average_mpg,
    input wire [7:0] Instantanous_mpg,
    input wire [7:0] Miles_Remaining,
    input wire [1:0] SS,  // Selector switches x,y as shown in block diagram
    output reg [7:0] Display // output mirror display
    );
    
    always @(*)
    case (SS)
      0: Display = Temperature;   
      1: Display = Average_mpg;    
      2: Display = Instantanous_mpg;
      3: Display = Miles_Remaining;
    endcase
endmodule
