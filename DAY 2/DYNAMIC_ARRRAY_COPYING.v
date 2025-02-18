module dyn_arr_copy;
  
  int da1[];
  int da2[];
  
  initial begin
    
    da1=new[4];
    da1='{22,33,4,5};
    
    $display ("size:%d",da1.size);
    $display("da1:",da1);
    
    $display ("size:%d",da2.size);
    $display("da1:",da2);
    
    da2=da1;
    
    $display ("size:%d",da2.size);
    $display("da1:",da2);
    
    
    da2='{1,2,3,4,5,6};
	    
     $display ("size:%d",da2.size);
    $display("da1:",da2);
    
    
    da1=da2;
    $display ("size:%d",da1.size);
    $display("da1:",da1);
    
    
    
   
  end
endmodule
