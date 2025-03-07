module class_TOP( );

class PCIChild;

logic [7:0] burstC;

function new (logic [7:0] burst);
burstC = burst;
endfunction
endclass : PCIChild


class PCITop;

logic [31:0] addrTop;
logic [31:0] dataTop;

PCIChild PCIc;

task PCIM(logic [31:0] addr, logic [31:0] data, logic
[7:0] burst);

PCIc = new(burst); 
addrTop = addr;
dataTop = data;

endtask

function void disp (string instName);
$display("[%s] addr = %h data = %h burst=%h", instName,
addrTop, dataTop, PCIc.burstC);

endfunction

endclass : PCITop

PCITop PCI1, PCI2;

initial begin;
PCI1 = new;
PCI1.PCIM(32'h 0000_00ff, 32'h f0f0_f0f0, 8'h12);

PCI1.disp("PCI1");

PCI2 = new PCI1;

PCI2.disp("PCI2"); 

PCI2.addrTop = 32'h1234_5678;
PCI2.dataTop = 32'h5678_abcd;
PCI2.PCIc.burstC = 8'h 9a;

PCI2.disp("PCI2");
PCI1.disp("PCI1");
end
endmodule

ANSWER:
# [PCI1] addr = 000000ff data = f0f0f0f0 burst=12
# [PCI2] addr = 000000ff data = f0f0f0f0 burst=12
# [PCI2] addr = 12345678 data = 5678abcd burst=9a
# [PCI1] addr = 000000ff data = f0f0f0f0 burst=9a
