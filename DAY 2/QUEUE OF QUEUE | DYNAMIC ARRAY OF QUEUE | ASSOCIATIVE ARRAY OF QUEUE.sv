module top;

int dyn[][$];

int qq[$][$];

int asso[string];

initial begin

dyn=new[2](dyn);


dyn[0]={1,2,3,4,5};

dyn[1].push_back(6);
dyn[1].push_back(7);
dyn[1].push_back(8);



$display("Dynamic array of queue:%p",dyn);


qq[0]={11,22,33,44,55};

qq[1].push_back(77);
qq[1].insert(0,66);


$display("Queue of queue:%p",qq);

asso["one"]={1,2,3,4};
asso["two"]={5};

$display("Associative array of queue:%p",asso);


end
endmodule

ANSWER:
# Dynamic array of queue:'{'{1, 2, 3, 4, 5}, '{6, 7, 8}}
# Queue of queue:'{'{11, 22, 33, 44, 55}, '{66, 77}}
# Associative array of queue:'{"one":4, "two":5 }



