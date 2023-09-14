module testbench;

  reg D;
  reg [2:0] S;
  wire [7:0] Y;

  demux_1to8 uut (
    .D(D),
    .S(S),
    .Y(Y)
  );

  initial begin
    // Open VCD file for waveform dumping
    $dumpfile("waveform.vcd");
    $dumpvars(0, testbench); // Dump all variables
    
    // Initialize inputs
    D = 1'b0;
    S = 3'b000;
    
    // Apply inputs and check outputs
    #5 D = 1'b1; S = 3'b001;
    #5 D = 1'b0; S = 3'b010;
    #5 D = 1'b1; S = 3'b100;
    #5 D = 1'b0; S = 3'b111;
    
    // Finish simulation
    $finish;
  end

endmodule
