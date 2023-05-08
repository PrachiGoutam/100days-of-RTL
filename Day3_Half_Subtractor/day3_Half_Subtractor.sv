`timescale 1ns/1ps 

module day3_Half_Subtractor(
      input logic a_i,
     input logic b_i,
     
     output logic diff_o,
     output logic borrow_o);

  
     assign diff_o= a_i ^ b_i;
     assign borrow_o = (~a_i) & b_i;

endmodule 