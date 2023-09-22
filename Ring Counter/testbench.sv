module testbench;

  reg clk;
  reg reset;
  wire [3:0] count;

  ring_counter uut (
    .clk(clk),
    .reset(reset),
    .count(count)
  );

  initial begin
    // Open VCD file for waveform dumping
    $dumpfile("waveform.vcd");
    $dumpvars(0, testbench); // Dump all variables
    
    // Initialize inputs
    clk = 0;
    reset = 0;
    
    // Apply inputs and check outputs
    #5 reset = 1;
    #5 reset = 0;
    #10 clk = 1; #5 clk = 0; // Shift counter (0001 -> 0010)
    #10 clk = 1; #5 clk = 0; // Shift counter (0010 -> 0100)
    #10 clk = 1; #5 clk = 0; // Shift counter (0100 -> 1000)
    #10 clk = 1; #5 clk = 0; // Shift counter (1000 -> 0001)
    
    // Finish simulation
    $finish;
  end

endmodule
