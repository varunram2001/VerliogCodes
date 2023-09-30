module tb_overlapping_sequence_detector;

  reg clk;
  reg reset;
  reg [3:0] data_in;
  wire detected;

  overlapping_sequence_detector uut (
    .clk(clk),
    .reset(reset),
    .data_in(data_in),
    .detected(detected)
  );

  initial begin
    // Open VCD file for waveform dumping
    $dumpfile("waveform.vcd");
    $dumpvars(0, tb_overlapping_sequence_detector); // Dump all variables
    
    // Initialize inputs
    clk = 0;
    reset = 0;
    data_in = 4'b0000;
    
    // Apply inputs and check outputs
    #5 reset = 1;
    #5 reset = 0;
    #10 clk = 1; #5 clk = 0; data_in = 4'b1011; // Sequence detected
    #10 clk = 1; #5 clk = 0; data_in = 4'b1101; // No sequence detected
    
    // Finish simulation
    $finish;
  end

endmodule
