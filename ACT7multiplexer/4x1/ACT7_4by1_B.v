module ACT7_4by1_B(output reg Y, input I3,I2,I1,I0,S0,S1);
always@(*) begin
Y = (S0 & S1 & I3 ) || (~S0 & S1 & I2) ||  (~S1 & S0 & I1) || (~S0 & ~S1 & I0); 
end
endmodule