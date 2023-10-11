module siso_register (
  input wire serial_in, // Serial input
  input wire clock, // Clock input
  input wire shift, // Shift control input
  output reg serial_out // Serial output
);

  reg [3:0] shift_reg;

  always @(posedge clock) begin
    if (shift) begin
      shift_reg <= {shift_reg[2:0], serial_in};
    end
  end

  always @(posedge clock) begin
    serial_out <= shift_reg[3];
  end

endmodule
