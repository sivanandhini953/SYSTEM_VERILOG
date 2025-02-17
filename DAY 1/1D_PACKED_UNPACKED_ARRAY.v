module packed_1D;
  logic [7:0]a; 
  byte b [7:0];

initial
begin
a = 8'h44; 
  b[7] = 8'h44; 
  b[6] =8'h33;
 
end
  
initial
begin 
  #10 $display("a=%h",a);
  foreach (b[i])
    $display("b[%d]=%h",i,b[i]);
#10 $finish;
end
endmodule




ANSWER:

# KERNEL: a=44
# KERNEL: b[          7]=44
# KERNEL: b[          6]=33
# KERNEL: b[          5]=00
# KERNEL: b[          4]=00
# KERNEL: b[          3]=00
# KERNEL: b[          2]=00
# KERNEL: b[          1]=00
# KERNEL: b[          0]=00
