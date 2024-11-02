module tb();

    // Declaring varibles
    reg Y3, Y2, Y1, Y0;
    wire A0, A1;

    // Declaring design
    encoder dut(
                .Y0(Y0),
                .Y1(Y1),
                .Y2(Y2),
                .Y3(Y3),
                .A0(A0),
                .A1(A1)
    );

    // Stimulus
    initial begin
        Y3 <= 1'b0;
        Y2 <= 1'b0;
        Y1 <= 1'b0;
        Y0 <= 1'b1;
        #100;

        Y3 <= 1'b0;
        Y2 <= 1'b0;
        Y1 <= 1'b1;
        Y0 <= 1'b0;
        #100;

        Y3 <= 1'b0;
        Y2 <= 1'b1;
        Y1 <= 1'b0;
        Y0 <= 1'b0;
        #100;

        Y3 <= 1'b1;
        Y2 <= 1'b0;
        Y1 <= 1'b0;
        Y0 <= 1'b0;
        #100;
    end

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0);
    end

endmodule
