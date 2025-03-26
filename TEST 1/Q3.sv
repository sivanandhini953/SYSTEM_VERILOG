Create two objects for class D and do shallow copy of two objects. Invoke display
function before and after the copy operation.

  ANSWER:
  module top;
  
class bus;

int addr=6;
int data=7;

endclass 

bus b1,b2;

initial begin

b1=new();

$display("addr=%d|data=%d",b1.addr,b1.data);
b2=new b1;
  $display("addr=%d|data=%d",b2.addr,b2.data);
 b2.addr=8;
  b2.data=9;
  $display("addr=%d|data=%d",b1.addr,b1.data);
  $display("addr=%d|data=%d",b2.addr,b2.data);
end 
endmodule

  SIMULATION RESULT:

  # KERNEL: addr=          6|data=          7
# KERNEL: addr=          6|data=          7
# KERNEL: addr=          6|data=          7
# KERNEL: addr=          8|data=          9
