module gray_to_binary_converter (
  input [3:0] gray_input,
  output reg [3:0] binary_output
);

  always @(*) begin
    binary_output[3] = gray_input[3];
    binary_output[2] = binary_output[3] ^ gray_input[2];
    binary_output[1] = binary_output[2] ^ gray_input[1];
    binary_output[0] = binary_output[1] ^ gray_input[0];
  end

endmodule
