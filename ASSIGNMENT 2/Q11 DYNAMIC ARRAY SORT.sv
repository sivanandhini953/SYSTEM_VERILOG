module dyn_array_sort;
  
  int dyn[];
  
  initial begin
  
    dyn=new[10](dyn);
	
    //dyn={60,40,78,35,23,76,45,67,12,95};
    
	foreach (dyn[i])
	dyn[i]=$urandom_range(10,90);
	
	
    $display ("dynamic array contents before sort:%p",dyn);
    
    
    dyn.sort;
    $display ("dynamic array contents after sort:%p",dyn);
    
  
  end 
endmodule

ANSWER:
# dynamic array contents before sort:'{26, 39, 45, 73, 60, 43, 56, 26, 87, 18}
# dynamic array contents after sort:'{18, 26, 26, 39, 43, 45, 56, 60, 73, 87}
