`timescale 1ns/1ps



 module day8_demux_1x4_tb();
     logic a_in;
     logic [1:0] s;
     logic [3:0] y;


  day8_demux_1x4 dut(.a_in(a_in),.s(s),.y(y));
   
   initial 
     begin 
       a_in =1'b1;
       s =2'b00;
     end 

   initial 
     begin
       s =2'b00;
       #10;
       s = 2'b01;
       #10;
       s= 2'b10;
       #10;
       s= 2'b11;
     end 

   initial 
     begin 
      $monitor (" a_in=%0b s=%2b y=%4b" ,a_in,s,y);
     end 


   endmodule 
