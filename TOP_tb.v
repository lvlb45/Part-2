`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/01/2019 05:05:15 PM
// Design Name: 
// Module Name: TOP_tb
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


module TOP_tb;
reg[3:0] da,db;
reg reset,clk;

wire[8:0] p;

TOP uut(reset,clk,da,db,p);
always #10 clk=~clk;

initial
begin
clk=0;
 reset=1; da=10; db=5;
#20; reset=0; da=10; db=5;
//#100; reset=0; da=5; db=6;
//#50; reset=0; da=5; db=6;
//#100; reset=0; da=6; db=5;
#200 $stop;
end
endmodule