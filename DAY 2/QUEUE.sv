module queue;
  
  string animal[$];
  
  initial begin
    
    animal={"lion","tiger","owl"};
    
    $display("animals:",animal);
    
    $display("size :%0d ",animal.size);
    
    animal.insert(0,"cheetah");
    
    animal.insert(3,"monkey");
    
    animal.insert(4,"dear");
    
     $display("animals:",animal);
    
    animal.pop_front();
     $display("animals:",animal);
    
    animal.pop_back();
     $display("animals:",animal);
    
    animal.push_front("crocodile");
     $display("animals:",animal);
    
    animal.push_back("runguton");
     $display("animals:",animal);
    
    animal.delete();
     $display("animals:",animal);
    
    
  end
endmodule
