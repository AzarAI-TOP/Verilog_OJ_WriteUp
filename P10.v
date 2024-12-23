module P10 (
    input wire [2:0] vec,
    output wire [2:0] outv,
    output wire o2,
    output wire o1,
    output wire o0
);
  // 请用户在下方编辑代码

  assign outv = vec;
  assign o0   = vec[0];
  assign o1   = vec[1];
  assign o2   = vec[2];

  // 用户编辑到此为止
endmodule
