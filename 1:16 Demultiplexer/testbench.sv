module testbench_demux_1to16;

reg [3:0] sel;
reg din;
wire [15:0] dout;

// Instantiate the demux_1to16 module
demux_1to16 uut (
    .sel(sel),
    .din(din),
    .dout(dout)
);

// Stimulus generation
initial begin
    // Test case 1: sel = 2'b01, din = 1
    sel = 2'b01;
    din = 1;
    #10;

    // Add more test cases as needed

    // Terminate simulation
    $finish;
end

// Dumpfile printing command
initial begin
    // Compile the files
    $dumpfile("dump.vcd");
    $dumpvars(0, testbench_demux_1to16);
end

endmodule

