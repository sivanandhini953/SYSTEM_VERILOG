class transaction;
rand bit [7:0] addr;
rand bit [7:0] data;
function void disp;
$display("Transaction :: Transaction Generated");
$display("Transaction :: Addr=%0d,Data=%0d",addr,data);
endfunction
endclass
class DMA_write;
transaction tr;
mailbox DMA_m_box;

function new(mailbox m_box);
DMA_m_box = m_box;
endfunction
  task run;
repeat(2) begin
tr = new( );
tr.randomize( ); 
tr.disp( );
DMA_m_box.put(tr); 
$display("DMA_write::Transaction Put into Mailbox");

end
endtask
endclass
class CPU_read;
transaction tr;
mailbox CPU_m_box;

function new(mailbox m_box);
CPU_m_box = m_box;
endfunction
task run;
repeat(2) begin
CPU_m_box.get(tr); //getting transaction from mailbox
$display("CPU_read::Transactions Received");
$display("CPU_read::Addr=%0d,Data=%0d\n",tr.addr, tr.data);
  
end
endtask
endclass
module mailbox_top;
DMA_write dma;
CPU_read cpu;
mailbox m_box; 
initial begin
m_box = new( );
  dma = new(m_box);

cpu = new(m_box);
fork
cpu.run( );
dma.run( );
join
end
endmodule

Anawer:

Transaction :: Transaction Generated
Transaction :: Addr=43,Data=20
DMA_write::Transaction Put into Mailbox
Transaction :: Transaction Generated
Transaction :: Addr=84,Data=164
DMA_write::Transaction Put into Mailbox
CPU_read::Transactions Received
CPU_read::Addr=43,Data=20

CPU_read::Transactions Received
CPU_read::Addr=84,Data=164
