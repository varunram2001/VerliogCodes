module pipo_register_8bit (
  input wire [7:0] data_in, // 8-bit input data
  input wire clock, // Clock input
  input wire load, // Load control input
  output reg [7:0] data_out // 8-bit output data
);

  always @(posedge clock) begin
    if (load) begin
      data_out <= data_in;
    end
  end

endmodule
