module mealy_state_machine (
  input wire clk, // Clock input
  input wire reset, // Reset input
  input wire in, // Input signal
  output reg state, // State output
  output reg out // Mealy output
);

  reg next_state;

  always @(posedge clk or posedge reset) begin
    if (reset) begin
      state <= 1'b0;
      out <= 1'b0;
    end else begin
      state <= next_state;
      out <= (state & in);
    end
  end

  always @(*) begin
    case (state)
      1'b0: next_state = in;
      1'b1: next_state = ~in;
      default: next_state = 1'b0;
    endcase
  end

endmodule
