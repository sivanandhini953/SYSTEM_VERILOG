module bank;

class bankaccount;
    protected int balance;

    function void deposit(int depo);
        balance = balance + depo; 
        $display("Deposited Amount = %d", depo);
        $display("Updated Balance = %d", balance);
    endfunction

    function void withdraw(int with_draw);
        if (with_draw > balance) begin
            $display("Error: Insufficient balance!");
        end else begin
            balance = balance - with_draw; 
            $display("Withdrawn Amount = %d", with_draw);
            $display("Remaining Balance = %d", balance);
        end
    endfunction
endclass

class savings_account extends bankaccount;

    function void withdraw_balance(int interest);
        if (interest > balance) begin
            $display("Error: Insufficient balance for interest deduction!");
        end else begin
            balance = balance - interest;
            $display("Interest Deducted = %d", interest);
            $display("Updated Balance after interest = %d", balance);
        end
    endfunction

    function void display_balance();
        $display("Available Balance = %d", balance);
    endfunction
endclass

savings_account sa;

initial begin
    sa = new(); 

    sa.deposit(50000);     
    sa.withdraw(20000);    
    sa.withdraw_balance(500);
    sa.display_balance(); 
end

endmodule


answer:
# run -all
# Deposited Amount =       50000
# Updated Balance =       50000
# Withdrawn Amount =       20000
# Remaining Balance =       30000
# Interest Deducted =         500
# Updated Balance after interest =       29500
# Available Balance =       29500
