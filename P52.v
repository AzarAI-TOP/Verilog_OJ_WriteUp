module P52 (
    input        clk,    // 4Hz 时钟输入
    input        reset,  // 同步复位，高电平有效
    output [7:0] ss      // BCD 输出，高 4 位是十位，低 4 位是个位
);

  // 时钟分频部分：生成 1Hz 秒信号
  reg [1:0] cnt;  // 2 位计数器
  reg    signal_second;  // 1Hz 秒信号

  always @(posedge clk) begin
    if (reset) begin
      cnt <= 2'd0;
      signal_second <= 1'b0;
    end else if (cnt == 2'd3) begin
      cnt <= 2'd0;
      signal_second <= 1'b1;  // 每隔 4 个 clk 产生一个高电平脉冲
    end else begin
      cnt <= cnt + 2'd1;
      signal_second <= 1'b0;
    end
  end

  // BCD 计数器部分
  reg [3:0] digit_1;  // 个位数
  reg [3:0] digit_2;  // 十位数

  assign ss = {digit_2, digit_1};  // 拼接为 8bit 输出

  always @(posedge clk) begin
    if (reset) begin
      digit_1 <= 4'd0;
      digit_2 <= 4'd0;
    end else if (signal_second) begin
      if (digit_1 == 4'd9) begin
        digit_1 <= 4'd0;

        // 十位数
        if (digit_2 == 4'd5) begin
          digit_2 <= 4'd0;  // 计数范围 00~59，十位清零
        end else begin
          digit_2 <= digit_2 + 4'd1;  // 十位加 1
        end
      end else begin
        digit_1 <= digit_1 + 4'd1;  // 个位加 1
      end
    end
  end

endmodule
