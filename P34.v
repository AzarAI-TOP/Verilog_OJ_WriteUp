module P34 (
    input [7:0] in,
    output reg [2:0] pos
);

  always @(*) begin

    casez (in[3:0])
      4'bzzz1: pos = 0;  // in[3:1] can be anything
      4'bzz1z: pos = 1;
      4'bz1zz: pos = 2;
      4'b1zzz: pos = 3;
      default: pos = 0;
    endcase

  end
endmodule
