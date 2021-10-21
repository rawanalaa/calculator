`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/29/2021 12:28:42 AM
// Design Name: 
// Module Name: conv_10
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


module conv_10(input [0:3] B, C, output [0:6] final);
wire [0:6] tenth;
assign tenth= B* (4'd10);
assign final = tenth+ C;
endmodule
