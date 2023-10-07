module tb_pipo_register_8bit;

  reg [7:0] data_in;
  reg clock;
  reg load;
  wire [7:0] data_out;

  pipo_register_8bit uut (
    .data_in(data_in),
    .clock(clock),
    .load(load),
    .data_out(data_out)
  );

  initial begin
    // Open VCD file for waveform dumping
    $dumpfile("waveform.vcd");
    $dumpvars(0, tb_pipo_register_8bit); // Dump all variables
    
    // Initialize inputs
    data_in = 8'b00000000;
    clock = 0;
    load = 0;
    
    // Apply inputs and check outputs
    #5 load = 1; // Load data (data_in -> data_out)
    #5 load = 0;
    data_in = 8'b10101010; // Change data_in
    #5 load = 1; // Load data (data_in -> data_out)
    #5 load = 0;
    
    // Clock toggling
    repeat (10) begin
      #5 clock = ~clock;
    end
    
    // Finish simulation
    $finish;
  end

endmodule
