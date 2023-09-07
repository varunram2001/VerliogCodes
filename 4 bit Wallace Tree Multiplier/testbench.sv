module testbench_wallace_multiplier;

reg [3:0] A, B;
wire [7:0] P;

// Instantiate the wallace_multiplier module
wallace_multiplier uut (
    .A(A),
    .B(B),
    .P(P)
);

// Stimulus generation
initial begin
    $dumpfile("waveform.vcd");
    $dumpvars(0, testbench); // Dump all variables
    // Test case 1: A = 6 (0110), B = 5 (0101)
    A = 4'b0110;
    B = 4'b0101;
    #10;

    // Add more test cases as needed

    // Terminate simulation
    $finish;
end

endmodule
