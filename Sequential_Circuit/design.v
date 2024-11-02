module sequential_ckt(A, B, C, rst, clk, Z);

input A, B, C, clk, rst;
output Z;

// Implementing the combinational logic of 1st register
wire Result_Comb_Reg_1;
reg Reg_1;
assign Result_Comb_Reg_1 = (A | B) & (C);

// Implementing the combinational logic of 2nd register
wire Result_Comb_Reg_2;
reg Reg_2;
assign Result_Comb_Reg_2 = (~Reg_1);

always @(posedge clk) begin
    if (rst == 1'b1) begin
        Reg_1 <= 1'b0;
        Reg_2 <= 1'b0;
    end else begin
        Reg_1 <= Result_Comb_Reg_1;
        Reg_2 <= Result_Comb_Reg_2;
    end
end

assign Z = (~Reg_2);
endmodule
