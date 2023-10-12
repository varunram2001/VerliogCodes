module tb_sipo_register;

  reg serial_in;
  reg clock;
  reg shift;
  wire [3:0] parallel_out;

  sipo_register uut (
    .serial_in(serial_in),
    .clock(clock),
    .shift(shift),
    .parallel_out(parallel_out)
  );

  initial begin
    // Open VCD file for waveform dumping
    $dumpfile("waveform.vcd");
    $dumpvars(0, tb_sipo_register); // Dump all variables
    
    // Initialize inputs
    serial_in = 1;
    clock = 0;
    shift = 0;
    
    // Apply inputs and check outputs
    #5 shift = 1; // Shift data
    #5 shift = 0;
    serial_in = 0; // Change serial_in
    #5 shift = 1; // Shift data
    #5 shift = 0;
    serial_in = 1; // Change serial_in
    #5 shift = 1; // Shift data
    
    // Clock toggling
    repeat (10) begin
      #5 clock = ~clock;
    end
    
    // Finish simulation
    $finish;
  end

endmodule
