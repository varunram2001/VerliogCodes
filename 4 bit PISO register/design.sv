module piso_register (
  input wire [3:0] parallel_in, // 4-bit parallel input
  input wire clock, // Clock input
  input wire shift, // Shift control input
  output reg serial_out // Serial output
);

  reg [3:0] shift_reg;

  always @(posedge clock) begin
    if (shift) begin
      shift_reg <= {shift_reg[2:0], parallel_in[0]};
    end
  end

  always @(posedge clock) begin
    if (shift) begin
      serial_out <= shift_reg[3];
    end
  end

endmodule
