module OP;
int a, b, c, d;
initial
begin
a = 10;
b = a ++; 
$display("b = a ++ :: a = %0d b = %0d",a,b);
  
a = 20;
b = ++ a; 
$display("b = ++ a :: a = %0d b = %0d",a,b);
  
a = 10;
b = a --; 
$display("b = a -- :: a = %0d b = %0d",a,b);
  
a = 20;
b = -- a; 
  
$display("b = -- a :: a = %0d b = %0d",a,b);
  
a = 10; c = 10;
b = ++a + ++c;

  
$display("b = ++a + ++c :: a = %0d c = %0d b = %0d",a,c,b);
  
a = 10; c = 10;
b = a++ + c++;

$display("b = a++ + c++ :: a = %0d c = %0d b = %0d",a,c,b);
  
end
endmodule


ANSWER:

# KERNEL: b = a ++ :: a = 11 b = 10
# KERNEL: b = ++ a :: a = 21 b = 21
# KERNEL: b = a -- :: a = 9 b = 10
# KERNEL: b = -- a :: a = 19 b = 19
# KERNEL: b = ++a + ++c :: a = 11 c = 11 b = 22
# KERNEL: b = a++ + c++ :: a = 11 c = 11 b = 20
