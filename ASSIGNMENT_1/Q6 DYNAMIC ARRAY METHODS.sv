


module dyn_array;
  int d1 [];
  int d[];
  
  initial begin
    
    d='{9,1,8,3,4,4};
    
    d1=new[6];
    
    foreach(d1[i])
      
      d1[i]=i;
    $display("Array d1=%p",d1);
    
    d1.delete();
    $display("Array d1=%p deleted!!!",d1);
    
    $display("Array d=%p",d);
    d.reverse();
    $display("Array d=%p",d);
    d.sort();
    $display("Array d=%p",d);
    d.rsort();
    $display("Array d=%p",d);
    d.shuffle();
    $display("Array d=%p",d);
  end
    
endmodule

ANSWER:

# KERNEL: Array d1='{0, 1, 2, 3, 4, 5}
# KERNEL: Array d1='{} deleted!!!
# KERNEL: Array d='{9, 1, 8, 3, 4, 4}
# KERNEL: Array d='{4, 4, 3, 8, 1, 9}
# KERNEL: Array d='{1, 3, 4, 4, 8, 9}
# KERNEL: Array d='{9, 8, 4, 4, 3, 1}
# KERNEL: Array d='{3, 8, 9, 1, 4, 4}
  
  
