module P55 (
    input  [2:0] addr,
    output [3:0] q
);

  reg [3:0] mem[7:0];

  initial begin

    mem[0] = 4'h0;
    mem[1] = 4'h1;
    mem[2] = 4'h2;
    mem[3] = 4'h3;
    mem[4] = 4'h4;
    mem[5] = 4'h5;
    mem[6] = 4'h6;
    mem[7] = 4'h7;

  end

  assign q = mem[addr];

endmodule
