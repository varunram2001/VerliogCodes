module demux_1to16(input [3:0] sel, input din, output reg [15:0] dout);

always @* begin
    case(sel)
        4'b0000: dout = 16'b0000000000000001;
        4'b0001: dout = 16'b0000000000000010;
        4'b0010: dout = 16'b0000000000000100;
        4'b0011: dout = 16'b0000000000001000;
        4'b0100: dout = 16'b0000000000010000;
        4'b0101: dout = 16'b0000000000100000;
        4'b0110: dout = 16'b0000000001000000;
        4'b0111: dout = 16'b0000000010000000;
        4'b1000: dout = 16'b0000000100000000;
        4'b1001: dout = 16'b0000001000000000;
        4'b1010: dout = 16'b0000010000000000;
        4'b1011: dout = 16'b0000100000000000;
        4'b1100: dout = 16'b0001000000000000;
        4'b1101: dout = 16'b0010000000000000;
        4'b1110: dout = 16'b0100000000000000;
        4'b1111: dout = 16'b1000000000000000;
        default: dout = 16'b0000000000000000;
    endcase
end

endmodule

