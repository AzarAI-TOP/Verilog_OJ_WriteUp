module P44 (
    input clk,
    input in,
    output reg out
);

  always @(posedge clk) begin

    out <= in ^ out;

  end

endmodule
