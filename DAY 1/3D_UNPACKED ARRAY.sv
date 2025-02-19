module unpack_3d;
  
  logic matrix[2:0][3:0][1:0];  // 3D unpacked array: [depth][rows][columns]
  
  initial begin
    
    // ✅ Corrected assignments with single-bit values
    matrix[2][3][0] = 1'b0;  matrix[1][3][1] = 1'b0;
    matrix[2][2][0] = 1'b0;  matrix[2][2][1] = 1'b1;
    matrix[2][1][0] = 1'b1;  matrix[2][1][1] = 1'b0;
    matrix[2][0][0] = 1'b0;  matrix[2][0][1] = 1'b1;

    // ✅ Corrected loop syntax
    foreach (matrix[i]) begin
      foreach (matrix[i][j]) begin
        for (int k = 0; k < 2; k++) begin  // Loop over both bits (0 and 1)
          $display("matrix[%0d][%0d][%0d]: %b", i, j, k, matrix[i][j][k]);
        end
      end
    end

  end
endmodule


ANSWER:

# KERNEL: matrix[2][3][0]: 0
# KERNEL: matrix[2][3][1]: x
# KERNEL: matrix[2][2][0]: 0
# KERNEL: matrix[2][2][1]: 1
# KERNEL: matrix[2][1][0]: 1
# KERNEL: matrix[2][1][1]: 0
# KERNEL: matrix[2][0][0]: 0
# KERNEL: matrix[2][0][1]: 1
# KERNEL: matrix[1][3][0]: x
# KERNEL: matrix[1][3][1]: 0
# KERNEL: matrix[1][2][0]: x
# KERNEL: matrix[1][2][1]: x
# KERNEL: matrix[1][1][0]: x
# KERNEL: matrix[1][1][1]: x
# KERNEL: matrix[1][0][0]: x
# KERNEL: matrix[1][0][1]: x
# KERNEL: matrix[0][3][0]: x
# KERNEL: matrix[0][3][1]: x
# KERNEL: matrix[0][2][0]: x
# KERNEL: matrix[0][2][1]: x
# KERNEL: matrix[0][1][0]: x
# KERNEL: matrix[0][1][1]: x
# KERNEL: matrix[0][0][0]: x
# KERNEL: matrix[0][0][1]: x
