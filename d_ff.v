// d flip flop synchronous reset  

module d_ff(clk,res,d,q);
 input clk,res,d;
 output reg q;
 always @(posedge clk) begin
   if (res==1) q<=0;
   else q<=d;
   end
 endmodule

 
