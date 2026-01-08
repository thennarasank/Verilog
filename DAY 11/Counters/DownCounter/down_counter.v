//testbench
module tb_down_counter;
reg clk;
reg rst;
wire [3:0] count;
down_counter dut(.clk(clk),.rst(rst),.count(count));
always #3 clk = ~clk;
initial begin
$monitor("  clk=%b  |  rst=%b  |  count=%b  |  time=%0t  ",clk,rst,count,$time);
$dumpfile("down_counter.vcd");
$dumpvars();
clk = 0;#10;
rst = 1;#10;
rst = 0;#10;
rst = 1;#10;
rst = 0;#10;
$finish;
end
endmodule
