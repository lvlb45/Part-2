`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/23/2019 05:52:43 PM
// Design Name: 
// Module Name: MB_tb
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


module MB_tb;

reg clk,clr,ld,shb;
reg[3:0] db;
wire[3:0] qb;

MB uut(shb,ld,clr,clk,db,qb);

initial clk=0;

always #10 clk=~clk;
initial 
begin
clr=1;
ld=0;
shb=0;
db=4'b1001;
#20 clr=0;
ld=1;
shb=0;
#20 ld=0;
shb=1;
#60 $stop;
end
endmodule
