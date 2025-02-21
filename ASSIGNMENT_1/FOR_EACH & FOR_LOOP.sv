module array;
  
  bit [11:0]my_array[3:0];
  
  initial begin
    
    my_array[0]=12'h012;
    my_array[1]=12'h345;
    my_array[2]=12'h678;
    my_array[3]=12'h9ab;
    
foreach(my_array[i])
//      foreach(my_array[i][j])
      
  $display("my_array[%0d]=%p",i,my_array[i][5:4]);
    
    for(int i=0;i<4;i++)
     // for (int j=4;j<6;j++)
       // my_array[i]=my_array[i][j];
    
      $display("my_array with for_loop :my_array[%0d]:%p",i,my_array[i][5:4]);
        
        end 
        endmodule


ANSWER:

# KERNEL: my_array[3]=2
# KERNEL: my_array[2]=3
# KERNEL: my_array[1]=0
# KERNEL: my_array[0]=1
# KERNEL: my_array with for_loop :my_array[0]:1
# KERNEL: my_array with for_loop :my_array[1]:0
# KERNEL: my_array with for_loop :my_array[2]:3
# KERNEL: my_array with for_loop :my_array[3]:2
