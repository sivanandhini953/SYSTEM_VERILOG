module top ;

class PCI;

logic [7:0]data;
logic [7:0]address;



function void display;
$display ("data=%h,address=%h",data,address);


endfunction

endclass
PCI p1;
PCI p2;

initial begin 
p1=new;
p1.data=8'h45;
p1.address=8'h65;

p1.display;

p2=p1;
p2.display;

p2.data=8'h23;
p1.address=8'h34;

p2.display;

end
endmodule


ANSWER:
# data=45,address=65
# data=45,address=65
# data=23,address=34

