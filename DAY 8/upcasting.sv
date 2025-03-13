class parent;

int p_var;
 function void display();
$display ("the value of parent:%d",p_var);
endfunction
endclass

class child extends parent;
int c_var;
function void display();
$display ("the value of child:%d",c_var);
endfunction
endclass

module upcast;

parent p;
child c;

initial begin

c=new;
p=c;


c.p_var=10;

c.c_var=20;

c.display();
p.p_var=70;
p.display();
end 
endmodule

ANSWER:
# the value of child:         20
# the value of parent:         70
