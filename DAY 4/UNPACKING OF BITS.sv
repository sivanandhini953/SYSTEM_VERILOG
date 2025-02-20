module OP;
  logic [3:0] A1, A2;
  logic [7:0]value;
initial begin
  
  value=8'h56;
  
  {>> {A1,A2}}=value;
  
  $display("unpacked A1=%d,A2=%d",A1,A2);
  
end 
endmodule


ANSWER:

# KERNEL: unpacked A1= 5,A2= 6
