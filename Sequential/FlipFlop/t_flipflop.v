//design 
module t_flipflop ( input wire t,input wire rst, input wire clk, output reg q );
always @(posedge clk)begin
if (rst)
q <= 1'b0;
else if (t)
q <= ~q;
end
endmodule
//testbench
module tb_t_flipflop;
reg t;
reg rst;
reg clk;
wire q;
t_flipflop dut(.t(t),.rst(rst),.clk(clk),.q(q));
always #10 clk = ~clk;
initial begin
$monitor("  t=%b  |  rst=%b  |  clk=%b  |  q=%b  |  time=%0t  ",t,rst,clk,q,$time);
$dumpfile("tb_t_flipflop.vcd");
$dumpvars();
rst = 0;
clk = 1;
t = 1;#10;
t = 0;#10;
t = 1;#10;
t = 0;#10;
$finish;
end
endmodule
