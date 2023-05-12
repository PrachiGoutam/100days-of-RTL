`timescale 1ns/1ps 




 module day7_4x1_mux_tb();

   logic [3:0] a_in;
   logic s0;
   logic s1;
   logic out;

   day7_4x1_mux DUT(.a_in(a_in),.s0(s0),.s1(s1),.out(out));

   initial 
     begin 
        a_in = '0;
         s0 = '0;
         s1 = '0;
      end 

   initial 
      begin 
        a_in = 4'b1011;
        #5;
        {s0,s1}={0,0};
        #5
        {s0,s1}={0,1};
        #5
        {s0,s1}={1,1};
      end 
   
   initial 
     begin 
       $monitor("s0=%0b s1=%0b a_in=%4b",s0,s1,a_in);
     end
 
  endmodule 