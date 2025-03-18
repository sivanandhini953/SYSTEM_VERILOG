class externC;
randc bit [7:0] bx;
  constraint cXG{ bx > 5;} 
extern constraint eXS;
endclass

//constraint externC::cXG 
constraint externC::eXS{ bx < 20;} 

module tb;
int i;
externC pp = new ( );
initial begin
for (i=0; i < 4; i++) begin
pp.randomize( );
$display("bx = %d", pp.bx );
end
end
endmodule

ANSWER:
# KERNEL: bx =   7
# KERNEL: bx =  18
# KERNEL: bx =   6
# KERNEL: bx =  16
