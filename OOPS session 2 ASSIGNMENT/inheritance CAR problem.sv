class vehicle;
string model_name;

function new(string model_name);
this.model_name=model_name;
$display ("Model:%s",model_name);
endfunction
endclass 

class car extends vehicle;
string color;

function new(string model_name,string color);
super.new(model_name);
this.color=color;
$display ("color:%s",color);
endfunction
endclass

module tb;

initial begin 

car c1=new("maruthi","blue");

end 
endmodule
# Model:maruthi
# color:blue


