module tb_decoder_4to16;

  reg [3:0] input_bits;
  wire [15:0] output_bits;

  decoder_4to16 uut (
    .input_bits(input_bits),
    .output_bits(output_bits)
  );

  initial begin
    // Open VCD file for waveform dumping
    $dumpfile("waveform.vcd");
    $dumpvars(0, tb_decoder_4to16); // Dump all variables
    
    // Initialize inputs
    input_bits = 4'b0000;
    
    // Apply inputs and check outputs
    #5 input_bits = 4'b0110; // New input
    #5 input_bits = 4'b1011; // New input
    #5 input_bits = 4'b1101; // New input
    
    // Finish simulation
    $finish;
  end

endmodule
