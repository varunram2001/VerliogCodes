// Code your testbench here
// or browse Examples
module tb_mux();
reg [7:0]in;
reg [2:0]s;
wire y;
mux m1(y,s,in);
initial
begin
in=8'b10110110;
s[0]=1'b0;
s[1]=1'b0;
s[2]=1'b0;
end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end
always #40  s[2]=~s[2];
always #20  s[1]=~s[1];
always #10  s[0]=~s[0];
initial
begin
#200 $finish;
end
endmodule