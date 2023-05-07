 `timescale 1ns/1ps 

    module day2_full_adder_uha_tb();

         logic a_i;
         logic b_i;
         logic c_i;

         logic sum_o;
         logic carry_o;

    day2_full_adder_uha DUT(.a_i(a_i),.b_i(b_i),.c_i(c_i),.sum_o(sum_o),.carry_o(carry_o));

    initial 
      begin 
        a_i = 1;
        b_i = 0;
        c_i = 1;
      end 

    initial 
      begin 
        $monitor(" Inputs a_i= %0b b_i=%0b c_i=%0b Outputs sum_o=%0b carry_o=%0b",a_i,b_i,c_i,sum_o,carry_o);
      end 
   
  endmodule 