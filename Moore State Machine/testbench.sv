module testbench;

  reg clk;
  reg reset;
  wire [1:0] state;
  wire output;

  moore_state_machine uut (
    .clk(clk),
    .reset(reset),
    .state(state),
    .output(output)
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
    #10 clk = 1; #5 clk = 0; // Transition from 00 to 01
    #10 clk = 1; #5 clk = 0; // Transition from 01 to 10
    #10 clk = 1; #5 clk = 0; // Transition from 10 to 11
    #10 clk = 1; #5 clk = 0; // Transition from 11 to 00
    
    // Finish simulation
    $finish;
  end

endmodule
