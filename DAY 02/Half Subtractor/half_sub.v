//test_bench
module tb_half_sub;
reg a,b;
wire diff,borrow;
//dut
half_sub dut(a,b,diff,borrow);
initial begin
	$monitor("time=%0t   | a=%0b | b=%0b | diff=%0b | borrow=%0b |",$time,a,b,diff,borrow);
	$dumpfile("tb_half_sub.vcd");
	$dumpvars();
	a=0; b=0;
	#11
	a=0; b=1;
	#11
	a=1; b=0;
	#11
	a=1; b=1;
	#11
	$finish;
	end
endmodule
