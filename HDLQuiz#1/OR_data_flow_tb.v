`include "OR_data_flow.v"
module OR_data_flow_tb;
	reg A, B, C;
	wire Y;
	OR_data_flow instance0 (Y, A, B, C);
initial begin
	A = 0; B = 0; C = 0;
 #1	A = 0; B = 0; C = 1;
 #1	A = 0; B = 1; C = 0;
 #1	A = 0; B = 1; C = 1;
 #1	A = 1; B = 0; C = 0;
 #1	A = 1; B = 0; C = 1;
 #1	A = 1; B = 1; C = 0;
 #1	A = 1; B = 1; C = 1;
 #1;
end

initial begin
	$monitor("%t | A = %d | B = %d | C = %d | Y = %d", $time, A, B, C, Y);
	$dumpfile("OR_data_flow.vcd");
	$dumpvars();
end
endmodule