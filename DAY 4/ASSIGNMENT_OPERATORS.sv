module assignment_operators;
  
  logic [3:0]A;
  
  initial begin 
    
    A=5;
    
    A+=3;
    $display("A=%d",A);
    
    //A=55;
    A-=4;
    $display("A=%d",A);
    
   // A=55;
    A*=2;
    $display("A=%d",A);
    
    
    A/=2;
    $display("A=%d",A);
    
    
    A%=4;
    $display("A=%d",A);
    
    A=14;
    A&=5;
    $display("A=%d",A);
    
    A=15;
    A|=4;
    $display("A=%d",A);
    
    A=15;
    A^=9;
    $display("A=%d",A);
    
    A=14;
    A>>=2;
    $display("A=%d",A);
    
    A=14;
    A<<=2;
    $display("A=%d",A);
    
    A=14;
    A>>>=2;
    $display("A=%d",A);
    
    A=14;
    A<<<=2;
    $display("A=%d",A);
    
    
  end
endmodule




ANSWER:

# KERNEL: A= 8
# KERNEL: A= 4
# KERNEL: A= 8
# KERNEL: A= 4
# KERNEL: A= 0
# KERNEL: A= 4
# KERNEL: A=15
# KERNEL: A= 6
# KERNEL: A= 3
# KERNEL: A= 8
# KERNEL: A= 3
# KERNEL: A= 8
