module tb();

    // Declaring variables
    reg S;
    reg [1:0] A,B;

    wire [1:0] Y;


    // Declaring design
    mux dut (
            .A(A),
            .B(B),
            .S(S),
            .Y(Y)
    );

    // Stimmulus
    initial begin
        A <= 2'b11;
        B <= 2'b01;
        #100;
        
        S <= 1'b0;
        #100;

        S <= 1'b1;
        #100;
    end

    // Declaring Dump Command
    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0);
    end
endmodule
