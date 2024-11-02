module tb();

    // declare varaibles
    reg reset, clk, D;
    wire Q;

    // declaring design
    flop dut(
            .reset(reset),
            .clk(clk),
            .D(D),
            .Q(Q)
    );

    // Generate clock
    always begin
        clk <= 1'b0;
        #50;
        clk <= 1'b1;
        #50;
    end

    // Stimulus
    initial begin
        reset <= 1'b1;
        #100;
        reset <= 1'b0;
        #100;
        D <= 1'b1;
        #100;
        D <= 1'b0;
        #100;
        $finish;
    end

    // Declare dump command
    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0);
    end

endmodule
