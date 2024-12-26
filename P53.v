module P53 (
    input clk,
    input areset,  //异步、高有效、复位值为0
    input load,
    input ena,
    input [3:0] data,
    output reg [3:0] q
);
  //Write your code here
  always @(posedge clk or posedge areset) begin

    if (areset) begin
      q <= 4'b0;
    end else begin
      if (load) begin
        q <= data;
      end else if (ena) begin
        q <= {1'b0, q[3:1]};
      end
    end

  end
endmodule
