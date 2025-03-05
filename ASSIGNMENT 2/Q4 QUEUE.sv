module queue;

  int q[$]; 

  initial begin
    q={3,6,7,8}; 

    q.insert(1,1);
    $display("QUEUE:%0p",q);
    
    q.delete(3);
    $display("QUEUE:%0p",q);
    
    q.insert(q.size,9);
    $display("QUEUE:%0p",q);
    
    q.shuffle;
    $display("QUEUE:%0p",q);
    
    q.reverse;
    $display("QUEUE:%0p",q);
    
  end

endmodule

ANSWER:

# KERNEL: QUEUE:3 1 6 7 8
# KERNEL: QUEUE:3 1 6 8
# KERNEL: QUEUE:3 1 6 8 9
# KERNEL: QUEUE:9 1 3 6 8
# KERNEL: QUEUE:8 6 3 1 9
