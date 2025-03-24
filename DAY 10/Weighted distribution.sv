// Code your testbench here
// or browse Examples
class distr;

rand bit [2:0]data;
rand bit [3:0] addr;

constraint dist_class{data dist{7:=50, 3:=60, 4:=90,[0:2]:=50};}

constraint dist_class1{addr dist{7:/50, 3:/60, 4:/90,[0:2]:/50};}

endclass


module top;

distr dc;

initial begin 
dc=new();
  for(int i=0;i<20;i++)begin

dc.randomize();
$display("data=%d  |  addr=%d",dc.data,dc.addr);
  end
end

endmodule

Answer:

# KERNEL: data=4  |  addr= 4
# KERNEL: data=0  |  addr= 4
# KERNEL: data=4  |  addr= 4
# KERNEL: data=2  |  addr= 4
# KERNEL: data=4  |  addr= 4
# KERNEL: data=4  |  addr= 7
# KERNEL: data=3  |  addr= 0
# KERNEL: data=0  |  addr= 7
# KERNEL: data=3  |  addr= 7
# KERNEL: data=7  |  addr= 7
# KERNEL: data=4  |  addr= 2
# KERNEL: data=4  |  addr= 4
# KERNEL: data=4  |  addr= 7
# KERNEL: data=1  |  addr= 4
# KERNEL: data=0  |  addr= 4
# KERNEL: data=7  |  addr= 3
# KERNEL: data=4  |  addr= 2
# KERNEL: data=3  |  addr= 4
# KERNEL: data=1  |  addr= 3
# KERNEL: data=0  |  addr= 4
