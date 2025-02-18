module pack_unpack;
  int matrix[2:0][7:0];
  
  initial begin 
    foreach (matrix [i])
      foreach (matrix[i][j])

        matrix[i][j]=10*i+j;
    
        
        
        end
  
  initial begin
    $display("matrix[2][6]=%d",matrix[2][6]);
    $display("matrix[1]:",matrix[1]);
    
  end
endmodule
