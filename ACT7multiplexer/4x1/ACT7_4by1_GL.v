module ACT7_4by1_GL(output Y, input I3, I2,I1,I0,S0,S1);
wire s1not, s0not, andI1, andI2, andI3, andI0 ;

not (s1not,S1);
not(s0not,S0);
and(andI3,S0,S1,I3);
and(andI2,s0not,S1,I2);
and(andI1,s1not, S0,I1);
and(andI0,s0not,s1not,I0);
or(Y,andI3,andI2,andI1,andI0);

endmodule