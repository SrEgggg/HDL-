`include "ACT8_1by4_GL.v"

module ACT8_1by4_GL_tb;
reg S1, S0, D;
wire Y0, Y1, Y2, Y3;
 integer i;
 reg [5:0] vec;

ACT8_1by4_GL pins(Y0, Y1, Y2, Y3, S1, S0, D);
  initial begin
    for (i = 0; i < 8; i = i + 1) begin
      vec = i;

      {S1, S0, D} = vec;

      #1;
    end
    #1 $finish;
  end
initial begin
$monitor("%t |  S1=%d | S0=%d | D =%d | Y0=%d | Y1=%d | Y2=%d | Y3=%d",$time,S1,S0,D,Y0,Y1,Y2,Y3);
$dumpfile("gate.vcd");
$dumpvars();

end
endmodule