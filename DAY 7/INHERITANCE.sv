module inheritance;

class parent;

int addr;

function void display_p();

$display ("addr=%d",addr);

endfunction

endclass

class child extends parent;

int data;

function void display_c;

$display("data=%d",data);

endfunction 
endclass

child ch1;

initial begin

ch1=new();

ch1.data=1234;
ch1.addr=5678;

ch1.display_c();
ch1.display_p();

end

endmodule

ANSWER:

# data=       1234
# addr=       5678




