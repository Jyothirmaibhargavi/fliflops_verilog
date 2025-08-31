module t_ff(res,clk,t,q);
input res,clk,t;
output reg q;

always@(posedge clk)begin
  if(res==1) q<=0;
  //else q=(t==0)?q:~q; // conditional operator 
  else begin
  if(t==1'b1) q<=~q;
  else q<=q;
  end
end
endmodule


