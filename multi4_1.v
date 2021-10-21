`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/25/2021 10:11:05 PM
// Design Name: 
// Module Name: multi4_1
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


module multi4_1(input [0:6] A,B,C,D,input [1:0] sel,output reg [0:6] Y);
always @(*)
if(sel==2'b00) Y=A;
else if (sel==2'b01) Y=B;
else if (sel==2'b10) Y=C;
else if (sel==2'b11) Y=D;
endmodule

