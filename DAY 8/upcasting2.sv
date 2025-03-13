class animals;

string color = "white";
function void disp;
$display("color = %s", color);
endfunction
endclass

class buffalo extends animals;

string color = "black";
function void disp;
$display("color = %s", color);
endfunction
endclass

module tb;
initial begin
animals p;
buffalo c;
c = new( ); 

p = c; 
p.disp;
c.disp;
end
endmodule

Answer:

# color = white
# color = black
