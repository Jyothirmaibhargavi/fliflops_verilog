module sr_ff (res,clk,s,r,q);
input res,clk,s,r;
output reg q;

always @(posedge clk or posedge res) begin
if(res==1) q<=1'b0;
else begin
case({s,r})
2'b00: q<=q;
2'b01: q<=0;
2'b10: q<=1;
2'b11: q<=1'bx;
endcase
end
end
endmodule

module dff_using_sr (clk,res,d,q);
input clk,res,d;
output  q;

assign s=d;
assign r=~d;

sr_ff ff1 (.res(res),.clk(clk),.s(s),.r(r),.q(q));
endmodule



