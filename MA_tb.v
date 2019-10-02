`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/23/2019 05:40:47 PM
// Design Name: 
// Module Name: MA_tb
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


module MA_tb;

reg clk,clr,ld;
reg[3:0] da;
wire[3:0] qa;

MA uut(ld,clr,clk,da,qa);

initial clk=0;

always #10 clk=~clk;
initial 
begin
clr=1;
da=4;
#10 clr=0;
ld=1;
#10 ld=0;
#40 $stop;
end
endmodule
