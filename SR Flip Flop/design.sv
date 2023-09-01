// SR Flip-Flop Verilog Code
module sr_flip_flop (
    input wire S,    // Set input
    input wire R,    // Reset input
    input wire CLK,  // Clock input
    output reg Q,    // Output Q
    output reg Qn    // Output Q' (inverted Q)
);

    // Sequential logic for the SR flip-flop
    always @(posedge CLK or posedge S or posedge R) begin
        if (S) begin
            Q <= 1'b1;
            Qn <= 1'b0;
        end else if (R) begin
            Q <= 1'b0;
            Qn <= 1'b1;
        end else begin
            Q <= Q;
            Qn <= Qn;
        end
    end

endmodule
