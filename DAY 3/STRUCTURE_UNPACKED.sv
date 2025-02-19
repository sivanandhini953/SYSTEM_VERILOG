
module struct_unpacked;
  
struct {
string fruit;
  int num;
  int expiry;
  string region;
  
}fruits;
  
  
initial begin
  
  fruits='{"apple",20,40,"simla"};
  
  $display("info:",fruits);
  
  fruits.fruit="orange";
  $display("info:",fruits);

end
endmodule
