`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/26/2020 02:58:39 AM
// Design Name: 
// Module Name: JKK_TB
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


module JKK_TB(

    );
    reg Clk,Reset, J, K; 
    wire Q,Qbar;
    
    /// Instantiate JK FF 
    JK_FF U0(Clk, J,K,Q,Qbar);
    
    //Stimulus
    
    initial begin
    J=1'b0;
    K=1'b0;
    Reset=1;
    Clk=1;
    #10;
    Reset=0;
    J=1'b1;
    K=1'b0;
    #100;
    Reset=0;
    J=1'b0;
    K=1'b1;
    #100;
    Reset=0;
    J=1'b1;
    K=1'b1;
    #100;
    Reset=0;
    J=1'b0;
    K=1'b0;
    
    #100
    Reset=1;
    J=1'b1;
    K=1'b0;
    end
   
    always #25 Clk=~Clk;
endmodule
