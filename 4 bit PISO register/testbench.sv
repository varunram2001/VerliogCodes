module tb_piso_register;

  reg [3:0] parallel_in;
  reg clock;
  reg shift;
  wire serial_out;

  piso_register uut (
    .parallel_in(parallel_in),
    .clock(clock),
    .shift(shift),
    .serial_out(serial_out)
  );

  initial begin
    // Open VCD file for waveform dumping
    $dumpfile("waveform.vcd");
    $dumpvars(0, tb_piso_register); // Dump all variables
    
    // Initialize inputs
    parallel_in = 4'b0000;
    clock = 0;
    shift = 0;
    
    // Apply inputs and check outputs
    #5 parallel_in = 4'b1010; // Set parallel_in
    #5 shift = 1; // Shift data
    #5 shift = 0;
    #5 shift = 1; // Shift data
    #5 shift = 0;
    #5 shift = 1; // Shift data
    
    // Clock toggling
    repeat (10) begin
      #5 clock = ~clock;
    end
    
    // Finish simulation
    $finish;
  end

endmodule
