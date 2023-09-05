module t_flip_flop (
  input wire T, // T input
  input wire clk, // Clock input
  output wire Q // Output
);

  reg Q_next; // Next state of the Q output

  always @(posedge clk) begin
    if (T)
      Q_next <= ~Q_next; // Toggle Q if T is high
  end

  assign Q = Q_next;

endmodule
