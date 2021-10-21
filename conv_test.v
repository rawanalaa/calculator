`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/29/2021 12:33:49 AM
// Design Name: 
// Module Name: conv_test
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


module conv_test();
reg [0:3] B, C;
wire [0:6] final; 
conv_10 S ( B,C, final);
initial begin
B=4'b0101;
C= 4'b0000;
#10
 B= 4'b1001;
C= 4'b1001;
end
endmodule
