module jk_ff (res,clk,j,k,q);
input res,clk,j,k;
output reg q;

always @(posedge clk) begin
if(res==1) q<=1'b0;
else begin
case({j,k})
2'b00: q<=q;
2'b01: q<=0;
2'b10: q<=1;
2'b11: q<=~q;
endcase
end
end
endmodule

module dff_using_jk (clk,res,d,q);
input clk,res,d;
output  q;

assign j=d;
assign k=~d;

jk_ff ff1 (.res(res),.clk(clk),.j(j),.k(k),.q(q));
endmodule



