//testbench
module tb_traffic_light;
reg clk;
reg rst;
wire Red;
wire Yellow;
wire Green;
traffic_light dut(.clk(clk),.rst(rst),.Red(Red),.Yellow(Yellow),.Green(Green));
always #3 clk = ~clk;
initial begin
$monitor("  clk=%b  |  rst=%b  |  Red=%b  |  Yellow=%b  |  Green=%b  |  time%0t  ",clk,rst,Red,Yellow,Green,$time);
$dumpfile("traffic_light.vcd");
$dumpvars();
end
initial begin
clk = 0;
rst = 1;#10;
rst = 0;#500;
$finish;
end
endmodule
