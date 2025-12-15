module ACT7_8by1_(output reg Y, input D7,D6,D5,D4,D3,D2,D1,D0,S0,S1,S2);
always@(*) begin
Y = (S0 & S1 & ~S2 & D3 ) || (~S0 & S1 & ~S2 & D2) ||  (~S1 & S0 & ~S2 & D1) || (~S0 & ~S1 & ~S2 &D0) || (S0 & S1 & S2 & D7 ) || (~S0 & S1 & S2 & D6) ||  (~S1 & S0 & S2 & D5) || (~S0 & ~S1 & S2 &D4); 
end
endmodule