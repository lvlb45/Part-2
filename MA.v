`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/16/2019 05:25:02 PM
// Design Name: 
// Module Name: MA
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


module MA(ld,clr,clk,da,qa);

input ld,clr,clk;
input[3:0] da;
output[3:0] qa;

reg[3:0] qa;
always@(posedge clr or posedge clk)

begin
if(clr)
qa<=0;
else if(ld)
qa<=da;
end 
endmodule
