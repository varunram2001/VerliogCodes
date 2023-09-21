module testbench;

  reg clk;
  reg reset;
  wire [2:0] count;

  mod8_down_counter uut (
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
    #10 clk = 1; #5 clk = 0; // Decrement counter (7 -> 6)
    #10 clk = 1; #5 clk = 0; // Decrement counter (6 -> 5)
    #10 clk = 1; #5 clk = 0; // Decrement counter (5 -> 4)
    #10 clk = 1; #5 clk = 0; // Decrement counter (4 -> 3)
    #10 clk = 1; #5 clk = 0; // Decrement counter (3 -> 2)
    #10 clk = 1; #5 clk = 0; // Decrement counter (2 -> 1)
    #10 clk = 1; #5 clk = 0; // Decrement counter (1 -> 0)
    #10 clk = 1; #5 clk = 0; // Decrement counter (0 -> 7)
    
    // Finish simulation
    $finish;
  end

endmodule
