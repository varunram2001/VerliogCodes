module tb_negative_edge_detector;

  reg clk;
  wire neg_edge_detected;

  negative_edge_detector uut (
    .clk(clk),
    .neg_edge_detected(neg_edge_detected)
  );

  initial begin
    // Open VCD file for waveform dumping
    $dumpfile("waveform.vcd");
    $dumpvars(0, tb_negative_edge_detector); // Dump all variables
    
    // Initialize inputs
    clk = 0;
    
    // Apply inputs and check outputs
    #5 clk = 1; // No edge
    #5 clk = 0; // Negative edge
    #5 clk = 1; // No edge
    #5 clk = 1; // No edge
    #5 clk = 0; // No edge
    #5 clk = 0; // Negative edge
    
    // Finish simulation
    $finish;
  end

endmodule
