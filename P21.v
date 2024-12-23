module P21 (
    input  a,
    input  b,
    input  c,
    input  d,
    output out1,
    output out2
);
  // 请用户在下方编辑代码
  mod_a ma (
      .out1(out1),
      .out2(out2),
      .in1 (a),
      .in2 (b),
      .in3 (c),
      .in4 (d)
  );
  // 用户编辑到此为止
endmodule

module mod_a (
    output out1,
    out2,
    input  in1,
    in2,
    in3,
    in4
);
  assign out1 = in1 & in2 & in3 & in4;  //这只是一个简单的示例
  assign out2 = in1 | in2 | in3 | in4;  //这只是一个简单的示例
endmodule
