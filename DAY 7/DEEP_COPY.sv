class err_trans;
bit [31:0]err_data;
bit error;

function new(bit [31:0]err_data,bit error);

this.err_data=err_data;
this.error=error;

endfunction
endclass

class transaction;

bit [31:0]data;
int id;

err_trans err_tr;

function new();
data=100;
id=2;
err_tr=new(32'h7777_6666,0);

endfunction


function void display();
$display("transsaction:data=%d |ID=%d",data,id) ;
$display("error_trans: err_data = %0h, error = %0d\n", err_tr.err_data, err_tr.error);
endfunction


function copy(transaction tr);
this.data=tr.data;
this.id=tr.id;
this.err_tr.err_data=tr.err_tr.err_data;
this.err_tr.error=tr.err_tr.error;

endfunction 
endclass

module deep_copy;

transaction tr1,tr2;

initial begin

tr1=new;
$display("calling tr1 display");
tr1.display;

tr2=new;


tr2.copy(tr1);
$display("calling tr2 display after deep copy");

tr2.display;

tr2.data=200;
tr2.id=3;
tr2.err_tr.err_data=32'h1224;
tr2.err_tr.error=1;

$display("calling tr1 display");
tr1.display;
$display("calling tr2 display after deep copy");
tr2.display;

tr1.data=300;
tr1.id=4;
tr1.err_tr.err_data=32'h1225;
tr1.err_tr.error=0;

$display("calling tr1 display");
tr1.display;
$display("calling tr2 display after deep copy");
tr2.display;


end 
endmodule

ANSWER:

# run -all
# calling tr1 display
# transsaction:data=       100 |ID=          2
# error_trans: err_data = 77776666, error = 0
#
# calling tr2 display after deep copy
# transsaction:data=       100 |ID=          2
# error_trans: err_data = 77776666, error = 0
#
# calling tr1 display
# transsaction:data=       100 |ID=          2
# error_trans: err_data = 77776666, error = 0
#
# calling tr2 display after deep copy
# transsaction:data=       200 |ID=          3
# error_trans: err_data = 1224, error = 1
#
# calling tr1 display
# transsaction:data=       300 |ID=          4
# error_trans: err_data = 1225, error = 0
#
# calling tr2 display after deep copy
# transsaction:data=       200 |ID=          3
# error_trans: err_data = 1224, error = 1





