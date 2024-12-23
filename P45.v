module DFF (
    input  clk,
    input  d,
    output q,
    output q_n
);

  reg data;

  assign q   = data;
  assign q_n = ~data;

  always @(posedge clk) begin

    data <= d;

  end

endmodule

module P45 (
    input  clk,
    input  x,
    output z
);

  wire q1, q2, q3;
  wire q2_n, q3_n;

  assign z = ~(q1 | q2 | q3);

  DFF d1 (
      .clk(clk),
      .d  (x ^ q1),
      .q  (q1),
      .q_n()
  );
  DFF d2 (
      .clk(clk),
      .d  (x & q2_n),
      .q  (q2),
      .q_n(q2_n)
  );
  DFF d3 (
      .clk(clk),
      .d  (x | q3_n),
      .q  (q3),
      .q_n(q3_n)
  );

endmodule
