`include "ACT_5_B.v"
module ACT_5_B_tb;
	reg A, B, C;
	wire S, Cout;
	ACT_5_B Instance0(S, Cout, A, B, C);

initial begin
	A = 0; B = 0; C = 0;
 #1	A = 1; B = 0; C = 0;
 #1	A = 0; B = 1; C = 0;
 #1	A = 1; B = 1; C = 0;
 #1	A = 0; B = 0; C = 1;
 #1	A = 1; B = 0; C = 1;
 #1	A = 0; B = 1; C = 1;
 #1	A = 1; B = 1; C = 1;
 #1;
end

initial begin
	$monitor("%t | A = %d | B = %d | C = %d | Cout = %d | S = %d", $time, A, B, C, Cout, S);
	$dumpfile("ACT_5_GL.vcd");
	$dumpvars();
end
endmodule