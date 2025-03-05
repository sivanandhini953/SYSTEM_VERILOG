module stringtointeger;

  integer y;
  string x;
  integer z;
  
  initial begin
    
    y="12345";
    $display("y is:%d",y);
    z=y+100;
    
    $display("z is:%d",z);
    
  end

endmodule

ANSWER:

# KERNEL: y is:  842216501
# KERNEL: z is:  842216601
