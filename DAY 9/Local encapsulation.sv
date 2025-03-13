class bus;

local int addr;
local int data;

function new();

addr=6;
data=7;

endfunction

function display();

$display ("data=%d,address=%d",data,addr);

endfunction
endclass

class bus1 extends bus;

int addr1;
int data1;

function display1();

$display ("data=%d,address=%d",data1,addr1);

endfunction
endclass

module tb;

bus b;
bus1 b1;

initial begin

b1=new();
b1.addr1=10;
b1.data1=20;

b1.display();
b1.display1();

end
endmodule

ANSWER:
# data=          7,address=          6
# data=         20,address=         10
