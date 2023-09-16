module testbench;

  reg A;
  reg B;
  wire SUM;
  wire CARRY;

  half_adder uut (
    .A(A),
    .B(B),
    .SUM(SUM),
    .CARRY(CARRY)
  );

  initial begin
    // Open VCD file for waveform dumping
    $dumpfile("waveform.vcd");
    $dumpvars(0, testbench); // Dump all variables
    
    // Initialize inputs
    A = 1'b0;
    B = 1'b0;
    
    // Apply inputs and check outputs
    #5 A = 1'b0; B = 1'b1;
    #5 A = 1'b1; B = 1'b0;
    #5 A = 1'b1; B = 1'b1;
    
    // Finish simulation
    $finish;
  end

endmodule
