
module testbench;

  reg [3:0] A;
  reg [3:0] B;
  wire [7:0] P;

  braun_array_multiplier uut (
    .A(A),
    .B(B),
    .P(P)
  );

  initial begin
    // Open VCD file for waveform dumping
    $dumpfile("waveform.vcd");
    $dumpvars(0, testbench); // Dump all variables
    
    // Initialize inputs
    A = 4'b0010;
    B = 4'b0101;
    
    // Apply inputs
    #10 A = 4'b0110;
    #10 B = 4'b1010;
    
    // Finish simulation
    $finish;
  end

endmodule
