class world_cup19;

bit[15:0] premium_ticket;

function void league_match();

$display("premium tickt rate is %0d ",premium_ticket);
endfunction

endclass

class world_cup23 extends world_cup19;

bit [15:0] golden_ticket;

function void semifinal();

$display("golden tickt rate is %0d ",golden_ticket);
endfunction

function final_match();

$display("premium_ticket=%0d  | golden_ticket=%0d",premium_ticket,golden_ticket);
endfunction
endclass

module tb;
initial begin 

world_cup23 wc=new();

wc.premium_ticket=10000;
wc.golden_ticket=5000;

wc.league_match();
wc.semifinal();
wc.final_match();
end
endmodule

ANSWER:
# premium tickt rate is 10000
# golden tickt rate is 5000
# premium_ticket=10000  | golden_ticket=5000
