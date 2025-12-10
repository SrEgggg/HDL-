module NAND_data_flow(output Y, input A, B);
  // Dataflow modeling using continuous assignment
  assign Y = ~(A & B);
endmodule
