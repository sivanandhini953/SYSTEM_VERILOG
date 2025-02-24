module odd_even;
  
  int count = 20;

 
  function void odd_func(int count);
    int odd;
    for (int i = 0; i < count; i++) begin
      odd = (2 * i) + 1;
      $display("Odd number %0d: %0d", i + 1, odd);
    end
  endfunction

 
  function void even_func(int count);
    int even;
    for (int i = 0; i < count; i++) begin
      even = 2 * i;
      $display("Even number %0d: %0d", i + 1, even);
    end
  endfunction

  
  initial begin
    $display("First 20 Odd Numbers:");
    odd_func(count);

    $display("\nFirst 20 Even Numbers:");
    even_func(count);

    $finish;
  end

endmodule


ANSWER:

# KERNEL: First 20 Odd Numbers:
# KERNEL: Odd number 1: 1
# KERNEL: Odd number 2: 3
# KERNEL: Odd number 3: 5
# KERNEL: Odd number 4: 7
# KERNEL: Odd number 5: 9
# KERNEL: Odd number 6: 11
# KERNEL: Odd number 7: 13
# KERNEL: Odd number 8: 15
# KERNEL: Odd number 9: 17
# KERNEL: Odd number 10: 19
# KERNEL: Odd number 11: 21
# KERNEL: Odd number 12: 23
# KERNEL: Odd number 13: 25
# KERNEL: Odd number 14: 27
# KERNEL: Odd number 15: 29
# KERNEL: Odd number 16: 31
# KERNEL: Odd number 17: 33
# KERNEL: Odd number 18: 35
# KERNEL: Odd number 19: 37
# KERNEL: Odd number 20: 39
# KERNEL: 
# KERNEL: First 20 Even Numbers:
# KERNEL: Even number 1: 0
# KERNEL: Even number 2: 2
# KERNEL: Even number 3: 4
# KERNEL: Even number 4: 6
# KERNEL: Even number 5: 8
# KERNEL: Even number 6: 10
# KERNEL: Even number 7: 12
# KERNEL: Even number 8: 14
# KERNEL: Even number 9: 16
# KERNEL: Even number 10: 18
# KERNEL: Even number 11: 20
# KERNEL: Even number 12: 22
# KERNEL: Even number 13: 24
# KERNEL: Even number 14: 26
# KERNEL: Even number 15: 28
# KERNEL: Even number 16: 30
# KERNEL: Even number 17: 32
# KERNEL: Even number 18: 34
# KERNEL: Even number 19: 36
# KERNEL: Even number 20: 38
