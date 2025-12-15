module ACT7_8by1_GL(output Y, input D7,D6,D5,D4,D3,D2,D1,D0,S0,S1,S2);
wire s2not, s1not, s0not, andD0, andD1, andD2, andD3, andD4, andD5, andD6,andD7 ;
not (s1not,S1);
not(s0not,S0);
not(s2not,S2);

and(andD7,S0,S1,S2,D3);
and(andD6,s0not,S1,S2,D2);
and(andD5,s1not,s2not, S2,D1);
and(andD4,s0not,s1not,S2,D0);
and(andD3,S0,S1,s2not,D3);
and(andD2,s0not,S1,s2not,D2);
and(andD1,s1not,s2not, S0,D1);
and(andD0,s0not,s1not,s2not,D0);

or(Y,andD7,andD6, andD5,andD4,andD3,andD2,andD1,andD0);


endmodule