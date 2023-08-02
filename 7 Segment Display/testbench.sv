// Code your testbench here
// or browse Examples
module tb_segment7;

    reg [3:0] bcd;
    wire [6:0] seg;
    integer i;

    // Instantiate the Unit Under Test (UUT)
    segment7 uut (
        .bcd(bcd), 
        .seg(seg));
    
  
  
  
 

//Apply inputs
    initial begin
        for(i = 0;i < 16;i = i+1) //run loop for 0 to 15.
        begin
          $dumpfile("dump.vcd");
          $dumpvars(1);
            bcd = i; 
            #10; //wait for 10 ns
        end     
    end
      
endmodule