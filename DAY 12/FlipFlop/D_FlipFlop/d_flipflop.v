//testbench
module tb_d_flipflop;
reg clk;
reg d;
wire q;
d_flipflop dut(.d(d),.clk(clk),.q(q));
always #10 clk = ~clk;
initial begin
$monitor("  d=%b  |  clk=%b  |  q=%b  |  time=%0t  ",d,clk,q,$time);
$dumpfile("d_flipflop.vcd");
$dumpvars();
clk = 0; #10;
d = 0; #10;
d = 0; #10;
d = 1; #10;
d = 0; #10;
d = 1; #10;
$finish;
end 
endmodule
