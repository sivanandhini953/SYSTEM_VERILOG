module chain_constructor;

class FA_sum;


logic [3:0]sum;
logic [3:0]carry;

function new(logic [3:0]a,b);

sum=a^b;
$display("sum=%b",sum);
endfunction
endclass


class FA_carry extends FA_sum;

function new(logic [3:0]a,b);
super.new(a,b);
carry=a&b;

$display("carry=%b",carry);

endfunction
endclass

FA_carry c1;

initial begin

c1=new(4'h2,4'h5);

end

endmodule

ANSWER:

# run -all
# sum=0111
# carry=0000


