module test;

class H;

static logic[2:0] a;

static function new();
a=0;
endfunction

static function void variable();

a++;

$display ("value a=%b",a);


endfunction 
endclass

H h1;


initial begin
 
 h1=new();

 
 h1.variable();
  h1.variable();
  h1.variable();
   h1.variable();
    h1.variable();
	      h1.variable();
	   h1.variable();
	      h1.variable();
	end 
	endmodule


answer:

# run -all
# value a=001
# value a=010
# value a=011
# value a=100
# value a=101
# value a=110
# value a=111
# value a=000
