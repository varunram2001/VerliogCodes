module nines_complement_generator (
  input wire [3:0] input_number, // 4-bit input number
  output reg [3:0] nines_complement // 4-bit 9's complement output
);

  always @(*) begin
    nines_complement = 4'b1001 - input_number;
  end

endmodule
