module pack;
  
  class packet;
    
    randc static bit [3:0]addr;
    rand bit [2:0]data;
    
    constraint addrw {addr>5;}
    
    constraint dataw {data<5;}
    
  endclass
  
  initial begin
    
    packet p1=new();
    packet p2=new();
   
    
    repeat(3)begin
      p1.randomize();
      $display("p1.addr=%d,p1.data=%d,p2.addr=%d,;p2.data=%d",p1.addr,p1.data,p2.addr,p2.data);
      
      
    end
    
  end
endmodule


ANSWER:

# KERNEL: p1.addr=13,p1.data=2,p2.addr=13,;p2.data=0
# KERNEL: p1.addr=12,p1.data=0,p2.addr=12,;p2.data=0
# KERNEL: p1.addr= 9,p1.data=4,p2.addr= 9,;p2.data=0
