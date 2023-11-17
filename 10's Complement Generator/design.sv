module tens_complement_generator (
  input wire [3:0] input_number, // 4-bit input number
  output reg [3:0] tens_complement // 4-bit 10's complement output
);

  always @(*) begin
    tens_complement = 4'b1010 - input_number;
  end

endmodule
