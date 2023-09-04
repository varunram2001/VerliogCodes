module binary_to_one_hot (
  input [3:0] binary_input,
  output [15:0] one_hot_output
);

  always @(*) begin
    case (binary_input)
      4'b0001: one_hot_output = 16'b0000000000000001;
      4'b0010: one_hot_output = 16'b0000000000000010;
      4'b0100: one_hot_output = 16'b0000000000000100;
      4'b1000: one_hot_output = 16'b0000000000001000;
      default: one_hot_output = 16'b0000000000000000; // Default to all zeros for invalid input.
    endcase
  end

endmodule

