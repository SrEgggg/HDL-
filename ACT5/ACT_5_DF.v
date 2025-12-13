module ACT_5_DF (S, Cout, A, B, C);
input A, B, C;
output S, Cout;
assign S = (A^B)^C;
assign Cout = ((A^B)&C) | (A&B);
endmodule