module sum_arr;
    int dyn[];  
    int result; 

   
    task elements();
        dyn = new[6];  

        foreach (dyn[i])
            dyn[i] = i * 10;  

        $display("Dynamic array: %0p", dyn);
    endtask

    
    function int sum_N_Numberas(int ip[]);
        int sum = 0;
        foreach (ip[i])
            sum += ip[i]; 
        return sum;  
    endfunction

    
    initial begin
        elements(); 
        result = sum_N_Numberas(dyn);  
        $display("Sum of dynamic array: %0d", result);
        $finish;
    end
endmodule


ANSWER:
# run -all
# Dynamic array: 0 10 20 30 40 50
# Sum of dynamic array: 150
