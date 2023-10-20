module tb_full_wave_rectifier;

  reg clk;
  reg [7:0] sine_wave;
  wire [7:0] rectified_wave;

  full_wave_rectifier uut (
    .clk(clk),
    .sine_wave(sine_wave),
    .rectified_wave(rectified_wave)
  );

  initial begin
    // Open VCD file for waveform dumping
    $dumpfile("waveform.vcd");
    $dumpvars(0, tb_full_wave_rectifier); // Dump all variables
    
    // Initialize inputs
    clk = 0;
    sine_wave = 8'b00000000;
    
    // Apply inputs and check outputs
    #5 sine_wave = 8'b01010101; // Positive half cycle
    #5 sine_wave = 8'b11011011; // Negative half cycle
    #5 sine_wave = 8'b00000000; // Zero input
    
    // Clock toggling
    repeat (10) begin
      #5 clk = ~clk;
    end
    
    // Finish simulation
    $finish;
  end

endmodule
