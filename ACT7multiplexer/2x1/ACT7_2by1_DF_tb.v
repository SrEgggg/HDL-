`include "ACT7_2by1_DF.v"
module ACT7_2by1_DF_tb;
	reg D1, D2, S;
	wire Y;
	ACT7_2by1_DF Instance0(Y, D1, D0, S);
initial begin
	S = 0; D0 = 0; D1 = 0;
 #1	S = 0; D0 = 0; D1 = 1;
 #1	S = 0; D0 = 1; D1 = 0;
 #1	S = 0; D0 = 1; D1 = 1;
 #1	S = 1; D0 = 0; D1 = 0;
 #1	S = 1; D0 = 0; D1 = 1;
 #1	S = 1; D0 = 1; D1 = 0;
 #1	S = 1; D0 = 1; D1 = 1;
 #1;
end

initial begin
	$monitor("%t | D1 = %d | D0 = %d | S = %d | Y = %d", $time, D1, D0, S, Y);
	$dumpfile("ACT7_2by1_GL.vcd");
	$dumpvars();
end
endmodule	