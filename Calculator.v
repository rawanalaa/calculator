`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/22/2021 12:04:19 AM
// Design Name: 
// Module Name: Calculator
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


module Calculator( input B1,B2,B3,B4,B5,B6,B7,B8,B9,output [0:3]en , [0:6] seg ,output[0:3] one,two,three,four,output reg dot ,output reg[0:15] result );
wire [0:6] seg1,seg2,seg3,seg4;
wire [1:0] bicount;
wire clk ;
assign clk = 1'd100000000;
//count cliks 
counter first (B1,one); counter sec (B2,two); counter third (B3,three); counter fourth (B4,four); 

//requested operation 
always @(posedge B5 ,posedge B6,posedge B7,posedge B8,posedge B9 ) begin  
if(B5==1) begin result<={one,two}+{three,four};  dot<=1 ; end
else if(B6==1) begin result<={one,two}-{three,four}; dot<=1; end
else if (B7==1) begin  result<={one,two}*{three,four};  dot<= 1 ; end 
else if (B8==1) begin result<={one,two}/{three,four}; dot<=1; end
else if (B9==1) begin  result<= {one,two,three,four}; dot <=0 ;end 
end  


//call 7-segment 
segments sone (result[0:3],seg1);
segments stwo (result [4:7],seg2);
segments sthree (result [8:11],seg3);
segments sfour (result [12:15],seg4);

//count to control speed 
count binary(clk,bicount);

//call multiplexer 
multi4_1 pliexer (seg1,seg2,seg3,seg4,bicount,seg);

//call decoder 
decoder enables (bicount , en);
endmodule
