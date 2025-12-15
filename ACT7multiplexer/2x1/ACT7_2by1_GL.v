module ACT7_2by1_GL(Y, D1, D0, S);
input D1, D0, S;
output Y;
wire W1NOT, W2AND, W3AND;

not n1(W1NOT, S);
and a1(W2AND, D1, S); 
and a2(W3AND, W1NOT, D0);
or o1(Y, W2AND, W3AND);
endmodule