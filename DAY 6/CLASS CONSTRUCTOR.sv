class packet;

  bit [31:0] addr;
  bit [31:0] data;
  bit write;
  string pkt_type;
  
  
  function new(bit [31:0] a = 32'h10, bit [31:0] b = 32'hFF, bit c = 1, string d = "GOOD_PKT");
    addr  = a;
    data  = b;
    write = c;
    pkt_type = d;
  endfunction

 
  function void display();
    $display("---------------------------------------------------------");
    $display("\t addr      = %0d", addr);
    $display("\t data      = %0h", data);
    $display("\t write     = %0d", write);
    $display("\t pkt_type  = %0s", pkt_type);
    $display("---------------------------------------------------------");
  endfunction
endclass

module sv_constructor;
  packet pkt;

  initial begin
    
    pkt = new(); 
    pkt.display();
	
    
    pkt = new(44, 66, 0, "BAD_PKT");
    pkt.display();
  end
endmodule


ANSWER:

# run -all
# ---------------------------------------------------------
#        addr      = 16
#        data      = ff
#        write     = 1
#        pkt_type  = GOOD_PKT
# ---------------------------------------------------------
# ---------------------------------------------------------
#        addr      = 44
#        data      = 42
#        write     = 0
#        pkt_type  = BAD_PKT
# ---------------------------------------------------------
