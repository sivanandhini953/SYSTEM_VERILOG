
module struct_unpacked;
  
typedef struct {
string fruit;
  int num;
  int expiry;
  string region;
  
}fruits;
  
  
initial begin
  
  fruits fruit1 ='{"apple",20,40,"simla"};
  fruits fruit2 ='{"orange",40,30,"kashmir"};
  fruits fruit3;
  
  $display("info:",fruit1);
  $display("info:",fruit2);
  fruit3=fruit1;
  $display("info:",fruit3);
  
  fruit2.fruit="plum";
   $display("info:",fruit2);

end
endmodule


ANSWER:

 KERNEL: info:'{fruit:"apple", num:20, expiry:40, region:"simla"}
# KERNEL: info:'{fruit:"orange", num:40, expiry:30, region:"kashmir"}
# KERNEL: info:'{fruit:"apple", num:20, expiry:40, region:"simla"}
# KERNEL: info:'{fruit:"plum", num:40, expiry:30, region:"kashmir"}
