module top;
class packet #(parameter int A_WIDTH = 32, D_WIDTH = 32);

bit [A_WIDTH-1:0] address;
bit [D_WIDTH-1:0] data ;

function new( );
address = 'hff;
data = 'h11;
endfunction
endclass

initial begin
packet #(.A_WIDTH(64), .D_WIDTH(16)) p1=new();
packet #(16,8) p2=new(); 
packet p3=new(); 

$display ("p1.address = %0d bits", $bits(p1.address));
$display ("p1.data = %0d bits", $bits(p1.data));
$display ("p2.address = %0d bits", $bits(p2.address));
$display ("p2.data = %0d bits", $bits(p2.data));
$display ("p3.address = %0d bits", $bits(p3.address));
$display ("p3.data = %0d bits", $bits(p3.data));
end
endmodule
ANSWER:
# p1.address = 64 bits
# p1.data = 16 bits
# p2.address = 16 bits
# p2.data = 8 bits
# p3.address = 32 bits
# p3.data = 32 bits
