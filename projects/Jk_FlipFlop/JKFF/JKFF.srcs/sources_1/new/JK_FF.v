`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/26/2020 02:36:51 AM
// Design Name: 
// Module Name: JK_FF
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


module JK_FF(
    input wire J,
    input wire K,
    input wire Reset,
    input wire Clk,
    output reg Q,
    output reg Qbar
    );
    
    always @(posedge Clk)
    begin
    if (Reset) begin
    Q=1'b0;
    Qbar=1'b1;
    end
    else begin
    case ({J, K})
    2'b00: begin Q=Q; Qbar=Qbar; end  //J=K=0
    2'b01: begin Q=1'b0; Qbar=1'b1; end //J=0 K=1
    2'b10: begin Q=1'b1; Qbar=1'b0; end //J=1 K=0
    2'b11: begin Q=~Q; Qbar=~Qbar; end //J=K=1
    endcase 
    end
    end
endmodule
