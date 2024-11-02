// 4 bit up counter

module counter(clk,rstn,out);

    input clk,rstn;
    output reg [3:0] out;

    always @ (posedge clk)
    begin
        if (rstn == 1'b1)
        begin
            out = 4'b0000;
        end
        else
        begin
            out = out + 1'b1;
        end
    end
endmodule
