module P41 (
    input            clk,
    input            reset,
    input      [7:0] d,
    output reg [7:0] q
);
  // 请用户在下方编辑代码
  always @(negedge clk) begin

    if (reset) q <= 8'h34;
    else q <= d;

  end

  //用户编辑到此为止
endmodule
