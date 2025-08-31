module mux21(i0,i1,s,y);
  input i0,i1,s;
  output y;
  assign y = (~s & i0) | (s & i1);
endmodule 

module dff_mux21(res,clk,d,q);
  input res, clk, d;
  output q;
  wire d_in, master_out, slave_out, clk_bar;

  assign clk_bar = ~clk;

  // Reset control
  mux21 m0 (.i0(d), .i1(1'b0), .s(res), .y(d_in));

  // Master latch
  mux21 m1 (.i0(master_out), .i1(d_in), .s(clk), .y(master_out));

  // Slave latch
  mux21 m2 (.i0(slave_out), .i1(master_out), .s(clk_bar), .y(slave_out));

  // Output
  assign q = slave_out;

endmodule

















 
