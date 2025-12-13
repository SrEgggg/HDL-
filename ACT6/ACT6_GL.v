module ACT6_GL(D, B, Z, X, Y);
input Z, X, Y;
output D, B;
wire XORw1, NOTw2, ANDw3, NOTw4, ANDw5;
xor x1(D, Z, XORw1);
xor x2(XORw1, X, Y);
not n1(NOTw2, X);
and a1(ANDw3, NOTw2, Y);
not n2(NOTw4, XORw1);
and a2(ANDw5, NOTw4, Z);
or o1(B, ANDw5, ANDw3);
endmodule