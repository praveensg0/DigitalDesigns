module tb;

reg A, B, C, rst, clk;
wire Z;

sequential_ckt dut (
                    .A(A),
                    .B(B),
                    .C(C),
                    .rst(rst),
                    .clk(clk),
                    .Z(Z)
);

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0);
end

always begin
    clk = ~clk;
    #50; // Clock period
end

initial begin
    A = 1'b0;
    B = 1'b0;
    C = 1'b0;
    clk = 1'b0; // Initial clock state
    rst = 1'b1; // Assert reset
    #100;

    rst = 1'b0; // Deassert reset
    A = 1'b0;
    B = 1'b1;
    C = 1'b1;
    #300;

    $finish; // End simulation
end

endmodule
