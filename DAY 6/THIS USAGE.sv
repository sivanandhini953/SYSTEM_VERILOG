module this_usage;

class pci;
bit [31:0] abus;
bit [31:0] dbus;


function new(bit [31:0] abus, dbus);

this.abus = abus + 'hff;
this.dbus = dbus + 'hf0;
$display("this.abus = %0h abus = %0h",this.abus,abus);
$display("this.dbus = %0h dbus = %0h",this.dbus,dbus);

endfunction
endclass

module PCIMod;
pci p1;
initial begin
p1 = new(32'hF0F0_F0F0,32'hFFFF_0000);
end
endmodule
endmodule


ANSWER:

# this.abus = f0f0f1ef abus = f0f0f0f0
# this.dbus = ffff00f0 dbus = ffff0000
