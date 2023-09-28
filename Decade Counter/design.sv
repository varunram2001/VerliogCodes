module decade_counter (
  input wire clk, // Clock input
  input wire reset, // Reset input
  output reg [3:0] count // 4-bit counter output
);

  always @(posedge clk or posedge reset) begin
    if (reset) begin
      count <= 4'b0000;
    end else begin
      if (count == 4'b1001) begin
        count <= 4'b0000;
      end else begin
        count <= count + 1;
      end
    end
  end

endmodule
