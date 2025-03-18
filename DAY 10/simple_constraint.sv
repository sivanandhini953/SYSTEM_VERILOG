class packet ;

rand bit [8:0] addr;
constraint c1{addr > 50;}
constraint c2{addr <= 60;}

endclass
module top;

initial begin 

packet pkt=new();

for (int i=0;i<10;i++)begin

pkt.randomize();

$display("addr[%d]=%d",i,pkt.addr);

end
end

endmodule

ANSWER:

# KERNEL: addr[          0]= 59
# KERNEL: addr[          1]= 53
# KERNEL: addr[          2]= 52
# KERNEL: addr[          3]= 53
# KERNEL: addr[          4]= 57
# KERNEL: addr[          5]= 56
# KERNEL: addr[          6]= 54
# KERNEL: addr[          7]= 58
# KERNEL: addr[          8]= 60
# KERNEL: addr[          9]= 55
