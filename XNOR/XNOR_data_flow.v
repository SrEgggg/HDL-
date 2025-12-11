module XNOR_data_flow(output Y, input A, B);
  // Dataflow modeling of XNOR
  assign Y = ~(A ^ B);
endmodule
