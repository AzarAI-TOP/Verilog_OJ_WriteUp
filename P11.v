`default_nettype none  // Disable implicit nets. Reduces some types of bugs.
module P11 (
    input  wire [15:0] in,
    output wire [ 7:0] out_hi,
    output wire [ 7:0] out_lo
);
  // Write your code here
  assign out_hi = in[15:8];
  assign out_lo = in[7:0];

endmodule
