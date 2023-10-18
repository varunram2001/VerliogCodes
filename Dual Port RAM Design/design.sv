module dual_port_ram (
  input wire [3:0] address_a, // 4-bit address for port A
  input wire [3:0] address_b, // 4-bit address for port B
  input wire [7:0] data_in_a, // 8-bit data input for port A
  input wire [7:0] data_in_b, // 8-bit data input for port B
  input wire write_enable_a, // Write enable control input for port A
  input wire write_enable_b, // Write enable control input for port B
  output reg [7:0] data_out_a, // 8-bit data output for port A
  output reg [7:0] data_out_b // 8-bit data output for port B
);

  reg [7:0] memory [0:15]; // 16x8 memory array

  always @(posedge write_enable_a) begin
    memory[address_a] <= data_in_a;
  end

  always @(posedge write_enable_b) begin
    memory[address_b] <= data_in_b;
  end

  always @(*) begin
    data_out_a = memory[address_a];
    data_out_b = memory[address_b];
  end

endmodule
