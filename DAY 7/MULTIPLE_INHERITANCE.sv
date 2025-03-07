module multiple_inheritance;

class parent;

int addr;

function void display_p();

$display ("addr=%d",addr);

endfunction

endclass

class child1 extends parent;

int data;

function void display_ch1();

$display("data=%d",data);

endfunction
endclass

class child2 extends child1;

int id;

function void display_ch2();

$display("data=%d",id);
endfunction
endclass

class child3 extends child2;

bit err;

function void display_ch3();

$display("err=%b",err);
endfunction
endclass

class child4 extends parent;

int data;

function void display_ch4();

$display("data=%d",data);

endfunction
endclass

child3 ch3;
child4 ch4;

initial begin

ch3=new();
ch4=new();

ch3.data=1234;
ch3.addr=5678;
ch3.id=2;
ch3.err=0;
ch4.data=2345;


ch3.display_ch1();
ch3.display_p();
ch3.display_ch2();
ch3.display_ch3();
ch4.display_ch4();




end

endmodule


ANSWER
# data=       1234
# addr=       5678
# data=          2
# err=0
# data=       2345
