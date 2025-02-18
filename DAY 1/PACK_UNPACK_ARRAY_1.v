module pack_unpack;
  logic [7:0]matrix[7:0];
  
  initial begin 
    matrix[0]=8'h22;
    matrix[1]=8'h23;
    matrix[5]=8'h24;
    matrix[6]=8'h25;
    matrix[7]=8'h26;
  end
  
  initial begin
    $display("matrix[0][6]=%b",matrix[0][5]);
    $display("matrix[2]:",matrix[2]);
    
  end
endmodule
