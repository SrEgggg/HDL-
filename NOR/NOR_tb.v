`include "NOR_2_gate_level.v"
module NOR_tb;
reg A, B ;
wire Y;
NOR_2_gate_level Indtance0 (Y, A, B) ;
initial begin
	A = 0; B = 0;
 #1 A = 0; B = 1;
 #1 A = 1; B = 0;
 #1 A = 1; B = 1;
 #1;
 end
 
 initial begin
	 $monitor ("%t | A = %d| B = %d| Y = %D", $time, A, B, Y) ;
	 $dumpfile ("NORreadmeand.vcd") ;
	 $dumpvars ();
end
endmodule
