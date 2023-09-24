module moore_state_machine (
  input wire clk, // Clock input
  input wire reset, // Reset input
  output reg [1:0] state, // 2-bit state output
  output reg output // Moore output
);

  reg [1:0] next_state;

  always @(posedge clk or posedge reset) begin
    if (reset) begin
      state <= 2'b00;
      output <= 1'b0;
    end else begin
      state <= next_state;
      output <= (state == 2'b11) ? 1'b1 : 1'b0;
    end
  end

  always @(*) begin
    case (state)
      2'b00: next_state = 2'b01;
      2'b01: next_state = 2'b10;
      2'b10: next_state = 2'b11;
      2'b11: next_state = 2'b00;
      default: next_state = 2'b00;
    endcase
  end

endmodule
