`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/29/2021 01:38:11 AM
// Design Name: 
// Module Name: BCD
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


module BCD( input [15:0] binary, output reg [3:0]thousands, hundreds, tens, ones);
integer i;
always @(binary)
begin 
thousands = 4'd0;
hundreds = 4'd0;
tens=4'd0;
ones=4'd0;
for (i=15; i>=0;i=i-1)
begin
if (thousands>=5)
thousands=thousands+3; 
if (hundreds >=5)
hundreds=hundreds+3;
if (tens>=5)
tens=tens+3;
if (ones>=5)
ones=ones+3;
thousands= thousands<<1;
thousands[0]=hundreds[3];
hundreds=hundreds<<1;
hundreds[0]=tens[3];
tens=tens<<1;
tens[0]=ones[3];
ones=ones<<1;
ones[0]=binary[i];
end
end
endmodule
