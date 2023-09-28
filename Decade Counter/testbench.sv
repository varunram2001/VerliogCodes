module testbench;

  reg clk;
  reg reset;
  wire [3:0] count;

  decade_counter uut (
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
    #10 clk = 1; #5 clk = 0; // Increment counter (3 -> 4)
    #10 clk = 1; #5 clk = 0; // Increment counter (4 -> 5)
    #10 clk = 1; #5 clk = 0; // Increment counter (5 -> 6)
    #10 clk = 1; #5 clk = 0; // Increment counter (6 -> 7)
    #10 clk = 1; #5 clk = 0; // Increment counter (7 -> 8)
    #10 clk = 1; #5 clk = 0; // Increment counter (8 -> 9)
    #10 clk = 1; #5 clk = 0; // Increment counter (9 -> 0)
    
    // Finish simulation
    $finish;
  end

endmodule
