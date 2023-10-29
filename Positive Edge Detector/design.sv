module positive_edge_detector (
  input wire clk, // Clock input
  output reg pos_edge_detected // Positive edge detection output
);

  reg clk_delayed;

  always @(posedge clk) begin
    clk_delayed <= #1 ~clk_delayed; // Delayed version of the clock
    pos_edge_detected <= (clk_delayed == 1'b1) && (clk == 1'b0);
  end

endmodule
