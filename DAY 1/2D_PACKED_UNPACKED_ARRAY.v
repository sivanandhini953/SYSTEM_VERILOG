module packed_unpacked_2D;
  logic [3:0][2:0] pack; 
  int matrix[3][2];     
  initial begin
   
    pack = '{3'b000, 3'b001, 3'b010, 3'b011}; 

  
    for (int i = 0; i < 3; i++) begin
      for (int j = 0; j < 2; j++) begin
        matrix[i][j] = i * 2 + j;
      end
    end

   
    $display("Packed Array:");
    for (int i = 0; i < 4; i++) begin
      $display("pack[%d] = %b", i, pack[i]);
    end

       $display("Unpacked 2D Array:");
    for (int i = 0; i < 3; i++) begin
      for (int j = 0; j < 2; j++) begin
        $write("%d ", matrix[i][j]);
      end
      $display();
    end
  end
endmodule


ANSWER:

# KERNEL: pack[          0] = 011
# KERNEL: pack[          1] = 010
# KERNEL: pack[          2] = 001
# KERNEL: pack[          3] = 000
# KERNEL: Unpacked 2D Array:
# KERNEL:           0           1 
# KERNEL:           2           3 
# KERNEL:           4           5 
