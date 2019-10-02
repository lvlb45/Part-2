`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/23/2019 06:47:20 PM
// Design Name: 
// Module Name: PROD_tb
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


module PROD_tb;
reg cin,clr,clk,shp,ldp;
reg [3:0] sum;
wire [8:0] p;

PROD uut(sum,cin,shp,ldp,clr,clk,p);
initial clk=0;
always #10 clk=~clk;

initial
begin
sum=4'b1111;
cin=4'b0001;
clr=1;
ldp=0;
shp=0;

#10 clr=0;ldp=1;shp=0;
#10 clr=0;ldp=0;shp=1;

#10 cin=0;
#10 ldp=1;
#10 ldp=0;

#60 $stop;
end
endmodule
