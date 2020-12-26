`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/26/2020 12:59:31 PM
// Design Name: 
// Module Name: TFF_TB
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


module TFF_TB(

    );
    reg Clk, Clr,T;
    wire Q,Qbar;
    
    // Instantiste
    T_FFCode T1(T,Clk,Clr,Q,Qbar);
    
    always #100 Clk=~Clk;
    
    //Stimulus
    initial begin
    T=1'b0;
    Clk=1'b0;
    Clr=1'b1;
    #100;
    Clr=1'b0;
    #100;
    Clr=1'b0;
    forever #50 T=~T;
    end
    
    
endmodule
