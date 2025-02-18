module asso_method;
  
  int fruit[string];
  
  string f;
  initial begin
    
    fruit='{"apple":22,
            "orange":33,
            "grapes":44,
            "plum":55,
            "blueberry":66};
    
    $display("the fruits are:%p",fruit);
    
    $display("sife of array=%0d",fruit.size());
    
    $display("num of fruit=%0d",fruit.num());
  
    
  if (fruit.first(f))
    $display("First fruit: %s : %0d", f, fruit[f]);
    
    if(fruit.last(f))
      $display("last fruit:%s=%0d ",f,fruit[f]);
    
  f="grapes";
    if(fruit.next(f))
      $display("fruit next to %s:%0d",f,fruit[f]);
  f="orange";
    if(fruit.prev(f))
    $display("fruit before orange is%s:%d",f,fruit[f]);
    
    if(fruit.exists("plum") )
      $display(" there is plum=%d",fruit["plum"]);
                else 
                  $display(" there is no plum");
    
    fruit.delete();
    
    $display("the fruits are:%p",fruit);
    
  end
    endmodule
