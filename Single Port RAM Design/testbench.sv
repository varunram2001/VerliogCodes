module tb_single_port_ram;

  reg [3:0] address;
  reg [7:0] data_in;
  reg write_enable;
  wire [7:0] data_out;

  single_port_ram uut (
    .address(address),
    .data_in(data_in),
    .write_enable(write_enable),
    .data_out(data_out)
  );

  initial begin
    // Open VCD file for waveform dumping
    $dumpfile("waveform.vcd");
    $dumpvars(0, tb_single_port_ram); // Dump all variables
    
    // Initialize inputs
    address = 4'b0000;
    data_in = 8'b00000000;
    write_enable = 0;
    
    // Apply inputs and check outputs
    #5 write_enable = 1; data_in = 8'b10101010; address = 4'b0010; // Write data
    #5 write_enable = 0; address = 4'b0010; // Read data
    
    // Finish simulation
    $finish;
  end

endmodule
