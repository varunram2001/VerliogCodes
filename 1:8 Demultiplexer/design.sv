module demux_1to8 (
  input wire D, // Data input
  input wire [2:0] S, // Select input
  output reg [7:0] Y // Output
);

  always @(*) begin
    case (S)
      3'b000: Y = {1'b0, D, 5'b0}; // Y0
      3'b001: Y = {1'b0, 4'b0, D, 1'b0}; // Y1
      3'b010: Y = {1'b0, 3'b0, D, 2'b0}; // Y2
      3'b011: Y = {1'b0, 2'b0, D, 3'b0}; // Y3
      3'b100: Y = {1'b0, 1'b0, D, 4'b0}; // Y4
      3'b101: Y = {1'b0, 5'b0, D}; // Y5
      3'b110: Y = {1'b0, 4'b0, 1'b0, D}; // Y6
      3'b111: Y = {1'b0, 3'b0, 2'b0, D}; // Y7
      default: Y = 8'b0; // Default to all zeros for invalid input.
    endcase
  end

endmodule
