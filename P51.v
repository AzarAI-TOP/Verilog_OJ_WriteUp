module P51 (
    input clk,
    input reset,
    input en,
    output reg [3:0] q
);

  parameter [3:0] MIN = 4'd5, MAX = 4'd15;

  always @(posedge clk) begin

    if (reset) begin
      q <= MIN;
    end else begin
      if (q == MIN) q <= MAX;
      else begin
        if (en) q <= q - 4'd1;
        else q <= q;
      end
    end
  end

endmodule
