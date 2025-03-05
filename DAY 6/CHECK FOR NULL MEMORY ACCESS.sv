class memory_check;

byte data;

int id;
endclass

module update;
 memory_check m1,m2;
 
 initial begin
 m1=new();
 if (m1!=null)begin
 m1.data=23;
 m1.id=01;
 $display("memory alloted: data:%0d,ID:%0d",m1.data,m1.id);
 end
 else 

 $display("memory not alloted");
 
 if (m2!=null)begin
 m2.data=34;
 m2.id=45;
 $display("memory alloted: data:%0d,ID:%d",m2.data,m2.id);
 end
 
 else 

 $display("memory not alloted");
 end
 endmodule

ANSWER:
# memory alloted: data:23,ID: 1
# memory not alloted
