//testbench
module tb_t_latch;
reg t,enable;
wire q;
t_latch dut (.t(t),.enable(enable),.q(q));
initial begin
$monitor("   t=%b   |   enable=%b   |   q=%b   |   time=%0t   ",t,enable,q,$time);
$dumpfile("t_latch.vcd");
$dumpvars();
enable = 0; 
t = 0;#10;
enable = 1;
t = 0;#10;
t = 1;#10;
t = 0;#10;
enable = 0;
t = 1;#10;
$finish;
end
endmodule
