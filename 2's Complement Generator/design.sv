module twos_complement_generator (
    input [7:0] input_number,
    output reg [7:0] twos_complement_output
);

    always @(input_number) begin
        twos_complement_output = ~input_number + 1;
    end

endmodule

