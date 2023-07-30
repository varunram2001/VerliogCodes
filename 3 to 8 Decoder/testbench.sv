// Code your testbench here
// or browse Examples
module tb_decoder_3to8;

    // Inputs
    logic [2:0] in;

    // Outputs
    logic [7:0] out;

    // Instantiate the 3-to-8 decoder
    decoder_3to8 dut(
        .in(in),
        .out(out)
    );
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end

    // Clock generation (not used in this example, since it's a combinational circuit)
    initial begin
        // Initialize inputs
        in = 3'b000;

        // Wait some time for the outputs to settle
        #5;

        // Test input values
        in = 3'b000; // Expecting output 8'b00000001
        #5;
        in = 3'b001; // Expecting output 8'b00000010
        #5;
        in = 3'b010; // Expecting output 8'b00000100
        #5;
        in = 3'b011; // Expecting output 8'b00001000
        #5;
        in = 3'b100; // Expecting output 8'b00010000
        #5;
        in = 3'b101; // Expecting output 8'b00100000
        #5;
        in = 3'b110; // Expecting output 8'b01000000
        #5;
        in = 3'b111; // Expecting output 8'b10000000
        #5;

        $finish; // End the simulation
    end

endmodule