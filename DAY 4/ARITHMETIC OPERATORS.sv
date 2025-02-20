module arithmetic_operator;
  

integer a, b, c, d;
real e, f, g, h;
  
initial begin
  
  $display("\nA to the Power of B \n");
  
  a = 3.4; b = 2.3;
c = a**b;
  $display("integer c = 3.4**2.3 :: a = %0d b = %0d c = %0d",
a , b, c);
  
e = 3.4; f = 2.3;
g = e**f; 
$display("real g = 3.4**2.3 :: e = %0f f = %0f g = %0f",
e, f, g);
  
a = 0; b= 3;
c = a**b;
$display("c = 0**3 :: a = %0d b = %0d c = %0d", a , b, c);
  
a = 2; b= -3;
c = a**b;
$display("c = 0**-3 :: a = %0d b = %0d c = %0d", a , b, c);

  a = -2; b= 3;
c = a**b;
$display("c = -2**3 :: a = %0d b = %0d c = %0d", a , b, c);
  
end
endmodule





ANSWER:

# KERNEL: A to the Power of B 
# KERNEL: 
# KERNEL: integer c = 3.4**2.3 :: a = 3 b = 2 c = 9
# KERNEL: real g = 3.4**2.3 :: e = 3.400000 f = 2.300000 g = 16.687893
# KERNEL: c = 0**3 :: a = 0 b = 3 c = 0
# KERNEL: c = 0**-3 :: a = 2 b = -3 c = 0
# KERNEL: c = -2**3 :: a = -2 b = 3 c = -8
