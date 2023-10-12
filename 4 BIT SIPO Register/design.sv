module sipo_register (
  input wire serial_in, // Serial input
  input wire clock, // Clock input
  input wire shift, // Shift control input
  output reg [3:0] parallel_out // 4-bit parallel output
);

  reg [3:0] shift_reg;

  always @(posedge clock) begin
    if (shift) begin
      shift_reg <= {shift_reg[2:0], serial_in};
    end
  end

  assign parallel_out = shift_reg;

endmodule
