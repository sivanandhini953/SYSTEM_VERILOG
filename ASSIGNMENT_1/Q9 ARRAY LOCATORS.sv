// Code your testbench here
// or browse Examples
module array_locator;
  
  int tq[$];
  int q[$];
  int d[];
  int d1[];
  int f[5:0];
  int g[$];
  int sum,product;
  int x[$];
  initial begin
    sum=0;
    product=1;
    q='{1,3,5,7};
    
    d='{9,1,8,3,4,4};
    
    f='{1,6,2,6,8,6};
   
    
    foreach (q[i])
      
      sum=sum+q[i];
    $display("sum of q:%d",sum);
    foreach (q[i])
    product=product*q[i];
    $display("product of q=%d",product);
    
    x=q.min;
    
    $display("Min of q=%p",x);
    
    x=q.max;
    $display("Max of q=%p",x);
    
    g=f;
    g=g.unique;
    $display("Unique of f=%p",g);
    
    d1=d.find()with(item>3);
    $display("elements greater than 3=%p",d1);
    
    d1=d.find_index with (item>3);
    $display("indices ofelements greater than 3=%p",d1);
    
    d1=d.find() with (item>99);
    $display("indices of elements greater than 99=%p",d1);
    
    d1=d.find_first_index with(item==8);
    $display("index of first element with value 8=%p",d1);
    
    d1=d.find_last_index with(item==4);
    $display("index of last element with value 4 =%p",d1);
    
    d1=d.find with(item>7);
    sum=0;
    foreach(d1[i])
      sum=sum+d1[i];
    $display("sum of elements in d :%0d",sum); 
    
    d1=d.find with (item>7*item);
     sum=0;
    foreach(d1[i])
      sum=sum+d1[i];
    $display("sum of elements in d :%0d",sum);
    
    d1=d.find with(item<8);
    sum=0;
    foreach(d1[i])
      sum=sum+d1[i];
    $display("sum of elements in d :%0d",sum);
    
    
    d1=d.find with ((item<8)?item:0);
    $display("index of last element with value 4 =%p",d1);
     sum=0;
    foreach(d1[i])
      sum=sum+d1[i];
    $display("sum of elements in d :%0d",sum);
    
  end 
endmodule

ANSWER:

# KERNEL: sum of q:         16
# KERNEL: product of q=        105
# KERNEL: Min of q='{1}
# KERNEL: Max of q='{7}
# KERNEL: Unique of f='{1, 2, 6, 8}
# KERNEL: elements greater than 3='{9, 8, 4, 4}
# KERNEL: indices ofelements greater than 3='{0, 2, 4, 5}
# KERNEL: indices of elements greater than 99='{}
# KERNEL: index of first element with value 8='{2}
# KERNEL: index of last element with value 4 ='{5}
# KERNEL: sum of elements in d :17
# KERNEL: sum of elements in d :0
# KERNEL: sum of elements in d :12
# KERNEL: index of last element with value 4 ='{9, 1, 8, 3}
# KERNEL: sum of elements in d :21
