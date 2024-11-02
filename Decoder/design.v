module decoder(A,E,Y_0,Y_1,Y_2,Y_3);


input [1:0] A;
input E;

output Y_0,Y_1,Y_2,Y_3;

// Defining combinational logic for relevant decoder o/p pins

assign Y_0 = (E) & (~A[0]) & (~A[1]);
assign Y_1 = (E) & (A[0]) & (~A[1]);
assign Y_2 = (E) & (~A[0]) & (A[1]);
assign Y_3 = (E) & (A[0]) & (A[1]);

endmodule
