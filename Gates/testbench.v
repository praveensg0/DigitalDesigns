module tb();

    // DECLARE VARIABLES
    // input
    reg A, B;
    // output
    wire Y;

    // design call // Module initiation
    // module_name user_name signals
    gate dut (
        .A(A),
        .B(B),
        .Y(Y)
    );

    // Provide Stimulus
    initial begin
        A = 1'b0;
        B = 1'b0;
        #100;

        A = 1'b0;
        B = 1'b1;
        #100;

        A = 1'b1;
        B = 1'b0;
        #100;

        A = 1'b1;
        B = 1'b1;
        #100;
    end

    // Visualization
    initial begin
        $dumpfile("dump.vcd");       // Create dump file for waveform
        $dumpvars(0);            // Dump all variables
    end

endmodule
