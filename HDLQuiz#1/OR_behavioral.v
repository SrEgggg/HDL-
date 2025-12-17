module OR_behavioral (output reg Y, input A, B, C);
	always @(*) begin
	if (A == 1 || B == 1 || C == 1)
	Y = 1;
	else
	Y = 0;
	end
endmodule