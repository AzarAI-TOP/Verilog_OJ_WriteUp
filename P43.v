module P43 (
    input clk,
    input resetn,
    input [1:0] byteena,
    input [15:0] d,
    output reg [15:0] q

);
  // Write your code here

  always @(posedge clk) begin

    if (!resetn) begin
      q <= 16'b0;
    end else begin

      // First Byte
      if (byteena[0]) q[7:0] <= d[7:0];

      // Second Byte
      if (byteena[1]) q[15:8] <= d[15:8];

    end

  end

endmodule
