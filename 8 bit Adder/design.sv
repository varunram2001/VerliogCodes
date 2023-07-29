// Code your design here
module adder(a,b,cin, sum, cout, result);
  input [7:0] a,b;
  input cin;
  output [7:0] sum;
  output cout;
  output [8:0] result;
  
  assign result=a+b+cin;
  assign sum=result[7:0];
  assign cout = result [8];
  
endmodule