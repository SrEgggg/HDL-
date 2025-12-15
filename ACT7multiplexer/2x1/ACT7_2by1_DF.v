module ACT7_2by1_GL(Y, D1, D0, S);
input D1, D0, S;
output Y;
assign Y = (D1 & S) | (D0 & ~S);
endmodule