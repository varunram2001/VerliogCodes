module tb_positive_edge_detector;

  reg clk;
  wire pos_edge_detected;

  positive_edge_detector uut (
    .clk(clk),
    .pos_edge_detected(pos_edge_detected)
  );

  initial begin
    // Open VCD file for waveform dumping
    $dumpfile("waveform.vcd");
    $dumpvars(0, tb_positive_edge_detector); // Dump all variables
    
    // Initialize inputs
    clk = 0;
    
    // Apply inputs and check outputs
    #5 clk = 1; // Positive edge
    #5 clk = 0; // No edge
    #5 clk = 1; // Positive edge
    #5 clk = 1; // No edge
    #5 clk = 0; // No edge
    #5 clk = 1; // Positive edge
    
    // Finish simulation
    $finish;
  end

endmodule
