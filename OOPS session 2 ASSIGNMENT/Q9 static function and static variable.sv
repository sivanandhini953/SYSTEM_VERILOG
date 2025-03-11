module test;

class H;

static function static void variable() ;

int a;

a++;
$display ("value a=%d",a);


endfunction 
endclass

H h1,h2;


initial begin
 
 h1=new();
 h2=new();
 
 h1.variable();
  h1.variable();
  h1.variable();
   h2.variable();
    h2.variable();
	end 
	endmodule

ANSWER;
# run -all
# value a=          1
# value a=          2
# value a=          3
# value a=          4
# value a=          5
