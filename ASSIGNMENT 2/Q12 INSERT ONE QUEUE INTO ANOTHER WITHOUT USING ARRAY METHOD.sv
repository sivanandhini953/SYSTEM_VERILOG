module qq;

int qq[$][$];



initial begin

qq[0]={12,23,34,45};
$display("queue q2:%p",qq[0]);
qq[1]={11,22,3,44};
$display("queue q1:%p",qq);


end 
endmodule

ANSWER:

# queue q2:'{12, 23, 34, 45}
# queue q1:'{'{12, 23, 34, 45}, '{11, 22, 3, 44}}
