module testbench;

  reg T;
  reg clk;
  wire Q;

  t_flip_flop uut (
    .T(T),
    .clk(clk),
    .Q(Q)
  );

  initial begin
    $display("Testing T Flip-Flop");
    $dumpfile("dump.vcd");
    $dumpvars(1);
    
    // Initialize inputs
    T = 0;
    clk = 0;
    
    // Apply inputs and check outputs
    #5 T = 1;
    #5 clk = 1;
    #5 clk = 0;
    #5 clk = 1;
    #5 clk = 0;
    #5 T = 0;
    #5 clk = 1;
    #5 clk = 0;
    
    // Finish simulation
    $finish;
  end

endmodule
