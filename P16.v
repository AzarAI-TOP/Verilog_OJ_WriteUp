module P16 (
    input  wire [7:0] in,  // 8-bit 输入信号
    output wire [7:0] out  // 8-bit 按位翻转后的输出信号
);

  // 使用单目操作符简化翻转
  assign out = {in[0], in[1], in[2], in[3], in[4], in[5], in[6], in[7]};

endmodule
