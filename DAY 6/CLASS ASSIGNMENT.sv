module class_assignment;



class PCI;

byte addr ;
byte data;

function display(string name);

$display ("%s:addr=%h|data=%h",name,addr,data);

endfunction

endclass

initial begin 

PCI p1=new();
PCI p2=p1;


p1.addr=8'hff;
p1.data=8'hab;

p2.display("PCI2");


p2.addr=8'hf6;
p2.data=8'hf0;

p1.display("PCI1");

end
endmodule

ANSWER:

# PCI2:addr=ff|data=ab
# PCI1:addr=f6|data=f0
