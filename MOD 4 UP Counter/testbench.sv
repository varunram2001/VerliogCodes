module testbench;

  reg clk;
  reg reset;
  wire [1:0] count;

  mod4_up_counter uut (
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
    #10 clk = 1; #5 clk = 0; // Increment counter (0 -> 1)
    #10 clk = 1; #5 clk = 0; // Increment counter (1 -> 2)
    #10 clk = 1; #5 clk = 0; // Increment counter (2 -> 3)
    #10 clk = 1; #5 clk = 0; // Increment counter (3 -> 0)
    
    // Finish simulation
    $finish;
  end

endmodule
