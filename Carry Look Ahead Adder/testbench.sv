// Code your testbench here
// or browse Examples
module jcarrylookaheadaddertb;
  wire [3:0]Y;
  wire carryout;
  reg [3:0]A,B;
  reg carryin;
  jcarrylookaheadadder jcla(Y,carryout,A,B,carryin);
  initial
  begin
    $display("RSLT\tA\tB\tCYIN\t\tCYOUT\tSUM");
    
    //A = 4'b0101; B = 4'b1101; carryin = 0; #50; // Set inputs and add delay
    A = 0; B = 0; carryin = 0; #50; // Set inputs and add delay
    A = 3; B = 2; carryin = 1; #50; // Set inputs and add delay
    A = 7; B = 10; carryin = 0; #50; // Set inputs and add delay
    A = 15; B = 15; carryin = 1; #50; // Set inputs and add delay
   
  end
  //Setting up the wave dump
  initial begin 
    $dumpfile("dump.vcd"); $dumpvars;
  end
endmodule