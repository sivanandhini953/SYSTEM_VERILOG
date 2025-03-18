class child;
  
rand bit [7:0] data;
endclass

class parent extends child;
rand bit [7:0] addr;
rand child ch = new ( ); 
  
  constraint addrw {addr<40;}
  constraint chw {data < 50;}
endclass

module tb;
  
 
int i;
parent pp = new ( );
  
initial begin
for (i=0; i < 4; i++) begin
pp.randomize( );
  
  $display("Parent addr = %d Child data = %d", pp.addr,
pp.data);
  
end
end
endmodule

ANSWER;
# KERNEL: Parent addr =   9 Child data =  42
# KERNEL: Parent addr =   0 Child data =   6
# KERNEL: Parent addr =  16 Child data =  26
# KERNEL: Parent addr =   2 Child data =  26
