`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/23/2019 05:47:03 PM
// Design Name: 
// Module Name: MB
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


module MB(shb,ld,clr,clk,db,qb);

input shb,ld,clr,clk;
input[3:0] db;
output[3:0] qb;

reg[3:0] qb;
always@(posedge clr or posedge clk)

begin
if(clr) qb<=0;
else if(ld)
qb<=db;
else if(shb)
qb<={1'b0, qb[3:1]};
end
endmodule
