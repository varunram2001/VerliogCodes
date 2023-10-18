module tb_dual_port_ram;

  reg [3:0] address_a;
  reg [3:0] address_b;
  reg [7:0] data_in_a;
  reg [7:0] data_in_b;
  reg write_enable_a;
  reg write_enable_b;
  wire [7:0] data_out_a;
  wire [7:0] data_out_b;

  dual_port_ram uut (
    .address_a(address_a),
    .address_b(address_b),
    .data_in_a(data_in_a),
    .data_in_b(data_in_b),
    .write_enable_a(write_enable_a),
    .write_enable_b(write_enable_b),
    .data_out_a(data_out_a),
    .data_out_b(data_out_b)
  );

  initial begin
    // Open VCD file for waveform dumping
    $dumpfile("waveform.vcd");
    $dumpvars(0, tb_dual_port_ram); // Dump all variables
    
    // Initialize inputs
    address_a = 4'b0000;
    address_b = 4'b0001;
    data_in_a = 8'b00000000;
    data_in_b = 8'b11111111;
    write_enable_a = 0;
    write_enable_b = 0;
    
    // Apply inputs and check outputs
    #5 write_enable_a = 1; data_in_a = 8'b10101010; address_a = 4'b0010; // Write data to port A
    #5 write_enable_b = 1; data_in_b = 8'b01010101; address_b = 4'b0011; // Write data to port B
    #5 write_enable_a = 0; address_a = 4'b0010; // Read data from port A
    #5 write_enable_b = 0; address_b = 4'b0011; // Read data from port B
    
    // Finish simulation
    $finish;
  end

endmodule
