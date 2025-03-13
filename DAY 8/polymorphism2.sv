module polymorphism;


class animal;

 virtual function void display();

$display("diffent animals available");

endfunction 
endclass



class panda extends animal;

function void display();

$display("Panda is an animal");

endfunction
endclass

class cheetah extends animal;
function void display();

$display("cheetah is an animal");

endfunction
endclass

class monkey extends animal;
function void display();

$display("monkey is an animal");

endfunction
endclass


animal a[3];
panda p;
cheetah c;
monkey m;



initial begin

p=new();
c=new();
m=new();

a[0]=p;
a[1]=c;
a[2]=m;

a[0].display();
a[1].display();
a[2].display();

end 
endmodule

ANSWER:


# Panda is an animal
# cheetah is an animal
# monkey is an animal







