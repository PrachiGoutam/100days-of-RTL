`timescale 1ns/1ps 

/*//-----------------------//
   Designed By -  Prcahi Goutam
   
//----------------- -------//*/

module day9_decoder_2x4();
    logic en;
    logic [1:0] a_in;
    logic [3:0] y_out;
  
   day9_decoder_2x4 (.en(en),.a_in(a_in),.y_out(y_out));

   initial
     begin 
      en = '0;
      a_in ='0;
     end 
 
   initial
     begin 
      en = 1'b1;
      a_in = 2'b00;
      #10;
      a_in = 2'b01;
      #10;
      a_in = 2'b10;
      #10;
      a_in = 2'b11;
      end 
   
   initial
      begin 
      $monitor("en=%0b a_in=%2b y_out=%4b",en,a_in,y_out);
      end
   
 endmodule 