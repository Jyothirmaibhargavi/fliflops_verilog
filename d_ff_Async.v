// d-ff asynchronus reset

module d_ff_Async(clk,res,d,q);
 input clk,res,d;
 output reg q;
 always @(posedge clk or posedge res) begin
   if (res==1) q<=0;
   else q<=d;
   end
 endmodule

 
