module string_palindrome;
  
  
  string x;
  string rev;
  
  initial begin
    
    x="racecar";
	rev="";
    
    for (int i=x.len()-1;i>=0;i--)
      
      rev={rev,x[i]};
    
    if(x==rev)
      
      $display("%s is palindrome",x);
    else 
      $display("%s is not palindrome",x);
  end
endmodule


ANSWER:

racecar is palindrome
