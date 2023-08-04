`timescale 1ns/100ps
module MULTI(E0,E1,E2,E3,E4,E5,E6,E7,E8,E9,E10,E11,E12,E13,E14,E15,sel0,sel1,sel2,sel3,S,C1,C2);
  input E0,E1,E2,E3,E4,E5,E6,E7,E8,E9,E10,E11,E12,E13,E14,E15;
  input sel0,sel1, sel2, sel3;
  output reg S, C1, C2;
  
//always block begins here
  
  always @(E0,E1,E2,E3,E4,E5,E6,E7,E8,E9,E10,E11,E12,E13,E14,E15,sel0,sel1,sel2,sel3)
    begin
      case({sel0,sel1,sel2})
        3'b000: begin
          C1=E8;
          C2=E0;
        end
        3'b001: begin
          C1=E9;
          C2=E1;
        end
        3'b010: begin
          C1=E10;
          C2=E2;
        end
        3'b011: begin
          C1=E11;
          C2=E3;
        end
        3'b100: begin
          C1=E12;
          C2=E4;
        end
        3'b101: begin
          C1=E13;
          C2=E5;
        end
        3'b110: begin
          C1=E14;
          C2=E6;
        end
        3'b111: begin
          C1=E15; 
          C2=E7;
        end
      endcase
    
      case(sel3)
        1'b0: S=C1;
        1'b1: S=C2;
      endcase
    end
endmodule
  