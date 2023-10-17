module single_port_ram (
  input wire [3:0] address, // 4-bit address
  input wire [7:0] data_in, // 8-bit data input
  input wire write_enable, // Write enable control input
  output reg [7:0] data_out // 8-bit data output
);

  reg [7:0] memory [0:15]; // 16x8 memory array

  always @(posedge write_enable) begin
    memory[address] <= data_in;
  end

  always @(*) begin
    data_out = memory[address];
  end

endmodule
