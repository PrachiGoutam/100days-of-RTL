`timescale 1ns/1ps


 module day4_Ripple_carry_adder #(parameter width=4)(
       input logic [width-1:0]a_in,
       input logic [width-1:0]b_in,
       input logic c_in ;
       output logic [width-1:0] sum_o,
       output logic carry_o);

 
  wire [width-2:0] w;

  day2_full_adder_uha fa1( .a_i(a_in[0]),.b_i(b_in[0]),.c_i(c_in),.sum_o(sum_o[0]),.carry_o(w[0]));
  
  genvar i;
  generate
    for(i=1;i< width-1;i++) begin
     day2_full_adder_uha fa2( .a_i(a_in[i]),.b_i(b_in[i]),.c_i(w[i-1]),.sum_o(sum_o[i]),.carry_o(w[i]));
    end 
  endgenerate 

  day2_full_adder_uha fa4( .a_i(a_in[width-1]),.b_i(b_in[width-1]),.c_i[width-2]),.sum_o(sum_o[width-1]),.carry_o(carry_o));
  
endmodule 