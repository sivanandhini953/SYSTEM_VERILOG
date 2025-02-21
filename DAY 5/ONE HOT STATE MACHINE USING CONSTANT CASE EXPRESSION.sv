module top;
localparam rst = 0,
WriteS = 1,
ReadS = 2,
intr = 3;

logic [3:0] State;
logic clock, Write, Reset, interrupt;

always_ff @(posedge clock or posedge Reset)
if (Reset)
begin
State <= 3'b0000;
State[rst] <= 1'b1;
end
else
begin
State <= 4'b0000;
case (1'b1) // synopsys parallel_case
State[rst] : if (Write)
State[WriteS] <= 1'b1;
else
State[rst] <= 1'b1;
State[WriteS] : State[ReadS] <= 1'b1;
State[ReadS] : if (interrupt)
State [intr] <= 1'b1;
else
State[rst] <= 1'b1;
State[intr] : State[rst] <= 1'b1;
default: $display($stime,,, "Default CASE executed");
endcase
end

initial begin
Reset =0; Write = 0; clock=0; interrupt=0;
#1 Reset = 1; #1; Reset = 0;
#10; Write = 1;
#10; interrupt = 1;
#60 $finish;
end
always #5 clock = !clock;
initial $monitor($stime,,, "State = %b", State);
endmodule

ANSWER:

    0  State = xxxx
#          1  State = 0001
#         15  State = 0010
#         25  State = 0100
#         35  State = 1000
#         45  State = 0001
#         55  State = 0010
#         65  State = 0100
#         75  State = 1000


    
