module tb_bcd_to_7seg_decoder;

  reg [3:0] bcd_input;
  wire [6:0] seven_segment_output;

  bcd_to_7seg_decoder uut (
    .bcd_input(bcd_input),
    .seven_segment_output(seven_segment_output)
  );

  initial begin
    // Open VCD file for waveform dumping
    $dumpfile("waveform.vcd");
    $dumpvars(0, tb_bcd_to_7seg_decoder); // Dump all variables
    
    // Apply inputs
    bcd_input = 4'b0000;
    
    // Finish simulation
    $finish;
  end

endmodule
