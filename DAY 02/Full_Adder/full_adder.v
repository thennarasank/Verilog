//test_bench
module tb_full_adder();
reg a,b,cin;
wire sum,carry;

//dut
full_adder dut
(a,b,cin,sum,carry);
initial begin
	$monitor("time=%0t | a=%0b | b=%0b | cin=%0b | sum=%0b | carry=%0b |",$time,a,b,cin,sum,carry);
	$dumpfile("full_adder.vcd");
	$dumpvars(0, tb_full_adder);

	a=0;b=0;cin=0;
	#10;
	a=0;b=0;cin=1;
	#11;
	a=0;b=1;cin=0;
	#12;
	a=0;b=1;cin=1;
	#13;
	a=1;b=0;cin=0;
	#14;
	a=1;b=0;cin=1;
	#15;
	a=1;b=1;cin=0;
	#16;
	a=1;b=1;cin=1;
	#17;

	$finish;
end
endmodule
