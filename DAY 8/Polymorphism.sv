module polymorphism;


class car;

virtual function void car_type();

$display("car is available in differnt types");

endfunction 

virtual task colour;

$display("variety of colors available");

endtask


endclass



class honda extends car;

function void car_type();

$display("cartype is honda amaze");

endfunction

task colour;
$display("cartype is navy blue");

endtask

endclass

class maruthi extends honda;
function void car_type();

$display("cartype is maruthi suzuki");

endfunction

task colour;
$display("cartype is black");

endtask

endclass

car C;
honda H;
maruthi M;


initial begin

H=new();
M=new();

C=H;
C.car_type;

C.colour;
C=M;

C.car_type;

C.colour;

H=M;
H.car_type;

H.colour;

end 
endmodule


Answer:
# cartype is honda amaze
# cartype is navy blue
# cartype is maruthi suzuki
# cartype is black
# cartype is maruthi suzuki
# cartype is black









