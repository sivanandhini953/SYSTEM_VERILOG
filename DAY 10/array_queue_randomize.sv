class aClass;
  
  rand bit [3:0] addr [ ] = {1,2,3,4};
 
 rand bit [7:0] St [string] = '{"Peter":26, "Paul":24};
  
 rand bit [7:0] dq2[$] = { 3, 2, 7, 1 }; 
  
  constraint addrC {addr[0] == 6;}
  //constraint addrw{addr[0]==4;}
  //constraint st{st["Peter"]==24;}
  constraint dq2w{dq2[3]==10;}

 endclass

module tb;
  
 initial begin
   
 aClass aC = new ( );
   
 for (int i = 0; i < 4; i++) begin
 aC.randomize();
 $display ("addr=%p St=%p dq2=%p", aC.addr, aC.St, aC.dq2);
 end
   

   

   
 end
 endmodule

ANSWER:

# KERNEL: addr='{6, 7, 2, 2} St='{"Paul":89, "Peter":202} dq2='{188, 160, 89, 10}
# KERNEL: addr='{6, 5, 0, 11} St='{"Paul":224, "Peter":37} dq2='{152, 74, 222, 10}
# KERNEL: addr='{6, 5, 11, 9} St='{"Paul":13, "Peter":68} dq2='{6, 7, 48, 10}
# KERNEL: addr='{6, 8, 8, 14} St='{"Paul":160, "Peter":35} dq2='{124, 228, 4, 10}
