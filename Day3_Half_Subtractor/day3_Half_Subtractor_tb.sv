`timescale 1ns/1ps 

  module day3_Half_Subtractor_tb();

     logic a_i;
    logic b_i;
    logic diff_o;
    logic borrow_o;

  day3_Half_Subtractor DUT(.a_i(a_i),.b_i(b_i),.diff_o(diff_o),.borrow_o(borrow_o));

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
  
    