module ACT8_1by4_B (output reg Y0, Y1, Y2, Y3, input S1, S0, D);
always @(*) begin
Y3 = (S1 & S0 & D);
Y2 = (S1 & ~S0 & D);
Y1 = (~S1 & S0 & D);
Y0 = (~S1 & ~S0 & D);
end

endmodule