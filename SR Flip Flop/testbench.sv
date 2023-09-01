// Testbench for SR Flip-Flop
module tb_sr_flip_flop();

    // Inputs
    reg S_tb;       // Set input
    reg R_tb;       // Reset input
    reg CLK_tb;     // Clock input

    // Outputs
    wire Q_tb;      // Output Q
    wire Qn_tb;     // Output Q' (inverted Q)

    // Instantiate the SR flip-flop
    sr_flip_flop uut (
        .S(S_tb),
        .R(R_tb),
        .CLK(CLK_tb),
        .Q(Q_tb),
        .Qn(Qn_tb)
    );

    // Clock generation
    always begin
        CLK_tb = 1'b0;
        #5;  // Half clock period delay
        CLK_tb = 1'b1;
        #5;  // Half clock period delay
    end

    // Stimulus generation
    initial begin
      $dumpfile("dump.vcd");
      $dumpvars(1);
        // Initialize inputs
        S_tb = 0;
        R_tb = 0;

        // Apply inputs and observe outputs
        $display("Time  S  R  Q  Qn");
        $display("----  -  -  -  --");
        #10 S_tb = 1; R_tb = 0;  // Set the flip-flop
        #10 S_tb = 0; R_tb = 1;  // Reset the flip-flop
        #10 S_tb = 0; R_tb = 0;  // No change
        #10 S_tb = 1; R_tb = 1;  // Invalid state (set and reset at the same time)
        #10 S_tb = 0; R_tb = 0;  // No change
        #10 S_tb = 1; R_tb = 0;  // Set the flip-flop
        #10 S_tb = 0; R_tb = 1;  // Reset the flip-flop
        #10 S_tb = 0; R_tb = 0;  // No change

        // Finish simulation
        $finish;
    end

endmodule
