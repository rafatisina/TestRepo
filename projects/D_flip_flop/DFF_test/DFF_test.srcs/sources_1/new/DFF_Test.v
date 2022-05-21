`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/26/2020 02:14:33 AM
// Design Name: 
// Module Name: DFF_Test
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


module DFF_Test(
    input Clk,
    input Clr,
    input D,
    output reg Q,
    output reg Qbar
    );

always @ (posedge Clk, negedge  Clr)
if (Clr==0) begin
Q<=0;
Qbar<=1;
end
else begin
Q<=D;
Qbar=~D;
end

endmodule
