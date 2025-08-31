`timescale 1ns/1ps
`include "dff_using_tff.v"
module dff_using_tff_tb;
  reg clk, res, d;
  wire q;

  dff_using_tff dut (.res(res), .clk(clk), .d(d), .q(q));

  always #5 clk = ~clk;  // 10ns clock

  initial begin
    $monitor("T=%0t clk=%b res=%b d=%b q=%b", $time, clk, res, d, q);

    clk = 0; res = 1; d = 0;
    #10 res = 0;

    #10 d = 1;
    #10 d = 0;
    #10 d = 1;
    #10 d = 1;
    #10 d = 0;
    #10 d = 1;

    #20 $finish;
  end
endmodule

