module pack;
  
  class packet;
    
    rand bit [3:0]addr;
    rand bit [2:0]data;
    
    constraint addrw {addr>5;}
    
    constraint dataw {data<5;}
    
  endclass
  
  initial begin
    
    packet p1=new();
    
    repeat(3)begin
      p1.randomize();
      $display("data:%0d|addr:%0d",p1.data,p1.addr);
    end
    
    $display("\n constraint OFF\n ");
      p1.addrw.constraint_mode(0);
      p1.dataw.constraint_mode(0);
      repeat(3)begin
      p1.randomize();
      $display("data:%0d|addr:%0d",p1.data,p1.addr);
        
          
    end
    
    $display("\n constraint ON \n");
    p1.addrw.constraint_mode(1);
    p1.dataw.constraint_mode(1);
    repeat(5)begin
      p1.randomize();
      $display("data:%0d|addr:%0d",p1.data,p1.addr);
      end
    
    $display("\n 'with' clause \n");
   
    repeat(5)begin
      p1.randomize() with {addr<10 && data>0 ;};
      $display("data:%0d|addr:%0d",p1.data,p1.addr);
      end
  end
endmodule

ANSWER:

# KERNEL: data:2|addr:13
# KERNEL: data:4|addr:13
# KERNEL: data:1|addr:9
# KERNEL: 
# KERNEL:  constraint OFF
# KERNEL:  
# KERNEL: data:0|addr:14
# KERNEL: data:5|addr:2
# KERNEL: data:0|addr:1
# KERNEL: 
# KERNEL:  constraint ON 
# KERNEL: 
# KERNEL: data:2|addr:10
# KERNEL: data:0|addr:10
# KERNEL: data:0|addr:8
# KERNEL: data:1|addr:14
# KERNEL: data:0|addr:12
# KERNEL: 
# KERNEL:  'with' clause 
# KERNEL: 
# KERNEL: data:3|addr:8
# KERNEL: data:1|addr:6
# KERNEL: data:2|addr:9
# KERNEL: data:3|addr:9
# KERNEL: data:1|addr:9
