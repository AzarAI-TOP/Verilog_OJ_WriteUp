module my_dff8 (
    input clk,
    input [7:0] d,
    output reg [7:0] q
);
  always @(posedge clk) q <= d;
endmodule


module P23 (
    input clk,
    input [7:0] d,
    input [1:0] sel,
    output reg [7:0] q
);

  // Write your code here
  wire [7:0] out1, out2, out3;

  my_dff8 dff1 (
      .clk(clk),
      .d  (d),
      .q  (out1)
  );
  my_dff8 dff2 (
      .clk(clk),
      .d  (out1),
      .q  (out2)
  );
  my_dff8 dff3 (
      .clk(clk),
      .d  (out2),
      .q  (out3)
  );

  // 根据选择信号赋值给q
  always @(*) begin
    case (sel)
      2'b00:   q = d;
      2'b01:   q = out1;
      2'b10:   q = out2;
      2'b11:   q = out3;
      default: ;
    endcase
  end
endmodule
