class bus;

local int addr;


function new();

addr=6;


endfunction

protected function display( int data);

$display ("data=%0d,address=%0d",data,addr);

endfunction
endclass

class bus1 extends bus;


function display1();
super.display(33);
//$display ("data=%d,",data);

endfunction
endclass

module tb;

bus b;
bus1 b1;

initial begin

b1=new();


//b1.display(22);
b1.display1();

end
endmodule

ANSWER:# data=         33,address=          6
