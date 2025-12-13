module ACT6_DF(D, B, Z, X, Y);
input Z, X, Y;
output D, B;
assign D = (Z ^ (X ^ Y));
assign B = (~(X ^ Y) & Z) | (~X & Y);
endmodule