// combinational circuit for LED glow (from te question)

module Combinational_Circuit(S,P,V,LED);

input S,P,V;

output LED;

/*Data types in verilog
    1. wire
    2. reg
*/

// Dataflow modelling
assign LED = (~S) & (P) & (V);

endmodule
