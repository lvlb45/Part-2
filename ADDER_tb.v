`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/23/2019 08:25:59 PM
// Design Name: 
// Module Name: ADDER_tb
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


module ADDER_tb;
reg [3:0] a,b;
wire cout;
wire [3:0] sum;

ADDER u1(.a(a), .b(b), .cout(cout), .sum(sum));

initial 
begin
a=4'b0000; b=4'b0001;
#10 a=4'b0010; b=4'b0011;
#10 a=4'b0100; b=4'b0101;
#10 a=4'b1001; b=4'b1010;
#20 $stop;
end 
endmodule
