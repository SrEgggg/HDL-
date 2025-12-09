`include "XOR_gate_level.v"

module XOR_gate_level_tb;
  reg A, B;
  wire Y;

  XOR_gate_level Instance0 (Y, A, B);

  initial begin
    A = 0; B = 0;
    #1 A = 0; B = 1;
    #1 A = 1; B = 0;
    #1 A = 1; B = 1;
    #1;
  end

  initial begin
    $monitor("%t | A = %d | B = %d | Y = %d", $time, A, B, Y);
    $dumpfile("XOR_gate_level.vcd");
    $dumpvars();
  end
endmodule
