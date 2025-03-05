module static_property;

class packet;

static int pkt_cnt;
int tag;


function new();

pkt_cnt++;
tag=pkt_cnt;
display();
endfunction

function void display();

$display("pkt_cnt=%d,tag=%d",pkt_cnt,tag);

endfunction
endclass

initial begin


packet p1 =new;
packet p2 =new;
packet p3 =new;

p1.display;
p2.display;
p3.display;



end

endmodule


ANSWER:
# pkt_cnt=          1,tag=          1
# pkt_cnt=          2,tag=          2
# pkt_cnt=          3,tag=          3
# pkt_cnt=          3,tag=          1
# pkt_cnt=          3,tag=          2
# pkt_cnt=          3,tag=          3
