//testbench
module tb_jk_latch;
reg j;
reg k;
reg enable;
wire q;
jk_latch dut (.j(j),.k(k),.enable(enable),.q(q));
initial begin
$monitor("   j=%b   |   k=%b   |   enable=%b   |   q=%b   |   time=%0h   ",j,k,enable,q,$time);
$dumpfile("jk_latch.vcd");
$dumpvars();
j = 0; k = 0;#10;
enable = 1;#10;
j = 1; k = 0;#10;
j = 0; k = 1;#10;
j = 0; k = 0;#10;
j = 1; k = 1;#10;
enable = 0;
j = 1; k = 0;#10;
$finish;
end
endmodule
