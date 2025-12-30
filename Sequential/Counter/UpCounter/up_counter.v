//testbench
module tb_up_counter;
reg clk;
reg rst;
wire [3:0] count;
up_counter dut(.clk(clk),.rst(rst),.count(count));
always #5 clk = ~clk;
initial begin
$monitor("  clk=%b  |  rst=%b  |  count=%b  |  time=%0t  ",clk,rst,count,$time);
$dumpfile("up_counter.vcd");
$dumpvars();
clk = 0;
rst = 1;#10;
rst = 0;#10;
rst = 1;#10;
rst = 0;#10;
$finish;
end
endmodule
