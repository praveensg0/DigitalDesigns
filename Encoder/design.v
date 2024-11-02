module encoder(Y0,Y1,Y2,Y3,A0,A1);

    // Declaring inputs
    input Y0, Y1, Y2, Y3;

    // Declaring outputs
    output A0, A1;

    // Declaring interim signals

    // Module initiation

    // Logic Design
    assign A0 = Y1 | Y3;
    assign A1 = Y2 | Y3;

endmodule
