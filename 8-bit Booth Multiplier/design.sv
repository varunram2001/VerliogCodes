module booth_multiplier (
  input wire [7:0] multiplicand, // 8-bit input multiplicand
  input wire [7:0] multiplier, // 8-bit input multiplier
  output reg [15:0] product // 16-bit output product
);

  reg [15:0] accumulator;
  reg [2:0] counter;

  always @(posedge clock) begin
    if (counter == 3'b000) begin
      accumulator <= {8'b0, multiplicand};
      counter <= 3'b001;
    end else begin
      if (multiplier[0] == 1 && counter != 3'b111) begin
        accumulator <= accumulator + (accumulator << 1) - multiplicand;
      end else if (multiplier[0] == 0 && counter != 3'b111) begin
        accumulator <= accumulator + (accumulator << 1);
      end
      counter <= counter + 1;
    end
  end

  always @(*) begin
    product = accumulator;
  end

endmodule
