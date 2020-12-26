`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/26/2020 12:49:12 PM
// Design Name: 
// Module Name: T_FFCode
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


module T_FFCode(
    input wire Clk,
    input wire Clr,
    input wire T,
    output reg Q,
    output reg Qbar
    );
    
    always @(posedge Clk, negedge Clr) begin
    
    if (Clr==0) begin
    Q<=1'b0;
    Qbar<=1'b1;
    end
    else begin
    case (T)
    1'b0: begin Q<=0; Qbar<=Qbar; end   // T=0 meaning J=K=0
    1'b1: begin Q<=~Q; Qbar<=~Qbar; end// T=1 meaning J=K=1
    endcase
    end
    end
endmodule
