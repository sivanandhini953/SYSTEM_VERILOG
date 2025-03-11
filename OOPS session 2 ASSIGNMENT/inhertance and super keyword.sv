class tenth;

string name;
int id;
int age;

function new(string name,int id,int age);

this.name=name;
this.id=id;
this.age=age;

endfunction
endclass


class display extends tenth;


function new();
super.new("rachel",21,21);
endfunction

function void disp();

$display("student details:%s|%d|%d",name,id,age);

endfunction
endclass


module inherit;

display d1;

initial begin
 
 d1=new();

 d1.disp();
 
 d1.name="monica";
  d1.disp();
 end
 endmodule
 
 # student details:rachel|         21|         21
# student details:monica|         21|         21
 
 
