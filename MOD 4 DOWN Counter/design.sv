module mod4_down_counter (
  input wire clk, // Clock input
  input wire reset, // Reset input
  output reg [1:0] count // 2-bit counter output
);

  always @(posedge clk or posedge reset) begin
    if (reset) begin
      count <= 2'b11;
    end else begin
      count <= count - 1;
    end
  end

endmodule
