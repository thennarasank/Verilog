//testbench
module tb_bit4_register;
reg clk;
reg rst;
reg [3:0]d;
wire [3:0]q;
bit4_register dut(.clk(clk),.rst(rst),.d(d),.q(q));
initial clk = 0;
always #5 clk = ~clk;
initial begin
$monitor("  clk=%b  |  rst=%b  |  d=%b  |  q=%b  |  time=%0t  ",clk,rst,d,q,$time);
$dumpfile("bit4_register.vcd");
$dumpvars();
rst = 1;#10;
d = 4'b0000;#10;
@(posedge clk);rst = 0;#10;
@(posedge clk);d = 4'b0001;#10;
@(posedge clk);d = 4'b1010;#10;
@(posedge clk);d = 4'b1111;#10;
@(posedge clk);d = 4'b0101;#10;
@(posedge clk);rst = 1;#10;
@(posedge clk);rst = 0;#10;
@(posedge clk);d = 4'b1001;#10;
$finish;
end
endmodule
