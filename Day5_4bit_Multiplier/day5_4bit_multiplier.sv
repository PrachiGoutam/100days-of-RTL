`timescale 1ns/1ps 


module day5_4bit_multiplier(
      input logic [3;0] a_in,
      input logic [3;0] b_in,
      output logic product);

  wire [3:0] m0;
  wire [4:0] m1;
  wire [5:0] m2;
  wire [6:0] m3;

  wire [7:0] s1,s2,s3;
  
      assign m0={4{a_in[0]}} & b_in[3:0];
      assign m1={4{a_in[1]}} & b_in[3:0];
      assign m2={4{a_in[2]}} & b_in[3:0];
      assign m3={4{a_in[3]}} & b_in[3:0];
  
  assign s1 = m0 + (m1<<1);
  assign s2 = m1 + (m2<<2);
  assign s3 = m2 + (m3<<3);
  assign product = s3;

 endmodule 
 
