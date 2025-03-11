class F;

int a;

function new(int x=0);

a=x;
endfunction
endclass

class G extends F;

function new(int x);
super.new(x);
endfunction


function void display();

$display("a=%d",a);

endfunction
endclass



module test;
G g;

initial begin
//g=new();
g=new(33);

g.display();

g=new(44);

g.display();

end 
endmodule


ANSWER:
# a=         33
# a=         44
