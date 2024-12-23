module P9 (
    input  a,
    input  b,
    input  c,
    input  d,
    output out,
    output out_n
);
  // 请用户在下方编辑代码
  wire and1 = a & b;
  wire and2 = c & d;
  wire or1 = and1 | and2;

  assign out   = or1;
  assign out_n = ~or1;

  //用户编辑到此为止
endmodule
