
`timescale 1ns/1ps

  module day5_4bit_multiplier_tb();
       logic [3;0] a_in;
       logic [3;0] b_in;
       logic product;

 day5_4bit_multiplier DUT(.a_in(a_in),.b_in(b_in),.product(product));

  initial
    begin 
     a_in=4'b1011;
     b_in=4'b1110;
    $finish();
   end 

  initial 
   begin 
    $monitor("a_in = %0b bin= %0b product=%0b",a_in,b_in,product);
   end 
   
 endmodule 
 