class MyClass;
    int data[];  

   
    function new(int size);
        data = new[size];
        foreach (data[i]) data[i] = i * 10;  
    endfunction

    
    function MyClass deep_copy();
        MyClass new_obj; 
        new_obj = new(data.size());  

        
        new_obj.data = new[data.size()];  

        
        foreach (data[i])
            new_obj.data[i] = data[i];  

        return new_obj;  
    endfunction

    
    function void display();
        $display("Array Contents:");
        foreach (data[i])
            $write("%0d ", data[i]);
        $display();
    endfunction
endclass


module tb;
    MyClass obj1, obj2;

    initial begin
        
        obj1 = new(5);  
        obj1.display();  

        
        obj2 = obj1.deep_copy();
        obj2.display();
       
        
        obj2.data[0] = 999;

        
        $display("After modifying obj2:");
        $display("obj1:");
        obj1.display();
        $display("obj2:");
        obj2.display();

        $finish;
    end
endmodule


ANSWER:

# Array Contents:
# 0 10 20 30 40
# Array Contents:
# 0 10 20 30 40
# After modifying obj2:
# obj1:
# Array Contents:
# 0 10 20 30 40
# obj2:
# Array Contents:
# 999 10 20 30 40
