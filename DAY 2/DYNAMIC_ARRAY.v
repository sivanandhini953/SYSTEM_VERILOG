module dyn_arr;
  
  int dyn_arr[];
  
  initial begin
    
    dyn_arr=new[4];
    dyn_arr='{22,33,4,5,8,9};
    
    $display ("size:%d",dyn_arr.size);
    
    
    dyn_arr.delete();
     $display ("size:%d",dyn_arr.size);
    
    dyn_arr='{1,2,3,4,5};
    $display ("array_elements:",dyn_arr);
    
    $display ("size:%d",dyn_arr.size);
    
    dyn_arr=new[dyn_arr.size()+1](dyn_arr);
    
     $display ("size:%d",dyn_arr.size);
  end
endmodule
