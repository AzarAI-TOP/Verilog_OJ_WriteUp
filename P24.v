module add16 (
    input [15:0] a,
    input [15:0] b,
    input cin,
    output [15:0] sum,
    output cout
);
  assign {cout, sum} = a + b + cin;
endmodule

module P24 (
    input  [31:0] a,
    input  [31:0] b,
    output [31:0] sum
);

  wire carry;
  wire [15:0] sum1, sum2;

  assign sum = {sum2, sum1};

  add16 addr1 (
      .a(a[15:0]),
      .b(b[15:0]),
      .cin(1'b0),
      .sum(sum1),
      .cout(carry)
  );

  add16 addr2 (
      .a(a[31:16]),
      .b(b[31:16]),
      .cin(carry),
      .sum(sum2),
      .cout()
  );

endmodule
