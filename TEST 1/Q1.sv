Create a packed structure to store:

addr (10-bit),

data (32-bit),

valid (1-bit).

Declare an array of 10 such structures.

Randomize and print their values.



ANSWER


module struct_test;
 
  typedef struct packed {
    logic [9:0]  addr;    
    logic [31:0] data;  
    logic        valid;   
  } packet_t;

 
  packet_t packets[10];

 
  initial begin
    $display("\nRandomized Packet Values:");
    $display("--------------------------------------------------");
    $display("| Index |    Addr    |        Data        | Valid |");
    $display("--------------------------------------------------");

   
    foreach (packets[i]) begin
      
      
      packets[i].addr=$urandom;
      packets[i].data=$urandom;
      packets[i].valid=$urandom;
      $display("|   %0d   |  %0d      |   %0d       |   %0b     |", 
                i, packets[i].addr, packets[i].data, packets[i].valid);
    end

    $display("--------------------------------------------------");
  end

endmodule

SIMULATION:

# KERNEL: Randomized Packet Values:
# KERNEL: --------------------------------------------------
# KERNEL: | Index |    Addr    |        Data        | Valid |
# KERNEL: --------------------------------------------------
# KERNEL: |   0   |  959      |   3598018429       |   1     |
# KERNEL: |   1   |  441      |   3408874523       |   1     |
# KERNEL: |   2   |  157      |   2768862715       |   0     |
# KERNEL: |   3   |  1010      |   1077762179       |   1     |
# KERNEL: |   4   |  563      |   2441458848       |   1     |
# KERNEL: |   5   |  1021      |   2619698957       |   1     |
# KERNEL: |   6   |  267      |   1245656812       |   1     |
# KERNEL: |   7   |  1018      |   53944092       |   0     |
# KERNEL: |   8   |  781      |   2410021536       |   0     |
# KERNEL: |   9   |  929      |   2746752359       |   0     |
# KERNEL: --------------------------------------------------
