module tb_twos_complement_generator;

    reg [7:0] input_number;
    wire [7:0] twos_complement_output;

    // Instantiate the 2's complement generator
    twos_complement_generator uut (
        .input_number(input_number),
        .twos_complement_output(twos_complement_output)
    );

    // Test stimulus
    initial begin
        $monitor("Input: %d, 2's Complement Output: %d", input_number, twos_complement_output);
      $dumpfile("dump.vcd");
      $dumpvars(1);
        
        input_number = 8'b00000000; // Test positive number
        #10;
        
        input_number = 8'b00001011; // Test positive number
        #10;
        
        input_number = 8'b11111111; // Test negative number
        #10;
        
        input_number = 8'b11010101; // Test negative number
        #10;
        
        $finish;
    end

endmodule

