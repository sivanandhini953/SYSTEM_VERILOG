module dyn_aa;
  
  int daa[][];
  
  initial begin
    
    daa=new[3];
    
        foreach (daa[i])
    
          daa[i]=new[2];
   
    foreach (daa[i])
      foreach (daa[i][j])
      
      daa[i][j]=2*i+j;
    
    $display("size:%0d",daa.size);
    
    $display("daa:",daa);   
    
   
  end
endmodule
