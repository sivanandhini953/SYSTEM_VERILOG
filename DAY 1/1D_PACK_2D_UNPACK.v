module pack_unpack;
  logic [7:0]matrix[2:0][2:0];
  
  initial begin 
    foreach (matrix [i])
      foreach (matrix[i][j])

        matrix[i][j]=8'h04;
    
        
        
        end
  
  initial begin
    $display("matrix[2][2][0]=%h",matrix[2][2][0]);
    $display("matrix[1]:%p",matrix[1]);
    
  end
endmodule
