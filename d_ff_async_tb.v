`include "d_ff_Async.v"

module d_ff_async_tb;
reg clk,res,d;
wire q;
d_ff_Async dut (.clk(clk),.res(res),.d(d),.q(q));

always #5 clk=~clk;

initial begin 
  clk=0;
  res=1;
  #2;
  res=0;
  repeat (50)begin 
   d=$random;
   #10;
   end
   $finish;
 end
endmodule



