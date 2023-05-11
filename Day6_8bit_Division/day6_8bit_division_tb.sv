`timescale 1ns/1ps 
 
 
module day6_8bit_division_tb();
   
     logic [7:0] A;
     logic [7:0] B;
     
     logic [7:0] Quotient;
     logic [7:0] Remainder;

   day6_8bit_division dut(.A(A),.B(B),.Quotient(Quotient),.Remainder(Remainder));

    initial 
      begin 
         A = 5;
         B = 25;
        #100;
         A = 13;
         B = 28;
        #100;
         A = 6;
         B = 37;
       $finish();
     end 

    initial
      begin 
         $monitor("A=%0d B=%0d Quotient=%0d Remainder= %0d", A,B,Quotient,Remainder);
      end 

 endmodule 