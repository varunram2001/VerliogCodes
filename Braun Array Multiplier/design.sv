
module braun_array_multiplier (
  input [3:0] A,
  input [3:0] B,
  output reg [7:0] P
);

  integer i, j;
  reg [3:0] M[3:0][3:0];
  reg [7:0] S[3:0][3:0];

  always @(*) begin
    for (i = 0; i < 4; i = i + 1) begin
      for (j = 0; j < 4; j = j + 1) begin
        M[i][j] = A[i] & B[j];
        S[i][j] = M[i][j] << (i + j);
      end
    end
    P = 0;
    for (i = 0; i < 4; i = i + 1) begin
      for (j = 0; j < 4; j = j + 1) begin
        P = P + S[i][j];
      end
    end
  end

endmodule
