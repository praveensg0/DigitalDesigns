module mux(A,B,S,Y);

    // Declaring inputs
    input S;
    // using A and B as 2 bit input
    input [1:0] A,B;

    // Declaring output
    output [1:0] Y;

    // Declaring interim signals

    // Module initiation

    // Logic Design
    // ternary Operator(like if and else)
    // (condition) ? first_value : second_value;
    assign Y = (S == 1'b0) ? A : B;
endmodule
