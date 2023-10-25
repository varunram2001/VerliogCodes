module four_bit_comparator (
  input [3:0] A, // 4-bit input A
  input [3:0] B, // 4-bit input B
  output reg EQ, // Equality output
  output reg GT, // Greater than output
  output reg LT // Less than output
);

  always @(*) begin
    if (A == B) begin
      EQ = 1;
      GT = 0;
      LT = 0;
    end else if (A > B) begin
      EQ = 0;
      GT = 1;
      LT = 0;
    end else begin
      EQ = 0;
      GT = 0;
      LT = 1;
    end
  end

endmodule
