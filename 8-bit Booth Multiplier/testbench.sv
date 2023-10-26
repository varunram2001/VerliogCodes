module tb_booth_multiplier;

  reg [7:0] multiplicand;
  reg [7:0] multiplier;
  wire [15:0] product;
  reg clock;

  booth_multiplier uut (
    .multiplicand(multiplicand),
    .multiplier(multiplier),
    .product(product)
  );

  initial begin
    // Open VCD file for waveform dumping
    $dumpfile("waveform.vcd");
    $dumpvars(0, tb_booth_multiplier); // Dump all variables
    
    // Initialize inputs
    multiplicand = 8'b00101010;
    multiplier = 8'b00001101;
    clock = 0;
    
    // Apply inputs and check outputs
    #5 multiplicand = 8'b10101010; multiplier = 8'b00001101; // New inputs
    #5 multiplicand = 8'b00101010; multiplier = 8'b11001101; // New inputs
    #5 multiplicand = 8'b01010101; multiplier = 8'b00110011; // New inputs
    
    // Clock toggling
    repeat (10) begin
      #5 clock = ~clock;
    end
    
    // Finish simulation
    $finish;
  end

endmodule
