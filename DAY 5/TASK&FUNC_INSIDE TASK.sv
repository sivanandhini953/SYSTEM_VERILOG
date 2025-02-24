module task_task_func;
  byte a;
  byte b;
  byte c,d;
  
  
  
  task bit_and(input bit a,b,output bit c);
    
    
    c=a&b;
    
  endtask
  
  function bit bit_or(input bit a,b);
    
    bit_or=a|b;
    
  endfunction
  
  task and_or(input byte a,b,output byte c,d);
    
    for (int i=0;i<8;i++)begin
      
      bit_and(a[i],b[i],c[i]);
    
    
   
      d[i]=bit_or(a[i],b[i]);
    
    end
  endtask
  
  initial begin 
    
    a=8'h0f;b=8'hf1;
    
    and_or(a,b,c,d);
    $display ("AND_operation:%b",c );
    $display ("OR_operation:%b",d );
      
    
  end
endmodule
    
      
    
    
    
