`timescale 1ns/1ps 





 module day10_4x2_encoder_tb();
     logic en;
     logic [3:0] a_in;
     logic [1:0] y_out;

 initial
   begin 
     en = 1'b0;
     a_in = 4'b0000;
   end 
 
 initial
   begin 
     en = 1'b1;
     a_in = 4'b0001;
     #10;
     a_in = 4'b0010;
     #10;
     a_in = 4'b0100;
     #10;
     a_in = 4'b1000;
     #10;
   end 

 initial 
    begin 
    $monitor("en=%0b a_in=%4b y_out=%2b",en,a_in,y_out);
    end 

 endmodule 
