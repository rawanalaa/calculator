`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/25/2021 10:25:40 PM
// Design Name: 
// Module Name: add_test
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


module add_test();
reg B5,B6,B7,B8,B9 ,B1,B2,B3,B4 ;
wire [0:3] en ; 
wire [0:6] seg;
wire dot ;
wire [0:3] one,two,three,four ;
wire [0:15] result;

Calculator add(B1,B2,B3,B4,B5,B6,B7,B8,B9,en,seg,one,two,three,four,dot,result);
integer i,j,k,m;
initial begin

for(i=0 ; i<10 ;i=i+1) begin 
 B1<=0; B1<=1;  end 
 
for(j=0 ; j<10 ;j=j+1) begin 
  B2<=1; #5 B2<=0; end 
  
 for(k=0 ; k<10 ;k=k+1) begin 
   B3<=1; #5 B3<=0; end 
   
 for(m=0 ; m<10 ;m=m+1) begin 
    B4<=1; #5 B4<=0; end 
  
   B5=1;
   B6=0;
   B7=0;
   B8=0;
   B9=0;
   end 
endmodule
