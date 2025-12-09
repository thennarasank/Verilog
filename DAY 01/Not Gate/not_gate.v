//design
module not_gate
(output y,input a);
assign y = ~a;
endmodule
//tb
module tb_not_gate;
reg  a;
wire y;
//dut
not_gate dut (y,a);
initial begin
$monitor ("$time=%0t |a=%b | out=%b",$time,a,y);
$dumpfile("not_gate.vcd");
$dumpvars();
/*
a=0;
#15
a=1;
#10;
a=1;
#5;
a=0;
#10;*/
repeat (10)begin
	a=$random;
	#5;
end
$finish;
end
endmodule
