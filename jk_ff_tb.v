`include "jk_ff.v"

module jk_ff_tb;
reg clk,j,k,res;
wire q;
jk_ff dut (.res(res),.clk(clk),.j(j),.k(k),.q(q));

initial begin 
clk=0;
forever #5 clk=~clk;
end
 initial begin
   clk=0;
   res=1;
   repeat (2) @ (posedge clk);
   res=0;
   repeat (50) begin
       {j,k}=$random;
       #10;
   end
 $finish;
 end
endmodule 



