module static_property;

class detail;

static string name;
int age;
byte ID;

function new();

name= "rachel";
age=20;
ID=8'd44;
endfunction

function void display();

$display("Employee Details: Name:%s,Age=%d,ID=%d",name,age,ID);

endfunction
endclass

initial begin

detail d1=new;
detail d2=new;
d1.display;
d2.display;
d1.age=30;
d1.name="monica";
d1.display;
d2.display;

end

endmodule
