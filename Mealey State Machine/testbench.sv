module testbench;

  reg clk;
  reg reset;
  reg in;
  wire state;
  wire out;

  mealy_state_machine uut (
    .clk(clk),
    .reset(reset),
    .in(in),
    .state(state),
    .out(out)
  );

  initial begin
    // Open VCD file for waveform dumping
    $dumpfile("waveform.vcd");
    $dumpvars(0, testbench); // Dump all variables
    
    // Initialize inputs
    clk = 0;
    reset = 0;
    in = 0;
    
    // Apply inputs and check outputs
    #5 reset = 1;
    #5 reset = 0;
    #10 clk = 1; #5 clk = 0; in = 1; // Transition from 0 to 1 (state 0)
    #10 clk = 1; #5 clk = 0; in = 0; // Transition from 1 to 0 (state 1)
    #10 clk = 1; #5 clk = 0; in = 1; // Transition from 0 to 1 (state 0)
    #10 clk = 1; #5 clk = 0; in = 0; // Transition from 1 to 0 (state 1)
    
    // Finish simulation
    $finish;
  end

endmodule
