module negative_edge_detector (
  input wire clk, // Clock input
  output reg neg_edge_detected // Negative edge detection output
);

  reg clk_delayed;

  always @(posedge clk) begin
    clk_delayed <= #1 ~clk_delayed; // Delayed version of the clock
    neg_edge_detected <= (clk_delayed == 1'b0) && (clk == 1'b1);
  end

endmodule
