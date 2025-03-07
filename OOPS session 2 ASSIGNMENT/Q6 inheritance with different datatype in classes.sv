module assignment;

class A;

string name;

function void dply_name(string name);


$display("student name:%s",name);

endfunction
endclass

class B extends A;

int roll_no;

function void dply_roll(int roll_no);

$display("roll_no:%d",roll_no);

endfunction
endclass

B b;

initial begin

b=new;

b.dply_name("Krishna");
b.dply_roll(24);
end
endmodule

ANSWER;
# student name:Krishna
# roll_no:         24
