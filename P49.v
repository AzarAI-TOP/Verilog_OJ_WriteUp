module P49 (
    input            clk,
    input            reset,  // 异步复位，高电平有效，复位值为0
    output reg [3:0] q
);

  always @(posedge clk or posedge reset) begin

    if (reset) begin
      q <= 4'd0;
    end else begin
      q <= q + 4'd1;
    end

  end

endmodule
