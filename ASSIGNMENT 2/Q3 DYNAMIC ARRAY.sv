module dynamic_2d_array;

  int dyn[][]; 

  initial begin
    dyn = new[5]; 

    foreach (dyn[i]) begin
      dyn[i] = new[3];  

      foreach (dyn[i][j]) begin
        dyn[i][j] = $urandom_range(20, 10); 
      end
    end

   
    foreach (dyn[i]) begin
      $display("Row %0d: %p", i, dyn[i]);
    end
    
    
    
    $display("SIZE:%d",dyn.size);
    
    foreach (dyn[i])
      
      $display("SIZE of row[%0d]:%0d",i,dyn[i].size);
    
    
    $display("total SIZE:%0d",dyn.size*dyn[0].size);
    
    dyn.shuffle;
    
    foreach (dyn[i]) begin
      $display("Row %0d: %p", i, dyn[i]);
    end
    
  end

endmodule


ANSWER:

# KERNEL: Row 0: '{15, 18, 18}
# KERNEL: Row 1: '{12, 13, 13}
# KERNEL: Row 2: '{17, 10, 20}
# KERNEL: Row 3: '{12, 15, 16}
# KERNEL: Row 4: '{10, 17, 18}
# KERNEL: SIZE:          5
# KERNEL: SIZE of row[0]:3
# KERNEL: SIZE of row[1]:3
# KERNEL: SIZE of row[2]:3
# KERNEL: SIZE of row[3]:3
# KERNEL: SIZE of row[4]:3
# KERNEL: total SIZE:15
# KERNEL: Row 0: '{10, 17, 18}
# KERNEL: Row 1: '{12, 13, 13}
# KERNEL: Row 2: '{15, 18, 18}
# KERNEL: Row 3: '{17, 10, 20}
# KERNEL: Row 4: '{12, 15, 16}
