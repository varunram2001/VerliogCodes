// Code your testbench here
// or browse Examples
module adder_tb();
  reg [7:0] t_a, t_b;
  reg c_in;
  wire [8:0] r;
  wire [7:0] SUM;
  wire COUT;
  
  adder dut(.a(t_a), .b(t_b), .cin(c_in), .sum(SUm), .cout(COUT), .result(r));
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end
  
  initial begin
    
    t_a=1;
    t_b=4;
    c_in=0;
    
#5
    t_a=7;
    t_b=2;
    c_in=1;
    
#5
    t_a=7;
    t_b=8;
    c_in=0;
#5
    $finish();
  end
endmodule