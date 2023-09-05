module testbench;

  reg D;
  reg clk;
  wire Q;

  d_flip_flop uut (
    .D(D),
    .clk(clk),
    .Q(Q)
  );

  initial begin
    // Open VCD file for waveform dumping
    $dumpfile("waveform.vcd");
    $dumpvars(0, testbench); // Dump all variables
    
    // Initialize inputs
    D = 0;
    clk = 0;
    
    // Apply inputs and check outputs
    #5 D = 1;
    #5 clk = 1;
    #5 clk = 0;
    #5 D = 0;
    #5 clk = 1;
    #5 clk = 0;
    
    // Finish simulation
    $finish;
  end

endmodule
