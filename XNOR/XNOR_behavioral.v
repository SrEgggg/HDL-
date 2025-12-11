module XNOR_behavioral(output reg Y, input A, B);
  always @ (A or B) begin
    if (A == B)
      Y = 1'b1;   // XNOR is 1 when inputs are equal
    else
      Y = 1'b0;   // Otherwise 0
  end
endmodule
