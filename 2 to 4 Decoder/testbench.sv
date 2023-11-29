module tb_decoder_2to4;

  reg [1:0] input_bits;
  wire [3:0] output_bits;

  decoder_2to4 uut (
    .input_bits(input_bits),
    .output_bits(output_bits)
  );

  initial begin
    // Open VCD file for waveform dumping
    $dumpfile("waveform.vcd");
    $dumpvars(0, tb_decoder_2to4); // Dump all variables
    
    // Initialize inputs
    input_bits = 2'b00;
    
    // Apply inputs and check outputs
    #5 input_bits = 2'b01; // New input
    #5 input_bits = 2'b10; // New input
    #5 input_bits = 2'b11; // New input
    
    // Finish simulation
    $finish;
  end

endmodule
