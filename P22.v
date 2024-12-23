module my_dff (
    input clk,
    input d,
    output reg q
);
  always @(posedge clk) q <= d;
endmodule

module P22 (
    input  clk,
    input  d,
    output q
);
  // Write your code here
  wire out1, out2;

  my_dff dff1 (
      .clk(clk),
      .d  (d),
      .q  (out1)
  );
  my_dff dff2 (
      .clk(clk),
      .d  (out1),
      .q  (out2)
  );
  my_dff dff3 (
      .clk(clk),
      .d  (out2),
      .q  (q)
  );
endmodule
