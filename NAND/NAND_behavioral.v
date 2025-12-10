module NAND_behavioral(output reg Y, input A, B);
  always @ (A or B) begin
    if (A & B)   
      Y = 1'b0; 
    else
      Y = 1'b1; 
  end
endmodule
