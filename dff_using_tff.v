module t_ff (res,clk,t,q);
input res,clk,t;
output reg q;

always @(posedge clk) begin
if (res==1) q<=0;
else begin
   if (t==1'b1) q<=~q;
   else q<=q;
end
end
endmodule

module dff_using_tff (res,clk,d,q);
input res,clk,d;
output  q;

assign t=d^q;

t_ff ff1 (.res(res),.clk(clk),.t(t),.q(q));
endmodule
