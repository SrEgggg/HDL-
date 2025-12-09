`include "XOR_behavioral.v"

module XOR_behavioral_tb;
  reg A, B;
  wire Y;

  XOR_behavioral Instance0 (Y, A, B);

  initial begin
    A = 0; B = 0;
    #1 A = 0; B = 1;
    #1 A = 1; B = 0;
    #1 A = 1; B = 1;
    #1;
  end

  initial begin
    $monitor("%t | A = %d | B = %d | Y = %d", $time, A, B, Y);
    $dumpfile("XOR_behavioral.vcd");
    $dumpvars();
  end
endmodule
