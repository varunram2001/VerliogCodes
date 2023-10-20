module full_wave_rectifier (
  input wire clk, // Clock input
  input wire [7:0] sine_wave, // 8-bit sine wave input
  output reg [7:0] rectified_wave // 8-bit rectified output
);

  always @(posedge clk) begin
    if (sine_wave >= 8'b10000000) begin
      rectified_wave <= sine_wave - 8'b10000000;
    end else begin
      rectified_wave <= 8'b10000000 - sine_wave;
    end
  end

endmodule
