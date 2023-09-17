module testbench;

  reg A;
  reg B;
  reg Cin;
  wire SUM;
  wire Cout;

  full_adder uut (
    .A(A),
    .B(B),
    .Cin(Cin),
    .SUM(SUM),
    .Cout(Cout)
  );

  initial begin
    // Open VCD file for waveform dumping
    $dumpfile("waveform.vcd");
    $dumpvars(0, testbench); // Dump all variables
    
    // Initialize inputs
    A = 1'b0;
    B = 1'b0;
    Cin = 1'b0;
    
    // Apply inputs and check outputs
    #5 A = 1'b0; B = 1'b1; Cin = 1'b0;
    #5 A = 1'b1; B = 1'b0; Cin = 1'b0;
    #5 A = 1'b1; B = 1'b1; Cin = 1'b0;
    #5 A = 1'b0; B = 1'b0; Cin = 1'b1;
    #5 A = 1'b0; B = 1'b1; Cin = 1'b1;
    #5 A = 1'b1; B = 1'b0; Cin = 1'b1;
    #5 A = 1'b1; B = 1'b1; Cin = 1'b1;
    
    // Finish simulation
    $finish;
  end

endmodule
