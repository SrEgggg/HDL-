module ACT8_1by4_GL (output Y0, Y1, Y2, Y3, input S1, S0, D);
wire W1not, W2not;

and a3(Y3, S1, S0, D);
not n1(W1not, S1);
not n2(W2not, S0);
and a2(Y2, S1, W2not, D);
and a1(Y1, W1not, S0, D);
and a0(Y0, W1not, W2not, D);

endmodule