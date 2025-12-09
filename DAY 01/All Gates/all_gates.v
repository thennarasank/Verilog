//design
module all_gates(input a,b, output and_y,or_y,nand_y,nor_y,exor_y,exnor_y);
assign and_y   = a & b;
assign or_y    = a | b;
assign nand_y  = ~(a & b);
assign nor_y   = ~(a | b);
assign exor_y  = a ^ b;
assign exnor_y = ~(a | b);
endmodule
//test bench
module tb_all_gates;
reg a,b;
wire and_y,or_y,nand_y,nor_y,exor_y,exnor_y;
//dut
all_gates dut(.a(a),.b(b),.and_y(and_y),.or_y(or_y),.nand_y(nand_y),.nor_y(nor_y),.exor_y(exor_y),.exnor_y(exnor_y));
initial begin
	$monitor("| a=%b | b=%b | and_y=%b | or_y=%b | nand_y=%b | nor_y=%b | exor_y=%b |exnor_y=%b | time=%0t  ",
		a,b,and_y,or_y,nand_y,nor_y,exor_y,exnor_y,$time);
	$dumpfile("all_gates.vcd");
	$dumpvars();

	a=0; b=0;
	#10;
	a=0; b=1;
	#10;
	a=1; b=0;
	#10;
	a=1; b=1;
	#10;
	$finish;
end
endmodule
