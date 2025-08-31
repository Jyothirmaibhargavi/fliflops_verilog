module d_ff (res,clk,d,q);
input res,clk,d;
output reg q;

always @(posedge clk) begin
if (res==1) q<=1'b0;
else q<=d;
end
endmodule

module sr_using_d (res,clk,s,r,q);
input res,clk,s,r;
output wire q;

assign d=(q&~r)|s;
 d_ff ff1 (.res(res),.clk(clk),.d(d),.q(q));
 endmodule



