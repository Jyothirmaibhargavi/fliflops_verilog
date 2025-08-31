`include "dff_mux21.v"

module dff_mux21_tb;
reg clk,res,d;
wire q;
dff_mux21 dut (.clk(clk),.res(res),.d(d),.q(q));

always #5 clk=~clk;

initial begin 
  clk=0;
  res=1;
  #10;
  res=0;
  repeat (50)begin 
   d=$random;
   #10;
   end
   $finish;
 end
endmodule
