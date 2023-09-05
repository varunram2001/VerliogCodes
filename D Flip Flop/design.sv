module d_flip_flop (
  input wire D, // Data input
  input wire clk, // Clock input
  output wire Q // Output
);

  reg Q_next; // Next state of the Q output

  always @(posedge clk) begin
    Q_next <= D; // Update Q with D on the rising edge of the clock
  end

  assign Q = Q_next;

endmodule
