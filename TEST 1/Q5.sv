Declare a dynamic array of integers.

Use randomization to fill the array with 10 values (range: 1–100).

Resize the array to 15 elements and assign additional random values.

Sort the array in ascending order and display the result.




module dyn_array;

int darray[];

initial begin

darray=new[10];

foreach (darray[i])

  darray[i]=$urandom_range(1,100);

$display("dynamic array:%p",darray);
  
  darray=new[15](darray);
  $display("dynamic array:%p",darray);
  
  foreach (darray[i])

    darray[i+10]=$urandom_range(1,100);

$display("dynamic array:%p",darray);
  
  darray.sort();
  $display("dynamic array:%p",darray);

end
endmodule


SIMULATION RESULT:
# KERNEL: dynamic array:'{4, 80, 13, 27, 35, 67, 31, 43, 67, 42}
# KERNEL: dynamic array:'{4, 80, 13, 27, 35, 67, 31, 43, 67, 42, 0, 0, 0, 0, 0}
# KERNEL: dynamic array:'{4, 80, 13, 27, 35, 67, 31, 43, 67, 42, 72, 75, 84, 36, 14}
# KERNEL: dynamic array:'{4, 13, 14, 27, 31, 35, 36, 42, 43, 67, 67, 72, 75, 80, 84}



