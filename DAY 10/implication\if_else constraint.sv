class dataP;
rand bit [7:0] data;
string burst_mode ;
  constraint burst1 { (burst_mode == "short") -> (data < 140);}
//implication
  constraint burstIf { if (burst_mode == "long") data > 160;
                      else if (burst_mode == "garbage") data<=160&&data>=140;}
endclass
module top;
initial begin
dataP d1;
d1 = new();
d1.burst_mode = "short";
repeat(4) begin
d1.randomize();
$display("\t Short burst_mode = %s data = %0d",d1.burst_mode,d1.data);
end
$display("\n");
d1.burst_mode = "long";
repeat(4) begin
d1.randomize();
$display("\t Long burst_mode = %s data = %0d",d1.burst_mode,d1.data);
end
  $display("\n");
d1.burst_mode = "garbage";
repeat(4) begin
d1.randomize();
$display("\t garbage burst_mode = %s data = %0d",d1.burst_mode,d1.data);
end
end
endmodule

ANSWER:

	 Short burst_mode = short data = 22
	 Short burst_mode = short data = 115
	 Short burst_mode = short data = 64
	 Short burst_mode = short data = 81


	 Long burst_mode = long data = 172
	 Long burst_mode = long data = 189
	 Long burst_mode = long data = 228
	 Long burst_mode = long data = 175


	 garbage burst_mode = garbage data = 144
	 garbage burst_mode = garbage data = 155
	 garbage burst_mode = garbage data = 159
	 garbage burst_mode = garbage data = 141
