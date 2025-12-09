module XOR_behavioral(output reg Y, input A, B);
  always @(*) begin
    if (A == B)
      Y = 0;  // same inputs -> output 0
    else
      Y = 1;  // different inputs -> output 1
  end
endmodule
