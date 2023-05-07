`timescale 1ns/1ps

module day2_full_adder_uha( 
       input logic a_i;
       input logic b_i;
       input logic c_i;
       output logic sum_o;
       output logic carry_o);

      wire sum_a;
      wire cout_a;
      wire cout_b;

      day1_half_adder ha_1(.a_i(a_i),.b_i(b_i),.sum_o(sum_a),.carry_o(cout_a));
      day1_half_adder ha_2(.a_i(c_i),.b_i(sum_a),.sum_o(sum_o),.carry_o(cout_b));
      
       assign carry_o = cout_a | cout_b;


   endmodule 