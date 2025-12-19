//design
module gated_latch(input d,input enable,output reg q);
always @(d or enable) begin
if (enable)
q <= d;
end
endmodule
//techbench
module tb_gated_latch;
reg d;
reg enable;
wire q;
gated_latch dut(.d(d),.enable(enable),.q(q));
initial begin
$monitor("   d=%b   |   enable=%b   |   q=%b   |   time=%0t   ",d,enable,q,$time);
$dumpfile("gated_latch.vcd");
$dumpvars();
d=0; enable=1; #10;
d=1; enable=0; #10;
d=1; enable=0; #10;
d=1; enable=1; #10;
d=0; enable=0; #10;
d=1; enable=0; #10;
$finish;
end
endmodule
