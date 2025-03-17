class packet;

bit [31:0] addr; 
static bit [31:0] id; 

typedef enum {RED, GREEN, BLUE} RGB;

extern static function void display (int a,int b);
endclass

static function void packet::display (int a, b);
$display("packet values a=%0d b=%0d",a,b);
endfunction

class eth_packet extends packet;
function new;
packet::addr = 'hff;

$display("packet addr = %h", packet::addr);
endfunction
endclass

module sro_class;
packet::RGB r1; 
int id=10;

initial begin
packet p;
eth_packet ep;
p = new( );
ep = new ( );
$cast(r1,1);
$display("%s",r1);

packet::id = 20;
packet::display(packet::id, id);

end
endmodule


  Answer:
 # packet addr = 000000ff
# GREEN
# packet values a=20 b=10 
