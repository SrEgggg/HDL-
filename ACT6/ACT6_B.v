module ACT6_B(D, B, Z, X, Y);
input Z, X, Y;
output reg D, B;
always @(*) begin
D = (Z ^ (X ^ Y));
B = (~(X ^ Y) & Z) | (~X & Y);
end
endmodule