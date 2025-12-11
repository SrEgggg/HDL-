`include "XOR_AND_GLL.v"
module XOR_AND_GL;
	wire S, C;
	reg A, B;
	XOR_AND_GLL Instance0 (S, C, A, B);
initial begin
	A = 0; B = 0;
 #2 A = 0; B = 1;
 #2 A = 1; B = 0;
 #2 A = 1; B = 1;
 #2;
end

initial begin
	$monitor("%t | A = %d | B = %d | C = %d | S = %d", $time, A, B, C,S);
	$dumpfile("XOR_AND.vcd");
	$dumpvars();
end
endmodule