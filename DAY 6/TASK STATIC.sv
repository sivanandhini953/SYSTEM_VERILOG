module function_static;

class statA;

int sati1;

 task static incr();

int unsigned stati;
$display("stati is %0d sati1 is %0d", stati,sati1);
stati++;
sati1++;

endtask

endclass





initial begin
statA a=new;
statA b=new;

a.incr();
b.incr();
a.incr();
b.incr();



end
endmodule
Answer:
# stati is 0 sati1 is 0
# stati is 1 sati1 is 0
# stati is 2 sati1 is 1
# stati is 3 sati1 is 1


