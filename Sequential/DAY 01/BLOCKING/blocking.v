//TEST BENCH
module tb_blocking;
wire a, b, c;
//DUT 
blocking dut (.a(a),.b(b),.c(c));
initial begin
$dumpfile("blocking.vcd");
$dumpvars(0, tb_blocking);
$monitor("time=%0t | a=%b | b=%b | c=%b",$time, a, b, c);
#10;
$finish;
end
endmodule
