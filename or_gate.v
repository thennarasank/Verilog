//design
module or_gate
(input a,b,output y);
assign y = a|b;
endmodule

//test_bench
module tb_or_gate();
reg a,b;
wire y;

//dut
or_gate dut(a,b,y);
initial begin
	$monitor( "$time=%ot | a=%b | b=%b | y=%b |",$time,a,b,y);
	$dumpfile("or.vcd");
	$dumpvars();

	a=0;
	#5;
	b=1;
	#5;
	repeat(7)begin
               a=$random;
	       b=$random;
	       #10;
	    end
	    $finish;
    end
    endmodule
