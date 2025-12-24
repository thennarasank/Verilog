//testbench
module tb_mux_16to1;
reg [15:0]d;
reg [3:0]s;
wire y;
mux_16to1 dut(.d(d),.s(s),.y(y));
integer i;
initial begin
$monitor("   d=%b   |   s=%b   |   y=%b   |   time=%0t   ",d,s,y,$time);
$dumpfile("mux_16to1.vcd");
$dumpvars();
d=16'b1010_1100_1111_0001;
for (i=0; i<16; i=i+1)begin
s=i;
#10;
end
#10;
$finish;
end
endmodule
