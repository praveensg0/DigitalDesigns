module flop(reset,clk,D,Q);

    // declare inputs
    input reset, clk, D;

    // declare outputs
    output reg Q;

    // interim signals 

    // module initiation

    // Logic Design
    // Procedural blocks
    // 1. initial block (only testbench)
    // 2. always block (design + testbench)

    // always @(sensitivity list)

    always @(posedge clk) begin // or negedge clk
        if(reset == 1'b1) begin
            Q <= 1'b0;
        end
        else begin
            Q <= D;
        end
    end
    
endmodule
