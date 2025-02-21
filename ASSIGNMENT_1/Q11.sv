module unpacked_array;
  
  logic my_array[5][31];
  
  initial begin
    
    my_array[4][30]=1'b1;          //not out of bound
    my_array[29][4]=1'b1;	        //out_of_bound
    my_array[4]=1'b1;              //illegal
    
  end
endmodule
    
