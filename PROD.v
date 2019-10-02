`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/23/2019 06:13:28 PM
// Design Name: 
// Module Name: PROD
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


module PROD(sum,shp,ldp,clr,cout,clk,p);
input[3:0] sum;
input clr,clk,shp,ldp,cout;
output[8:0] p;
reg[8:0] p;


always@(posedge clk or posedge clr)
begin
if(clr)
p<=0;
else if(ldp)begin
p[7:4]= {sum};
p[8]= {cout}; end
else if(shp)
begin
p[8:0] <= {cout,p[8:1]};
end
end
endmodule
