module basic_dataTypes();
    // Declaring and initializing the variables
    bit   [7:0] bit_data;
    logic [7:0] logic_data;
    reg   [7:0] reg_data;
  

    integer integer_addr;
    int int_addr;

    byte signed_number;
    bit [7:0] unsigned_number;
    
    initial
    begin
        $display ("Default values of data-types: \n");

        $display ("Default value of logic logic_data = %b", logic_data);
        $display ("Default value of reg reg_data     = %b", reg_data);
        $display ("Default value of bit bit_data     = %b\n", bit_data);

        // initializing values
        integer_addr = 32'b01x1_01xz_01xz_01xz;
        int_addr     = 32'b01x1_01xz_01xz_01xz;

        bit_data     = 8'b0101_01xz;
        logic_data   = 8'b0101_01xz;
        reg_data     = 8'b0101_01xz;



        $display ("Value of logic logic_data = %b", logic_data);
        $display ("value of reg reg_data     = %b", reg_data);
        $display ("Value of bit bit_data     = %b\n", bit_data);

        $display ("Value of integer write logic_data = %0b", integer_addr);
        $display ("Value of int read logic_data      = %0b\n", int_addr);

        
        signed_number   = -1;
        unsigned_number = -1;
        $display ("Value of byte signed_number        = %0d", signed_number); 
        $display ("Value of bit [7:0] unsigned_number = %0d\n", unsigned_number);
    end
endmodule
