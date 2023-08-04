
`timescale 1ns/100ps

module test_MULTI();
  reg E0,E1,E2,E3,E4,E5,E6,E7,E8,E9,E10,E11,E12,E13,E14,E15,sel0,sel1,sel2,sel3;
  wire S, C1, C2;
  MULTI MULTI(E0,E1,E2,E3,E4,E5,E6,E7,E8,E9,E10,E11,E12,E13,E14,E15,sel0,sel1,sel2,sel3,S,C1,C2);
  initial
    begin
      $dumpfile("out.vcd");
      $dumpvars(1,test_MULTI);
      
//For different time breaks    
  #10 E0 = 1'b0; sel3 = 1'b1; sel0 = 1'b0; sel1 = 1'b0; sel2 = 1'b0;
  #10 E0 = 1'b1; sel3 = 1'b1; sel0 = 1'b0; sel1 = 1'b0; sel2 = 1'b0;
  #10 E1 = 1'b0; sel3 = 1'b1; sel0 = 1'b0; sel1 = 1'b0; sel2 = 1'b1;
  #10 E1 = 1'b1; sel3 = 1'b1; sel0 = 1'b0; sel1 = 1'b0; sel2 = 1'b1;
  #10 E2 = 1'b0; sel3 = 1'b1; sel0 = 1'b0; sel1 = 1'b1; sel2 = 1'b0;
  #10 E2 = 1'b1; sel3 = 1'b1; sel0 = 1'b0; sel1 = 1'b1; sel2 = 1'b0;
  #10 E3 = 1'b0; sel3 = 1'b1; sel0 = 1'b0; sel1 = 1'b1; sel2 = 1'b1;
  #10 E3 = 1'b1; sel3 = 1'b1; sel0 = 1'b0; sel1 = 1'b1; sel2 = 1'b1;
  #10 E4 = 1'b0; sel3 = 1'b1; sel0 = 1'b1; sel1 = 1'b0; sel2 = 1'b0;
  #10 E4 = 1'b1; sel3 = 1'b1; sel0 = 1'b1; sel1 = 1'b0; sel2 = 1'b0;
  #10 E5 = 1'b0; sel3 = 1'b1; sel0 = 1'b1; sel1 = 1'b0; sel2 = 1'b1;
  #10 E5 = 1'b1; sel3 = 1'b1; sel0 = 1'b1; sel1 = 1'b0; sel2 = 1'b1;
  #10 E6 = 1'b0; sel3 = 1'b1; sel0 = 1'b1; sel1 = 1'b1; sel2 = 1'b0;
  #10 E6 = 1'b1; sel3 = 1'b1; sel0 = 1'b1; sel1 = 1'b1; sel2 = 1'b0;
  #10 E7 = 1'b0; sel3 = 1'b1; sel0 = 1'b1; sel1 = 1'b1; sel2 = 1'b1;
  #10 E7 = 1'b1; sel3 = 1'b1; sel0 = 1'b1; sel1 = 1'b1; sel2 = 1'b1;
      
  #10 E8 = 1'b0; sel3 = 1'b0; sel0 = 1'b0; sel1 = 1'b0; sel2 = 1'b0;
  #10 E8 = 1'b1; sel3 = 1'b0; sel0 = 1'b0; sel1 = 1'b0; sel2 = 1'b0;
  #10 E9 = 1'b0; sel3 = 1'b0; sel0 = 1'b0; sel1 = 1'b0; sel2 = 1'b1;
  #10 E9 = 1'b1; sel3 = 1'b0; sel0 = 1'b0; sel1 = 1'b0; sel2 = 1'b1;
  #10 E10 = 1'b0; sel3 = 1'b0; sel0 = 1'b0; sel1 = 1'b1; sel2 = 1'b0;
  #10 E10 = 1'b1; sel3 = 1'b0; sel0 = 1'b0; sel1 = 1'b1; sel2 = 1'b0;
  #10 E11 = 1'b0; sel3 = 1'b0; sel0 = 1'b0; sel1 = 1'b1; sel2 = 1'b1;
  #10 E11 = 1'b1; sel3 = 1'b0; sel0 = 1'b0; sel1 = 1'b1; sel2 = 1'b1;
  #10 E12 = 1'b0; sel3 = 1'b0; sel0 = 1'b1; sel1 = 1'b0; sel2 = 1'b0;
  #10 E12 = 1'b1; sel3 = 1'b0; sel0 = 1'b1; sel1 = 1'b0; sel2 = 1'b0;
  #10 E13 = 1'b0; sel3 = 1'b0; sel0 = 1'b1; sel1 = 1'b0; sel2 = 1'b1;
  #10 E13 = 1'b1; sel3 = 1'b0; sel0 = 1'b1; sel1 = 1'b0; sel2 = 1'b1;
  #10 E14 = 1'b0; sel3 = 1'b0; sel0 = 1'b1; sel1 = 1'b1; sel2 = 1'b0;
  #10 E14 = 1'b1; sel3 = 1'b0; sel0 = 1'b1; sel1 = 1'b1; sel2 = 1'b0;
  #10 E15 = 1'b0; sel3 = 1'b0; sel0 = 1'b1; sel1 = 1'b1; sel2 = 1'b1;
  #10 E15 = 1'b1; sel3 = 1'b0; sel0 = 1'b1; sel1 = 1'b1; sel2 = 1'b1;
  #10; 
   end
  initial
    
    #310 $finish;

endmodule 











