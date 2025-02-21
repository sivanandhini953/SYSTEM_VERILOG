module top;
  
  byte b;
  integer i;
  int i1;
  bit [15:0]bi;
  shortint int1;
  shortint int2;
  
  initial begin
    
    i=32'b000_1111_xxxx_zzzz;
    i1=i;
    bi=16'h8000;
    int1=bi;
    int2=int1-1;
    $display("range of values 0f my byte is[7:0]:%h",b);
             $display("value of i1 in hex:%h",i1);
                      $display("bi in decimal:%d",bi);
                      $display("int1 in  decimal:%d",int1);
                      $display("int2 in decimal:%d",int2);
                      
                      
             
             
    
  end
endmodule


ANSWER:

# KERNEL: range of values 0f my byte is[7:0]:00         //byte is 2state datatype => default 0.
# KERNEL: value of i1 in hex:00000f00                ///int 2 state datatype => default 0  & conversion from 32 bit to 16 bit
# KERNEL: bi in decimal:32768                         //value of 1000 0000 0000 0000 
# KERNEL: int1 in  decimal:-32768                      //value of 1000 0000 0000 0000 assigned to signed data type so msb is signed bit 
# KERNEL: int2 in decimal: 32767                        // value of -32768-1=-32769 => out of range of 32bit . range(-32768 to 32727)wrap around to 32767  .so positive
