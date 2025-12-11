`include "XNOR_behavioral.v"

module XNOR_behavioral_tb;
  reg A, B;
  wire Y;

  XNOR_behavioral Instance0 (Y, A, B);

  initial begin
    A = 0; B = 0;
    #1 A = 0; B = 1;
    #1 A = 1; B = 0;
    #1 A = 1; B = 1;
    #1;
  end

  initial begin
    $monitor("%t | A = %d | B = %d | Y = %d", $time, A, B, Y);
    $dumpfile("XNOR_behavioral.vcd");
    $dumpvars();
  end
endmodule
