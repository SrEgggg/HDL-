module ACT_5_GL (S, Cout, A, B, C);
input A, B, C;
output S, Cout;
wire w_WIRE_1, w_WIRE_2, w_WIRE_3;
xor x1(w_WIRE_1, A, B);
xor x2(S, w_WIRE_1, C);
and a1(w_WIRE_2, w_WIRE_1, C);
and a2(w_WIRE_3, A, B);
or o1(Cout, w_WIRE_2, w_WIRE_3);
endmodule