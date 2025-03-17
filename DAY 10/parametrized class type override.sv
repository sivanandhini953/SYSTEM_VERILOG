module top;


class packet #(type I = int);
I data; 

function I mult (I a);
return data * a;
endfunction
endclass

initial begin
packet #(bit[3:0]) p1 = new ( );
packet p2 = new ( );
packet #(real) p3 = new ( );
$display ("p1.data Type = ", $typename(p1.data));
p1.data = 4'b1000;
$display ("p1.mult = %b\n", p1.mult(4'b1000));

$display ("p2.data Type = ", $typename(p2.data));
p2.data = -12;
$display ("p2.mult = %0d\n", p2.mult(2));

$display ("p3.data Type = ", $typename(p3.data));
p3.data = 2.34;
$display ("p3.mult = %0.3f", p3.mult(0.1));
end

endmodule


ANSWER
# p1.data Type = bit[3:0]
# p1.mult = 0000
#
# p2.data Type = int
# p2.mult = -24
#
# p3.data Type = real
# p3.mult = 0.234
