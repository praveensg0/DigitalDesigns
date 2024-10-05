module half_adder(
    input a,b,
    output s,
    output c
    );
    assign s = a ^ b;
    assign c = a & b;
    
endmodule
