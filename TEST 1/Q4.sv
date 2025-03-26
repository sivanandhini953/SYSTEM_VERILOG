Declare a fixed-size array of 10 integers.

Initialize it with values {1,2,3,4,5,6,7,8,9,10}.

Write a function to reverse the array without using another array.

Display the original and reversed arrays.


  ANSWER:

  module static_array;

int array[10];

initial begin

  array='{1,2,3,4,5,6,7,8,9,10};

$display("array:%p",array);
  
  array.reverse();
  $display("array:%p",array);

end 
endmodule


  SIMULATION RESULT:

  # KERNEL: array:'{1, 2, 3, 4, 5, 6, 7, 8, 9, 10}
# KERNEL: array:'{10, 9, 8, 7, 6, 5, 4, 3, 2, 1}
