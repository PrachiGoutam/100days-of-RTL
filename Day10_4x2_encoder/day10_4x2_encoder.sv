`timescale 1ns/1ps 



module day10_4x2_encoder (
      input logic en,
      input logic [3:0] a_in,
      output logic [1:0] y_out);

 always@(en,a_in)
    begin
     case (a_in)
       4'b0001: y_out = 2'b00;
       4'b0010: y_out = 2'b01;
       4'b0100: y_out = 2'b10;
       4'b1000: y_out = 2'b11;
       default : y_out = 2'bxx;
     endcase 
    end 
 
endmodule 