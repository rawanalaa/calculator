`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/22/2021 12:44:05 AM
// Design Name: 
// Module Name: converter
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


module converter(input result , output fird,secd,third,foud);

assign fird= result /1000 ; 
assign secd = (result%1000)/100 ; 
assign third = ((result%1000)%100)/10 ; 
assign secd = ((result%1000)%100)%10  ; 

endmodule
