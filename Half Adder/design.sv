module half_adder (
  input wire A, // Input A
  input wire B, // Input B
  output reg SUM, // Sum output
  output reg CARRY // Carry output
);

  always @(*) begin
    SUM = A ^ B;
    CARRY = A & B;
  end

endmodule
