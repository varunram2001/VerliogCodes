// Code your design here
module mux(y,s,in);
output  y;
input [7:0] in;
input [2:0] s;
reg y;
always @(s)
begin
if(s==3'd0) y=in[0];
else if(s==3'd1) y=in[1];
else if(s==3'd2) y=in[2];
else if(s==3'd3) y=in[3];
else if(s==3'd4) y=in[4];
else if(s==3'd5) y=in[5];
else if(s==3'd6) y=in[6];
else  y=in[7];
end
endmodule