module function_sum;
 int a;
  int b;
  int add;
   
  function int sum_function(input int a,input int b);
    
    sum_function=a+b;
    
  endfunction
  
  initial begin 
    a=4;b=5;
    add=sum_function (a,b);
   
    $display ("sum:%d",add);
    
  end
endmodule

ANSWER sum: 9
