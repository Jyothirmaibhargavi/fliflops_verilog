`timescale 1ns/1ps
`include "dff_using_sr.v"

module dff_using_sr_tb;
reg clk,res,d;
wire q;

dff_using_sr dut (.clk(clk),.res(res),.d(d),.q(q));

always #5 clk=~clk;

initial begin
$monitor("T=%0t clk=%b res=%b d=%b q=%b",$time,clk,res,d,q);
   clk=0;
   res=1;
   #10;
   res=0;
   repeat (50) begin
      d=$random;
      #10;
   end
   $finish;
end
endmodule

