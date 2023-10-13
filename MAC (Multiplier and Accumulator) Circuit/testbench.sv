module tb_mac_unit;

  reg [3:0] operand_a;
  reg [3:0] operand_b;
  reg clock;
  reg reset;
  wire [7:0] result;

  mac_unit uut (
    .operand_a(operand_a),
    .operand_b(operand_b),
    .clock(clock),
    .reset(reset),
    .result(result)
  );

  initial begin
    // Open VCD file for waveform dumping
    $dumpfile("waveform.vcd");
    $dumpvars(0, tb_mac_unit); // Dump all variables
    
    // Initialize inputs
    operand_a = 4'b0101;
    operand_b = 4'b0010;
    clock = 0;
    reset = 0;
    
    // Apply inputs and check outputs
    #5 operand_a = 4'b1101;
    #5 operand_b = 4'b1011;
    #5 reset = 1;
    #5 reset = 0;
    #10 clock = 1; #5 clock = 0;
    
    // Finish simulation
    $finish;
  end

endmodule
