
module t_ff (res,clk,t,q);
  input res,clk,t;
  output reg q;

  always @(posedge clk) begin
    if (res==1) 
      q <= 1'b0;
    else begin
      if (t==1'b1) 
        q <= ~q;
      else 
        q <= q;   // hold
    end
  end
endmodule


module sr_using_t (res,clk,s,r,q);
  input res,clk,s,r;
  output wire q;
  wire t;   // declare wire for T input

  
  assign t = q ^ (s | (~r & q));

  t_ff ff1 (.res(res), .clk(clk), .t(t), .q(q));
endmodule

