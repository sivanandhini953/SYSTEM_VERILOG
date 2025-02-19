module union_unpacked;
  
 typedef union {
    int a;         // 32-bit signed integer
    byte b;        // 8-bit value (overlaps with lowest byte of `a`)
    bit [15:0] c;  // 16-bit value (overlaps with lowest 16 bits of `a`)
 } def;
  
  def b1;  // Declare the union variable
  
  initial begin
    // Initialize the union using one member
    b1.a = 32'hDEADBEEF;  // Assign 32-bit value
    
    // Displaying values
    $display("Stored int    = %h", b1.a);  // Full 32-bit value
    $display("Stored bit[15:0] = %h", b1.c);  // Lower 16 bits of `a`
    $display("Stored byte   = %h", b1.b);  // Lowest 8 bits of `a`
  end 
  
endmodule




ANSWER:

# Stored int    = deadbeef
# Stored bit[15:0] = beef
# Stored byte   = ef
