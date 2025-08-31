`include "d_latch.v"
module d_latch_tb;
  reg d,en;
  wire q;

  d_latch dut (.en(en),.d(d),.q(q));

  initial begin
  $monitor ("en=%b, d=%b, q=%b",en,d,q);
  repeat(50)begin
  {en,d}=$random;
  #10;
  end
  end
  endmodule

  
