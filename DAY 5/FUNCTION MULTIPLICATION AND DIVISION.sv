module func_mul_div;
 int a;
  int b;
  int mul1;
  int div1;
  
   
  function int mul(input int a,input int b);
    
    mul=a*b;
    
  endfunction
  
  function int div (input int a,input int b);
    div=a/b;
  endfunction
  
  initial begin 
    a=$urandom_range(2,4);b=$urandom_range(5,6);
    mul1=mul(a,b);
    div1=div(a,b);
 $display ("a=%d,b-%d,multiplication:%d,division:%d",a,b,mul1,div1);   
    #10     a=7;b=3;
    mul1=mul(a,b);
    div1=div(a,b);
$display ("a=%d,b-%d,multiplication:%d,division:%d",a,b,mul1,div1);
    
    #10     a=6;b=2;
    mul1=mul(a,b);
    div1=div(a,b);

   
    $display ("a=%d,b-%d,multiplication:%d,division:%d",a,b,mul1,div1);
    
  end
endmodule



ANSWER:
# KERNEL: a=          3,b-          6,multiplication:         18,division:          0
# KERNEL: a=          7,b-          3,multiplication:         21,division:          2
# KERNEL: a=          6,b-          2,multiplication:         12,division:          3
