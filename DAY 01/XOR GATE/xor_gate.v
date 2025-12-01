//design 
module xor_gate
(input a,b,output y);
assign y= a ^ b;
endmodule



//tb
module xor_tb ();
reg a,b;
wire y;

//dut
xor_gate dut (a,b,y);

initial begin
	$monitor("$time=%0t | a=%b | b=%b | y=%b|",$time,a,b,y);
	$dumpfile ("xor.vcd");
	$dumpvars ();

	a=1;b=0;
	#7;
	repeat (10)begin
		a=$random;
		b=$random;
		#8;
	end
	$finish;
end
endmodule

