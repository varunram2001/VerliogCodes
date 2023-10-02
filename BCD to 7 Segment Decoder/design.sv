module bcd_to_7seg_decoder (
  input wire [3:0] bcd_input, // 4-bit BCD input
  output reg [6:0] seven_segment_output // 7-bit 7-segment display output
);

  always @* begin
    case (bcd_input)
      4'b0000: seven_segment_output = 7'b1000000; // 0
      4'b0001: seven_segment_output = 7'b1111001; // 1
      4'b0010: seven_segment_output = 7'b0100100; // 2
      4'b0011: seven_segment_output = 7'b0110000; // 3
      4'b0100: seven_segment_output = 7'b0011001; // 4
      4'b0101: seven_segment_output = 7'b0010010; // 5
      4'b0110: seven_segment_output = 7'b0000010; // 6
      4'b0111: seven_segment_output = 7'b1111000; // 7
      4'b1000: seven_segment_output = 7'b0000000; // 8
      4'b1001: seven_segment_output = 7'b0010000; // 9
      default: seven_segment_output = 7'bxxxxxxx; // All segments off for invalid input
    endcase
  end

endmodule
