`timescale 1ns/1ps






 /*------Designed by Prachi ---*/

  module day11_priority_encoder (
      input logic [7:0] a_in,
      output logic [3:0] y_out);

  always@(a_in)
    begin
      casex (a_in)
       8'b00000001: y_out = 3'b000;
       8'b0000001x: y_out = 3'b001;
       8'b000001xx: y_out = 3'b010;
       8'b00001xxx: y_out = 3'b011;
       8'b0001xxxx: y_out = 3'b100;
       8'b001xxxxx: y_out = 3'b101;
       8'b01xxxxxx: y_out = 3'b110;
       8'b1xxxxxxx: y_out = 3'b111;
       default    : y_out = 3'bxxx;
      endcase 
    end 

 endmodule 
      