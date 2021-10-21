`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/29/2021 12:11:28 AM
// Design Name: 
// Module Name: calc
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


module calc(input clk,B1,B2,B3,B4,B5,B6,B7,B8,B9,output reg[0:16] result, output reg dot, output [0:6] seg, output [0:4] en);
wire [0:3] one,two,three,four, D_B1,D_B2,D_B3,D_B4,speed;
wire [0:6] D1,D2, seg1,seg2,seg3,seg4;
count first (B1,one); count second (B2, two); count third(B3, three); count fourth (B4, four);
conv_10 firstnumber (one,two, D1); conv_10 secondnumber(three,four, D2);

always @(posedge B1,posedge B2,posedge B3,posedge B4, posedge B5, posedge B6,posedge B7, posedge B8, posedge B9)
begin 
dot =0;
if ( B5==1) begin result = D1+D2; dot =1; end
else if (B6==1) begin result = D1-D2; dot=1; end
else if ( B7 ==1) begin result = D1 * D2; dot=1; end
else if ( B8 ==1) begin result = D1/D2; dot=1; end
else if (B9==1) begin result= {D1,D2}; end
end

BCD bin (result,D_B1,D_B2,D_B3,D_B4);
segments segm1 (D_B1,seg1);
segments segm2(D_B2,seg2);
segments segm3 (D_B3, seg3);
segments segm4 (D_B4, seg4);

bitcount control(clk,speed);
multi4_1 segment(seg1,seg2,seg3,seg4,speed,seg);
decoder enable(speed,en);

endmodule
