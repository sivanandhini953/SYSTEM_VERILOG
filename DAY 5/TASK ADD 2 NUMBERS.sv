module task_sum;
  int a;
  int b;
  int sum;
   
  task sum_task ( input int a,input int b,output int sum);
    
    sum=a+b;
    $display ("sum:%d",sum);
  endtask
  
  initial begin 
    
    sum_task (4,9,sum);
    #3 sum_task (13,9,sum);
    #3 sum_task (14,9,sum);
   
    
  end
endmodule


ANSWER:

# KERNEL: sum:         13
# KERNEL: sum:         22
# KERNEL: sum:         23
