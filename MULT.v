`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/30/2019 07:15:51 PM
// Design Name: 
// Module Name: MULT
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


module MULT(da,db,p,ld,shb,clr,clk,shp,ldp);

input[3:0] da,db;
input ld,ldp,shb,shp,clk,clr;

output[8:0] p;

wire[3:0] qa,qb,sum,y;
wire cout;

MA a1(.ld(ld),.clr(clr),.clk(clk),.da(da),.qa(qa));
MB a2(.shb(shb),.ld(ld),.clr(clr),.clk(clk),.db(db),.qb(qb));
MUXB a3(.d0(4'b0000),.d1(da),.x(qb[0]),.y(y));
ADDER a4(.a(p[7:4]), .b(y), .cout(cout), .sum(sum));
PROD a5(sum,shp,ldp,clr,cout,clk,p);
endmodule


