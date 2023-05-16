`timescale 1ns/1ps 

 

 module day11_priority_encoder_tb();
   
     logic [7:0] a_in;
     logic [2:0] y_out;
    
   initial
     begin 
       a_in = 8'b0;
     end 

   initial 
     begin 
        a_in = 8'b00000001;
        #5;
        a_in = 8'b00000011;
        #5;
        a_in = 8'b00000000;
     end 

    initial
      begin
         $monitor("a_in = %8b y_out = %3b",a_in,y_out);
      end

   endmodule