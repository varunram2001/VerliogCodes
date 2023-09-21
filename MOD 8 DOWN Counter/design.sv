module mod8_down_counter (
  input wire clk, // Clock input
  input wire reset, // Reset input
  output reg [2:0] count // 3-bit counter output
);

  always @(posedge clk or posedge reset) begin
    if (reset) begin
      count <= 3'b111;
    end else begin
      if (count == 3'b000) begin
        count <= 3'b111;
      end else begin
        count <= count - 1;
      end
    end
  end

endmodule
