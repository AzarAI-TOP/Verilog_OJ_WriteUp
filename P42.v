module P42 (
    input            clk,
    input            areset,
    input      [7:0] d,
    output reg [7:0] q
);
  // 请用户在下方编辑代码
  always @(posedge clk or posedge areset) begin

    if (areset) q <= 8'b0;
    else q <= d;

  end

  //用户编辑到此为止
endmodule
