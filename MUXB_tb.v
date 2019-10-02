`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/23/2019 06:07:45 PM
// Design Name: 
// Module Name: MUXB_tb
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


module MUXB_tb;
reg [3:0] d0,d1;
reg x;
wire[3:0] y;
MUXB u1(d0,d1,x,y);
initial
begin
d0=3'b100;
d1=3'b001;

#10 x=0;
#10 x=1;
#10 x=0;
#10 x=1;
$stop;
end
endmodule
