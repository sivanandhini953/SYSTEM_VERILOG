virtual class parent_trans;
  bit [31:0] data;
  int id;
  
  function void display();
     $display("Base: Value of data = %0h and id = %0h", data, id);
  endfunction
endclass

class child_trans extends parent_trans;
  function void display();
    $display("Child: Value of data = %0h and id = %0h", data, id);
  endfunction  
endclass

module tb;
  initial begin
    parent_trans p_tr;
    child_trans c_tr;
    c_tr = new();
    
    p_tr = c_tr;
	
	c_tr.data = 5;
    c_tr.id = 1;
    c_tr.display();
	
    p_tr.data = 5;
    p_tr.id = 1;
    p_tr.display();
  end
endmodule

ANSWER:
# Child: Value of data = 5 and id = 1
# Base: Value of data = 5 and id = 1
