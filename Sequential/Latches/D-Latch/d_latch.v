//testbench
module tb_d_latch;
reg d;
reg enable;
wire q;
d_latch dut(.d(d),.enable(enable),.q(q));
initial begin
$monitor("   d=%b   |   enable=%b   |   q=%b   |   time=%0t   ",d,enable,q,$time);
$dumpfile("q_latch.vcd");
$dumpvars();
enable = 0; 
d = 0;#10;
enable = 1;
d = 0;#10;
d = 1;#10;
d = 0;#10;
enable = 0;
d = 1;#10;
d = 0;#10;
d = 1;#10;
$finish;
end
endmodule
