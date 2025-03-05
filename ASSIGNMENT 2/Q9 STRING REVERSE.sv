module reverse_string;

  string str = "hello";
  string rev = "";

  initial begin
  
    for (int i = str.len()-1; i >= 0; i--) begin
      rev = {rev,str[i]}; 
    end

   
    $display("Original String: %s", str);
    $display("Reversed String: %s", rev);
  end

endmodule


ANSWER:

# KERNEL: Original String: hello
# KERNEL: Reversed String: olleh
