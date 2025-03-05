module static_method;

class setIt;

static int k;
static function set (int p );
k = p + 100;
endfunction

function void dis();
$display("k = %0d",k);

endfunction

endclass



initial begin
setIt s1,s2;
setIt::set(10);
$display("k = %0d",setIt::k);

setIt::set(20);
$display("k = %0d",setIt::k);



s1.set(40);
s1.dis;

s2.set(50);
s2.dis;


end
endmodule


ANSWER:

# k = 110
# k = 120
# k = 140
# k = 150
