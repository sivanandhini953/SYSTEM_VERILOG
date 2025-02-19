
module struct_packed;
  
struct packed {
  bit [7:0] intr;
  logic [23:0] addr;
} SUR;
  
initial begin
SUR.intr = 'hff;
$display($stime,,, "SUR = %h",SUR);
$display($stime,,, "SUR Intr = %h",SUR.intr);
  
SUR = '{'h00,'hFF_FF_FF};
$display($stime,,, "SUR = %h",SUR);

SUR = '{intr:'h01, addr:'hf0f0f0};
$display($stime,,, "SUR = %h",SUR);

  SUR = '{default:'h345678};
$display($stime,,, "SUR = %h",SUR);
  
  SUR = '{default:'h78};
$display($stime,,, "SUR = %h",SUR);
  
SUR = 0;
SUR = SUR+'h12;

$display($stime,,, "SUR = %h",SUR);
end
endmodule
