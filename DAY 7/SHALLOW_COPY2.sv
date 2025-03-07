class header ;

int id ;

function new(int id);

this.id=id;

endfunction 

function showid();

$display("id:%d",id);

endfunction
endclass

class packet;

int addr;
int data;

header hdr;

function new(int addr,data,id);

this.addr=addr;
this.data=data;
hdr=new(id);

endfunction

function void display(string name);

$display ("[%s] addr=0x%0d data=0x%0d id=%0d", name, addr, data, hdr.id);

endfunction

endclass

module shallow_copy;

packet pkt1,pkt2;

initial begin

pkt1=new(1234,7890,11);

pkt1.display("pkt1");

pkt2= new pkt1;

pkt2.display("pkt2");

pkt1.addr=4567;
pkt1.data=1234;
pkt1.hdr.id=12;

pkt1.display("pkt1");
pkt2.display("pkt2");

end 
endmodule

ANSWER:


# [pkt1] addr=0x1234 data=0x7890 id=11
# [pkt2] addr=0x1234 data=0x7890 id=11
# [pkt1] addr=0x4567 data=0x1234 id=12
# [pkt2] addr=0x1234 data=0x7890 id=12












