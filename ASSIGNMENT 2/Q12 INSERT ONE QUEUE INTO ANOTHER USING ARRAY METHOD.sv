module qq;

int q1[$];
int q2[$];


initial begin

q1={3,5,6,7};
q2={30,50,60,70};
$display("queue q1:%p",q1);
$display("queue q2:%p",q2);

foreach (q2[i])

q1.insert(3+i,q2[i]);
$display("queue q1:%p",q1);
end 
endmodule

ANSWER:

# queue q1:'{3, 5, 6, 7}
# queue q2:'{30, 50, 60, 70}
# queue q1:'{3, 5, 6, 30, 50, 60, 70, 7}
