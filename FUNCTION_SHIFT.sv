module func_shift;
  
  byte data;
  
  function byte r_shift(input byte data);
    
    r_shift=data>>1;
    
  endfunction
  
  initial begin
    
    data=8'h88;
    data=r_shift(data);
    
    $display("1-bit right shifted:%b",data);
    
  end
endmodule


ANSWER

01000100
