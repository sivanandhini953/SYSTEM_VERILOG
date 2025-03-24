class distClass;
rand bit [1:0] data1, data2, data3, data4;
rand bit [1:0] addr1, addr2, addr3, addr4;
constraint distr { unique {data1, data2, data3, data4}; }
  
  constraint distr1 { {addr1, addr2, addr3, addr4}; }
//non-unique random
endclass

module top;
  
distClass dc = new ();
  
initial begin
for (int i = 0; i < 5; i++) begin
dc.randomize();
$display ("data1=%0d data2=%0d data3=%0d data4=%0d",dc.data1, dc.data2, dc.data3, dc.data4);
$display ("addr1=%0d addr2=%0d addr3=%0d addr4=%0d",dc.
addr1, dc.addr2, dc.addr3, dc.addr4);
$display("\n");
end
end
endmodule

Answer:
# KERNEL: data1=3 data2=2 data3=0 data4=1
# KERNEL: addr1=1 addr2=0 addr3=3 addr4=2
# KERNEL: 
# KERNEL: 
# KERNEL: data1=0 data2=1 data3=2 data4=3
# KERNEL: addr1=0 addr2=3 addr3=2 addr4=3
# KERNEL: 
# KERNEL: 
# KERNEL: data1=2 data2=3 data3=1 data4=0
# KERNEL: addr1=0 addr2=3 addr3=3 addr4=2
# KERNEL: 
# KERNEL: 
# KERNEL: data1=2 data2=0 data3=1 data4=3
# KERNEL: addr1=2 addr2=1 addr3=0 addr4=2
# KERNEL: 
# KERNEL: 
# KERNEL: data1=1 data2=2 data3=0 data4=3
# KERNEL: addr1=2 addr2=0 addr3=0 addr4=1
