module datatype1;
integer a; 
int b;
shortint c; 
longint d;
logic [7:0] A1;
logic signed [7:0] sl1;
byte bl1; 
reg [7:0] r1;
initial
begin
a = 'h xxzz_ffff; 
b = -2; 
c = 'h fxfx; 
d = 'h ffff_xxxx_ffff_zzzz;

A1 = -1 ; 
sl1 = -1; 
bl1 = -1; 
r1 = 8'b xzxz_0101; 
end
initial
begin #10;
$display("a = %h b = %h c = %h d = %h", a, b, c, d);
$display("A1 = %0d sl1=%0d bl1 = %0d r1 = %b",A1,sl1,bl1,r1);
#10 $finish(2);
end
endmodule
