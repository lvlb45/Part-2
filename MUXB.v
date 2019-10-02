`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/23/2019 06:01:04 PM
// Design Name: 
// Module Name: MUXB
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


module MUXB(d0,d1,x,y);

input[3:0] d0,d1;
input x;
output [3:0] y;
reg[3:0] y;

always@(d0 or d1 or x)
begin
if(x==1)
y=d1;
else
y=d0;
end
endmodule
