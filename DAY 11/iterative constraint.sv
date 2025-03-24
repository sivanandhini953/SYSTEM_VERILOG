module itr_cons;
  
  class bus;
    
    rand int data[4];
    rand int addr[4];
    
    constraint busd{foreach (data[i]) data[i] inside {30,40,50,60,70};}
    
    constraint busa{foreach (addr[j]) addr[j]>10&&addr[j]<15;}
    
  endclass
  
  
  bus b;
  
  initial begin
    
    b=new();
    b.randomize();
    
    foreach (b.data[i]) $display("data[%0d]=%0d",i,b.data[i]);
    foreach (b.addr[j]) $display("addr[%0d]=%0d",j,b.addr[j]);
    
  end
endmodule

ANSWER:
data[0]=30
data[1]=60
data[2]=40
data[3]=30
addr[0]=11
addr[1]=11
addr[2]=14
addr[3]=11
