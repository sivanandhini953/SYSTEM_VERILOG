module string_datatype;
  
  string data;
  byte x;
  string data1;
  
  initial begin
    
    data="jackfruit";
    
    x=data.getc(0);
    $display("letter at place 0:%s",x);
    
    data1=data.toupper();
    $display("capitalized string :%s",data1);
    
    data={"jackfruit","3.1a"};
    $display("concatenated string:%s",data);
    
    
    x=data.len()-1;
    
    data.putc(x,"b");
   
    $display("replaced string:%s",data);
    
    data=data.substr(2,5);
    $display("subtracted string:%s",data);   
    
  end
endmodule


ANSWER:

# KERNEL: letter at place 0:j
# KERNEL: capitalized string :JACKFRUIT
# KERNEL: concatenated string:jackfruit3.1a
# KERNEL: length of string
# KERNEL: replaced string:jackfruit3.1b
# KERNEL: subtracted string:ckfr
