`include "ACT7_8by1_GL.v"

module ACT7_8by1_GL_tb;
reg D7,D6,D5,D4,D3,D2,D1,D0,S0,S1,S2;
wire Y;


integer i;
reg [10:0] vec;   // 11 input bits

  ACT7_8by1_GL pins(Y, D7, D6, D5, D4, D3, D2, D1, D0, S0, S1, S2);

  
  initial begin
    for(i = 0; i < 2048; i = i + 1) begin
      vec = i;

      // D7 first → S2 last
      {S2, S1, S0, D0, D1, D2, D3, D4, D5, D6, D7} = vec;

      #1;
    end
    #1 $finish;
  end

initial begin  // D7, D6, D5, D4, D3,D2,D1,D0
$monitor("%t | S2=%d | S1=%d | S0=%d | D0=%d | D1=%d | D2=%d | D3=%d | D4=%d | D5=%d | D6=%d | D7=%d | Y=%d",$time, S2, S1,S0,D0,D1,D2,D3,D4,D5,D6,D7,Y);
$dumpfile("gate.vcd");
$dumpvars();

end
endmodule
