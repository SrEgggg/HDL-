`include "ACT6_DF.v"
module ACT6_DF_tb;
	reg Z, X, Y;
	wire D, B;
	ACT6_DF Instance0(D, B, Z, X, Y);
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
	$dumpfile("ACT6DFF.vcd");
	$dumpvars();
end
	
	
endmodule