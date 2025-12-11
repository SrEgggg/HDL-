module XOR_AND_GLL (S, C, A, B);
input A, B;
output S, C;
xor (S, A, B);
and (C, A, B);
endmodule