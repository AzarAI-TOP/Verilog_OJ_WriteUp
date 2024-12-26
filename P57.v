module P57 (
    input  clk,
    input  areset,  // Asynchronous reset to state B
    input  in,
    output out
);

  parameter A = 0, B = 1;

  reg state, next_state;

  always @(*) begin  //有限状态机第一段
    // State transition logic
    case (state)
      A: next_state = (in) ? A : B;
      B: next_state = (in) ? B : A;
      default: ;
    endcase
  end
  always @(posedge clk, posedge areset) begin  //有限状态机第二段
    // State flip-flops with asynchronous reset

    if (areset) state <= B;
    else state <= next_state;

  end
  //有限状态机第三段，信号输出逻辑
  assign out = (state == B);
endmodule
