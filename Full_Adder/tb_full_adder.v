module tb_full_adder;

// Inputs
reg a, b, cin;

// Outputs
wire sum, cout;

// Instantiate the Unit Under Test (UUT)
full_adder uut (
    .a(a), .b(b), .cin(cin),
    .sum(sum), .cout(cout)
);

initial begin
    // Initialize Inputs
    a = 0; b = 0; cin = 0;

    // Test all possible input combinations
    #10 a = 0; b = 0; cin = 1;
    #10 a = 0; b = 1; cin = 0;
    #10 a = 0; b = 1; cin = 1;
    #10 a = 1; b = 0; cin = 0;
    #10 a = 1; b = 0; cin = 1;
    #10 a = 1; b = 1; cin = 0;
    #10 a = 1; b = 1; cin = 1;
    #10 $stop;
end

endmodule
