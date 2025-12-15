`include "ACT7_4by1_GL.v"

module ACT7_4by1_GL_tb;
reg I3,I2,I1,I0,S0,S1;
wire Y;
 integer i;
 reg [5:0] vec;

ACT7_4by1_GL pins(Y,I3,I2,I1,I0,S0,S1);
// Stimulus: iterate through all 64 combinations (truth table)
 // Generate all 64 patterns
  initial begin
    for (i = 0; i < 64; i = i + 1) begin
      vec = i;

      // I3 gets 1 first, S1 gets 1 last
      {S1, S0, I0, I1, I2, I3} = vec;

      #1;
    end
    #1 $finish;
  end
initial begin
$monitor("%t |  S1=%d | S0=%d | I0=%d | I1=%d | I2=%d | I3=%d | Y=%d",$time,S1,S0,I0,I1,I2,I3,Y);
$dumpfile("gate.vcd");
$dumpvars();

end
endmodule