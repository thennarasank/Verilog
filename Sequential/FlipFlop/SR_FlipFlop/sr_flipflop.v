//testbench
module tb_sr_flipflop;
reg clk;
reg s, r;
wire q;
sr_flipflop dut(.clk(clk),.s(s),.r(r),.q(q));
always #5 clk = ~clk;
initial begin
$monitor("  s=%b  |  r=%b  |  q=%b  |  clk=%b  |  time=%0t  ",s,r,q,clk,$time);
clk = 0;
s = 0; r = 0;#10; 
s = 1; r = 0;#10;
s = 0; r = 0;#10;
s = 0; r = 1;#10;
s = 0; r = 0;#10;
s = 1; r = 1;#10;
s = 1; r = 0;#10;
$finish;
end
endmodule
