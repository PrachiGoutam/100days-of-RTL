`timescale 1ns/1ps 

 module day1_Half_adder_tb();
   
    logic a_i;
    logic b_i;
    logic sum_o;
    logic carry_o;

  Half_adder DUT(.a_i(a_i),.b_i(b_i),.sum_o(sum_o),.carry_o(carry_o));

     initial 
        begin 
          a_i = 0;
          b_i = 0;
          #10;
          a_i = 0;
          b_i = 1;
          #10;
          a_i = 1;
          b_i = 0;
          #10;
          a_i = 1;
          b_i = 1;
          #10;
        end 
    
      initial 
        begin 
           $monitor("a_i=%0b b_i=%0b sum_o =%0b carry_o=%0b",a_i,b_i,sum_o,carry_o);
         end 

    endmodule 
  