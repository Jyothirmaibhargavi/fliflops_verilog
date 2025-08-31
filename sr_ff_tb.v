`include "sr_using_t.v"
module sr_ff_tb;
reg clk,res,s,r;
wire q;

sr_using_t dut (.res(res),.clk(clk),.s(s),.r(r),.q(q));

initial begin
clk=0;
forever #5 clk=~clk;
end

initial begin 
 clk=0;
 res=1;
 #10;
 res=0;
 repeat (50) begin
 {s,r}= $random;
 #10;
 end
 $finish;
 end
 endmodule




