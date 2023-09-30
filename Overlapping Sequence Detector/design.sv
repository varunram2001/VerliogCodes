module overlapping_sequence_detector (
  input wire clk, // Clock input
  input wire reset, // Reset input
  input wire [3:0] data_in, // 4-bit input data
  output reg detected // Detection output
);

  reg [3:0] shift_reg;

  always @(posedge clk or posedge reset) begin
    if (reset) begin
      shift_reg <= 4'b0000;
      detected <= 1'b0;
    end else begin
      shift_reg <= {shift_reg[2:0], data_in};
      if (shift_reg == 4'b1011) begin
        detected <= 1'b1;
      end else begin
        detected <= 1'b0;
      end
    end
  end

endmodule
