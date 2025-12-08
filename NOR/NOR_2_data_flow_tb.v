`include "NOR_2_data_flow.v"
module NOR_2_data_flow_tb;
reg A, B ;
wire Y;
NOR_2_data_flow Indtance0 (Y, A, B) ;
initial begin
	A = 0; B = 0;
 #1 A = 0; B = 1;
 #1 A = 1; B = 0;
 #1 A = 1; B = 1;
 #1;
 end
 
 initial begin
	 $monitor ("%t | A = %d| B = %d| Y = %D", $time, A, B, Y) ;
	 $dumpfile ("nor2readme.vcd") ;
	 $dumpvars ();
end
endmodule