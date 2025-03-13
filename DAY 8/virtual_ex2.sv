class parent_trans;
  bit [31:0] data;
  int id;
  
   virtual function void display(bit [31:0] data, int id);
     $display("Base: Value of data = %0h and id = %0h", data, id);
  endfunction
endclass

class child_trans extends parent_trans;
  function void display(bit [31:0] data, int id);
    $display("Child: Value of data = %0h and id = %0h", data, id);
  endfunction  
endclass

module tb2;
  initial begin
    parent_trans p_tr;
    child_trans c_tr;
    c_tr = new();
    
    p_tr = c_tr;
	 c_tr.data = 10;
    c_tr.id = 2;
	
	 c_tr.display(c_tr.data, c_tr.id);
    p_tr.data = 5;
    p_tr.id = 1;
    p_tr.display(p_tr.data, p_tr.id);
  end
endmodule

ANSWER:
# run -all
# Child: Value of data = a and id = 2
# Base: Value of data = 5 and id = 1
