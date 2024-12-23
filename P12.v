module P12 (
    input  wire [31:0] in,  // 32-bit 输入向量
    output wire [31:0] out  // 32-bit 输出向量，字节顺序颠倒
);

  // 定义内部信号，用于存储部分选择的结果
  wire [7:0] byte0, byte1, byte2, byte3;

  // 部分选择操作，将输入向量分为4个字节
  assign byte0 = in[31:24];
  assign byte1 = in[23:16];
  assign byte2 = in[15:8];
  assign byte3 = in[7:0];

  // 重新组合字节，以颠倒顺序
  assign out   = {byte3, byte2, byte1, byte0};

endmodule
