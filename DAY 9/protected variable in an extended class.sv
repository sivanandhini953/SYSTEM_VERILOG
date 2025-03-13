class bus;

protected int addr;
protected int data;

function new();

addr=6;
data=7;

endfunction

function display();

$display ("data=%d,address=%d",data,addr);

endfunction
endclass

class bus1 extends bus;

function display1();

$display ("data=%d,address=%d",data,addr);

endfunction
endclass

module tb;

bus b;
bus1 b1;

initial begin

b1=new();

b1.display();
b1.display1();

end
endmodule

ANSWER:
# data=          7,address=          6
# data=          7,address=          6
