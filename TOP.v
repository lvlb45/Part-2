`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/01/2019 04:48:50 PM
// Design Name: 
// Module Name: TOP
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


module TOP(reset,clk,da,db,p);
input reset,clk;
input[3:0] da,db;
output[8:0] p;

wire shb,ld,clr,ldp,shp;

MULT b1(.da(da),.db(db),.p(p),.ld(ld),.shb(shb),.clr(clr),.clk(clk),.shp(shp),.ldp(ldp));
FSM b2(.reset(reset),.clk(clk),.shb(shb),.ld(ld),.clr(clr),.ldp(ldp),.shp(shp));

endmodule