`include "ACT6_GL.v"
module ACT6_GL_tb;
	reg Z, X, Y;
	wire D, B;
	ACT6_GL Instance0(D, B, Z, X, Y);
initial begin
	Z = 0; X = 0; Y = 0;
 #1	Z = 1; X = 0; Y = 0;
 #1	Z = 0; X = 0; Y = 1;
 #1	Z = 1; X = 0; Y = 1;
 #1	Z = 0; X = 1; Y = 0;
 #1	Z = 1; X = 1; Y = 0;
 #1	Z = 0; X = 1; Y = 1;
 #1	Z = 1; X = 1; Y = 1;
 #1;
end
initial begin
	$monitor("%t | Z = %d | X = %d | Y = %d | B = %d | D = %d", $time, Z, X, Y, B, D);
	$dumpfile("ACT6.vcd");
	$dumpvars();
end
	
	
endmodule