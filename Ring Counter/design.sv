module ring_counter (
  input wire clk, // Clock input
  input wire reset, // Reset input
  output reg [3:0] count // 4-bit counter output
);

  always @(posedge clk or posedge reset) begin
    if (reset) begin
      count <= 4'b0001;
    end else begin
      count <= {count[2:0], count[3]};
    end
  end

endmodule
