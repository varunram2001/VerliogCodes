module tb_nines_complement_generator;

  reg [3:0] input_number;
  wire [3:0] nines_complement;

  nines_complement_generator uut (
    .input_number(input_number),
    .nines_complement(nines_complement)
  );

  initial begin
    // Open VCD file for waveform dumping
    $dumpfile("waveform.vcd");
    $dumpvars(0, tb_nines_complement_generator); // Dump all variables
    
    // Initialize inputs
    input_number = 4'b0000;
    
    // Apply inputs and check outputs
    #5 input_number = 4'b1010; // New input
    #5 input_number = 4'b0110; // New input
    #5 input_number = 4'b1101; // New input
    
    // Finish simulation
    $finish;
  end

endmodule
