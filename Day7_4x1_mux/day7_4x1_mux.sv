`timescale 1ns/1ps





 module day7_4x1_mux( 
     input  logic [3:0] a_in,
     input logic s0,
     input logic s1,
     output logic out);

 assign out = s1 ? (s0? a_in[2]:a_in[3]):(s0? a_in[0]:a_in[1]);

endmodule 