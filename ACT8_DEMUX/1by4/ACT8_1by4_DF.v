module ACT8_1by4_DF (output Y0, Y1, Y2, Y3, input S1, S0, D);

assign Y3 = (S1 & S0 & D);
assign Y2 = (S1 & ~S0 & D);
assign Y1 = (~S1 & S0 & D);
assign Y0 = (~S1 & ~S0 & D);

endmodule