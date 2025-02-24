
module tash_arith;
  
  int a;
  int b;
  int c;
  
  task sum(input int a,b,output int c);
    
    c=a+b;
    $display ("sum c=%d",c);
    endtask
  
  task sub(input int a,b,output int c);
    
    c=a-b;
    $display ("sub c=%d",c);
  endtask
  
  task mul(input int a,b,output int c);
    
    c=a*b;
    $display ("mul c=%d",c);
  endtask
  
  task div(input int a,b,output int c);
    
    c=a/b;
    $display ("quotient c=%d",c);
  endtask
  
  task mod(input int a,b,output int c);
    
    c=a%b;
    $display ("reminder c=%d",c);
  endtask
  
  
  initial begin
    
    a=10; b=5;
    sum(a,b,c);
    sub(a,b,c);
    mul(a,b,c);
    div(a,b,c);
    mod(a,b,c);
   
  end
endmodule


ANSWER:
# KERNEL: sum c=         15
# KERNEL: sub c=          5
# KERNEL: mul c=         50
# KERNEL: quotient c=          2
# KERNEL: reminder c=          0
