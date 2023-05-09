`timescale 1ns/1ps 





 module day4_Ripple_Carry_Adder_tb();
      
      localparam width=4;

      logic [width-1:0]a_in;
      logic [width-1:0]b_in;
      logic c_in;
      logic [width-1:0] sum_o;
      logic [width-1:0] carry_o;
       
      day4_Ripple_Carry_Adder DUT(.a_in(a_in),.b_in(b_in),.c_in(c_in),.sum_o(sum_o),.carry_o(carry_o));
           
      initial 
        begin 
         for(i=0;i<16;i++) begin 
            a_in = $urandom_range(4'b0000,4'b1111);
            b_in = $urandom_range(4'b0000,4'b1111);
            c_in = $random();
          #10;
         end 
        $finish();
       end 

    endmodule 