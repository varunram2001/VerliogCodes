module tb_four_bit_comparator;

  reg [3:0] A;
  reg [3:0] B;
  wire EQ, GT, LT;

  four_bit_comparator uut (
    .A(A),
    .B(B),
    .EQ(EQ),
    .GT(GT),
    .LT(LT)
  );

  initial begin
    // Open VCD file for waveform dumping
    $dumpfile("waveform.vcd");
    $dumpvars(0, tb_four_bit_comparator); // Dump all variables
    
    // Initialize inputs
    A = 4'b0000;
    B = 4'b0000;
    
    // Apply inputs and check outputs
    #5 A = 4'b0101; B = 4'b0101; // EQ
    #5 A = 4'b0101; B = 4'b0010; // GT
    #5 A = 4'b0010; B = 4'b0101; // LT
    
    // Finish simulation
    $finish;
  end

endmodule
