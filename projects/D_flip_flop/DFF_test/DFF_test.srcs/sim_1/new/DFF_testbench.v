`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/26/2020 02:21:31 AM
// Design Name: 
// Module Name: DFF_testbench
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


module DFF_testbench(

    );

reg D, Clr, Clk;
wire Q, Qbar;

// Instatiating the DFF
DFF_Test U0(D,Clk,Clr,Q,Qbar);

always #100 Clk=~Clk; // on for 100 ns and off for 100 ns

// Stimulus
initial begin
D=1'b0;
Clk=1'b0;
Clr=1'b1;
#100;
Clr=1'b0;
#100;
Clr=1'b1;

forever #50 D=~D;   
end

endmodule
