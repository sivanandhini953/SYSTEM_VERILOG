
module struct_union;

typedef union packed {
logic [9:0] data;
struct packed {
bit p1;
bit [2:0] p2;
bit [1:0] p3;
bit p4;
bit [2:0] p5;
} p_modes;
} myUnion;
myUnion Union1;

initial begin
Union1.p_modes.p2=3'b111;
  //Union1.p_modes.p1=1'b0;
 // Union1.p_modes.p3=2'b01;
 // Union1.p_modes.p4=3'b1;
  //Union1.p_modes.p5=3'b000;

  $display("data: %b",Union1.data);
end
endmodule


Answer:

 KERNEL: data: x111xxxxxx
// # KERNEL: data: 0111011000
