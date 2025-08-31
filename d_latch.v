//d-latch 
module d_latch(en,d,q);
 input en,d;
 output reg q;
 always @(*) begin
  if (en==0) q<=q;
   else q<=d;
  end
endmodule





