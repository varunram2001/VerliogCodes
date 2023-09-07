module testbench;

  reg [3:0] gray_input;
  reg clk;
  reg rst;
  wire [3:0] binary_output;

  gray_to_binary_converter uut (
    .gray_input(gray_input),
    .binary_output(binary_output)
  );

  initial begin
    // Open VCD file for waveform dumping
    $dumpfile("waveform.vcd");
    $dumpvars(0, testbench); // Dump all variables
    
    // Initialize inputs
    gray_input = 4'b0000;
    clk = 0;
    rst = 0;
    
    // Apply inputs and check outputs
    #5 gray_input = 4'b0001;
    #5 gray_input = 4'b0011;
    #5 gray_input = 4'b0111;
    #5 gray_input = 4'b0101;
    
    // Finish simulation
    $finish;
  end

endmodule
