
module full_adder (
  input wire A, // Input A
  input wire B, // Input B
  input wire Cin, // Carry in
  output reg SUM, // Sum output
  output reg Cout // Carry out
);

  always @(*) begin
    SUM = A ^ B ^ Cin;
    Cout = (A & B) | (B & Cin) | (A & Cin);
  end

endmodule
