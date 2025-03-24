class sft;
  
  rand bit [4:0] data;
  
  //constraint data_range { data > 'hf; }
  
  constraint data_range1 {soft  data <= 'ha; }
  
endclass

module soft_constr;
  
initial begin
sft sf;
sf = new();
  
repeat(4) begin
  sf.randomize() with {data > 'hf;} ;
$display("\data = %0h",sf.data);
end
  
end
  
endmodule

ANSWER:

data = 1d
data = 16
data = 11
data = 12
