Declare a class "BaseClass" use a virtual task "name" inside it. Declare 6 Derived class for
the class "BaseClass". Have the task "name" inside all derived class. Each task must display
the name of an SILICON Student name. Using the BaseClass object try to display all the
student name declared inside the derived class method.


  ANSWER:

  
class BaseClass;

virtual task name;

$display ("name of silicon student");

endtask

endclass

class d_class1 extends BaseClass;

task name;

$display ("Name of silicon student:KABILAN");

endtask

endclass

class d_class2 extends BaseClass;

 task name;

$display ("Name of silicon student:JANA");

endtask

endclass

class d_class3 extends BaseClass;

 task name;

$display ("Name of silicon student:JIJO");

endtask

endclass
class d_class4 extends BaseClass;

 task name;

$display ("Name of silicon student:SRINIKETH");

endtask

endclass
class d_class5 extends BaseClass;

 task name;

$display ("Name of silicon student:KURAL");

endtask

endclass

class d_class6 extends BaseClass;

 task name;

$display ("Name of silicon student:NITISH ROY");

endtask

endclass

module silicon_student;

BaseClass b;
d_class1 r;
d_class2 s;
d_class3 t;
d_class4 u;
d_class5 v;
d_class6 w;

initial begin 

r=new();

b=r;
b.name();
  
  s=new();

b=s;
b.name();
  
  t=new();

b=t;
b.name();
  u=new();

b=u;
b.name();
  
  v=new();

b=v;
b.name();
  
  w=new();

b=w;
b.name(); 

end
endmodule


SIMULATION RESULT:

  # KERNEL: Name of silicon student:KABILAN
# KERNEL: Name of silicon student:JANA
# KERNEL: Name of silicon student:JIJO
# KERNEL: Name of silicon student:SRINIKETH
# KERNEL: Name of silicon student:KURAL
# KERNEL: Name of silicon student:NITISH ROY






