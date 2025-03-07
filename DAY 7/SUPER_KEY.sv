class base;
int  data1;
int  data2;
int  busx;

function void bus;
busx = data1 * data2;
endfunction

function void disp ( );
$display("From Base class :: busx = %d",busx);
endfunction

endclass : base


class ext extends base;

function void bus;
busx = data1 + data2; 
endfunction

function void disp; 

super.disp( ); 

endfunction


endclass : ext


module super_key( );

initial begin
base b1;
ext e1;

b1 = new;
e1 = new;

b1.data1 = 5;
b1.data2 = 5;
b1.bus;
b1.disp( );

e1.data1 = 5;
e1.data2 = 5;
e1.bus;
e1.disp( );

end
endmodule


ANSWER:

# From Base class :: busx =          25
# From Base class :: busx =          10
