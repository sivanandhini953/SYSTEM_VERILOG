module semaphore;

bit [7:0] mem [3:0];

int data;

semaphore s1;

initial begin 
s1=new(1);

fork
DMA_write;
CPU_read;
join

end

task DMA_write;
if (s1.try_get(1))
$display($stime,,,"DMA got key");
else 
wait(s1.try_get(1));

for (int i=0;i<4;i++)begin

mem[i]=$urandom;
  $display("mem[%0d]=%0d",i,mem[i]);

end

s1.put(1);
$display("DMA puts the key");

endtask

task CPU_read;

#0 s1.get(1);
$display($stime,,,"CPU got key");

for(int i=0;i<4;i++)begin
data=mem[i];
$display("data=%d",data);
  end
  s1.put(1);
  $display("CPU puts the key");


endtask 
endmodule

ANSWER:
         0  DMA got key
mem[0]=185
mem[1]=108
mem[2]=167
mem[3]=163
DMA puts the key
         0  CPU got key
data=        185
data=        108
data=        167
data=        163
CPU puts the key
