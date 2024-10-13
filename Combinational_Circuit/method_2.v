// combinational circuit for LED glow

module Combinational_Circuit(S,P,V,LED);

input S,P,V;

output LED;

wire A_NAND_B , A_NOR_B;

// Dataflow modelling
  assign A_NAND_B = (~(S & P) );

  assign A_NOR_B = (~(S | P) );

  assign LED = (A_NAND_B) & (A_NOR_B) & (V);

endmodule
