module mB;
  bit [7:0] mem [0:3];
int i, j, data;
mailbox mbox;
initial begin
mbox = new (4); 
fork
DMA_write;
CPU_read;
join
end
task DMA_write;
$display($stime,,, "DMA puts Mem Data into mbox");
  for (i=0; i < 4; i++) begin
mem[i] = $urandom;
$display($stime,,, "DMA WRITE[%0d] = %0d",i,mem[i]);
mbox.put(mem[i]);
  end
  

endtask
task CPU_read;
$display($stime,,, "CPU retrieves Mem Data from mbox");
  for (j=0; j < 4; j++) begin
mbox.get(data);
    $display($stime,,, "CPU READ[%0d] = %0d",i,data);
end
endtask

endmodule

ANSWER:
    0  DMA puts Mem Data into mbox
         0  DMA WRITE[0] = 185
         0  DMA WRITE[1] = 108
         0  DMA WRITE[2] = 167
         0  DMA WRITE[3] = 163
         0  CPU retrieves Mem Data from mbox
         0  CPU READ[4] = 185
         0  CPU READ[4] = 108
         0  CPU READ[4] = 167
         0  CPU READ[4] = 163
