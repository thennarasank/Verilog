//design
module updown_counter(input clk,rst,up_down,output reg [3:0]count);
always @(posedge clk or posedge rst)begin
if (rst)
count <= 4'd0;
else if(up_down)
count <= count+1;
else
count <= count-1;
end
endmodule
//testbench
module tb_updown_counter;
reg clk;
reg rst;
reg up_down;
wire [3:0]count;
updown_counter dut(.clk(clk),.rst(rst),.up_down(up_down),.count(count));
always #5 clk = ~clk;
initial begin
$monitor("  clk=%b  |  rst=%b  |  up_down=%b  |  time=%0t  ",clk,rst,up_down,$time);
$dumpfile("updown_counter.vcd");
$dumpvars();
clk = 0;
rst = 1;#10;
up_down = 1;#10;
rst = 0;#10;
up_down = 1;#10;
up_down = 0;#10;
up_down = 1;#10;
rst = 1;#10;
rst = 0;#10;
$finish;
end
endmodule
