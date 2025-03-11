module global_queue;

int a[$];

task  push_data;

a.push_front(22);
a.push_back(33);

endtask

task  pop_data;

a.pop_front();
a.pop_back();

endtask 

initial begin 

a={44,55,66,77,88,99};

$display ("queue after push");
push_data;
$display ("%0p",a);

$display ("queue after pop");
pop_data;
$display ("%0p",a);

end
endmodule
ANSWER:
# queue after push
# 22 44 55 66 77 88 99 33
# queue after pop
# 44 55 66 77 88 99
