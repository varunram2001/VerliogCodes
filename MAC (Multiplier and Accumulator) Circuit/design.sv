module mac_unit (
  input wire [3:0] operand_a, // 4-bit input A
  input wire [3:0] operand_b, // 4-bit input B
  input wire clock, // Clock input
  input wire reset, // Reset input
  output reg [7:0] result // 8-bit result
);

  reg [7:0] accumulator;

  always @(posedge clock or posedge reset) begin
    if (reset) begin
      accumulator <= 8'b0;
    end else begin
      accumulator <= accumulator + (operand_a * operand_b);
    end
  end

endmodule
