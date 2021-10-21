`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/29/2021 01:49:31 AM
// Design Name: 
// Module Name: BCD_test
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


module BCD_test();
reg [0:15] binary;
wire [0:3] thousands,hundreds, tens,ones;
BCD uut (binary, thousands,hundreds,tens,ones);
initial begin
binary= 16'd9801;
end
endmodule
