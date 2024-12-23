module P46 (
    input clk,
    input in,
    output reg out
);

  reg in_prev;

  always @(posedge clk) begin
    out = (in & !in_prev);
    in_prev = in;
  end

endmodule
