module queue_of_queue;
  
  typedef int queue1[$];
  
  queue1 queue2[$];
  
  initial begin
    
    queue2[0].push_front(2);
    queue2[1].push_front(3);
    queue2[2].push_front(4);
    queue2[3].push_front(5);
    
    $display("queue1:%p",queue2);
    
  end 
endmodule
