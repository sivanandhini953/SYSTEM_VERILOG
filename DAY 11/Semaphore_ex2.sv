module semaphore_example();
  semaphore sem = new(1);
  
  task process_A();
    #0 if(sem.try_get()) begin
      $display("process_A: Key received");
       $display("process_A started");
    #5ns;
    $display("process_A completed");
    end
    else 
      $display("process_A: Key is not available");
   
    sem.put();
  endtask
  
  task process_B();
  
    if(sem.try_get()) begin
      $display("process_B: Key received");
    $display("process_B started");
    #4ns;
    $display("process_B completed");
    end
    else 
      $display("process_B: Key is not available");
    
    sem.put();
  endtask

  initial begin
    fork
      process_A();
      process_B();
    join
  end
endmodule

ANSWER:
process_B: Key received
process_B started
process_A: Key is not available
process_B completed
