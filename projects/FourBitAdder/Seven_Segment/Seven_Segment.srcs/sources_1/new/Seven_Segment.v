`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/26/2020 08:06:48 PM
// Design Name: 
// Module Name: Seven_Segment
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


module Seven_Segment(
    input [3:0] D,
    output [6:0] Seg,
    output [3:0] an
    );
    
    assign an=4'b0000;
    assign Seg[6]=~D[3] & ~D[2] & ~D[1] & D[0] | ~D[3] & D[2] & ~D[1] & ~D[0] + D[3] & ~D[2] & D[1] & D[0] | D[3] & D[2] & ~D[1] & D[0];    
    assign Seg[5]=~D[3] &  D[2] & ~D[1] & D[0] |  D[2] & D[1] & ~D[0] |  D[3] & D[1] &  D[0] | D[3] & D[2] &~D[0];
    assign Seg[4]=~D[3] & ~D[2] &  D[1] &~D[0] |  D[3] & D[2] & ~D[0] |  D[3] & D[2] &  D[1];
    assign Seg[3]=~D[2] & ~D[1] &  D[0] |~D[3] &  D[2] & ~D[1] & ~D[0] | D[2] & D[1] &  D[0] | D[3] & ~D[2] & D[1] & ~D[0];
    assign Seg[2]=~D[3] &  D[0] | ~D[2] & ~D[1] &  D[0] | ~D[3] &  D[2] |~D[1];
    assign Seg[1]=~D[3] & ~D[2] &  D[0] | ~D[3] & ~D[2] & D[1] | ~D[3] & D[1] & D[0] | D[3] & D[2] & ~D[1] & D[0];
    assign Seg[0]=~D[3] & ~D[2] & ~D[1] | ~D[3] &  D[2] & D[1] & D[0] | D[3] & D[2] & ~D[1] & ~D[0];
endmodule
