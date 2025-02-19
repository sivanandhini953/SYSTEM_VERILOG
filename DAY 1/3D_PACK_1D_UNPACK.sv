module pack_3d_unpack_1d;
  

logic [2:0][1:0][7:0] uP [3:0];
  
  initial begin
    
    uP[3][2]=16'h5678;
    uP[2][2]=16'h8978;
    uP[1][2]=16'h1234;
    uP[0][1]=16'h2345;
    
    //foreach matrix[i]
    $display("uP[3][2][1]:%h",uP[3]);
    $display("uP[3][2][1]:%h",uP[2][2]);
    $display("uP[3][2][1]:%h",uP[1][2][0]);
    $display("uP[3][2][1]:%h",uP[0][1][0]);
	  
	  end
	  endmodule



ANSWER:# 

KERNEL: uP[3][2][1]:5678xxxxxxxx
# KERNEL: uP[3][2][1]:8978
# KERNEL: uP[3][2][1]:34
# KERNEL: uP[3][2][1]:45
