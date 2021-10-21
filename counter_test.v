`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/26/2021 04:30:02 PM
// Design Name: 
// Module Name: counter_test
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


module counter_test();
    reg clk;
    wire [0:3] counter;
    count B1(clk,counter);
    integer i; 
    initial begin 
    
   for (i=0 ;i<10 ; i=i+1) 
   begin
    clk=0; #5
   clk=1; 
   end
   clk=0;
   end 
endmodule
