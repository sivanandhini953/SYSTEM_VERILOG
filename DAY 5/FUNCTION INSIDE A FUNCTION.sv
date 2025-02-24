
module func_func;
  
  bit sum,a,b,c_in,carry_out;
  
  function bit half_adder(input bit a,b,output bit c);
    
    half_adder=a^b;
    c=a&b;
    
  endfunction 
  
  
  function bit full_adder(input bit a,b,c,output bit carry_out);
    
    bit s1,c1,c2;
    
    s1=half_adder(a,b,c1);
    full_adder=half_adder(s1,c,c2);
   carry_out=c1|c2;
    
    
  endfunction
    initial begin 
      
      a=1;b=0;c_in=1;
      sum=full_adder(a,b,c_in,carry_out);
      
      $display("sum: %b,carry:%b",sum,carry_out);
      
    end
endmodule
    
    
    
