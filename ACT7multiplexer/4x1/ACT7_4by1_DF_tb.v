`include "ACT7_4by1_DF.v"

module ACT7_4by1_DF_tb;
reg I3,I2,I1,I0,S0,S1;
wire Y;
 integer i;
 reg [5:0] vec;

ACT7_4by1_DF pins(Y,I3,I2,I1,I0,S0,S1);
 initial begin
    for (i = 0; i < 64; i = i + 1) begin
      vec = i;                          
      {S1, S0, I0, I1, I2, I3} = vec;  

      #1;
    end
    #1 $finish;
  end

initial begin
$monitor("%t |  S1=%d | S0=%d | I0=%d | I1=%d | I2=%d | I3=%d | Y=%d",$time,  S1,S0,I0,I1,I2,I3,Y);
$dumpfile("data.vcd");
$dumpvars();

end
endmodule