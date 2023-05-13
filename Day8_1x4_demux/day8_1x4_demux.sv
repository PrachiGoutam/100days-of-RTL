`timescale 1ns/1ps





 module day8_demux_1x4(
    input logic a_in,
    input logic [1:0] s,
    output logic [3:0] y);

always @(a_in,s)
    begin
  case(s)
       2'b00 : begin
               y[0]=a_in; y[3:1]=3'b000;
               end
       2'b01 : begin
               y[1]=a_in; y[0]=1'b0; y[3:2]=2'b00;
               end
       2'b10 : begin
               y[2]=a_in; y[1:0]=2'b00; y[3]=1'b0;
               end
       2'b11 : begin
               y[3]=a_in; y[2:0]=3'b000;
               end
  endcase
    end

 endmodule