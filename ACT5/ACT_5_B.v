module ACT_5_B (S, Cout, A, B, C);
input A, B, C;
output reg S, Cout;
always @(*) begin	
S = (A^B)^C;
Cout = ((A^B)&C) | (A&B);
end
endmodule