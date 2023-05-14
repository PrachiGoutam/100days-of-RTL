`timescale 1ns/1ps 

/*//-----------------------//
   Designed By -  Prcahi Goutam
   
//----------------- -------//*/

module day9_decoder_2x4(
   input logic en,
   input logic [1:0] a_in,
   output logic [3:0] y_out);
  

   always@(en,a_in)
     begin
     case(a_in)
       2'b00: y_out = 4'b0001;
       2'b01: y_out = 4'b0010;
       2'b10: y_out = 4'b0100;
       2'b11: y_out = 4'b1000;
     endcase
    end 

endmodule 
