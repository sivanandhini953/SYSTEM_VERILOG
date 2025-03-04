module queue_method;
  
  string q[$];
  
  initial begin
    //int d;
    
    q={"ball","bat","stump","umbrella","sticker"};
    
  
    $display("queue size is: %d",q.size); 
    
    
    q.insert(q.size/2,"gloves");
    
    $display("queue insert is: %p",q);
    
    q.insert(q.size,"rain");
    $display("queue insert is: %p",q);
    
    q.insert(q.size-1,"shield");
    $display("queue insert is: %p",q);
    
    q.delete(q.size-3);
    $display("queue delete is: %p",q);
    
    q.pop_front;
    $display("queue pop_front is: %p",q);
    
    q.pop_back;
    $display("queue pop_front is: %p",q);
    
    q.push_front("umpire");
    $display("queue push_front is: %p",q);
    
    
    q.push_back("over");
    $display("queue push_front is: %p",q);
    
  end
  
endmodule
