module sort_dynamic_array;
  
  int dyn[];
  
  initial begin
    
    dyn=new[10];
    
    for(int i=0;i<10;i++)
      
      dyn[i]=$urandom_range(20,90);
    
    $display("dynamic arrar elements are:%p",dyn);
    
    dyn.sort();
    
    $display("dynamic arrar elements after sorting:%p",dyn);
  end
endmodule
