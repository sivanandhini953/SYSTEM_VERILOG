module queue_bound;
  
  int qb[$:5];
  
  initial begin
    
    qb={11,22,33,44,55};
    
    foreach (qb[i])
    
      $display("queue[%d]= ",i,qb[i]);
    
    qb.push_front(88);
    
    $display("queue:%p",qb);
    
   // qb.pop_back();
    
    qb.push_front(99);
    
    $display("queue:%p",qb);
    
  end
endmodule



ANS:

# KERNEL: queue[          0]=          11
# KERNEL: queue[          1]=          22
# KERNEL: queue[          2]=          33
# KERNEL: queue[          3]=          44
# KERNEL: queue[          4]=          55
# KERNEL: queue:'{88, 11, 22, 33, 44, 55}
# RUNTIME: Warning: RUNTIME_0249 testbench.sv (21): Operation would exceed maximum right index of 5.
# KERNEL: Time: 0 ns,  Iteration: 0,  Instance: /queue_bound,  Process: @INITIAL#7_0@.
# KERNEL: queue:'{88, 11, 22, 33, 44, 55}




//  # KERNEL: queue[          0]=          11
# KERNEL: queue[          1]=          22
# KERNEL: queue[          2]=          33
# KERNEL: queue[          3]=          44
# KERNEL: queue[          4]=          55
# KERNEL: queue:'{88, 11, 22, 33, 44, 55}
# KERNEL: queue:'{99, 88, 11, 22, 33, 44}
