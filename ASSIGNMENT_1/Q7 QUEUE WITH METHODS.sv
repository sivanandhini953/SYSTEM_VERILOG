module QUEUE;
  
  int j;
  int x;
  
  int q[$];
  
  initial begin
    
    j=1;
    
    q='{0,2,5};
    
    q.insert(1,j);
    
    $display("inserted j:%p",q);
    
    q.delete(1);
    
    $display("deleted index 1:%p",q);
    
    q.push_front(7);
    
    $display("push_front 7:%p",q);
    
    q.push_back(9);
    $display("push_back 9:%p",q);
    
    x=q[$];
    q.pop_back();
    $display("pop_back %d:",x,q);
    x=q[0];
    q.pop_front();
    $display("pop_front %d:%p",x,q);
    
    q.reverse();
    $display("reverse:%p",q);
    
    q.sort();
    $display("sorted:%p",q);
    
    q.rsort();
    $display("reverse sorted:%p",q);
    
    q.shuffle();
    $display("shuffled:%p",q);
    
  end
endmodule

ANSWER:
# KERNEL: inserted j:'{0, 1, 2, 5}
# KERNEL: deleted index 1:'{0, 2, 5}
# KERNEL: push_front 7:'{7, 0, 2, 5}
# KERNEL: push_back 9:'{7, 0, 2, 5, 9}
# KERNEL: pop_back           9:'{7, 0, 2, 5}
# KERNEL: pop_front           7:'{0, 2, 5}
# KERNEL: reverse:'{5, 2, 0}
# KERNEL: sorted:'{0, 2, 5}
# KERNEL: reverse sorted:'{5, 2, 0}
# KERNEL: shuffled:'{0, 2, 5}



