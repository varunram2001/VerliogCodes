module pipo_register (
  input wire [3:0] data_in, // 4-bit input data
  input wire clock, // Clock input
  input wire load, // Load control input
  output reg [3:0] data_out // 4-bit output data
);

  always @(posedge clock) begin
    if (load) begin
      data_out <= data_in;
    end
  end

endmodule
