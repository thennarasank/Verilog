//design
module down_counter (input clk,rst,output reg [3:0]count);
always @(posedge clk or posedge rst) begin
if (rst)
count <= 4'd15;
else
count <= count - 1;
end
endmodule
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
