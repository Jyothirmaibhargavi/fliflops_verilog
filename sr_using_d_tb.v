`timescale 1ns/1ps
`include "sr_using_d.v"

module sr_using_d_tb;
reg res,clk,s,r;
wire q;

sr_using_d dut (.clk(clk),.res(res),.s(s),.r(r),.q(q));
always #5 clk=~clk;

initial begin
 clk=0;
 res=1;
 #10;
 res=0;
 repeat(50)begin
 {s,r}=$random;
 #10;
 end
 $finish;
 end
 endmodule



