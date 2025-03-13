module virtual_class;


virtual class parent;

 pure virtual function void display();
 
virtual function void display1();
$display("display1 from parent");
endfunction 

function void display2();
$display("display2 from parent");
endfunction
endclass



class child extends parent;

function void display();

$display("display from child");

endfunction

function void display1();

$display("display1 from child");

endfunction

function void display2();

$display("display2 from child");

endfunction

endclass


parent p;
child c;


initial begin


c=new();

p=c;


p.display();
p.display1();
p.display2();

end 
endmodule


ANSWER:
  # display from child
# display1 from child
# display2 from parent

   








