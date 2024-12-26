module P54 (
    input clk,
    input enable,
    input S,
    input A,
    input B,
    input C,
    output reg Z
);
  // Write your code here
  wire [2:0] addr = {A, B, C};
  reg [7:0] q;

  always @(posedge clk) begin

    if (enable) q <= {q[6:0], S};
    else q <= q;

    Z = q[addr];

  end
endmodule
