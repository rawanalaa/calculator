`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/29/2021 01:08:27 AM
// Design Name: 
// Module Name: calc_test
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


module calc_test();
reg clk, B1, B2,B3,B4,B5,B6,B7,B8,B9;
wire [0:6] result, seg;
wire [0:3] en;
wire dot;
calc uut ( clk, B1, B2,B3,B4,B5,B6,B7,B8,B9, result, dot ,seg,en);
always begin clk=0; #10 clk=1; end
initial begin
B1= 4'd5;
B2= 4'd2;
B3 = 4'd3;
B4= 4'd6;
B5=1;
B6=0;
B7=0;
B8=0;
B9=0;
#10
B1= 4'd5;
B2=4'd2;
B3 =4'd3;
B4=4'd6;
B5=0;
B6=1;
B7=0;
B8=0;
B9=0;
#10
B1= 4'd5;
B2=4'd2;
B3 =4'd3;
B4=4'd6;
B5=0;
B6=0;
B7=1;
B8=0;
B9=0;
#10
B1= 4'd5;
B2=4'd2;
B3 =4'd3;
B4=4'd6;
B5=0;
B6=0;
B7=0;
B8=1;
B9=0;
#10
B1= 4'd5;
B2=4'd2;
B3 =4'd3;
B4=4'd6;
B5=0;
B6=0;
B7=0;
B8=0;
B9=1;
end
endmodule
