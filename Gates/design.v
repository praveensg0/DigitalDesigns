module gate(A, B, Y);

    // declare inputs
    input A, B;

    // declare output
    output Y;

    // gate level modelling
    // Example using AND gate:
    and (Y, A, B);  // Main output is the result of AND gate
    
    // Uncomment any of the following lines to use other gates:
    // or  (Y, A, B);   // OR gate
    // nand (Y, A, B);  // NAND gate
    // nor  (Y, A, B);  // NOR gate
    // xor  (Y, A, B);  // XOR gate

endmodule
