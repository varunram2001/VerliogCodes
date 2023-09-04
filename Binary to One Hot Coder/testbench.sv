module testbench;

  reg [3:0] binary_input;
  wire [15:0] one_hot_output;

  binary_to_one_hot uut (
    .binary_input(binary_input),
    .one_hot_output(one_hot_output)
  );

  initial begin
    $display("Testing Binary to One-Hot Encoder");
    $dumpfile("dump.vcd");
    $dumpvars(1);
    
    // Test with different binary inputs
    binary_input = 4'b0001;
    #10 $display("Input: %b, Output: %b", binary_input, one_hot_output);
    
    binary_input = 4'b0010;
    #10 $display("Input: %b, Output: %b", binary_input, one_hot_output);
    
    binary_input = 4'b0100;
    #10 $display("Input: %b, Output: %b", binary_input, one_hot_output);
    
    binary_input = 4'b1000;
    #10 $display("Input: %b, Output: %b", binary_input, one_hot_output);
    
    // Test with an invalid input
    binary_input = 4'b1010;
    #10 $display("Input: %b, Output: %b", binary_input, one_hot_output);
    
    $finish;
  end

endmodule

