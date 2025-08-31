`include "t_ff.v"

module t_ff_tb;
 reg clk,res,t;
 wire q;
 t_ff dut (.res(res),.clk(clk),.t(t),.q(q));
 always #5 clk=~clk;
 initial begin
   clk=0;
   res=1;
   t=0;
   repeat (4) @ (posedge clk);
   res=0;
   repeat (50) begin
       t=$random;
       #10;
   end
 $finish;
 end
endmodule 




   
